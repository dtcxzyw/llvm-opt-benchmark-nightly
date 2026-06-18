inline.NumInlined: 352
inline.NumDeleted: 188
begin_hunk_0_@_ZN6Assimp27ImproveCacheLocalityProcess11ProcessMeshEP6aiMeshj:bb.a
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i210

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i210: ; preds = %.noexc217
  %i.da = getelementptr i8, ptr %i.cx, i64 4
  %.idx.i.i.i.i.i31.i211 = shl nuw nsw i64 %i.cy, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.da, i8 0, i64 %.idx.i.i.i.i.i31.i211, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i210, %.noexc217
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cv
  %i.dc = ptrtoint ptr %i.db to i64               ; 2 uses
  %i.dd = zext i32 %i.ct to i64
  %i.de = add nuw nsw i64 %i.dd, 63               ; 2 uses
  %i.df = lshr i64 %i.de, 3
  %i.dg = and i64 %i.df, 1073741816
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #17
          to label %.noexc156 unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit192.thread567 ; 3 uses

.noexc156:                                        ; preds = %bb.p
  %i.di = lshr i64 %i.de, 6                       ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.di
  %.idx.i = shl nuw nsw i64 %i.di, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dh, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit, %.noexc156
  %.sroa.0300.1521 = phi ptr [ %i.cx, %.noexc156 ], [ null, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ] ; 7 uses
  %.sroa.16308.1519 = phi i64 [ %i.dc, %.noexc156 ], [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ] ; 2 uses
  %.sroa.0287.0 = phi ptr [ %i.dh, %.noexc156 ], [ null, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ] ; 5 uses
  %.sroa.15294.0 = phi ptr [ %i.dj, %.noexc156 ], [ null, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ] ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8            ; 11 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.pre-phi
  br i1 %.not354, label %._crit_edge.thread, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre-phi) #17
          to label %.noexc4.i unwind label %_ZNSt12_Vector_baseIjSaIjEED2Ev.exit.i ; 6 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.pre-phi ; 3 uses
  %.not357 = icmp eq i32 %i.ck, 1
  br i1 %.not357, label %bb.r, label %bb.q, !prof !7

bb.q:                                             ; preds = %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dn, ptr align 4 %i.dl, i64 %.pre-phi, i1 false)
  br label %.lr.ph.preheader

bb.r:                                             ; preds = %.noexc4.i
  %i.dp = load i32, ptr %i.dl, align 4
  store i32 %i.dp, ptr %i.dn, align 4
  br label %.lr.ph.preheader

_ZNSt12_Vector_baseIjSaIjEED2Ev.exit.i:           ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt5stackIjSt6vectorIjSaIjEEED2Ev.exit190

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr null, i64 %.pre-phi
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit160

.lr.ph.preheader:                                 ; preds = %bb.r, %bb.q
  %i.ds = add nsw i64 %.pre-phi, -4               ; 2 uses
  %i.dt = lshr exact i64 %i.ds, 2
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ds, 28
  br i1 %min.iters.check, label %.lr.ph.preheader638, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.du, 9223372036854775800     ; 3 uses
  %i.dv = shl i64 %n.vec, 2
  %i.dw = getelementptr i8, ptr %i.dl, i64 %i.dv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dz, %vector.body ]
  %vec.phi619 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ea, %vector.body ]
  %i.dx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dl, i64 %i.dx ; 2 uses
  %i.dy = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4
  %wide.load620 = load <4 x i32>, ptr %i.dy, align 4
  %i.dz = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.ea = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi619, <4 x i32> %wide.load620) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.dz, <4 x i32> %i.ea)
  %i.ec = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.du, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader638

.lr.ph.preheader638:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0100406.ph = phi ptr [ %i.dl, %.lr.ph.preheader ], [ %i.dw, %middle.block ]
  %.0323405.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader638, %.lr.ph
  %.0100406 = phi ptr [ %i.ee, %.lr.ph ], [ %.0100406.ph, %.lr.ph.preheader638 ] ; 2 uses
  %.0323405 = phi i32 [ %.sroa.speculated, %.lr.ph ], [ %.0323405.ph, %.lr.ph.preheader638 ]
  %i.ed = load i32, ptr %.0100406, align 4
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %.0323405, i32 %i.ed) ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0100406, i64 4 ; 2 uses
  %.not131 = icmp eq ptr %i.ee, %i.dm
  br i1 %.not131, label %._crit_edge, label %.lr.ph, !llvm.loop !11

_ZNSt6vectorIjSaIjEED2Ev.exit195.thread:          ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit198

_ZNSt13_Bvector_baseISaIbEED2Ev.exit192.thread:   ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i208
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit195

_ZNSt13_Bvector_baseISaIbEED2Ev.exit192.thread567: ; preds = %bb.p
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.sroa.speculated.lcssa = phi i32 [ %i.ec, %middle.block ], [ %.sroa.speculated, %.lr.ph ] ; 2 uses
  %i.ei = mul i32 %.sroa.speculated.lcssa, 3
  %i.ej = zext i32 %i.ei to i64                   ; 3 uses
  %.not358 = icmp eq i32 %.sroa.speculated.lcssa, 0
  br i1 %.not358, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit160, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i225

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i225: ; preds = %._crit_edge
  %i.ek = shl nuw nsw i64 %i.ej, 2
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #17
          to label %.noexc234 unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit185.thread ; 4 uses

.noexc234:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i225
  store i32 0, ptr %i.el, align 4
  %i.em = add nsw i64 %i.ej, -1                   ; 2 uses
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %.noexc159, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i227

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i227: ; preds = %.noexc234
  %i.eo = getelementptr i8, ptr %i.el, i64 4
  %.idx.i.i.i.i.i31.i228 = shl nuw nsw i64 %i.em, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.eo, i8 0, i64 %.idx.i.i.i.i.i31.i228, i1 false)
  br label %.noexc159

.noexc159:                                        ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i227, %.noexc234
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ej
  %i.eq = ptrtoint ptr %i.ep to i64
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit160

_ZNSt6vectorIjSaIjEE6resizeEm.exit160:            ; preds = %._crit_edge.thread, %.noexc159, %._crit_edge
  %.sroa.0268.0530542 = phi ptr [ %i.dn, %.noexc159 ], [ %i.dn, %._crit_edge ], [ null, %._crit_edge.thread ] ; 6 uses
  %.sroa.10.0534541 = phi ptr [ %i.do, %.noexc159 ], [ %i.do, %._crit_edge ], [ %i.dr, %._crit_edge.thread ] ; 2 uses
  %.sroa.0254.1 = phi ptr [ %i.el, %.noexc159 ], [ null, %._crit_edge ], [ null, %._crit_edge.thread ] ; 10 uses
  %.sroa.16.1 = phi i64 [ %i.eq, %.noexc159 ], [ 0, %._crit_edge ], [ 0, %._crit_edge.thread ] ; 2 uses
  %i.er = load i32, ptr %i.t, align 8
  %i.es = add i32 %i.er, 1
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit160, %.loopexit363
  %.0101459 = phi i32 [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit160 ], [ %.1102.lcssa, %.loopexit363 ] ; 2 uses
  %.0107458 = phi i32 [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit160 ], [ %.7114, %.loopexit363 ] ; 2 uses
  %.0119457 = phi i32 [ 1, %_ZNSt6vectorIjSaIjEE6resizeEm.exit160 ], [ %.2121, %.loopexit363 ] ; 5 uses
  %.0122456 = phi i32 [ %i.es, %_ZNSt6vectorIjSaIjEE6resizeEm.exit160 ], [ %.1123.lcssa, %.loopexit363 ] ; 2 uses
  %.sroa.0296.0455 = phi ptr [ %.sroa.0300.1521, %_ZNSt6vectorIjSaIjEE6resizeEm.exit160 ], [ %.sroa.0296.1.lcssa, %.loopexit363 ] ; 2 uses
  %.sroa.17.0454 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE6resizeEm.exit160 ], [ %.sroa.17.1.lcssa, %.loopexit363 ] ; 2 uses
  %.sroa.9278.0453 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE6resizeEm.exit160 ], [ %.sroa.9278.7, %.loopexit363 ] ; 2 uses
  %.sroa.0274.0452 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE6resizeEm.exit160 ], [ %.sroa.0274.1.lcssa, %.loopexit363 ] ; 2 uses
  %i.eu = zext nneg i32 %.0107458 to i64          ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0268.0530542, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4            ; 2 uses
  %.not466 = icmp eq i32 %i.ew, 0
  br i1 %.not466, label %._crit_edge436, label %.lr.ph435.preheader

.lr.ph435.preheader:                              ; preds = %bb.s
  %i.ex = load ptr, ptr %i.et, align 8
  %i.ey = load ptr, ptr %3, align 8
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.eu
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fb
  br label %.lr.ph435

._crit_edge436:                                   ; preds = %bb.ae, %bb.s
  %.sroa.0274.1.lcssa = phi ptr [ %.sroa.0274.0452, %bb.s ], [ %.sroa.0274.4, %bb.ae ] ; 6 uses
  %.sroa.9278.1.lcssa = phi ptr [ %.sroa.9278.0453, %bb.s ], [ %.sroa.9278.4, %bb.ae ] ; 2 uses
  %.sroa.17.1.lcssa = phi ptr [ %.sroa.17.0454, %bb.s ], [ %.sroa.17.4, %bb.ae ] ; 3 uses
  %.sroa.0252.0.lcssa = phi ptr [ %.sroa.0254.1, %bb.s ], [ %.sroa.0252.3, %bb.ae ] ; 2 uses
  %.sroa.0296.1.lcssa = phi ptr [ %.sroa.0296.0455, %bb.s ], [ %.sroa.0296.3, %bb.ae ]
  %.1123.lcssa = phi i32 [ %.0122456, %bb.s ], [ %.4126, %bb.ae ] ; 2 uses
  %.1102.lcssa = phi i32 [ %.0101459, %bb.s ], [ %.4105, %bb.ae ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.eu
  store i32 0, ptr %i.fd, align 4
  %.not360444 = icmp eq ptr %.sroa.0254.1, %.sroa.0252.0.lcssa
  br i1 %.not360444, label %.preheader364.preheader, label %bb.af

_ZNSt6vectorIjSaIjEED2Ev.exit185.thread:          ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i225
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.lr.ph435:                                        ; preds = %.lr.ph435.preheader, %bb.ae
  %.1102433 = phi i32 [ %.4105, %bb.ae ], [ %.0101459, %.lr.ph435.preheader ] ; 3 uses
  %.1123432 = phi i32 [ %.4126, %bb.ae ], [ %.0122456, %.lr.ph435.preheader ] ; 3 uses
  %.0127431 = phi ptr [ %i.ff, %bb.ae ], [ %i.fc, %.lr.ph435.preheader ] ; 2 uses
  %.0129430 = phi i32 [ %i.gy, %bb.ae ], [ 0, %.lr.ph435.preheader ]
  %.sroa.0296.1429 = phi ptr [ %.sroa.0296.3, %bb.ae ], [ %.sroa.0296.0455, %.lr.ph435.preheader ] ; 3 uses
  %.sroa.0252.0428 = phi ptr [ %.sroa.0252.3, %bb.ae ], [ %.sroa.0254.1, %.lr.ph435.preheader ] ; 3 uses
  %.sroa.17.1427 = phi ptr [ %.sroa.17.4, %bb.ae ], [ %.sroa.17.0454, %.lr.ph435.preheader ] ; 3 uses
  %.sroa.9278.1426 = phi ptr [ %.sroa.9278.4, %bb.ae ], [ %.sroa.9278.0453, %.lr.ph435.preheader ] ; 3 uses
  %.sroa.0274.1425 = phi ptr [ %.sroa.0274.4, %bb.ae ], [ %.sroa.0274.0452, %.lr.ph435.preheader ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0127431, i64 4
  %i.fg = load i32, ptr %.0127431, align 4        ; 2 uses
  %i.fh = zext i32 %i.fg to i64                   ; 2 uses
  %i.fi = lshr i32 %i.fg, 6
  %.zext = zext nneg i32 %i.fi to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0287.0, i64 %.zext ; 3 uses
  %i.fk = and i64 %i.fh, 63
  %i.fl = shl nuw i64 1, %i.fk                    ; 2 uses
  %i.fm = load i64, ptr %i.fj, align 8            ; 2 uses
  %i.fn = and i64 %i.fl, %i.fm
  %.not361 = icmp eq i64 %i.fn, 0
  br i1 %.not361, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %.lr.ph435
  %i.fo = load ptr, ptr %i.f, align 8
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %i.fh ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8            ; 2 uses
  %.not467 = icmp eq i32 %i.fq, 0
  br i1 %.not467, label %._crit_edge417, label %.lr.ph416

.lr.ph416:                                        ; preds = %bb.t
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %wide.trip.count = zext i32 %i.fq to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph416, %bb.ad
  %indvars.iv = phi i64 [ 0, %.lr.ph416 ], [ %indvars.iv.next, %bb.ad ] ; 2 uses
  %.2103414 = phi i32 [ %.1102433, %.lr.ph416 ], [ %.3104, %bb.ad ] ; 2 uses
  %.2124412 = phi i32 [ %.1123432, %.lr.ph416 ], [ %.3125, %bb.ad ] ; 4 uses
  %.sroa.0296.2411 = phi ptr [ %.sroa.0296.1429, %.lr.ph416 ], [ %i.go, %bb.ad ] ; 2 uses
  %.sroa.0252.1410 = phi ptr [ %.sroa.0252.0428, %.lr.ph416 ], [ %.sroa.0252.2, %bb.ad ] ; 3 uses
  %.sroa.17.2409 = phi ptr [ %.sroa.17.1427, %.lr.ph416 ], [ %.sroa.17.3, %bb.ad ] ; 6 uses
  %.sroa.9278.2408 = phi ptr [ %.sroa.9278.1426, %.lr.ph416 ], [ %.sroa.9278.3, %bb.ad ] ; 4 uses
  %.sroa.0274.2407 = phi ptr [ %.sroa.0274.1425, %.lr.ph416 ], [ %.sroa.0274.3, %bb.ad ] ; 8 uses
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv
  %i.fu = load i32, ptr %i.ft, align 4            ; 7 uses
  %.not139 = icmp eq i32 %.0107458, %i.fu
  br i1 %.not139, label %._crit_edge481, label %bb.v

._crit_edge481:                                   ; preds = %bb.u
  %.pre483 = zext nneg i32 %i.fu to i64
  br label %bb.ab

bb.v:                                             ; preds = %bb.u
  %.not.i.i167 = icmp eq ptr %.sroa.9278.2408, %.sroa.17.2409
  br i1 %.not.i.i167, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %i.fu, ptr %.sroa.9278.2408, align 4
  br label %_ZNSt5stackIjSt6vectorIjSaIjEEE4pushERKj.exit

bb.x:                                             ; preds = %bb.v
  %i.fv = ptrtoint ptr %.sroa.17.2409 to i64
  %i.fw = ptrtoint ptr %.sroa.0274.2407 to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 6 uses
  %i.fy = icmp eq i64 %i.fx, 9223372036854775804
  br i1 %i.fy, label %bb.y, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #19
          to label %.noexc168 unwind label %.loopexit.split-lp

.noexc168:                                        ; preds = %bb.y
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.x
  %i.fz = ashr exact i64 %i.fx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fz, i64 1)
  %i.ga = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fz ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %i.fz
  %i.gc = call i64 @llvm.umin.i64(i64 %i.ga, i64 2305843009213693951)
  %i.gd = select i1 %i.gb, i64 2305843009213693951, i64 %i.gc ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.gd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ge = shl nuw nsw i64 %i.gd, 2
  %i.gf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ge) #17
          to label %.noexc169 unwind label %.loopexit ; 4 uses

.noexc169:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 %i.fx ; 2 uses
  store i32 %i.fu, ptr %i.gg, align 4
  %i.gh = icmp sgt i64 %i.fx, 0
  br i1 %i.gh, label %bb.z, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.z:                                             ; preds = %.noexc169
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gf, ptr align 4 %.sroa.0274.2407, i64 %i.fx, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.z, %.noexc169
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0274.2407, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0274.2407, i64 noundef %i.fx) #18
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.aa, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gd
  br label %_ZNSt5stackIjSt6vectorIjSaIjEEE4pushERKj.exit

_ZNSt5stackIjSt6vectorIjSaIjEEE4pushERKj.exit:    ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.w
  %.sroa.0274.7 = phi ptr [ %i.gf, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.0274.2407, %bb.w ]
  %.pn362 = phi ptr [ %i.gg, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.9278.2408, %bb.w ]
  %.sroa.17.7 = phi ptr [ %i.gi, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.17.2409, %bb.w ]
  %.sroa.9278.8 = getelementptr inbounds nuw i8, ptr %.pn362, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0252.1410, i64 4
  store i32 %i.fu, ptr %.sroa.0252.1410, align 4
  %i.gk = zext i32 %i.fu to i64                   ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.gk ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = add i32 %i.gm, -1
  store i32 %i.gn, ptr %i.gl, align 4
  br label %bb.ab

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ab:                                            ; preds = %._crit_edge481, %_ZNSt5stackIjSt6vectorIjSaIjEEE4pushERKj.exit
  %.pre-phi484 = phi i64 [ %.pre483, %._crit_edge481 ], [ %i.gk, %_ZNSt5stackIjSt6vectorIjSaIjEEE4pushERKj.exit ]
  %.sroa.0274.3 = phi ptr [ %.sroa.0274.2407, %._crit_edge481 ], [ %.sroa.0274.7, %_ZNSt5stackIjSt6vectorIjSaIjEEE4pushERKj.exit ] ; 2 uses
  %.sroa.9278.3 = phi ptr [ %.sroa.9278.2408, %._crit_edge481 ], [ %.sroa.9278.8, %_ZNSt5stackIjSt6vectorIjSaIjEEE4pushERKj.exit ] ; 2 uses
  %.sroa.17.3 = phi ptr [ %.sroa.17.2409, %._crit_edge481 ], [ %.sroa.17.7, %_ZNSt5stackIjSt6vectorIjSaIjEEE4pushERKj.exit ] ; 2 uses
  %.sroa.0252.2 = phi ptr [ %.sroa.0252.1410, %._crit_edge481 ], [ %i.gj, %_ZNSt5stackIjSt6vectorIjSaIjEEE4pushERKj.exit ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0296.2411, i64 4 ; 2 uses
  store i32 %i.fu, ptr %.sroa.0296.2411, align 4
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0311.1, i64 %.pre-phi484 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = sub i32 %.2124412, %i.gq
  %i.gs = load i32, ptr %i.t, align 8
  %i.gt = icmp ugt i32 %i.gr, %i.gs
  br i1 %i.gt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gu = add nsw i32 %.2124412, 1
  store i32 %.2124412, ptr %i.gp, align 4
  %i.gv = add i32 %.2103414, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.3125 = phi i32 [ %i.gu, %bb.ac ], [ %.2124412, %bb.ab ] ; 2 uses
  %.3104 = phi i32 [ %i.gv, %bb.ac ], [ %.2103414, %bb.ab ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge417.loopexit, label %bb.u, !llvm.loop !12

._crit_edge417.loopexit:                          ; preds = %bb.ad
  %.pre = load i64, ptr %i.fj, align 8
  br label %._crit_edge417

._crit_edge417:                                   ; preds = %._crit_edge417.loopexit, %bb.t
  %i.gw = phi i64 [ %i.fm, %bb.t ], [ %.pre, %._crit_edge417.loopexit ]
  %.sroa.0274.2.lcssa = phi ptr [ %.sroa.0274.1425, %bb.t ], [ %.sroa.0274.3, %._crit_edge417.loopexit ]
  %.sroa.9278.2.lcssa = phi ptr [ %.sroa.9278.1426, %bb.t ], [ %.sroa.9278.3, %._crit_edge417.loopexit ]
  %.sroa.17.2.lcssa = phi ptr [ %.sroa.17.1427, %bb.t ], [ %.sroa.17.3, %._crit_edge417.loopexit ]
  %.sroa.0252.1.lcssa = phi ptr [ %.sroa.0252.0428, %bb.t ], [ %.sroa.0252.2, %._crit_edge417.loopexit ]
  %.sroa.0296.2.lcssa = phi ptr [ %.sroa.0296.1429, %bb.t ], [ %i.go, %._crit_edge417.loopexit ]
  %.2124.lcssa = phi i32 [ %.1123432, %bb.t ], [ %.3125, %._crit_edge417.loopexit ]
  %.2103.lcssa = phi i32 [ %.1102433, %bb.t ], [ %.3104, %._crit_edge417.loopexit ]
  %i.gx = or i64 %i.gw, %i.fl
  store i64 %i.gx, ptr %i.fj, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge417, %.lr.ph435
  %.sroa.0274.4 = phi ptr [ %.sroa.0274.1425, %.lr.ph435 ], [ %.sroa.0274.2.lcssa, %._crit_edge417 ] ; 2 uses
  %.sroa.9278.4 = phi ptr [ %.sroa.9278.1426, %.lr.ph435 ], [ %.sroa.9278.2.lcssa, %._crit_edge417 ] ; 2 uses
  %.sroa.17.4 = phi ptr [ %.sroa.17.1427, %.lr.ph435 ], [ %.sroa.17.2.lcssa, %._crit_edge417 ] ; 2 uses
  %.sroa.0252.3 = phi ptr [ %.sroa.0252.0428, %.lr.ph435 ], [ %.sroa.0252.1.lcssa, %._crit_edge417 ] ; 2 uses
  %.sroa.0296.3 = phi ptr [ %.sroa.0296.1429, %.lr.ph435 ], [ %.sroa.0296.2.lcssa, %._crit_edge417 ] ; 2 uses
  %.4126 = phi i32 [ %.1123432, %.lr.ph435 ], [ %.2124.lcssa, %._crit_edge417 ] ; 2 uses
  %.4105 = phi i32 [ %.1102433, %.lr.ph435 ], [ %.2103.lcssa, %._crit_edge417 ] ; 2 uses
  %i.gy = add nuw i32 %.0129430, 1                ; 2 uses
  %exitcond475.not = icmp eq i32 %i.gy, %i.ew
  br i1 %exitcond475.not, label %._crit_edge436, label %.lr.ph435, !llvm.loop !13

._crit_edge450:                                   ; preds = %bb.ah
  %i.gz = icmp eq i32 %.3110, -1
  br i1 %i.gz, label %.preheader364.preheader, label %.loopexit363

.preheader364.preheader:                          ; preds = %._crit_edge436, %._crit_edge450
  br label %.preheader364

bb.af:                                            ; preds = %._crit_edge436, %bb.ah
  %.1108447 = phi i32 [ %.3110, %bb.ah ], [ -1, %._crit_edge436 ] ; 2 uses
  %.0115446 = phi i32 [ %.2117, %bb.ah ], [ -1, %._crit_edge436 ] ; 3 uses
  %.sroa.0238.0445 = phi ptr [ %i.hk, %bb.ah ], [ %.sroa.0254.1, %._crit_edge436 ] ; 2 uses
  %i.ha = load i32, ptr %.sroa.0238.0445, align 4 ; 2 uses
  %i.hb = zext i32 %i.ha to i64                   ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4            ; 2 uses
  %.not137 = icmp eq i32 %i.hd, 0
  br i1 %.not137, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0311.1, i64 %i.hb
  %i.hf = load i32, ptr %i.he, align 4
  %i.hg = sub i32 %.1123.lcssa, %i.hf             ; 2 uses
  %i.hh = shl i32 %i.hd, 1
  %i.hi = add i32 %i.hg, %i.hh
  %4 = load i32, ptr %i.t, align 8
  %.not138 = icmp ugt i32 %i.hi, %4
  %spec.select = select i1 %.not138, i32 0, i32 %i.hg ; 2 uses
  %i.hj = icmp sgt i32 %spec.select, %.0115446
  %.1116 = call i32 @llvm.smax.i32(i32 %spec.select, i32 %.0115446)
  %.2109 = select i1 %i.hj, i32 %i.ha, i32 %.1108447
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.2117 = phi i32 [ %.1116, %bb.ag ], [ %.0115446, %bb.af ]
  %.3110 = phi i32 [ %.2109, %bb.ag ], [ %.1108447, %bb.af ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0238.0445, i64 4 ; 2 uses
  %.not360 = icmp eq ptr %i.hk, %.sroa.0252.0.lcssa
  br i1 %.not360, label %._crit_edge450, label %bb.af, !llvm.loop !14

.preheader364:                                    ; preds = %.preheader364.preheader, %bb.ai
  %.sroa.9278.5 = phi ptr [ %i.hm, %bb.ai ], [ %.sroa.9278.1.lcssa, %.preheader364.preheader ] ; 3 uses
  %i.hl = icmp eq ptr %.sroa.0274.1.lcssa, %.sroa.9278.5
  br i1 %i.hl, label %.preheader, label %bb.ai

bb.ai:                                            ; preds = %.preheader364
  %i.hm = getelementptr inbounds i8, ptr %.sroa.9278.5, i64 -4 ; 4 uses
  %i.hn = load i32, ptr %i.hm, align 4            ; 3 uses
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4
  %.not135 = icmp eq i32 %i.hq, 0
  br i1 %.not135, label %.preheader364, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hr = icmp eq i32 %i.hn, -1
  br i1 %i.hr, label %.preheader, label %.loopexit363

.preheader:                                       ; preds = %.preheader364, %bb.aj
  %.sroa.9278.6546 = phi ptr [ %i.hm, %bb.aj ], [ %.sroa.9278.5, %.preheader364 ]
  %i.hs = load i32, ptr %i.n, align 4             ; 2 uses
  %i.ht = call i32 @llvm.smax.i32(i32 %.0119457, i32 %i.hs)
  %smax479 = sext i32 %i.ht to i64
  %exitcond480.not611.not = icmp slt i32 %.0119457, %i.hs
  br i1 %exitcond480.not611.not, label %.lr.ph613, label %.loopexit363.thread

.lr.ph613:                                        ; preds = %.preheader
  %i.hu = sext i32 %.0119457 to i64
  br label %bb.al

bb.ak:                                            ; preds = %bb.al
  %exitcond480.not = icmp eq i64 %indvars.iv.next477, %smax479
  br i1 %exitcond480.not, label %.loopexit363.thread, label %bb.al, !llvm.loop !15

bb.al:                                            ; preds = %.lr.ph613, %bb.ak
  %indvars.iv476612 = phi i64 [ %i.hu, %.lr.ph613 ], [ %indvars.iv.next477, %bb.ak ]
  %indvars.iv.next477 = add nsw i64 %indvars.iv476612, 1 ; 4 uses
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %indvars.iv.next477
  %i.hw = load i32, ptr %i.hv, align 4
  %.not136 = icmp eq i32 %i.hw, 0
  br i1 %.not136, label %bb.ak, label %.loopexit363.loopexit, !llvm.loop !15

.loopexit363.loopexit:                            ; preds = %bb.al
  %indvars.le = trunc i64 %indvars.iv.next477 to i32 ; 2 uses
  br label %.loopexit363

.loopexit363:                                     ; preds = %.loopexit363.loopexit, %bb.aj, %._crit_edge450
  %.sroa.9278.7 = phi ptr [ %i.hm, %bb.aj ], [ %.sroa.9278.1.lcssa, %._crit_edge450 ], [ %.sroa.9278.6546, %.loopexit363.loopexit ]
  %.2121 = phi i32 [ %.0119457, %bb.aj ], [ %.0119457, %._crit_edge450 ], [ %indvars.le, %.loopexit363.loopexit ]
  %.7114 = phi i32 [ %i.hn, %bb.aj ], [ %.3110, %._crit_edge450 ], [ %indvars.le, %.loopexit363.loopexit ] ; 2 uses
  %i.hx = icmp sgt i32 %.7114, -1
  br i1 %i.hx, label %bb.s, label %.loopexit363.thread, !llvm.loop !16

.loopexit363.thread:                              ; preds = %.loopexit363, %.preheader, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store float 0.000000e+00, ptr %i.d, align 4
  %i.hy = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %.loopexit363.thread
  br i1 %i.hy, label %bb.au, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hz = load i32, ptr %i.h, align 8
  %i.ia = udiv i32 %.1102.lcssa, %i.hz
  %i.ib = uitofp i32 %i.ia to float               ; 2 uses
  store float %i.ib, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.ic = load float, ptr %i.c, align 4           ; 2 uses
  %i.id = fsub float %i.ic, %i.ib
  %i.ie = fdiv float %i.id, %i.ic
  %i.if = fmul float %i.ie, 1.000000e+02
  store float %i.if, ptr %i.e, align 4
  %i.ig = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i32, ptr %i.ih, align 8
  %i.ij = icmp eq i32 %i.ii, 2
  br i1 %i.ij, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.ik = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6Assimp6Logger12verboseDebugIJRA6_KcRjRA12_S2_RfRA7_S2_S8_RA17_S2_RKfEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ik, ptr noundef nonnull align 1 dereferenceable(6) @.str.8, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(12) @.str.9, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(7) @.str.10, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(17) @.str.11, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.at unwind label %bb.as

bb.ar:                                            ; preds = %.loopexit363.thread
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.as:                                            ; preds = %bb.aq, %bb.ap, %bb.an
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %bb.be

bb.at:                                            ; preds = %bb.aq, %bb.ao
  %i.in = load i32, ptr %i.h, align 8
  %i.io = uitofp i32 %i.in to float
  %i.ip = load float, ptr %i.d, align 4
  %i.iq = fmul float %i.ip, %i.io
  store float %i.iq, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.am
  %i.ir = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not133460 = icmp eq ptr %i.ir, %i.w
  br i1 %.not133460, label %._crit_edge465, label %.lr.ph464

._crit_edge465:                                   ; preds = %.thread325, %bb.au
  %i.is = load float, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %.not.i.i.i170 = icmp eq ptr %.sroa.0254.1, null
  br i1 %.not.i.i.i170, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %._crit_edge465
  %i.it = ptrtoint ptr %.sroa.0254.1 to i64
  %i.iu = sub i64 %.sroa.16.1, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0254.1, i64 noundef %i.iu) #18
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge465, %bb.av
  %.not.i.i.i172 = icmp eq ptr %.sroa.0268.0530542, null
  br i1 %.not.i.i.i172, label %_ZNSt6vectorIjSaIjEED2Ev.exit174, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.iv = ptrtoint ptr %.sroa.10.0534541 to i64
  %i.iw = ptrtoint ptr %.sroa.0268.0530542 to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0268.0530542, i64 noundef %i.ix) #18
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit174

_ZNSt6vectorIjSaIjEED2Ev.exit174:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.aw
  %.not.i.i.i.i175 = icmp eq ptr %.sroa.0274.1.lcssa, null
  br i1 %.not.i.i.i.i175, label %_ZNSt5stackIjSt6vectorIjSaIjEEED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit174
  %i.iy = ptrtoint ptr %.sroa.17.1.lcssa to i64
  %i.iz = ptrtoint ptr %.sroa.0274.1.lcssa to i64
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0274.1.lcssa, i64 noundef %i.ja) #18
  br label %_ZNSt5stackIjSt6vectorIjSaIjEEED2Ev.exit

_ZNSt5stackIjSt6vectorIjSaIjEEED2Ev.exit:         ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit174, %bb.ax
  %.not.i.i176 = icmp eq ptr %.sroa.0287.0, null
  br i1 %.not.i.i176, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt5stackIjSt6vectorIjSaIjEEED2Ev.exit
  %i.jb = ptrtoint ptr %.sroa.15294.0 to i64
  %i.jc = ptrtoint ptr %.sroa.0287.0 to i64
  %i.jd = sub i64 %i.jb, %i.jc                    ; 2 uses
  %i.je = ashr exact i64 %i.jd, 3
  %i.jf = sub nsw i64 0, %i.je
  %i.jg = getelementptr inbounds [8 x i8], ptr %.sroa.15294.0, i64 %i.jf
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jd) #18
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt5stackIjSt6vectorIjSaIjEEED2Ev.exit, %bb.ay
  %.not.i.i.i177 = icmp eq ptr %.sroa.0300.1521, null
  br i1 %.not.i.i.i177, label %_ZNSt6vectorIjSaIjEED2Ev.exit179, label %bb.az

bb.az:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.jh = ptrtoint ptr %.sroa.0300.1521 to i64
  %i.ji = sub i64 %.sroa.16308.1519, %i.jh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0300.1521, i64 noundef %i.ji) #18
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit179

_ZNSt6vectorIjSaIjEED2Ev.exit179:                 ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.az
  %.not.i.i.i180 = icmp eq ptr %.sroa.0311.1, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIjSaIjEED2Ev.exit182, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit179
  %i.jj = ptrtoint ptr %.sroa.0311.1 to i64
  %i.jk = sub i64 %.sroa.18.1, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0311.1, i64 noundef %i.jk) #18
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit182

_ZNSt6vectorIjSaIjEED2Ev.exit182:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit179, %bb.ba
  call void @_ZN6Assimp23VertexTriangleAdjacencyD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
end_hunk_0
