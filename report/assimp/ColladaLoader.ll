inline.NumInlined: 3826
inline.NumDeleted: 1929
begin_hunk_0_@_ZN6Assimp13ColladaLoader14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  %i.pq = call float @llvm.fmuladd.f32(float %i.pl, float 0.000000e+00, float %i.pp)
  %i.pr = call float @llvm.fmuladd.f32(float %i.pm, float 0.000000e+00, float %i.nt)
  %i.ps = fadd float %i.pl, %i.pr
  %i.pt = shufflevector <2 x float> %i.os, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.pu = insertelement <4 x float> %i.pt, float %i.nd, i64 0
  %i.pv = shufflevector <2 x float> %i.pk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.pw = shufflevector <4 x float> %i.pu, <4 x float> %i.pv, <4 x i32> <i32 0, i32 1, i32 0, i32 4>
  %i.px = insertelement <4 x float> poison, float %i.ng, i64 0
  %i.py = insertelement <4 x float> %i.px, float %i.nk, i64 1
  %i.pz = insertelement <4 x float> %i.py, float %i.nq, i64 3
  %i.qa = shufflevector <4 x float> %i.pz, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.qb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pw, <4 x float> zeroinitializer, <4 x float> %i.qa)
  %i.qc = shufflevector <4 x float> %i.ow, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.qd = fsub <4 x float> %i.qb, %i.qc
  %i.qe = insertelement <4 x float> %i.ow, float %i.ot, i64 0
  %i.qf = shufflevector <4 x float> %i.qe, <4 x float> %i.pv, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.qg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qf, <4 x float> zeroinitializer, <4 x float> %i.qd)
  %i.qh = insertelement <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, float %i.ot, i64 2
  %i.qi = fadd <4 x float> %i.qh, %i.qg
  store <4 x float> %i.qi, ptr %i.ne, align 4
  store float %i.po, ptr %i.nn, align 4
  store float %i.pq, ptr %i.nr, align 4
  store float %i.ps, ptr %i.ns, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa, %bb.x
  %i.qj = getelementptr inbounds nuw i8, ptr %4, i64 760
  %i.qk = load i64, ptr %i.qj, align 8            ; 4 uses
  %i.ql = icmp eq i64 %i.qk, 0
  br i1 %i.ql, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.qm = trunc i64 %i.qk to i32                  ; 2 uses
  %i.qn = icmp eq i32 %i.qm, 0
  br i1 %i.qn, label %_ZN10aiMetadata5AllocEj.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.qo = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc50 unwind label %bb.ae  ; 4 uses

.noexc50:                                         ; preds = %bb.ad
  store i32 %i.qm, ptr %i.qo, align 8
  %i.qp = and i64 %i.qk, 4294967295               ; 4 uses
  %i.qq = mul nuw nsw i64 %i.qp, 1028             ; 3 uses
  %i.qr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qq) #30
          to label %.noexc51 unwind label %bb.ae  ; 2 uses

.noexc51:                                         ; preds = %.noexc50
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qt = add nsw i64 %i.qq, -1028
  %i.qu = urem i64 %i.qt, 1028
  %i.qv = sub nsw i64 %i.qq, %i.qu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.qr, i8 0, i64 %i.qv, i1 false)
  store ptr %i.qr, ptr %i.qs, align 8
  %i.qw = shl nuw nsw i64 %i.qp, 4
  %i.qx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qw) #30
          to label %.noexc52 unwind label %bb.ae  ; 4 uses

.noexc52:                                         ; preds = %.noexc51
  %i.qy = getelementptr inbounds nuw [16 x i8], ptr %i.qx, i64 %i.qp
  %i.qz = add nuw nsw i64 %i.qp, 1152921504606846975
  %i.ra = and i64 %i.qz, 1152921504606846975
  %xtraiter = and i64 %i.qk, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.noexc52, %.prol.preheader
  %i.rb = phi ptr [ %i.rd, %.prol.preheader ], [ %i.qx, %.noexc52 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.noexc52 ]
  store i32 10, ptr %i.rb, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  store ptr null, ptr %i.rc, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !11

.prol.loopexit:                                   ; preds = %.prol.preheader, %.noexc52
  %.unr = phi ptr [ %i.qx, %.noexc52 ], [ %i.rd, %.prol.preheader ]
  %i.re = icmp samesign ult i64 %i.ra, 7
  br i1 %i.re, label %.unr-lcssa, label %.noexc52.new

.noexc52.new:                                     ; preds = %.prol.loopexit, %.noexc52.new
  %i.rf = phi ptr [ %i.rv, %.noexc52.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 10, ptr %i.rf, align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store ptr null, ptr %i.rg, align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  store i32 10, ptr %i.rh, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 24
  store ptr null, ptr %i.ri, align 8
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rf, i64 32
  store i32 10, ptr %i.rj, align 8
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rf, i64 40
  store ptr null, ptr %i.rk, align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rf, i64 48
  store i32 10, ptr %i.rl, align 8
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rf, i64 56
  store ptr null, ptr %i.rm, align 8
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rf, i64 64
  store i32 10, ptr %i.rn, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rf, i64 72
  store ptr null, ptr %i.ro, align 8
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rf, i64 80
  store i32 10, ptr %i.rp, align 8
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rf, i64 88
  store ptr null, ptr %i.rq, align 8
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rf, i64 96
  store i32 10, ptr %i.rr, align 8
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rf, i64 104
  store ptr null, ptr %i.rs, align 8
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rf, i64 112
  store i32 10, ptr %i.rt, align 8
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rf, i64 120
  store ptr null, ptr %i.ru, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rf, i64 128 ; 2 uses
  %i.rw = icmp eq ptr %i.rv, %i.qy
  br i1 %i.rw, label %.unr-lcssa, label %.noexc52.new

.unr-lcssa:                                       ; preds = %.noexc52.new, %.prol.loopexit
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  store ptr %i.qx, ptr %i.rx, align 8
  br label %_ZN10aiMetadata5AllocEj.exit

_ZN10aiMetadata5AllocEj.exit:                     ; preds = %.unr-lcssa, %bb.ac
  %.0.i = phi ptr [ %i.qo, %.unr-lcssa ], [ null, %bb.ac ]
  %i.ry = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  store ptr %.0.i, ptr %i.ry, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %4, i64 744
  %i.sa = load ptr, ptr %i.rz, align 8            ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %4, i64 728 ; 2 uses
  %.not102104 = icmp eq ptr %i.sa, %i.sb
  br i1 %.not102104, label %.loopexit, label %.lr.ph

bb.ae:                                            ; preds = %.noexc51, %.noexc50, %bb.ad
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.lr.ph:                                           ; preds = %_ZN10aiMetadata5AllocEj.exit, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %.0106 = phi i64 [ %i.to, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit ], [ 0, %_ZN10aiMetadata5AllocEj.exit ] ; 3 uses
  %.sroa.065.0105 = phi ptr [ %i.tn, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit ], [ %i.sa, %_ZN10aiMetadata5AllocEj.exit ] ; 6 uses
  %i.sd = load ptr, ptr %i.ry, align 8            ; 3 uses
  %i.se = trunc i64 %.0106 to i32
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.065.0105, i64 32
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.065.0105, i64 64 ; 4 uses
  %i.sh = load i32, ptr %i.sd, align 8
  %.not.i = icmp ugt i32 %i.sh, %i.se
  br i1 %.not.i, label %bb.af, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.af:                                            ; preds = %.lr.ph
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.065.0105, i64 40
  %i.sj = load i64, ptr %i.si, align 8            ; 5 uses
  %i.sk = icmp eq i64 %i.sj, 0
  br i1 %i.sk, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.sl = and i64 %.0106, 4294967295              ; 3 uses
  %i.sm = icmp ugt i64 %i.sj, 1023
  br i1 %i.sm, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.so = load ptr, ptr %i.sn, align 8
  %i.sp = getelementptr inbounds nuw [1028 x i8], ptr %i.so, i64 %i.sl ; 2 uses
  %i.sq = trunc nuw nsw i64 %i.sj to i32
  store i32 %i.sq, ptr %i.sp, align 4
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 4 ; 2 uses
  %i.ss = load ptr, ptr %i.sf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.sr, ptr align 1 %i.ss, i64 %i.sj, i1 false)
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.sj
  store i8 0, ptr %i.st, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.ah, %bb.ag
  %i.su = getelementptr inbounds nuw i8, ptr %i.sd, i64 16 ; 2 uses
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = getelementptr inbounds nuw [16 x i8], ptr %i.sv, i64 %i.sl
  store i32 5, ptr %i.sw, align 8
  %i.sx = load ptr, ptr %i.su, align 8
  %i.sy = getelementptr inbounds nuw [16 x i8], ptr %i.sx, i64 %i.sl ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 8 ; 2 uses
  %i.ta = load ptr, ptr %i.sz, align 8            ; 5 uses
  %.not24.i = icmp eq ptr %i.ta, null
  br i1 %.not24.i, label %.thread29.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.tb = load i32, ptr %i.sy, align 8
  %.not25.i = icmp eq i32 %i.tb, 7
  br i1 %.not25.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1028) %i.ta, ptr noundef nonnull align 4 dereferenceable(1028) %i.sg, i64 1028, i1 false)
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.ak:                                            ; preds = %bb.ai
  %i.tc = icmp eq ptr %i.ta, %i.sg
  br i1 %i.tc, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.td = load i32, ptr %i.sg, align 8
  %spec.select.i.i = call i32 @llvm.umin.i32(i32 %i.td, i32 1023) ; 2 uses
  store i32 %spec.select.i.i, ptr %i.ta, align 4
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 4 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.065.0105, i64 68
  %i.tg = zext nneg i32 %spec.select.i.i to i64   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.te, ptr nonnull align 4 %i.tf, i64 %i.tg, i1 false)
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.tg
  store i8 0, ptr %i.th, align 1
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

.thread29.i:                                      ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %.pre.i = load i32, ptr %i.sg, align 8
  %i.ti = invoke noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #30
          to label %.noexc54 unwind label %bb.am  ; 3 uses

.noexc54:                                         ; preds = %.thread29.i
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.tj, i8 0, i64 1024, i1 false)
  %spec.select.i28.i = call i32 @llvm.umin.i32(i32 %.pre.i, i32 1023) ; 2 uses
  store i32 %spec.select.i28.i, ptr %i.ti, align 4
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.065.0105, i64 68
  %i.tl = zext nneg i32 %spec.select.i28.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.tj, ptr nonnull align 4 %i.tk, i64 %i.tl, i1 false)
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tl
  store i8 0, ptr %i.tm, align 1
  store ptr %i.ti, ptr %i.sz, align 8
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %.noexc54, %bb.al, %bb.ak, %bb.aj, %bb.af, %.lr.ph
  %i.tn = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.065.0105) #31 ; 2 uses
  %i.to = add i64 %.0106, 1
  %.not102 = icmp eq ptr %i.tn, %i.sb
  br i1 %.not102, label %.loopexit, label %.lr.ph, !llvm.loop !13

bb.am:                                            ; preds = %.thread29.i
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.loopexit:                                        ; preds = %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, %_ZN10aiMetadata5AllocEj.exit, %bb.ab
  %i.tq = load ptr, ptr %i.v, align 8
  %i.tr = load ptr, ptr %i.t, align 8
  %i.ts = ptrtoint ptr %i.tq to i64
  %i.tt = ptrtoint ptr %i.tr to i64
  %i.tu = sub i64 %i.ts, %i.tt
  %i.tv = lshr exact i64 %i.tu, 3
  %i.tw = trunc i64 %i.tv to i32
  %i.tx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 %i.tw, ptr %i.tx, align 8
  %i.ty = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.tz = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ua = icmp eq ptr %i.ty, %i.tz
  br i1 %i.ua, label %_ZN6Assimp13ColladaLoader16StoreSceneMeshesEP7aiScene.exit, label %bb.an

bb.an:                                            ; preds = %.loopexit
  %i.ub = ptrtoint ptr %i.tz to i64
  %i.uc = ptrtoint ptr %i.ty to i64
  %i.ud = sub i64 %i.ub, %i.uc
  %i.ue = call i64 @llvm.smax.i64(i64 %i.ud, i64 -1)
  %i.uf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ue) #30
          to label %.noexc55 unwind label %bb.g   ; 3 uses

.noexc55:                                         ; preds = %bb.an
  %i.ug = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.uf, ptr %i.ug, align 8
  %i.uh = load ptr, ptr %i.t, align 8             ; 5 uses
  %i.ui = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.uj = ptrtoint ptr %i.ui to i64
  %i.uk = ptrtoint ptr %i.uh to i64
  %i.ul = sub i64 %i.uj, %i.uk                    ; 3 uses
  %i.um = icmp sgt i64 %i.ul, 8
  br i1 %i.um, label %bb.ao, label %bb.ap, !prof !14

bb.ao:                                            ; preds = %.noexc55
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.uf, ptr align 8 %i.uh, i64 %i.ul, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i

bb.ap:                                            ; preds = %.noexc55
  %i.un = icmp eq i64 %i.ul, 8
  br i1 %i.un, label %bb.aq, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.uo = load ptr, ptr %i.uh, align 8
  store ptr %i.uo, ptr %i.uf, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao
  %.not.i.i.i = icmp eq ptr %i.ui, %i.uh
  br i1 %.not.i.i.i, label %_ZN6Assimp13ColladaLoader16StoreSceneMeshesEP7aiScene.exit, label %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i
  store ptr %i.uh, ptr %i.v, align 8
  br label %_ZN6Assimp13ColladaLoader16StoreSceneMeshesEP7aiScene.exit

_ZN6Assimp13ColladaLoader16StoreSceneMeshesEP7aiScene.exit: ; preds = %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i, %.loopexit
  %i.up = load ptr, ptr %i.ad, align 8
  %i.uq = load ptr, ptr %i.ab, align 8
  %i.ur = ptrtoint ptr %i.up to i64
  %i.us = ptrtoint ptr %i.uq to i64
  %i.ut = sub i64 %i.ur, %i.us
  %i.uu = lshr exact i64 %i.ut, 4
  %i.uv = trunc i64 %i.uu to i32
  %i.uw = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.uv, ptr %i.uw, align 8
  %i.ux = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.uy = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.uz = icmp eq ptr %i.ux, %i.uy
  br i1 %i.uz, label %_ZN6Assimp13ColladaLoader19StoreSceneMaterialsEP7aiScene.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN6Assimp13ColladaLoader16StoreSceneMeshesEP7aiScene.exit
  %i.va = ptrtoint ptr %i.uy to i64
  %i.vb = ptrtoint ptr %i.ux to i64
  %i.vc = sub i64 %i.va, %i.vb
  %i.vd = call i64 @llvm.smax.i64(i64 %i.vc, i64 -1)
  %i.ve = ashr i64 %i.vd, 1
  %i.vf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ve) #30
          to label %.noexc57 unwind label %bb.g

.noexc57:                                         ; preds = %bb.ar
  %i.vg = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.vf, ptr %i.vg, align 8
  %i.vh = load ptr, ptr %i.ad, align 8
  %i.vi = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i56 = icmp eq ptr %i.vh, %i.vi
  br i1 %.not.i56, label %_ZN6Assimp13ColladaLoader19StoreSceneMaterialsEP7aiScene.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.vj = icmp eq ptr %i.vt, %i.vu
  br i1 %i.vj, label %_ZN6Assimp13ColladaLoader19StoreSceneMaterialsEP7aiScene.exit, label %_ZSt8_DestroyIPSt4pairIPN6Assimp7Collada6EffectEP10aiMaterialES7_EvT_S9_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIPN6Assimp7Collada6EffectEP10aiMaterialES7_EvT_S9_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge.i
  store ptr %i.vu, ptr %i.ad, align 8
  br label %_ZN6Assimp13ColladaLoader19StoreSceneMaterialsEP7aiScene.exit

.lr.ph.i:                                         ; preds = %.noexc57, %.lr.ph.i
  %i.vk = phi ptr [ %i.vu, %.lr.ph.i ], [ %i.vi, %.noexc57 ]
  %i.vl = phi i64 [ %i.vs, %.lr.ph.i ], [ 0, %.noexc57 ] ; 2 uses
  %.09.i = phi i32 [ %i.vr, %.lr.ph.i ], [ 0, %.noexc57 ]
  %i.vm = getelementptr inbounds nuw [16 x i8], ptr %i.vk, i64 %i.vl
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vo = load ptr, ptr %i.vn, align 8
  %i.vp = load ptr, ptr %i.vg, align 8
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %i.vl
  store ptr %i.vo, ptr %i.vq, align 8
  %i.vr = add i32 %.09.i, 1                       ; 2 uses
  %i.vs = zext i32 %i.vr to i64                   ; 2 uses
  %i.vt = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.vu = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = ptrtoint ptr %i.vu to i64
  %i.vx = sub i64 %i.vv, %i.vw
  %i.vy = ashr exact i64 %i.vx, 4
  %i.vz = icmp ugt i64 %i.vy, %i.vs
  br i1 %i.vz, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !15

_ZN6Assimp13ColladaLoader19StoreSceneMaterialsEP7aiScene.exit: ; preds = %_ZSt8_DestroyIPSt4pairIPN6Assimp7Collada6EffectEP10aiMaterialES7_EvT_S9_RSaIT0_E.exit.i.i.i, %._crit_edge.i, %.noexc57, %_ZN6Assimp13ColladaLoader16StoreSceneMeshesEP7aiScene.exit
  %i.wa = load ptr, ptr %i.ap, align 8
  %i.wb = load ptr, ptr %i.an, align 8
  %i.wc = ptrtoint ptr %i.wa to i64
  %i.wd = ptrtoint ptr %i.wb to i64
  %i.we = sub i64 %i.wc, %i.wd
  %i.wf = lshr exact i64 %i.we, 3
  %i.wg = trunc i64 %i.wf to i32
  %i.wh = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %i.wg, ptr %i.wh, align 8
  %i.wi = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.wj = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.wk = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wk, label %_ZN6Assimp13ColladaLoader18StoreSceneTexturesEP7aiScene.exit, label %bb.as

bb.as:                                            ; preds = %_ZN6Assimp13ColladaLoader19StoreSceneMaterialsEP7aiScene.exit
  %i.wl = ptrtoint ptr %i.wj to i64
  %i.wm = ptrtoint ptr %i.wi to i64
  %i.wn = sub i64 %i.wl, %i.wm
  %i.wo = call i64 @llvm.smax.i64(i64 %i.wn, i64 -1)
  %i.wp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.wo) #30
          to label %.noexc59 unwind label %bb.g   ; 3 uses

.noexc59:                                         ; preds = %bb.as
  %i.wq = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.wp, ptr %i.wq, align 8
  %i.wr = load ptr, ptr %i.an, align 8            ; 5 uses
  %i.ws = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.wt = ptrtoint ptr %i.ws to i64
  %i.wu = ptrtoint ptr %i.wr to i64
  %i.wv = sub i64 %i.wt, %i.wu                    ; 3 uses
  %i.ww = icmp sgt i64 %i.wv, 8
  br i1 %i.ww, label %bb.at, label %bb.au, !prof !14

bb.at:                                            ; preds = %.noexc59
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wp, ptr align 8 %i.wr, i64 %i.wv, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i

bb.au:                                            ; preds = %.noexc59
  %i.wx = icmp eq i64 %i.wv, 8
  br i1 %i.wx, label %bb.av, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i

bb.av:                                            ; preds = %bb.au
  %i.wy = load ptr, ptr %i.wr, align 8
  store ptr %i.wy, ptr %i.wp, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i: ; preds = %bb.av, %bb.au, %bb.at
  %.not.i.i.i58 = icmp eq ptr %i.ws, %i.wr
  br i1 %.not.i.i.i58, label %_ZN6Assimp13ColladaLoader18StoreSceneTexturesEP7aiScene.exit, label %_ZSt8_DestroyIPP9aiTextureS1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPP9aiTextureS1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i
  store ptr %i.wr, ptr %i.ap, align 8
  br label %_ZN6Assimp13ColladaLoader18StoreSceneTexturesEP7aiScene.exit

_ZN6Assimp13ColladaLoader18StoreSceneTexturesEP7aiScene.exit: ; preds = %_ZSt8_DestroyIPP9aiTextureS1_EvT_S3_RSaIT0_E.exit.i.i.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i, %_ZN6Assimp13ColladaLoader19StoreSceneMaterialsEP7aiScene.exit
  %i.wz = load ptr, ptr %i.ah, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp13ColladaLoader14BuildHierarchyERKNS_13ColladaParserEPKNS_7Collada4NodeE:bb.a
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.05291
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1096
  store ptr %i.a, ptr %i.de, align 8
  %i.df = add nuw i64 %.05291, 1                  ; 2 uses
  %i.dg = load ptr, ptr %i.bx, align 8
  %i.dh = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = ashr exact i64 %i.dk, 3
  %i.dm = icmp ult i64 %i.df, %i.dl
  br i1 %i.dm, label %bb.s, label %.preheader, !llvm.loop !27

bb.u:                                             ; preds = %bb.s
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.w, %.preheader
  invoke void @_ZN6Assimp13ColladaLoader18BuildMeshesForNodeERKNS_13ColladaParserEPKNS_7Collada4NodeEP6aiNode(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a)
          to label %bb.x unwind label %bb.q

bb.v:                                             ; preds = %.lr.ph93, %bb.w
  %.092 = phi i64 [ 0, %.lr.ph93 ], [ %i.ej, %bb.w ] ; 4 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.092
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = invoke noundef ptr @_ZN6Assimp13ColladaLoader14BuildHierarchyERKNS_13ColladaParserEPKNS_7Collada4NodeE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.dp)
          to label %bb.w unwind label %.thread

bb.w:                                             ; preds = %bb.v
  %i.dr = load ptr, ptr %i.cu, align 8
  %i.ds = load ptr, ptr %i.bx, align 8
  %i.dt = load ptr, ptr %i.bw, align 8
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = getelementptr i8, ptr %i.dr, i64 %i.dw
  %i.dy = getelementptr [8 x i8], ptr %i.dx, i64 %.092
  store ptr %i.dq, ptr %i.dy, align 8
  %i.dz = load ptr, ptr %i.cu, align 8
  %i.ea = load ptr, ptr %i.bx, align 8
  %i.eb = load ptr, ptr %i.bw, align 8
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = getelementptr i8, ptr %i.dz, i64 %i.ee
  %i.eg = getelementptr [8 x i8], ptr %i.ef, i64 %.092
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1096
  store ptr %i.a, ptr %i.ei, align 8
  %i.ej = add nuw i64 %.092, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ej, %i.ck
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !28

.thread:                                          ; preds = %bb.v
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.x:                                             ; preds = %._crit_edge
  invoke void @_ZN6Assimp13ColladaLoader19BuildCamerasForNodeERKNS_13ColladaParserEPKNS_7Collada4NodeEP6aiNode(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a)
          to label %bb.y unwind label %bb.q

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN6Assimp13ColladaLoader18BuildLightsForNodeERKNS_13ColladaParserEPKNS_7Collada4NodeEP6aiNode(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a)
          to label %bb.z unwind label %bb.q

bb.z:                                             ; preds = %bb.y
  %.not.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6Assimp7Collada4NodeESaIS4_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = sub i64 %i.en, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.eo) #27
  br label %_ZNSt6vectorIPKN6Assimp7Collada4NodeESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp7Collada4NodeESaIS4_EED2Ev.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  ret ptr %i.a

bb.ab:                                            ; preds = %bb.u, %bb.q
  %i.ep = phi ptr [ %i.cg, %bb.u ], [ %.pre96, %bb.q ] ; 2 uses
  %.pn62 = phi { ptr, i32 } [ %i.dn, %bb.u ], [ %i.cs, %bb.q ] ; 2 uses
  %.not.i.i.i88 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIPKN6Assimp7Collada4NodeESaIS4_EED2Ev.exit89, label %bb.ac

bb.ac:                                            ; preds = %.thread, %bb.ab
  %.pn62117 = phi { ptr, i32 } [ %i.ek, %.thread ], [ %.pn62, %bb.ab ]
  %i.eq = phi ptr [ %i.cg, %.thread ], [ %i.ep, %bb.ab ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.eq to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.ev) #27
  br label %_ZNSt6vectorIPKN6Assimp7Collada4NodeESaIS4_EED2Ev.exit89

_ZNSt6vectorIPKN6Assimp7Collada4NodeESaIS4_EED2Ev.exit89: ; preds = %bb.ab, %bb.ac
  %.pn62118 = phi { ptr, i32 } [ %.pn62, %bb.ab ], [ %.pn62117, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIPKN6Assimp7Collada4NodeESaIS4_EED2Ev.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %bb.g
  %.pn62.pn = phi { ptr, i32 } [ %.pn62118, %_ZNSt6vectorIPKN6Assimp7Collada4NodeESaIS4_EED2Ev.exit89 ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %i.am, %bb.g ]
  resume { ptr, i32 } %.pn62.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13ColladaLoader13FillMaterialsERKNS_13ColladaParserEP7aiScene(ptr noundef nonnull align 8 captures(none) dereferenceable(384) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(772) %1, ptr readnone captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not85 = icmp eq ptr %i.c, %i.e
  br i1 %.not85, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.aa, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.aa
  %.sroa.082.086 = phi ptr [ %i.cx, %bb.aa ], [ %i.c, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.082.086, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 20 uses
  %i.h = load ptr, ptr %.sroa.082.086, align 8    ; 42 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 962
  %i.j = load i8, ptr %i.i, align 2, !range !9, !noundef !10
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = load i32, ptr %i.h, align 8
  %switch.tableidx = add i32 %i.l, -1             ; 2 uses
  %i.m = icmp ult i32 %switch.tableidx, 4
  br i1 %i.m, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr noundef nonnull @.str.62)
  br label %bb.d

switch.lookup:                                    ; preds = %bb.b
  %i.o = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp13ColladaLoader13FillMaterialsERKNS_13ColladaParserEP7aiScene, i64 %i.o
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %.lr.ph, %bb.c
  %.sink = phi i32 [ 1, %.lr.ph ], [ %switch.load, %switch.lookup ], [ 2, %bb.c ]
  store i32 %.sink, ptr %i.a, align 4
  %i.p = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.63, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 960
  %i.r = load i8, ptr %i.q, align 8, !range !9, !noundef !10
  %i.s = zext nneg i8 %i.r to i32
  store i32 %i.s, ptr %i.a, align 4
  %i.t = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.64, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 961
  %i.v = load i8, ptr %i.u, align 1, !range !9, !noundef !10
  %i.w = zext nneg i8 %i.v to i32
  store i32 %i.w, ptr %i.a, align 4
  %i.x = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.65, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.z = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %i.y, i32 noundef 16, ptr noundef nonnull @.str.66, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.ab = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %i.aa, i32 noundef 16, ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.ad = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %i.ac, i32 noundef 16, ptr noundef nonnull @.str.68, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.af = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %i.ae, i32 noundef 16, ptr noundef nonnull @.str.69, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.ah = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %i.ag, i32 noundef 16, ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 888
  %i.aj = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %i.ai, i32 noundef 4, ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 896
  %i.al = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %i.ak, i32 noundef 4, ptr noundef nonnull @.str.72, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 892
  %i.an = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %i.am, i32 noundef 4, ptr noundef nonnull @.str.73, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 900 ; 7 uses
  %i.ap = load float, ptr %i.ao, align 4          ; 4 uses
  %i.aq = fcmp ult float %i.ap, 0.000000e+00
  %i.ar = fcmp ugt float %i.ap, 1.000000e+00
  %or.cond = or i1 %i.aq, %i.ar
  br i1 %or.cond, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 905
  %i.at = load i8, ptr %i.as, align 1, !range !9, !noundef !10
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 68 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ay = load float, ptr %i.ax, align 8
  %i.az = fmul float %i.ay, 7.151600e-01
  %i.ba = call float @llvm.fmuladd.f32(float %i.aw, float 2.126710e-01, float %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = call float @llvm.fmuladd.f32(float %i.bc, float 7.216900e-02, float %i.ba)
  %i.be = fmul float %i.ap, %i.bd
  store float %i.be, ptr %i.ao, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store float 1.000000e+00, ptr %i.bf, align 8
  %i.bg = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %i.av, i32 noundef 16, ptr noundef nonnull @.str.74, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.bi = load float, ptr %i.bh, align 8
  %i.bj = fmul float %i.ap, %i.bi
  store float %i.bj, ptr %i.ao, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 906
  %i.bl = load i8, ptr %i.bk, align 2, !range !9, !noundef !10
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bn = load float, ptr %i.ao, align 4
  %i.bo = fsub float 1.000000e+00, %i.bn
  store float %i.bo, ptr %i.ao, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 904
  %i.bq = load i8, ptr %i.bp, align 8, !range !9, !noundef !10
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load float, ptr %i.ao, align 4
  %i.bt = fcmp olt float %i.bs, 1.000000e+00
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bu = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %i.ao, i32 noundef 4, ptr noundef nonnull @.str.75, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.d
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  call void @_ZN6Assimp13ColladaLoader10AddTextureER10aiMaterialRKNS_13ColladaParserERKNS_7Collada6EffectERKNS6_7SamplerE13aiTextureTypej(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull align 8 dereferenceable(963) %i.h, ptr noundef nonnull align 8 dereferenceable(108) %i.by, i32 noundef 10, i32 noundef 0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  call void @_ZN6Assimp13ColladaLoader10AddTextureER10aiMaterialRKNS_13ColladaParserERKNS_7Collada6EffectERKNS6_7SamplerE13aiTextureTypej(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull align 8 dereferenceable(963) %i.h, ptr noundef nonnull align 8 dereferenceable(108) %i.cc, i32 noundef 4, i32 noundef 0)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 440
  call void @_ZN6Assimp13ColladaLoader10AddTextureER10aiMaterialRKNS_13ColladaParserERKNS_7Collada6EffectERKNS6_7SamplerE13aiTextureTypej(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull align 8 dereferenceable(963) %i.h, ptr noundef nonnull align 8 dereferenceable(108) %i.cg, i32 noundef 2, i32 noundef 0)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 328
  call void @_ZN6Assimp13ColladaLoader10AddTextureER10aiMaterialRKNS_13ColladaParserERKNS_7Collada6EffectERKNS6_7SamplerE13aiTextureTypej(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull align 8 dereferenceable(963) %i.h, ptr noundef nonnull align 8 dereferenceable(108) %i.ck, i32 noundef 1, i32 noundef 0)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 672
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 664
  call void @_ZN6Assimp13ColladaLoader10AddTextureER10aiMaterialRKNS_13ColladaParserERKNS_7Collada6EffectERKNS6_7SamplerE13aiTextureTypej(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull align 8 dereferenceable(963) %i.h, ptr noundef nonnull align 8 dereferenceable(108) %i.co, i32 noundef 6, i32 noundef 0)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 560
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 552
  call void @_ZN6Assimp13ColladaLoader10AddTextureER10aiMaterialRKNS_13ColladaParserERKNS_7Collada6EffectERKNS6_7SamplerE13aiTextureTypej(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull align 8 dereferenceable(963) %i.h, ptr noundef nonnull align 8 dereferenceable(108) %i.cs, i32 noundef 8, i32 noundef 0)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 784
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 776
  call void @_ZN6Assimp13ColladaLoader10AddTextureER10aiMaterialRKNS_13ColladaParserERKNS_7Collada6EffectERKNS6_7SamplerE13aiTextureTypej(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull align 8 dereferenceable(963) %i.h, ptr noundef nonnull align 8 dereferenceable(108) %i.cw, i32 noundef 11, i32 noundef 0)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.082.086, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.cx, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13ColladaLoader16StoreSceneMeshesEP7aiScene(ptr noundef nonnull align 8 captures(none) dereferenceable(384) %0, ptr noundef writeonly captures(none) initializes((16, 20)) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.i, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt6vectorIP6aiMeshSaIS1_EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -1)
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #30 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.r, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.u = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.t, i64 %i.x, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.d:                                             ; preds = %bb.b
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.e, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.t, align 8
  store ptr %i.aa, ptr %i.r, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.not.i.i = icmp eq ptr %i.u, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  store ptr %i.t, ptr %i.b, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE5clearEv.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE5clearEv.exit:       ; preds = %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13ColladaLoader19StoreSceneMaterialsEP7aiScene(ptr noundef nonnull align 8 captures(none) dereferenceable(384) %0, ptr noundef captures(none) initializes((32, 36)) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.i, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt6vectorISt4pairIPN6Assimp7Collada6EffectEP10aiMaterialESaIS7_EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -1)
  %i.r = ashr i64 %i.q, 1
end_hunk_1
begin_hunk_2_@_ZN6Assimp13ColladaLoader15StoreAnimationsEP7aiSceneRKNS_13ColladaParserE:._crit_edge.i.i
  %i.eh = load ptr, ptr %i.j, align 8
  %i.ei = ashr exact i64 %sext, 29
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1056
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 3 uses
  store ptr %i.u, ptr %6, align 8
  %i.ep = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eo) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ep, ptr %i.a, align 8
  %i.eq = icmp ugt i64 %i.ep, 15
  br i1 %i.eq, label %.noexc.i109, label %._crit_edge.i.i108

.noexc.i109:                                      ; preds = %.lr.ph348
  %i.er = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc110 unwind label %bb.ae ; 2 uses

.noexc110:                                        ; preds = %.noexc.i109
  store ptr %i.er, ptr %6, align 8
  %i.es = load i64, ptr %i.a, align 8
  store i64 %i.es, ptr %i.u, align 8
  br label %._crit_edge.i.i108

._crit_edge.i.i108:                               ; preds = %.noexc110, %.lr.ph348
  %i.et = phi ptr [ %i.er, %.noexc110 ], [ %i.u, %.lr.ph348 ] ; 2 uses
  switch i64 %i.ep, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i108
  %i.eu = load i8, ptr %i.eo, align 1
  store i8 %i.eu, ptr %i.et, align 1
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i108
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.et, ptr nonnull align 1 %i.eo, i64 %i.ep, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i108
  %i.ev = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.ev, ptr %i.v, align 8
  %i.ew = load ptr, ptr %6, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i8 0, ptr %i.ex, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ey = load ptr, ptr %i.o, align 8             ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not10.i.i.i, label %._crit_edge.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y
  %i.ez = load i64, ptr %i.v, align 8             ; 7 uses
  %i.fa = load ptr, ptr %6, align 8               ; 3 uses
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 6 uses
  %.0811.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.fc = load i64, ptr %i.fb, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ez, i64 %i.fc) ; 2 uses
  %i.fd = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.fd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.z
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = call i32 @memcmp(ptr noundef %i.ff, ptr noundef %i.fa, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.fg, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.z
  %i.fh = sub i64 %i.fc, %i.ez
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.fh, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.fg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.fi = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 4 uses
  %.19.i.i.i = select i1 %i.fi, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.fi, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i112 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i112, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.z, !llvm.loop !30

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.fj = icmp eq ptr %.19.i.i.i, %i.n
  br i1 %i.fj, label %.lr.ph.i.preheader, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fi, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.fk = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.fk, i64 %i.ez) ; 2 uses
  %i.fl = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.fl, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.aa
  %.19.i.i.i.sroa.sel187.v.sroa.sel.v.sroa.sel.v = select i1 %i.fi, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel187.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel187.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.fm = load ptr, ptr %.19.i.i.i.sroa.sel187.v.sroa.sel.v.sroa.sel, align 8
  %i.fn = call i32 @memcmp(ptr noundef %i.fa, ptr noundef %i.fm, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.fn, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.aa
  %i.fo = sub i64 %i.ez, %i.fk
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.fo, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.fn, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.fp = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.fp, label %.lr.ph.i.preheader, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit

.lr.ph.i.preheader:                               ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i164
  %.02933.i = phi ptr [ %.029.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i164 ], [ %i.ey, %.lr.ph.i.preheader ] ; 6 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.02933.i, i64 40
  %i.fr = load i64, ptr %i.fq, align 8            ; 3 uses
  %.sroa.speculated.i.i.i.i161 = call i64 @llvm.umin.i64(i64 %i.fr, i64 %i.ez) ; 3 uses
  %i.fs = icmp eq i64 %.sroa.speculated.i.i.i.i161, 0
  br i1 %i.fs, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i170, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i162

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i162: ; preds = %.lr.ph.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.02933.i, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = call i32 @memcmp(ptr noundef %i.fa, ptr noundef %i.fu, i64 noundef %.sroa.speculated.i.i.i.i161) #26 ; 2 uses
  %.not.i.i.i.i163 = icmp eq i32 %i.fv, 0
  br i1 %.not.i.i.i.i163, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i170, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i164

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i170: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i162, %.lr.ph.i
  %i.fw = sub i64 %i.ez, %i.fr
  %spec.select7.i.i.i.i.i171 = call i64 @llvm.smax.i64(i64 %i.fw, i64 -2147483648)
  %.08.i.i.i.i.i172 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i171, i64 2147483647)
  %.0.i6.i.i.i.i173 = trunc nsw i64 %.08.i.i.i.i.i172 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i164

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i164: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i170, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i162
  %.0.i.i.i.i165 = phi i32 [ %i.fv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i162 ], [ %.0.i6.i.i.i.i173, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i170 ]
  %i.fx = icmp slt i32 %.0.i.i.i.i165, 0          ; 2 uses
  %.in.v.i = select i1 %i.fx, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02933.i, i64 %.in.v.i
  %.029.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i166 = icmp eq ptr %.029.i, null
  br i1 %.not.i166, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !31

._crit_edge.i:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i164
  br i1 %i.fx, label %._crit_edge.thread.i, label %bb.ac

._crit_edge.thread.i:                             ; preds = %bb.y, %._crit_edge.i
  %.028.lcssa39.i = phi ptr [ %.02933.i, %._crit_edge.i ], [ %i.n, %bb.y ] ; 4 uses
  %i.fy = load ptr, ptr %i.p, align 8
  %i.fz = icmp eq ptr %.028.lcssa39.i, %i.fy
  br i1 %i.fz, label %.noexc158.thread220, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.thread.i
  %i.ga = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39.i) #31 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre399 = load i64, ptr %i.v, align 8          ; 2 uses
  %.pre401 = call i64 @llvm.umin.i64(i64 %.pre399, i64 %.pre)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i
  %.sroa.speculated.i.i.i5.i.pre-phi = phi i64 [ %.pre401, %bb.ab ], [ %.sroa.speculated.i.i.i.i161, %._crit_edge.i ] ; 2 uses
  %i.gb = phi i64 [ %.pre399, %bb.ab ], [ %i.ez, %._crit_edge.i ]
  %i.gc = phi i64 [ %.pre, %bb.ab ], [ %i.fr, %._crit_edge.i ]
  %.028.lcssa38.i = phi ptr [ %.028.lcssa39.i, %bb.ab ], [ %.02933.i, %._crit_edge.i ]
  %.sroa.014.0.i = phi ptr [ %i.ga, %bb.ab ], [ %.02933.i, %._crit_edge.i ]
  %i.gd = icmp eq i64 %.sroa.speculated.i.i.i5.i.pre-phi, 0
  br i1 %i.gd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i: ; preds = %bb.ac
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i, i64 32
  %i.gf = load ptr, ptr %6, align 8
  %i.gg = load ptr, ptr %i.ge, align 8
  %i.gh = call i32 @memcmp(ptr noundef %i.gg, ptr noundef %i.gf, i64 noundef %.sroa.speculated.i.i.i5.i.pre-phi) #26 ; 2 uses
  %.not.i.i.i7.i = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i.i7.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i, %bb.ac
  %i.gi = sub i64 %i.gc, %i.gb
  %spec.select7.i.i.i.i10.i = call i64 @llvm.smax.i64(i64 %i.gi, i64 -2147483648)
  %.08.i.i.i.i11.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10.i, i64 2147483647)
  %.0.i6.i.i.i12.i = trunc nsw i64 %.08.i.i.i.i11.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i
  %.0.i.i.i8.i = phi i32 [ %i.gh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i ], [ %.0.i6.i.i.i12.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i ]
  %.0.i.i.i8.i.fr = freeze i32 %.0.i.i.i8.i
  %i.gj = icmp slt i32 %.0.i.i.i8.i.fr, 0
  br i1 %i.gj, label %.noexc158.thread220, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit

.noexc158.thread220:                              ; preds = %._crit_edge.thread.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i
  %.sroa.4.0.i227 = phi ptr [ %.028.lcssa38.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i ], [ %.028.lcssa39.i, %._crit_edge.thread.i ] ; 4 uses
  %i.gk = icmp eq ptr %.sroa.4.0.i227, %i.n
  br i1 %i.gk, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc158.thread220
  %i.gl = load i64, ptr %i.v, align 8             ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i227, i64 40
  %i.gn = load i64, ptr %i.gm, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i149 = call i64 @llvm.umin.i64(i64 %i.gn, i64 %i.gl) ; 2 uses
  %i.go = icmp eq i64 %.sroa.speculated.i.i.i.i.i149, 0
  br i1 %i.go, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i154, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i150

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i150: ; preds = %bb.ad
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i227, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = load ptr, ptr %6, align 8
  %i.gs = call i32 @memcmp(ptr noundef %i.gr, ptr noundef %i.gq, i64 noundef %.sroa.speculated.i.i.i.i.i149) #26 ; 2 uses
  %.not.i.i.i.i.i151 = icmp eq i32 %i.gs, 0
  br i1 %.not.i.i.i.i.i151, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i154, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i152

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i154: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i150, %bb.ad
  %i.gt = sub i64 %i.gl, %i.gn
  %spec.select7.i.i.i.i.i.i155 = call i64 @llvm.smax.i64(i64 %i.gt, i64 -2147483648)
  %.08.i.i.i.i.i.i156 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i155, i64 2147483647)
  %.0.i6.i.i.i.i.i157 = trunc nsw i64 %.08.i.i.i.i.i.i156 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i152

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i152: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i154, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i150
  %.0.i.i.i.i.i153 = phi i32 [ %i.gs, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i150 ], [ %.0.i6.i.i.i.i.i157, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i154 ]
  %i.gu = icmp slt i32 %.0.i.i.i.i.i153, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i152, %.noexc158.thread220
  %i.gv = phi i1 [ %i.gu, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i152 ], [ true, %.noexc158.thread220 ]
  %i.gw = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30
          to label %.noexc159 unwind label %bb.af ; 2 uses

.noexc159:                                        ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %i.gw, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc160 unwind label %bb.af

.noexc160:                                        ; preds = %.noexc159
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gv, ptr noundef nonnull %i.gw, ptr noundef nonnull %.sroa.4.0.i227, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #26
  %i.gx = load i64, ptr %i.r, align 8
  %i.gy = add i64 %i.gx, 1
  store i64 %i.gy, ptr %i.r, align 8
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit

bb.ae:                                            ; preds = %.noexc.i109
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.af:                                            ; preds = %.noexc159, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hb = load ptr, ptr %6, align 8               ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.u
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit: ; preds = %.noexc160, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %.not367 = phi i1 [ true, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit ], [ false, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i ], [ false, %.noexc160 ]
  %.172 = phi i1 [ false, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit ], [ %.071347, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i ], [ %.071347, %.noexc160 ] ; 2 uses
  %i.hd = load ptr, ptr %6, align 8               ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.u
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  %i.hf = load i64, ptr %i.u, align 8
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0181.0346, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.hh, %.sroa.16.0.lcssa
  %or.cond = select i1 %.not367, i1 true, i1 %.not
  br i1 %or.cond, label %._crit_edge349, label %.lr.ph348

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.af
  %i.hi = load i64, ptr %i.u, align 8
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.ae
  %.pn79.pn = phi { ptr, i32 } [ %i.gz, %bb.ae ], [ %i.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %i.ha, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aq

._crit_edge349:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  br i1 %.172, label %.critedge366, label %.critedge

.critedge366:                                     ; preds = %._crit_edge349
  %i.hk = invoke noalias noundef nonnull dereferenceable(1096) ptr @_Znwm(i64 noundef 1096) #30
          to label %._crit_edge.i.i120 unwind label %bb.ai ; 12 uses

._crit_edge.i.i120:                               ; preds = %.critedge366
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.hk, i8 0, i64 1028, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1032 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 1040
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 1048 ; 2 uses
  store i32 0, ptr %i.hn, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 1056 ; 3 uses
  store ptr null, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 1064
  store i32 0, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 1072
  store ptr null, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hk, i64 1080
  store i32 0, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 1088
  store ptr null, ptr %i.hs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %i.w, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.w, ptr noundef nonnull align 1 dereferenceable(13) @.str.28, i64 13, i1 false)
  store i64 13, ptr %i.x, align 8
  store i8 0, ptr %i.ab, align 1
  %i.ht = trunc i64 %.067357 to i8
  %i.hu = add i8 %i.ht, 48
  %i.hv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 13, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.hu)
          to label %.noexc125 unwind label %bb.aj ; 6 uses

.noexc125:                                        ; preds = %._crit_edge.i.i120
  store ptr %i.y, ptr %8, align 8, !alias.scope !32
  %i.hw = load ptr, ptr %i.hv, align 8            ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 5 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

bb.ag:                                            ; preds = %.noexc125
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.ia = load i64, ptr %i.hz, align 8            ; 3 uses
  %i.ib = icmp ult i64 %i.ia, 16
  call void @llvm.assume(i1 %i.ib)
  %i.ic = add nuw nsw i64 %i.ia, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.hx, i64 %i.ic, i1 false)
  br label %bb.ah

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %.noexc125
  store ptr %i.hw, ptr %8, align 8, !alias.scope !32
  %i.id = load i64, ptr %i.hx, align 8
  store i64 %i.id, ptr %i.y, align 8, !alias.scope !32
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %bb.ag
  %i.ie = phi i64 [ %i.ia, %bb.ag ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 %i.ie, ptr %i.z, align 8, !alias.scope !32
  store ptr %i.hx, ptr %i.hv, align 8
  store i64 0, ptr %i.if, align 8
  store i8 0, ptr %i.hx, align 8
  %i.ig = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ih = trunc i64 %i.ig to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.aa, i8 0, i64 1024, i1 false)
  %i.ii = and i64 %i.ig, 4294966272
  %.not.i126 = icmp eq i64 %i.ii, 0
  %spec.select.i = select i1 %.not.i126, i32 %i.ih, i32 1023 ; 3 uses
  store i32 %spec.select.i, ptr %7, align 4
  %i.ij = load ptr, ptr %8, align 8               ; 3 uses
  %i.ik = zext i32 %spec.select.i to i64          ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 1 %i.ij, i64 %i.ik, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ik
  store i8 0, ptr %i.il, align 1
  store i32 %spec.select.i, ptr %i.hk, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.im, ptr nonnull align 4 %i.aa, i64 %i.ik, i1 false)
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ik
  store i8 0, ptr %i.in, align 1
  %i.io = icmp eq ptr %i.ij, %i.y
  br i1 %i.io, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i129: ; preds = %bb.ah
  %i.ip = icmp ult i64 %i.ig, 16
  call void @llvm.assume(i1 %i.ip)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.ah
  %i.iq = load i64, ptr %i.y, align 8
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.ir) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  %i.is = load ptr, ptr %9, align 8               ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.w
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %i.iu = load i64, ptr %i.w, align 8
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.iw = getelementptr inbounds nuw i8, ptr %i.al, i64 1032
  %i.ix = load double, ptr %i.iw, align 8
  store double %i.ix, ptr %i.hl, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.al, i64 1040
  %i.iz = load double, ptr %i.iy, align 8
  store double %i.iz, ptr %i.hm, align 8
  %i.ja = ptrtoint ptr %.sroa.16.0.lcssa to i64
  %i.jb = ptrtoint ptr %.sroa.0191.0.lcssa to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = ashr exact i64 %i.jc, 3                 ; 2 uses
  %i.je = trunc i64 %i.jd to i32
  %i.jf = add i32 %i.je, 1                        ; 2 uses
  store i32 %i.jf, ptr %i.hn, align 8
  %i.jg = zext i32 %i.jf to i64
  %i.jh = shl nuw nsw i64 %i.jg, 3
  %i.ji = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jh) #30
          to label %.lr.ph354.preheader unwind label %bb.ai ; 2 uses

.lr.ph354.preheader:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  store ptr %i.ji, ptr %i.ho, align 8
  %i.jj = load ptr, ptr %i.aw, align 8
  %i.jk = load ptr, ptr %i.jj, align 8
  store ptr %i.jk, ptr %i.ji, align 8
  %i.jl = load ptr, ptr %i.aw, align 8
  store ptr null, ptr %i.jl, align 8
  call void @_ZN11aiAnimationD2Ev(ptr noundef nonnull align 8 dead_on_return(1096) dereferenceable(1096) %i.al) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 1096) #27
  %i.jm = load ptr, ptr %i.j, align 8
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %.067357
  store ptr %i.hk, ptr %i.jn, align 8
  br label %.lr.ph354

.lr.ph356.preheader:                              ; preds = %.lr.ph354
  %.pre400 = load ptr, ptr %i.k, align 8
  br label %.lr.ph356

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %.critedge366
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aj:                                            ; preds = %._crit_edge.i.i120
  %i.jp = landingpad { ptr, i32 }
          cleanup
  %i.jq = load ptr, ptr %9, align 8               ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.w
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.aj
  %i.js = load i64, ptr %i.w, align 8
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aq

.lr.ph354:                                        ; preds = %.lr.ph354.preheader, %.lr.ph354
  %.070352 = phi i64 [ %i.kd, %.lr.ph354 ], [ 0, %.lr.ph354.preheader ] ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0191.0.lcssa, i64 %.070352
  %i.jv = load i64, ptr %i.ju, align 8
  %i.jw = load ptr, ptr %i.j, align 8
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.jv
  %i.jy = load ptr, ptr %i.jx, align 8            ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 1056 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = load ptr, ptr %i.ho, align 8
  %i.kd = add nuw i64 %.070352, 1                 ; 3 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.kd
  store ptr %i.kb, ptr %i.ke, align 8
  %i.kf = load ptr, ptr %i.jz, align 8
  store ptr null, ptr %i.kf, align 8
  call void @_ZN11aiAnimationD2Ev(ptr noundef nonnull align 8 dead_on_return(1096) dereferenceable(1096) %i.jy) #26
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef 1096) #27
  %exitcond.not = icmp eq i64 %i.kd, %i.jd
  br i1 %exitcond.not, label %.lr.ph356.preheader, label %.lr.ph354, !llvm.loop !35

.lr.ph356:                                        ; preds = %.lr.ph356.preheader, %bb.ao
  %i.kg = phi ptr [ %i.kt, %bb.ao ], [ %.pre400, %.lr.ph356.preheader ] ; 2 uses
  %.sroa.16.2355 = phi ptr [ %i.ki, %bb.ao ], [ %.sroa.16.0.lcssa, %.lr.ph356.preheader ]
  %i.kh = load ptr, ptr %i.j, align 8
  %i.ki = getelementptr inbounds i8, ptr %.sroa.16.2355, i64 -8 ; 3 uses
  %i.kj = load i64, ptr %i.ki, align 8
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.kh, i64 %i.kj ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8 ; 4 uses
  %.not.i.i137 = icmp eq ptr %i.kl, %i.kg
  br i1 %.not.i.i137, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph356
  %i.km = ptrtoint ptr %i.kg to i64
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = sub i64 %i.km, %i.kn                    ; 3 uses
  %i.kp = icmp sgt i64 %i.ko, 8
  br i1 %i.kp, label %bb.al, label %bb.am, !prof !14

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.kk, ptr nonnull align 8 %i.kl, i64 %i.ko, i1 false)
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.kq = icmp eq i64 %i.ko, 8
  br i1 %i.kq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.kr = load ptr, ptr %i.kl, align 8
  store ptr %i.kr, ptr %i.kk, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %.lr.ph356
  %i.ks = load ptr, ptr %i.k, align 8
  %i.kt = getelementptr inbounds i8, ptr %i.ks, i64 -8 ; 2 uses
  store ptr %i.kt, ptr %i.k, align 8
  %i.ku = icmp eq ptr %.sroa.0191.0.lcssa, %i.ki
  br i1 %i.ku, label %.loopexit, label %.lr.ph356, !llvm.loop !36

.loopexit:                                        ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.kv = load ptr, ptr %i.o, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.kv)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %.loopexit
  %i.kw = landingpad { ptr, i32 }
          catch ptr null
  %i.kx = extractvalue { ptr, i32 } %i.kw, 0
  call void @__clang_call_terminate(ptr %i.kx) #28
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.not.i.i.i138 = icmp eq ptr %.sroa.0191.0.lcssa, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorImSaImEED2Ev.exit, label %_ZNSt6vectorImSaImEED2Ev.exit.sink.split

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %.pn84.pn.pn = phi { ptr, i32 } [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %.pn79.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %i.jp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %i.jo, %bb.ai ]
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit229, %.loopexit.split-lp, %bb.aq
  %.sroa.28.0248 = phi ptr [ %.sroa.28.0.lcssa, %bb.aq ], [ %.sroa.16.0339, %.loopexit229 ], [ %.sroa.16.0339, %.loopexit.split-lp ]
  %.sroa.0191.0232 = phi ptr [ %.sroa.0191.0.lcssa, %bb.aq ], [ %.sroa.0191.0340, %.loopexit229 ], [ %.sroa.0191.0340, %.loopexit.split-lp ] ; 3 uses
  %.pn88 = phi { ptr, i32 } [ %.pn84.pn.pn, %bb.aq ], [ %lpad.loopexit, %.loopexit229 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i139 = icmp eq ptr %.sroa.0191.0232, null
  br i1 %.not.i.i.i139, label %_ZNSt6vectorImSaImEED2Ev.exit140, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ky = ptrtoint ptr %.sroa.28.0248 to i64
  %i.kz = ptrtoint ptr %.sroa.0191.0232 to i64
  %i.la = sub i64 %i.ky, %i.kz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0191.0232, i64 noundef %i.la) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit140

.critedge:                                        ; preds = %._crit_edge349
  %i.lb = load ptr, ptr %i.o, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.lb)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit141 unwind label %bb.at

bb.at:                                            ; preds = %.critedge
  %i.lc = landingpad { ptr, i32 }
          catch ptr null
  %i.ld = extractvalue { ptr, i32 } %i.lc, 0
  call void @__clang_call_terminate(ptr %i.ld) #28
  unreachable
end_hunk_2
begin_hunk_3_@_ZN6Assimp13ColladaLoader19BuildCamerasForNodeERKNS_13ColladaParserEPKNS_7Collada4NodeEP6aiNode:bb.a
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.k, %bb.l, %bb.m
  %i.cg = load float, ptr %i.ao, align 4
  %i.ch = fmul float %i.cg, f0x3C8EFA35
  store float %i.ch, ptr %i.ao, align 4
  %i.ci = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.cj = load ptr, ptr %i.j, align 8
  %.not.i = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.ak, ptr %i.ci, align 8
  %i.ck = load ptr, ptr %i.i, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cl, ptr %i.i, align 8
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.cm = load ptr, ptr %i.h, align 8             ; 4 uses
  %i.cn = ptrtoint ptr %i.ci to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 6 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775800
  br i1 %i.cq, label %bb.t, label %_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #29
  unreachable

_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.cr = ashr exact i64 %i.cp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i.i, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 1152921504606846975)
  %i.cv = select i1 %i.ct, i64 1152921504606846975, i64 %i.cu ; 3 uses
  %.not.i.i.i28 = icmp ne i64 %i.cv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i28)
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #30 ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.cp ; 2 uses
  store ptr %i.ak, ptr %i.cy, align 8
  %i.cz = icmp sgt i64 %i.cp, 0
  br i1 %i.cz, label %bb.u, label %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.u:                                             ; preds = %_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cx, ptr align 8 %i.cm, i64 %i.cp, i1 false)
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.u, %_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cp) #27
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.cx, ptr %i.h, align 8
  store ptr %i.da, ptr %i.i, align 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cv
  store ptr %i.db, ptr %i.j, align 8
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.r, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada6CameraESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.041.046, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.dc, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13ColladaLoader18BuildLightsForNodeERKNS_13ColladaParserEPKNS_7Collada4NodeEP6aiNode(ptr noundef nonnull align 8 captures(none) dereferenceable(384) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(772) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(address) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not74 = icmp eq ptr %i.b, %i.d
  br i1 %.not74, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit
  %.sroa.068.075 = phi ptr [ %i.b, %.lr.ph ], [ %i.ec, %_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit ] ; 4 uses
  %i.k = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada5LightESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.068.075, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  %i.n = load ptr, ptr %.sroa.068.075, align 8    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.p) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i32 @memcmp(ptr noundef %i.s, ptr noundef %i.n, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.c
  %i.u = sub i64 %i.p, %i.m
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.v = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.v, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 16 uses
  %.1.in.v.i.i.i = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6Assimp7Collada5LightEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.c, !llvm.loop !76

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6Assimp7Collada5LightEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.w = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.w, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada5LightESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6Assimp7Collada5LightEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.m) ; 2 uses
  %i.z = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada5LightESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.ad = sub i64 %i.m, %i.y
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ad, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada5LightESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada5LightESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ac, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ae = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada5LightESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.e

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada5LightESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6Assimp7Collada5LightEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.b, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada5LightESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  %i.af = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnIJRA39_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.af, ptr noundef nonnull align 1 dereferenceable(39) @.str.11, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.068.075, ptr noundef nonnull align 1 dereferenceable(13) @.str.12)
  br label %_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada5LightESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.ah = tail call noalias noundef nonnull dereferenceable(1132) ptr @_Znwm(i64 noundef 1132) #30 ; 23 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1072 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1132) %i.ah, i8 0, i64 1072, i1 false)
  store float 1.000000e+00, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1076 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1116 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.aj, i8 0, i64 40, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 1120 ; 4 uses
  store <4 x float> <float f0x40C90FDB, float f0x40C90FDB, float 0.000000e+00, float 0.000000e+00>, ptr %i.ak, align 4
  %i.am = icmp eq ptr %i.ah, %3
  br i1 %i.am, label %_ZN8aiStringaSERKS_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %3, align 4
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.an, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.ah, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.ap = zext nneg i32 %spec.select.i to i64     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr nonnull align 4 %i.g, i64 %i.ap, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  store i8 0, ptr %i.aq, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.e, %bb.f
  %i.ar = load i32, ptr %i.ag, align 8            ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 1028
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 1044
  store <2 x float> zeroinitializer, ptr %i.at, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 1052
  store float -1.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 80
  %i.av = load float, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 1068
  store float %i.av, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 84
  %i.ay = load float, ptr %i.ax, align 4
  store float %i.ay, ptr %i.ai, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 88
  %i.ba = load float, ptr %i.az, align 8
  store float %i.ba, ptr %i.aj, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 68 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 108 ; 3 uses
  %i.bd = load float, ptr %i.bc, align 4          ; 3 uses
  %i.be = load float, ptr %i.bb, align 4, !noalias !77
  %i.bf = fmul float %i.bd, %i.be                 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 8, !noalias !77
  %i.bi = fmul float %i.bd, %i.bh                 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 76 ; 3 uses
  %i.bk = load float, ptr %i.bj, align 4, !noalias !77
  %i.bl = fmul float %i.bd, %i.bk                 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 1104 ; 2 uses
  store float %i.bf, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 1108 ; 3 uses
  store float %i.bi, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 1112 ; 2 uses
  store float %i.bl, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 1092 ; 2 uses
  store float %i.bf, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ah, i64 1096
  store float %i.bi, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 1100
  store float %i.bl, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 1080 ; 3 uses
  store float %i.bf, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 1084
  store float %i.bi, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ah, i64 1088 ; 2 uses
  store float %i.bl, ptr %i.bu, align 4
  %i.bv = icmp eq i32 %i.ar, 4
  br i1 %i.bv, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZN8aiStringaSERKS_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  %i.bw = load float, ptr %i.bc, align 4          ; 3 uses
  %i.bx = load float, ptr %i.bb, align 4, !noalias !80
  %i.by = fmul float %i.bw, %i.bx
  %i.bz = load float, ptr %i.bg, align 8, !noalias !80
  %i.ca = fmul float %i.bw, %i.bz
  %i.cb = load float, ptr %i.bj, align 4, !noalias !80
  %i.cc = fmul float %i.bw, %i.cb
  store float %i.by, ptr %i.bm, align 4
  store float %i.ca, ptr %i.bn, align 4
  store float %i.cc, ptr %i.bo, align 4
  br label %bb.n

bb.g:                                             ; preds = %_ZN8aiStringaSERKS_.exit
  %i.cd = load float, ptr %i.bc, align 4
  %i.ce = load float, ptr %i.bj, align 4, !noalias !83
  %i.cf = load <2 x float>, ptr %i.bb, align 4, !noalias !83
  %i.cg = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cd, i64 0
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ci = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ce, i64 2
  %i.cj = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cl = fmul <4 x float> %i.ch, %i.ck           ; 3 uses
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.cm, ptr %i.bs, align 4
  %i.cn = extractelement <4 x float> %i.cl, i64 2
  store float %i.cn, ptr %i.bu, align 4
  store <4 x float> %i.cl, ptr %i.bp, align 4
  store <2 x float> zeroinitializer, ptr %i.bn, align 4
  %i.co = icmp eq i32 %i.ar, 3
  br i1 %i.co, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 92
  %i.cq = load float, ptr %i.cp, align 4
  %i.cr = fmul float %i.cq, f0x3C8EFA35           ; 5 uses
  store float %i.cr, ptr %i.ak, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 104
  %i.ct = load float, ptr %i.cs, align 8          ; 2 uses
  %i.cu = fcmp ult float %i.ct, f0x4E6E6B18
  br i1 %i.cu, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cv = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 100
  %i.cw = load float, ptr %i.cv, align 4          ; 2 uses
  %i.cx = fcmp ult float %i.cw, f0x4E6E6B18
  br i1 %i.cx, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 96
  %i.cz = load float, ptr %i.cy, align 8          ; 2 uses
  %i.da = fcmp une float %i.cz, 0.000000e+00
  %i.db = fdiv float 1.000000e+00, %i.cz
  %.0 = select i1 %i.da, float %i.db, float 1.000000e+00
  %i.dc = tail call noundef float @powf(float noundef 1.000000e-01, float noundef %.0) #26
  %i.dd = tail call noundef float @acosf(float noundef %i.dc) #26
  %i.de = fadd float %i.cr, %i.dd
  store float %i.de, ptr %i.al, align 4
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.df = tail call float @llvm.fmuladd.f32(float %i.cw, float f0x3C8EFA35, float %i.cr) ; 3 uses
  store float %i.df, ptr %i.al, align 4
  %i.dg = fcmp olt float %i.df, %i.cr
  br i1 %i.dg, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  store float %i.df, ptr %i.ak, align 4
  store float %i.cr, ptr %i.al, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.dh = fmul float %i.ct, f0x3C8EFA35
  store float %i.dh, ptr %i.al, align 4
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m, %bb.k, %bb.l, %bb.j, %bb.g
  %i.di = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.dj = load ptr, ptr %i.j, align 8
  %.not.i = icmp eq ptr %i.di, %i.dj
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.ah, ptr %i.di, align 8
  %i.dk = load ptr, ptr %i.i, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dl, ptr %i.i, align 8
  br label %_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit

bb.p:                                             ; preds = %bb.n
  %i.dm = load ptr, ptr %i.h, align 8             ; 4 uses
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do                    ; 6 uses
  %i.dq = icmp eq i64 %i.dp, 9223372036854775800
  br i1 %i.dq, label %bb.q, label %_ZNKSt6vectorIP7aiLightSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #29
  unreachable

_ZNKSt6vectorIP7aiLightSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.dr = ashr exact i64 %i.dp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dr, i64 1)
  %i.ds = add nsw i64 %.sroa.speculated.i.i.i, %i.dr ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dr
  %i.du = tail call i64 @llvm.umin.i64(i64 %i.ds, i64 1152921504606846975)
  %i.dv = select i1 %i.dt, i64 1152921504606846975, i64 %i.du ; 3 uses
  %.not.i.i.i31 = icmp ne i64 %i.dv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i31)
  %i.dw = shl nuw nsw i64 %i.dv, 3
  %i.dx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #30 ; 4 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 %i.dp ; 2 uses
  store ptr %i.ah, ptr %i.dy, align 8
  %i.dz = icmp sgt i64 %i.dp, 0
  br i1 %i.dz, label %bb.r, label %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIP7aiLightSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr align 8 %i.dm, i64 %i.dp, i1 false)
  br label %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.r, %_ZNKSt6vectorIP7aiLightSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.not.i17.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP7aiLightSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dp) #27
  br label %_ZNSt6vectorIP7aiLightSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP7aiLightSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.dx, ptr %i.h, align 8
  store ptr %i.ea, ptr %i.i, align 8
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dv
  store ptr %i.eb, ptr %i.j, align 8
  br label %_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.o, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada5LightESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.068.075, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ec, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK6Assimp13ColladaLoader8FindNodeEPKNS_7Collada4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(384) %0, ptr noundef readonly captures(ret: address, provenance) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8
  %i.h = load ptr, ptr %1, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %i.l, %i.d
  br i1 %i.m, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit21.thread26

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25
  %i.n = icmp eq i64 %i.d, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit21: ; preds = %bb.c
  %i.o = load ptr, ptr %2, align 8
  %i.p = load ptr, ptr %i.j, align 8
  %bcmp.i20 = tail call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.d)
  %i.q = icmp eq i32 %bcmp.i20, 0
  br i1 %i.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit21.thread26

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit21.thread26: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit21
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not2930 = icmp eq ptr %i.s, %i.u
  br i1 %.not2930, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.022.031, i64 8 ; 2 uses
  %.not29 = icmp eq ptr %i.v, %i.u
  br i1 %.not29, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit21.thread26, %bb.d
  %.sroa.022.031 = phi ptr [ %i.v, %bb.d ], [ %i.s, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit21.thread26 ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.022.031, align 8
  %i.x = tail call noundef ptr @_ZNK6Assimp13ColladaLoader8FindNodeEPKNS_7Collada4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.d, %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit21.thread26, %bb.c, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit21
  %.3 = phi ptr [ %1, %bb.b ], [ %1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit21 ], [ %1, %bb.c ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit21.thread26 ], [ null, %bb.d ], [ %i.x, %.lr.ph ]
  ret ptr %.3
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5errorIJRA56_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(56) %1) #26
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(56) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA56_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #26
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA56_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA56_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_3
begin_hunk_4_@_ZN6Assimp13ColladaLoader10CreateMeshERKNS_13ColladaParserEPKNS_7Collada4MeshERKNS4_7SubMeshEPKNS4_10ControllerEmm:bb.a
          to label %bb.gj unwind label %bb.gx     ; 24 uses

bb.gj:                                            ; preds = %bb.gi
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1056 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.ahi, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.ahj, align 4
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1060 ; 3 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1076 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ahk, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ahl, align 4
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1080 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1096 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ahn, align 4
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1100 ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1116 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aho, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ahp, align 4
  %i.ahq = load i64, ptr %i.afq, align 8
  %i.ahr = mul i64 %i.ahq, %.0355970
  %i.ahs = load i64, ptr %i.afr, align 8
  %i.aht = load ptr, ptr %i.ys, align 8
  %i.ahu = getelementptr [32 x i8], ptr %i.aht, i64 %i.ahr
  %i.ahv = getelementptr [32 x i8], ptr %i.ahu, i64 %i.ahs ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8
  %i.ahx = load i64, ptr %i.ahw, align 8          ; 4 uses
  %i.ahy = icmp ugt i64 %i.ahx, 1023
  br i1 %i.ahy, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit535, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.ahz = trunc nuw nsw i64 %i.ahx to i32
  store i32 %i.ahz, ptr %i.ahi, align 4
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahi, i64 4 ; 2 uses
  %i.aib = load ptr, ptr %i.ahv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aia, ptr align 1 %i.aib, i64 %i.ahx, i1 false)
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aia, i64 %i.ahx
  store i8 0, ptr %i.aic, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit535

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit535: ; preds = %bb.gj, %bb.gk
  %.val481 = load i64, ptr %i.afs, align 8
  %.val482 = load i64, ptr %i.aft, align 8
  %.val483 = load ptr, ptr %i.afu, align 8
  %i.aid = mul i64 %.val482, %.0355970
  %i.aie = getelementptr [4 x i8], ptr %.val483, i64 %i.aid
  %i.aif = getelementptr [4 x i8], ptr %i.aie, i64 %.val481
  %i.aig = load float, ptr %i.aif, align 4
  store float %i.aig, ptr %i.ahj, align 8
  %.val478 = load i64, ptr %i.afs, align 8
  %.val479 = load i64, ptr %i.aft, align 8
  %.val480 = load ptr, ptr %i.afu, align 8
  %i.aih = mul i64 %.val479, %.0355970
  %i.aii = getelementptr [4 x i8], ptr %.val480, i64 %i.aih
  %i.aij = getelementptr [4 x i8], ptr %i.aii, i64 %.val478
  %i.aik = getelementptr i8, ptr %i.aij, i64 4
  %i.ail = load float, ptr %i.aik, align 4
  store float %i.ail, ptr %i.ahk, align 4
  %.val475 = load i64, ptr %i.afs, align 8
  %.val476 = load i64, ptr %i.aft, align 8
  %.val477 = load ptr, ptr %i.afu, align 8
  %i.aim = mul i64 %.val476, %.0355970
  %i.ain = getelementptr [4 x i8], ptr %.val477, i64 %i.aim
  %i.aio = getelementptr [4 x i8], ptr %i.ain, i64 %.val475
  %i.aip = getelementptr i8, ptr %i.aio, i64 8
  %i.aiq = load float, ptr %i.aip, align 4        ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1064
  store float %i.aiq, ptr %i.air, align 8
  %.val472 = load i64, ptr %i.afs, align 8
  %.val473 = load i64, ptr %i.aft, align 8
  %.val474 = load ptr, ptr %i.afu, align 8
  %i.ais = mul i64 %.val473, %.0355970
  %i.ait = getelementptr [4 x i8], ptr %.val474, i64 %i.ais
  %i.aiu = getelementptr [4 x i8], ptr %i.ait, i64 %.val472
  %i.aiv = getelementptr i8, ptr %i.aiu, i64 12
  %i.aiw = load float, ptr %i.aiv, align 4        ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1068
  store float %i.aiw, ptr %i.aix, align 4
  %.val469 = load i64, ptr %i.afs, align 8
  %.val470 = load i64, ptr %i.aft, align 8
  %.val471 = load ptr, ptr %i.afu, align 8
  %i.aiy = mul i64 %.val470, %.0355970
  %i.aiz = getelementptr [4 x i8], ptr %.val471, i64 %i.aiy
  %i.aja = getelementptr [4 x i8], ptr %i.aiz, i64 %.val469
  %i.ajb = getelementptr i8, ptr %i.aja, i64 16
  %i.ajc = load float, ptr %i.ajb, align 4        ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1072 ; 2 uses
  store float %i.ajc, ptr %i.ajd, align 8
  %.val466 = load i64, ptr %i.afs, align 8
  %.val467 = load i64, ptr %i.aft, align 8
  %.val468 = load ptr, ptr %i.afu, align 8
  %i.aje = mul i64 %.val467, %.0355970
  %i.ajf = getelementptr [4 x i8], ptr %.val468, i64 %i.aje
  %i.ajg = getelementptr [4 x i8], ptr %i.ajf, i64 %.val466
  %i.ajh = getelementptr i8, ptr %i.ajg, i64 20
  %i.aji = load float, ptr %i.ajh, align 4        ; 2 uses
  store float %i.aji, ptr %i.ahl, align 4
  %.val463 = load i64, ptr %i.afs, align 8
  %.val464 = load i64, ptr %i.aft, align 8
  %.val465 = load ptr, ptr %i.afu, align 8
  %i.ajj = mul i64 %.val464, %.0355970
  %i.ajk = getelementptr [4 x i8], ptr %.val465, i64 %i.ajj
  %i.ajl = getelementptr [4 x i8], ptr %i.ajk, i64 %.val463
  %i.ajm = getelementptr i8, ptr %i.ajl, i64 24
  %i.ajn = load float, ptr %i.ajm, align 4        ; 2 uses
  store float %i.ajn, ptr %i.ahm, align 8
  %.val460 = load i64, ptr %i.afs, align 8
  %.val461 = load i64, ptr %i.aft, align 8
  %.val462 = load ptr, ptr %i.afu, align 8
  %i.ajo = mul i64 %.val461, %.0355970
  %i.ajp = getelementptr [4 x i8], ptr %.val462, i64 %i.ajo
  %i.ajq = getelementptr [4 x i8], ptr %i.ajp, i64 %.val460
  %i.ajr = getelementptr i8, ptr %i.ajq, i64 28
  %i.ajs = load float, ptr %i.ajr, align 4        ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1084
  store float %i.ajs, ptr %i.ajt, align 4
  %.val457 = load i64, ptr %i.afs, align 8
  %.val458 = load i64, ptr %i.aft, align 8
  %.val459 = load ptr, ptr %i.afu, align 8
  %i.aju = mul i64 %.val458, %.0355970
  %i.ajv = getelementptr [4 x i8], ptr %.val459, i64 %i.aju
  %i.ajw = getelementptr [4 x i8], ptr %i.ajv, i64 %.val457
  %i.ajx = getelementptr i8, ptr %i.ajw, i64 32
  %i.ajy = load float, ptr %i.ajx, align 4        ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1088 ; 2 uses
  store float %i.ajy, ptr %i.ajz, align 8
  %.val454 = load i64, ptr %i.afs, align 8
  %.val455 = load i64, ptr %i.aft, align 8
  %.val456 = load ptr, ptr %i.afu, align 8
  %i.aka = mul i64 %.val455, %.0355970
  %i.akb = getelementptr [4 x i8], ptr %.val456, i64 %i.aka
  %i.akc = getelementptr [4 x i8], ptr %i.akb, i64 %.val454
  %i.akd = getelementptr i8, ptr %i.akc, i64 36
  %i.ake = load float, ptr %i.akd, align 4        ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1092
  store float %i.ake, ptr %i.akf, align 4
  %.val451 = load i64, ptr %i.afs, align 8
  %.val452 = load i64, ptr %i.aft, align 8
  %.val453 = load ptr, ptr %i.afu, align 8
  %i.akg = mul i64 %.val452, %.0355970
  %i.akh = getelementptr [4 x i8], ptr %.val453, i64 %i.akg
  %i.aki = getelementptr [4 x i8], ptr %i.akh, i64 %.val451
  %i.akj = getelementptr i8, ptr %i.aki, i64 40
  %i.akk = load float, ptr %i.akj, align 4        ; 2 uses
  store float %i.akk, ptr %i.ahn, align 8
  %.val448 = load i64, ptr %i.afs, align 8
  %.val449 = load i64, ptr %i.aft, align 8
  %.val450 = load ptr, ptr %i.afu, align 8
  %i.akl = mul i64 %.val449, %.0355970
  %i.akm = getelementptr [4 x i8], ptr %.val450, i64 %i.akl
  %i.akn = getelementptr [4 x i8], ptr %i.akm, i64 %.val448
  %i.ako = getelementptr i8, ptr %i.akn, i64 44
  %i.akp = load float, ptr %i.ako, align 4        ; 2 uses
  store float %i.akp, ptr %i.aho, align 4
  %i.akq = load ptr, ptr %i.ahd, align 8
  %i.akr = load ptr, ptr %i.ahb, align 8
  %i.aks = ptrtoint ptr %i.akq to i64
  %i.akt = ptrtoint ptr %i.akr to i64
  %i.aku = sub i64 %i.aks, %i.akt
  %i.akv = ashr exact i64 %i.aku, 3               ; 2 uses
  %i.akw = trunc i64 %i.akv to i32
  %i.akx = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1028
  store i32 %i.akw, ptr %i.akx, align 4
  %i.aky = and i64 %i.akv, 4294967295             ; 2 uses
  %i.akz = shl nuw nsw i64 %i.aky, 3              ; 2 uses
  %i.ala = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.akz) #30
          to label %bb.gl unwind label %bb.gx     ; 4 uses

bb.gl:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit535
  %i.alb = icmp eq i64 %i.aky, 0
  br i1 %i.alb, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.gl
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ala, i8 0, i64 %i.akz, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.gl
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1048
  store ptr %i.ala, ptr %i.alc, align 8
  %i.ald = load ptr, ptr %i.ahb, align 8          ; 3 uses
  %i.ale = load ptr, ptr %i.ahd, align 8
  %i.alf = ptrtoint ptr %i.ale to i64
  %i.alg = ptrtoint ptr %i.ald to i64
  %i.alh = sub i64 %i.alf, %i.alg                 ; 3 uses
  %i.ali = icmp sgt i64 %i.alh, 8
  br i1 %i.ali, label %bb.gm, label %bb.gn, !prof !14

bb.gm:                                            ; preds = %.loopexit
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ala, ptr align 4 %i.ald, i64 %i.alh, i1 false)
  br label %bb.gp

bb.gn:                                            ; preds = %.loopexit
  %i.alj = icmp eq i64 %i.alh, 8
  br i1 %i.alj, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.alk = load i64, ptr %i.ald, align 4
  store i64 %i.alk, ptr %i.ala, align 4
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gm, %bb.gn, %bb.go
  %i.all = load <4 x float>, ptr %i.ahj, align 8
  %i.alm = load <4 x float>, ptr %i.ahk, align 4
  %i.aln = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1104 ; 2 uses
  %i.alo = load <4 x float>, ptr %i.aln, align 8
  %i.alp = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1108
  %i.alq = load float, ptr %i.alp, align 4
  %i.alr = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1112
  %i.als = load float, ptr %i.alr, align 8
  %i.alt = load float, ptr %i.ahp, align 4
  %i.alu = load <4 x float>, ptr %i.afv, align 8  ; 4 uses
  %i.alv = load <4 x float>, ptr %i.afw, align 8  ; 4 uses
  %i.alw = load <4 x float>, ptr %i.afx, align 8  ; 4 uses
  %i.alx = load <4 x float>, ptr %i.afy, align 8  ; 4 uses
  %i.aly = shufflevector <4 x float> %i.alm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alz = fmul <4 x float> %i.alv, %i.aly
  %i.ama = shufflevector <4 x float> %i.all, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alu, <4 x float> %i.ama, <4 x float> %i.alz)
  %i.amc = insertelement <4 x float> poison, float %i.aiq, i64 0
  %i.amd = shufflevector <4 x float> %i.amc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ame = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alw, <4 x float> %i.amd, <4 x float> %i.amb)
  %i.amf = insertelement <4 x float> poison, float %i.aiw, i64 0
  %i.amg = shufflevector <4 x float> %i.amf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alx, <4 x float> %i.amg, <4 x float> %i.ame)
  store <4 x float> %i.amh, ptr %i.ahj, align 8
  %i.ami = insertelement <4 x float> poison, float %i.aji, i64 0
  %i.amj = shufflevector <4 x float> %i.ami, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amk = fmul <4 x float> %i.alv, %i.amj
  %i.aml = insertelement <4 x float> poison, float %i.ajc, i64 0
  %i.amm = shufflevector <4 x float> %i.aml, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alu, <4 x float> %i.amm, <4 x float> %i.amk)
  %i.amo = insertelement <4 x float> poison, float %i.ajn, i64 0
  %i.amp = shufflevector <4 x float> %i.amo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alw, <4 x float> %i.amp, <4 x float> %i.amn)
  %i.amr = insertelement <4 x float> poison, float %i.ajs, i64 0
  %i.ams = shufflevector <4 x float> %i.amr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alx, <4 x float> %i.ams, <4 x float> %i.amq)
  store <4 x float> %i.amt, ptr %i.ajd, align 8
  %i.amu = insertelement <4 x float> poison, float %i.ake, i64 0
  %i.amv = shufflevector <4 x float> %i.amu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amw = fmul <4 x float> %i.alv, %i.amv
  %i.amx = insertelement <4 x float> poison, float %i.ajy, i64 0
  %i.amy = shufflevector <4 x float> %i.amx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alu, <4 x float> %i.amy, <4 x float> %i.amw)
  %i.ana = insertelement <4 x float> poison, float %i.akk, i64 0
  %i.anb = shufflevector <4 x float> %i.ana, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alw, <4 x float> %i.anb, <4 x float> %i.amz)
  %i.and = insertelement <4 x float> poison, float %i.akp, i64 0
  %i.ane = shufflevector <4 x float> %i.and, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alx, <4 x float> %i.ane, <4 x float> %i.anc)
  store <4 x float> %i.anf, ptr %i.ajz, align 8
  %i.ang = insertelement <4 x float> poison, float %i.alq, i64 0
  %i.anh = shufflevector <4 x float> %i.ang, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ani = fmul <4 x float> %i.alv, %i.anh
  %i.anj = shufflevector <4 x float> %i.alo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ank = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alu, <4 x float> %i.anj, <4 x float> %i.ani)
  %i.anl = insertelement <4 x float> poison, float %i.als, i64 0
  %i.anm = shufflevector <4 x float> %i.anl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ann = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alw, <4 x float> %i.anm, <4 x float> %i.ank)
  %i.ano = insertelement <4 x float> poison, float %i.alt, i64 0
  %i.anp = shufflevector <4 x float> %i.ano, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alx, <4 x float> %i.anp, <4 x float> %i.ann)
  store <4 x float> %i.anq, ptr %i.aln, align 8
  %i.anr = load ptr, ptr %i.afz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.ans = getelementptr inbounds nuw i8, ptr %i.ahi, i64 4 ; 9 uses
  store ptr %i.aga, ptr %11, align 8
  %i.ant = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ans) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.ant, ptr %i.b, align 8
  %i.anu = icmp ugt i64 %i.ant, 15
  br i1 %i.anu, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.gp
  %i.anv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc536 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546 ; 2 uses

.noexc536:                                        ; preds = %.noexc.i
  store ptr %i.anv, ptr %11, align 8
  %i.anw = load i64, ptr %i.b, align 8
  store i64 %i.anw, ptr %i.aga, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc536, %bb.gp
  %i.anx = phi ptr [ %i.anv, %.noexc536 ], [ %i.aga, %bb.gp ] ; 2 uses
  switch i64 %i.ant, label %bb.gr [
    i64 1, label %bb.gq
    i64 0, label %bb.gs
  ]

bb.gq:                                            ; preds = %._crit_edge.i.i
  %i.any = load i8, ptr %i.ans, align 4
  store i8 %i.any, ptr %i.anx, align 1
  br label %bb.gs

bb.gr:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.anx, ptr nonnull align 1 %i.ans, i64 %i.ant, i1 false)
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq, %._crit_edge.i.i
  %i.anz = load i64, ptr %i.b, align 8            ; 2 uses
  store i64 %i.anz, ptr %i.agb, align 8
  %i.aoa = load ptr, ptr %11, align 8
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 %i.anz
  store i8 0, ptr %i.aob, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.aoc = call noundef ptr @_ZNK6Assimp13ColladaLoader8FindNodeEPKNS_7Collada4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %i.anr, ptr noundef nonnull align 8 dereferenceable(32) %11) ; 2 uses
  %i.aod = load ptr, ptr %11, align 8             ; 2 uses
  %i.aoe = icmp eq ptr %i.aod, %i.aga
  br i1 %i.aoe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.gs
  %i.aof = load i64, ptr %i.aga, align 8
  %i.aog = add i64 %i.aof, 1
  call void @_ZdlPvm(ptr noundef %i.aod, i64 noundef %i.aog) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.aoh = icmp eq ptr %i.aoc, null
  br i1 %i.aoh, label %bb.gt, label %.thread661

bb.gt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aoi = load ptr, ptr %i.afz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr %i.agc, ptr %12, align 8
  %i.aoj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ans) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.aoj, ptr %i.a, align 8
  %i.aok = icmp ugt i64 %i.aoj, 15
  br i1 %i.aok, label %.noexc.i538, label %._crit_edge.i.i537

.noexc.i538:                                      ; preds = %bb.gt
  %i.aol = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc539 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549 ; 2 uses

.noexc539:                                        ; preds = %.noexc.i538
  store ptr %i.aol, ptr %12, align 8
  %i.aom = load i64, ptr %i.a, align 8
  store i64 %i.aom, ptr %i.agc, align 8
  br label %._crit_edge.i.i537

._crit_edge.i.i537:                               ; preds = %.noexc539, %bb.gt
  %i.aon = phi ptr [ %i.aol, %.noexc539 ], [ %i.agc, %bb.gt ] ; 2 uses
  switch i64 %i.aoj, label %bb.gv [
    i64 1, label %bb.gu
    i64 0, label %bb.gw
  ]

bb.gu:                                            ; preds = %._crit_edge.i.i537
  %i.aoo = load i8, ptr %i.ans, align 4
  store i8 %i.aoo, ptr %i.aon, align 1
  br label %bb.gw

bb.gv:                                            ; preds = %._crit_edge.i.i537
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aon, ptr nonnull align 1 %i.ans, i64 %i.aoj, i1 false)
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu, %._crit_edge.i.i537
  %i.aop = load i64, ptr %i.a, align 8            ; 2 uses
  store i64 %i.aop, ptr %i.agd, align 8
  %i.aoq = load ptr, ptr %12, align 8
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 %i.aop
  store i8 0, ptr %i.aor, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.aos = call noundef ptr @_ZNK6Assimp13ColladaLoader13FindNodeBySIDEPKNS_7Collada4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %i.aoi, ptr noundef nonnull align 8 dereferenceable(32) %12) ; 2 uses
  %i.aot = load ptr, ptr %12, align 8             ; 2 uses
  %i.aou = icmp eq ptr %i.aot, %i.agc
  br i1 %i.aou, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541: ; preds = %bb.gw
  %i.aov = load i64, ptr %i.agc, align 8
  %i.aow = add i64 %i.aov, 1
  call void @_ZdlPvm(ptr noundef %i.aot, i64 noundef %i.aow) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i542

bb.gx:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit535, %bb.gi
  %i.aox = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546: ; preds = %.noexc.i
  %i.aoy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.hg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549: ; preds = %.noexc.i538
  %i.aoz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.hg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i542: ; preds = %bb.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %.not403 = icmp eq ptr %i.aos, null
  br i1 %.not403, label %bb.hb, label %.thread661

.thread661:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i542
  %.0664 = phi ptr [ %i.aos, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i542 ], [ %i.aoc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZN6Assimp13ColladaLoader15FindNameForNodeB5cxx11EPKNS_7Collada4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %.0664)
          to label %bb.gy unwind label %bb.ha

bb.gy:                                            ; preds = %.thread661
  %i.apa = load i64, ptr %i.age, align 8          ; 5 uses
  %i.apb = icmp ugt i64 %i.apa, 1023
  %.pre1093 = load ptr, ptr %13, align 8          ; 3 uses
  br i1 %i.apb, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.apc = trunc nuw nsw i64 %i.apa to i32
  store i32 %i.apc, ptr %i.ahi, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ans, ptr align 1 %.pre1093, i64 %i.apa, i1 false)
  %i.apd = getelementptr inbounds nuw i8, ptr %i.ans, i64 %i.apa
  store i8 0, ptr %i.apd, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.gy, %bb.gz
  %i.ape = icmp eq ptr %.pre1093, %i.agf
  br i1 %i.ape, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i551, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i551: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.apf = icmp ult i64 %i.apa, 16
  call void @llvm.assume(i1 %i.apf)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.apg = load i64, ptr %i.agf, align 8
  %i.aph = add i64 %i.apg, 1
  call void @_ZdlPvm(ptr noundef %.pre1093, i64 noundef %i.aph) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i551, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.he

bb.ha:                                            ; preds = %.thread661
  %i.api = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.hg

bb.hb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i542
  %i.apj = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.hc unwind label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  invoke void @_ZN6Assimp6Logger4warnIJRA75_KcRA1024_cRA3_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.apj, ptr noundef nonnull align 1 dereferenceable(75) @.str.25, ptr noundef nonnull align 1 dereferenceable(1024) %i.ans, ptr noundef nonnull align 1 dereferenceable(3) @.str.26)
          to label %bb.he unwind label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.apk = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.he:                                            ; preds = %bb.hc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552
  %i.apl = load ptr, ptr %7, align 8
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 224
  %i.apn = load ptr, ptr %i.apm, align 8
  %i.apo = add i64 %.0356969, 1
  %i.app = getelementptr inbounds nuw [8 x i8], ptr %i.apn, i64 %.0356969
  store ptr %i.ahi, ptr %i.app, align 8
  br label %bb.hf

bb.hf:                                            ; preds = %bb.gh, %bb.he
  %.1357 = phi i64 [ %.0356969, %bb.gh ], [ %i.apo, %bb.he ]
  %i.apq = add nuw i64 %.0355970, 1               ; 2 uses
  %exitcond1089.not = icmp eq i64 %i.apq, %i.yz
  br i1 %exitcond1089.not, label %._crit_edge973, label %bb.gh, !llvm.loop !111

bb.hg:                                            ; preds = %.loopexit680, %.loopexit.split-lp, %bb.gx, %bb.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549, %bb.ha, %bb.hd, %bb.ft
  %.pn409.pn = phi { ptr, i32 } [ %i.aae, %bb.ft ], [ %i.aoz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549 ], [ %i.agz, %bb.gg ], [ %i.aox, %bb.gx ], [ %i.aoy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546 ], [ %i.api, %bb.ha ], [ %i.apk, %bb.hd ], [ %lpad.loopexit, %.loopexit680 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.apr = load ptr, ptr %9, align 8              ; 3 uses
  %.not.i.i.i553 = icmp eq ptr %i.apr, null
  br i1 %.not.i.i.i553, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit554, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aps = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.apt = load ptr, ptr %i.aps, align 8
  %i.apu = ptrtoint ptr %i.apt to i64
  %i.apv = ptrtoint ptr %i.apr to i64
  %i.apw = sub i64 %i.apu, %i.apv
  call void @_ZdlPvm(ptr noundef nonnull %i.apr, i64 noundef %i.apw) #27
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit554

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit554: ; preds = %bb.hg, %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #26
  br label %bb.hi

bb.hi:                                            ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit554, %bb.fs
  %.pn409.pn.pn = phi { ptr, i32 } [ %.pn409.pn, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit554 ], [ %i.aad, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.body

bb.hj:                                            ; preds = %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit, %bb.en, %_ZNSt6vectorIP10aiAnimMeshSaIS1_EED2Ev.exit
  %i.apx = load ptr, ptr %7, align 8              ; 2 uses
  store ptr null, ptr %7, align 8
  %.not.i.i.i555 = icmp eq ptr %.sroa.0613.0.lcssa1190, null
  br i1 %.not.i.i.i555, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.apy = ptrtoint ptr %.sroa.15620.0.lcssa1188 to i64
  %i.apz = ptrtoint ptr %.sroa.0613.0.lcssa1190 to i64
  %i.aqa = sub i64 %i.apy, %i.apz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0613.0.lcssa1190, i64 noundef %i.aqa) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.hj, %bb.hk
  %.not.i.i.i556 = icmp eq ptr %.sroa.0623.0.lcssa1194, null
  br i1 %.not.i.i.i556, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.hl

bb.hl:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.aqb = ptrtoint ptr %.sroa.20636.0.lcssa1192 to i64
  %i.aqc = ptrtoint ptr %.sroa.0623.0.lcssa1194 to i64
  %i.aqd = sub i64 %i.aqb, %i.aqc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0623.0.lcssa1194, i64 noundef %i.aqd) #27
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

.body:                                            ; preds = %.loopexit687, %.loopexit.split-lp688, %.loopexit692, %.loopexit.split-lp693, %.loopexit697, %.loopexit.split-lp698, %bb.em, %bb.el, %bb.co, %bb.cq, %bb.cs, %bb.cv, %bb.cr, %bb.cp, %bb.dh, %bb.dg, %bb.da, %bb.ew, %bb.ey, %bb.fa, %bb.fb, %bb.fj, %bb.fk, %bb.fo, %bb.hi, %bb.fi, %bb.ez, %bb.ex
  %.sroa.15620.4 = phi ptr [ %.sroa.15620.0921, %bb.da ], [ %.sroa.15620.0.lcssa1188, %bb.fj ], [ %.sroa.15620.0.lcssa1188, %bb.fk ], [ %.sroa.15620.0.lcssa1188, %bb.hi ], [ %.sroa.15620.0.lcssa1188, %bb.fo ], [ %.sroa.15620.0.lcssa1188, %bb.fi ], [ %.sroa.15620.0.lcssa1188, %bb.fa ], [ %.sroa.15620.0.lcssa1188, %bb.fb ], [ %.sroa.15620.0.lcssa1188, %bb.ez ], [ %.sroa.15620.0.lcssa1188, %bb.ey ], [ %.sroa.15620.0.lcssa1188, %bb.ex ], [ %.sroa.15620.0.lcssa1188, %bb.ew ], [ %.sroa.15620.2, %bb.em ], [ %.sroa.15620.0921, %bb.cv ], [ %.sroa.15620.0921, %bb.co ], [ %.sroa.15620.0921, %.loopexit.split-lp693 ], [ %.sroa.15620.0921, %bb.cs ], [ %.sroa.15620.0921, %bb.cr ], [ %.sroa.15620.0921, %bb.cq ], [ %.sroa.15620.0921, %bb.cp ], [ %.sroa.15620.0921, %.loopexit.split-lp698 ], [ %.sroa.15620.0921, %bb.dh ], [ %.sroa.15620.0921, %bb.dg ], [ %.sroa.15620.2, %bb.el ], [ %.sroa.15620.0921, %.loopexit697 ], [ %.sroa.15620.0921, %.loopexit692 ], [ %.sroa.10.1912, %.loopexit687 ], [ %.sroa.10.1912, %.loopexit.split-lp688 ]
  %.sroa.0613.4 = phi ptr [ %.sroa.0613.0923, %bb.da ], [ %.sroa.0613.0.lcssa1190, %bb.fj ], [ %.sroa.0613.0.lcssa1190, %bb.fk ], [ %.sroa.0613.0.lcssa1190, %bb.hi ], [ %.sroa.0613.0.lcssa1190, %bb.fo ], [ %.sroa.0613.0.lcssa1190, %bb.fi ], [ %.sroa.0613.0.lcssa1190, %bb.fa ], [ %.sroa.0613.0.lcssa1190, %bb.fb ], [ %.sroa.0613.0.lcssa1190, %bb.ez ], [ %.sroa.0613.0.lcssa1190, %bb.ey ], [ %.sroa.0613.0.lcssa1190, %bb.ex ], [ %.sroa.0613.0.lcssa1190, %bb.ew ], [ %.sroa.0613.2, %bb.em ], [ %.sroa.0613.0923, %bb.cv ], [ %.sroa.0613.0923, %bb.co ], [ %.sroa.0613.0923, %.loopexit.split-lp693 ], [ %.sroa.0613.0923, %bb.cs ], [ %.sroa.0613.0923, %bb.cr ], [ %.sroa.0613.0923, %bb.cq ], [ %.sroa.0613.0923, %bb.cp ], [ %.sroa.0613.0923, %.loopexit.split-lp698 ], [ %.sroa.0613.0923, %bb.dh ], [ %.sroa.0613.0923, %bb.dg ], [ %.sroa.0613.2, %bb.el ], [ %.sroa.0613.0923, %.loopexit697 ], [ %.sroa.0613.0923, %.loopexit692 ], [ %.sroa.0613.1913, %.loopexit687 ], [ %.sroa.0613.1913, %.loopexit.split-lp688 ] ; 3 uses
  %.sroa.20636.4 = phi ptr [ %.sroa.20636.1900, %bb.da ], [ %.sroa.20636.0.lcssa1192, %bb.fj ], [ %.sroa.20636.0.lcssa1192, %bb.fk ], [ %.sroa.20636.0.lcssa1192, %bb.hi ], [ %.sroa.20636.0.lcssa1192, %bb.fo ], [ %.sroa.20636.0.lcssa1192, %bb.fi ], [ %.sroa.20636.0.lcssa1192, %bb.fa ], [ %.sroa.20636.0.lcssa1192, %bb.fb ], [ %.sroa.20636.0.lcssa1192, %bb.ez ], [ %.sroa.20636.0.lcssa1192, %bb.ey ], [ %.sroa.20636.0.lcssa1192, %bb.ex ], [ %.sroa.20636.0.lcssa1192, %bb.ew ], [ %.sroa.20636.2, %bb.em ], [ %.sroa.20636.0924, %bb.cv ], [ %.sroa.20636.0924, %bb.co ], [ %.sroa.20636.19001002, %.loopexit.split-lp693 ], [ %.sroa.20636.0924, %bb.cs ], [ %.sroa.20636.0924, %bb.cr ], [ %.sroa.20636.0924, %bb.cq ], [ %.sroa.20636.0924, %bb.cp ], [ %.sroa.20636.0924, %.loopexit.split-lp698 ], [ %.sroa.20636.1900, %bb.dh ], [ %.sroa.20636.1900, %bb.dg ], [ %.sroa.20636.2, %bb.el ], [ %.sroa.20636.0924, %.loopexit697 ], [ %.sroa.20636.1900.lcssa996, %.loopexit692 ], [ %.sroa.20636.1.lcssa, %.loopexit687 ], [ %.sroa.20636.1.lcssa, %.loopexit.split-lp688 ]
  %.sroa.0623.4 = phi ptr [ %.sroa.0623.1902, %bb.da ], [ %.sroa.0623.0.lcssa1194, %bb.fj ], [ %.sroa.0623.0.lcssa1194, %bb.fk ], [ %.sroa.0623.0.lcssa1194, %bb.hi ], [ %.sroa.0623.0.lcssa1194, %bb.fo ], [ %.sroa.0623.0.lcssa1194, %bb.fi ], [ %.sroa.0623.0.lcssa1194, %bb.fa ], [ %.sroa.0623.0.lcssa1194, %bb.fb ], [ %.sroa.0623.0.lcssa1194, %bb.ez ], [ %.sroa.0623.0.lcssa1194, %bb.ey ], [ %.sroa.0623.0.lcssa1194, %bb.ex ], [ %.sroa.0623.0.lcssa1194, %bb.ew ], [ %.sroa.0623.2, %bb.em ], [ %.sroa.0623.0926, %bb.cv ], [ %.sroa.0623.0926, %bb.co ], [ %.sroa.0623.1902, %.loopexit.split-lp693 ], [ %.sroa.0623.0926, %bb.cs ], [ %.sroa.0623.0926, %bb.cr ], [ %.sroa.0623.0926, %bb.cq ], [ %.sroa.0623.0926, %bb.cp ], [ %.sroa.0623.0926, %.loopexit.split-lp698 ], [ %.sroa.0623.1902, %bb.dh ], [ %.sroa.0623.1902, %bb.dg ], [ %.sroa.0623.2, %bb.el ], [ %.sroa.0623.0926, %.loopexit697 ], [ %.sroa.0623.1902, %.loopexit692 ], [ %.sroa.0623.1.lcssa, %.loopexit687 ], [ %.sroa.0623.1.lcssa, %.loopexit.split-lp688 ] ; 3 uses
  %.pn426.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rr, %bb.da ], [ %i.yj, %bb.fj ], [ %i.yk, %bb.fk ], [ %.pn409.pn.pn, %bb.hi ], [ %i.yr, %bb.fo ], [ %i.yi, %bb.fi ], [ %i.xv, %bb.fa ], [ %i.xw, %bb.fb ], [ %i.xu, %bb.ez ], [ %i.xt, %bb.ey ], [ %i.xs, %bb.ex ], [ %i.xr, %bb.ew ], [ %.pn.pn.pn, %bb.em ], [ %i.qm, %bb.cv ], [ %i.qe, %bb.co ], [ %lpad.loopexit.split-lp695, %.loopexit.split-lp693 ], [ %i.qi, %bb.cs ], [ %i.qh, %bb.cr ], [ %i.qg, %bb.cq ], [ %i.qf, %bb.cp ], [ %lpad.loopexit.split-lp700, %.loopexit.split-lp698 ], [ %i.sj, %bb.dh ], [ %i.si, %bb.dg ], [ %.pn.pn.pn, %bb.el ], [ %lpad.loopexit699, %.loopexit697 ], [ %lpad.loopexit694, %.loopexit692 ], [ %lpad.loopexit689, %.loopexit687 ], [ %lpad.loopexit.split-lp690, %.loopexit.split-lp688 ] ; 2 uses
  %.not.i.i.i557 = icmp eq ptr %.sroa.0613.4, null
  br i1 %.not.i.i.i557, label %_ZNSt6vectorIfSaIfEED2Ev.exit558, label %bb.hm

bb.hm:                                            ; preds = %.body
  %i.aqe = ptrtoint ptr %.sroa.15620.4 to i64
  %i.aqf = ptrtoint ptr %.sroa.0613.4 to i64
  %i.aqg = sub i64 %i.aqe, %i.aqf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0613.4, i64 noundef %i.aqg) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit558

_ZNSt6vectorIfSaIfEED2Ev.exit558:                 ; preds = %.body, %bb.hm
  %.not.i.i.i559 = icmp eq ptr %.sroa.0623.4, null
  br i1 %.not.i.i.i559, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit560, label %bb.hn

bb.hn:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit558
  %i.aqh = ptrtoint ptr %.sroa.20636.4 to i64
  %i.aqi = ptrtoint ptr %.sroa.0623.4 to i64
  %i.aqj = sub i64 %i.aqh, %i.aqi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0623.4, i64 noundef %i.aqj) #27
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit560

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit560:        ; preds = %bb.hn, %_ZNSt6vectorIfSaIfEED2Ev.exit558, %bb.cc, %bb.ce, %bb.ak, %bb.ad, %bb.p
  %.pn439 = phi { ptr, i32 } [ %i.fs, %bb.ad ], [ %.pn426.pn.pn.pn.pn.pn, %bb.hn ], [ %i.gl, %bb.ak ], [ %i.oh, %bb.ce ], [ %i.cn, %bb.p ], [ %i.nl, %bb.cc ], [ %.pn426.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit558 ]
  call void @_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn439

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %bb.hl, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.pr = load ptr, ptr %7, align 8                ; 3 uses
  %.not.i561 = icmp eq ptr %.pr, null
  br i1 %.not.i561, label %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i

_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i:    ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit
  call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %.pr) #26
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 1320) #27
  br label %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i
  %.0323667 = phi ptr [ %i.apx, %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i ], [ %i.apx, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit ], [ %i.c, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret ptr %.0323667

bb.ho:                                            ; preds = %bb.ev, %bb.df
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp16ColladaMeshIndexD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6Assimp13ColladaLoader8findMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(384) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
end_hunk_4
begin_hunk_5_@_ZN6Assimp13ColladaLoader15CreateAnimationEP7aiSceneRKNS_13ColladaParserEPKNS_7Collada9AnimationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.aev = fcmp ogt double %i.aeu, 1.000000e+19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br i1 %i.aev, label %bb.fo, label %bb.ev

.loopexit993:                                     ; preds = %._crit_edge1758, %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.29.0.lcssa = phi ptr [ %.sroa.29.0, %._crit_edge1758 ], [ %.sroa.17.0, %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

.loopexit.split-lp:                               ; preds = %bb.ff
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fh:                                            ; preds = %.loopexit.split-lp, %.loopexit993
  %.sroa.29.01918 = phi ptr [ %.sroa.29.0.lcssa, %.loopexit993 ], [ %.sroa.17.0, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit993 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @_ZNSt6vectorIN6Assimp7Collada9TransformESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %20) #26
  br label %.body639

bb.fi:                                            ; preds = %.lr.ph1760, %bb.fj
  %.02691759 = phi i64 [ 0, %.lr.ph1760 ], [ %i.afa, %bb.fj ] ; 3 uses
  %i.aew = mul i64 %.val349, %.02691759
  %gep1765 = getelementptr [4 x i8], ptr %invariant.gep1764, i64 %i.aew
  %i.aex = load float, ptr %gep1765, align 4      ; 3 uses
  %i.aey = fcmp ogt float %i.aex, %.0260
  br i1 %i.aey, label %.thread, label %bb.fj

.thread:                                          ; preds = %bb.fi
  %i.aez = fcmp olt float %i.aex, %.09041767
  %.sroa.speculated801 = select i1 %i.aez, float %i.aex, float %.09041767
  br label %.loopexit

bb.fj:                                            ; preds = %bb.fi
  %i.afa = add nuw i64 %.02691759, 1              ; 2 uses
  %exitcond2169.not = icmp eq i64 %i.afa, %i.aeo
  br i1 %exitcond2169.not, label %.loopexit, label %bb.fi

.loopexit:                                        ; preds = %bb.fj, %.preheader988, %.thread
  %.02691132 = phi i64 [ %.02691759, %.thread ], [ 0, %.preheader988 ], [ %i.aeo, %bb.fj ] ; 5 uses
  %.3 = phi float [ %.sroa.speculated801, %.thread ], [ %.09041767, %.preheader988 ], [ %.09041767, %bb.fj ] ; 5 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %.sroa.0804.01768, i64 72
  %i.afc = load i64, ptr %i.afb, align 8
  %i.afd = getelementptr inbounds nuw [104 x i8], ptr %i.ael, i64 %i.afc
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 32
  %i.aff = load i32, ptr %i.afe, align 8
  %i.afg = icmp eq i32 %i.aff, 1
  br i1 %i.afg, label %bb.fk, label %bb.fn

bb.fk:                                            ; preds = %.loopexit
  %i.afh = getelementptr inbounds nuw i8, ptr %.sroa.0804.01768, i64 80
  %i.afi = load i64, ptr %i.afh, align 8
  %i.afj = icmp eq i64 %i.afi, 3
  %i.afk = icmp ne i64 %.02691132, 0
  %or.cond4 = and i1 %i.afk, %i.afj
  %i.afl = icmp ult i64 %.02691132, %i.aeo
  %or.cond957 = and i1 %i.afl, %or.cond4
  br i1 %or.cond957, label %bb.fl, label %bb.fn

bb.fl:                                            ; preds = %bb.fk
  %i.afm = getelementptr inbounds nuw i8, ptr %.sroa.0804.01768, i64 104
  %i.afn = load ptr, ptr %i.afm, align 8          ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.sroa.0804.01768, i64 112
  %i.afp = load ptr, ptr %i.afo, align 8
  %i.afq = getelementptr i8, ptr %i.afn, i64 16
  %.val360 = load i64, ptr %i.afq, align 8        ; 2 uses
  %i.afr = getelementptr i8, ptr %i.afn, i64 24
  %.val361 = load i64, ptr %i.afr, align 8        ; 2 uses
  %i.afs = getelementptr i8, ptr %i.afp, i64 8
  %.val362 = load ptr, ptr %i.afs, align 8        ; 2 uses
  %i.aft = mul i64 %.val361, %.02691132
  %i.afu = getelementptr [4 x i8], ptr %.val362, i64 %i.aft
  %i.afv = getelementptr [4 x i8], ptr %i.afu, i64 %.val360
  %i.afw = load float, ptr %i.afv, align 4        ; 2 uses
  %i.afx = add i64 %.02691132, -1                 ; 2 uses
  %i.afy = mul i64 %.val361, %i.afx
  %i.afz = getelementptr [4 x i8], ptr %.val362, i64 %i.afy
  %i.aga = getelementptr [4 x i8], ptr %i.afz, i64 %.val360
  %i.agb = load float, ptr %i.aga, align 4        ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.sroa.0804.01768, i64 96
  %i.agd = load ptr, ptr %i.agc, align 8
  %i.age = getelementptr i8, ptr %i.aen, i64 16
  %.val354 = load i64, ptr %i.age, align 8        ; 2 uses
  %i.agf = getelementptr i8, ptr %i.aen, i64 24
  %.val355 = load i64, ptr %i.agf, align 8        ; 2 uses
  %i.agg = getelementptr i8, ptr %i.agd, i64 8
  %.val356 = load ptr, ptr %i.agg, align 8        ; 2 uses
  %i.agh = mul i64 %.val355, %.02691132
  %i.agi = getelementptr [4 x i8], ptr %.val356, i64 %i.agh
  %i.agj = getelementptr [4 x i8], ptr %i.agi, i64 %.val354
  %i.agk = load float, ptr %i.agj, align 4        ; 3 uses
  %i.agl = mul i64 %.val355, %i.afx
  %i.agm = getelementptr [4 x i8], ptr %.val356, i64 %i.agl
  %i.agn = getelementptr [4 x i8], ptr %i.agm, i64 %.val354
  %i.ago = load float, ptr %i.agn, align 4        ; 2 uses
  %i.agp = fsub float %i.afw, %i.agb
  %i.agq = fsub float %.0260, %i.ago
  %i.agr = fmul float %i.agp, %i.agq
  %i.ags = fsub float %i.agk, %i.ago
  %i.agt = fdiv float %i.agr, %i.ags
  %i.agu = fadd float %i.agb, %i.agt
  %i.agv = fsub float %i.afw, %i.agu
  %i.agw = call noundef float @llvm.fabs.f32(float %i.agv) ; 2 uses
  %i.agx = fcmp oge float %i.agw, 1.800000e+02
  %i.agy = fcmp une float %i.agk, %.0260
  %or.cond330 = select i1 %i.agx, i1 %i.agy, i1 false
  br i1 %or.cond330, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.agz = fpext float %i.agw to double
  %i.aha = fdiv double %i.agz, 9.000000e+01
  %i.ahb = call double @llvm.floor.f64(double %i.aha)
  %i.ahc = fptosi double %i.ahb to i32
  %i.ahd = fsub float %i.agk, %.0260
  %i.ahe = sitofp i32 %i.ahc to float
  %i.ahf = fdiv float %i.ahd, %i.ahe
  %i.ahg = fadd float %.0260, %i.ahf              ; 2 uses
  %i.ahh = fcmp olt float %i.ahg, %.3
  %.sroa.speculated = select i1 %i.ahh, float %i.ahg, float %.3
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fl, %bb.fm, %bb.fk, %.loopexit
  %.4 = phi float [ %.sroa.speculated, %bb.fm ], [ %.3, %bb.fl ], [ %.3, %.loopexit ], [ %.3, %bb.fk ] ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %.sroa.0804.01768, i64 120 ; 2 uses
  %.not969 = icmp eq ptr %i.ahi, %i.aek
  br i1 %.not969, label %._crit_edge1769, label %.preheader988

bb.fo:                                            ; preds = %._crit_edge1769
  %i.ahj = load ptr, ptr %20, align 8             ; 3 uses
  %i.ahk = load ptr, ptr %i.bh, align 8           ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ahj, %i.ahk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.fo, %_ZSt8_DestroyIN6Assimp7Collada9TransformEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ahq, %_ZSt8_DestroyIN6Assimp7Collada9TransformEEvPT_.exit.i.i.i ], [ %i.ahj, %bb.fo ] ; 3 uses
  %i.ahl = load ptr, ptr %.05.i.i.i, align 8      ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ahn = icmp eq ptr %i.ahl, %i.ahm
  br i1 %i.ahn, label %_ZSt8_DestroyIN6Assimp7Collada9TransformEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aho = load i64, ptr %i.ahm, align 8
  %i.ahp = add i64 %i.aho, 1
  call void @_ZdlPvm(ptr noundef %i.ahl, i64 noundef %i.ahp) #27
  br label %_ZSt8_DestroyIN6Assimp7Collada9TransformEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp7Collada9TransformEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ahq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i648 = icmp eq ptr %i.ahq, %i.ahk
  br i1 %.not.i.i.i648, label %_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !161

_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp7Collada9TransformEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %20, align 8
  br label %_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.fo
  %i.ahr = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ahj, %bb.fo ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ahr, null
  br i1 %.not.i.i1.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exit.i
  %i.ahs = load ptr, ptr %i.bi, align 8
  %i.aht = ptrtoint ptr %i.ahs to i64
  %i.ahu = ptrtoint ptr %i.ahr to i64
  %i.ahv = sub i64 %i.aht, %i.ahu
  call void @_ZdlPvm(ptr noundef nonnull %i.ahr, i64 noundef %i.ahv) #27
  br label %bb.fq

.body639:                                         ; preds = %.loopexit1030, %.loopexit.split-lp1031, %bb.et, %bb.es, %bb.fh
  %.sroa.29.1 = phi ptr [ %.sroa.29.01918, %bb.fh ], [ null, %bb.es ], [ null, %bb.et ], [ null, %.loopexit.split-lp1031 ], [ null, %.loopexit1030 ]
  %.sroa.0823.1 = phi ptr [ %.sroa.0823.0, %bb.fh ], [ null, %bb.es ], [ null, %bb.et ], [ null, %.loopexit.split-lp1031 ], [ null, %.loopexit1030 ]
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi, %bb.fh ], [ %i.aan, %bb.es ], [ %i.aan, %bb.et ], [ %lpad.loopexit.split-lp1033, %.loopexit.split-lp1031 ], [ %lpad.loopexit1032, %.loopexit1030 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.hs

bb.fq:                                            ; preds = %bb.fp, %_ZSt8_DestroyIPN6Assimp7Collada9TransformES2_EvT_S4_RSaIT0_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.ahw = icmp eq ptr %.sroa.0823.4, %.sroa.17.2
  br i1 %i.ahw, label %.thread926, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ahx = invoke noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #30
          to label %bb.fs unwind label %.loopexit1035 ; 11 uses

bb.fs:                                            ; preds = %bb.fr
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 1048 ; 4 uses
  store ptr null, ptr %i.ahy, align 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahx, i64 1056 ; 2 uses
  store i32 0, ptr %i.ahz, align 8
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahx, i64 1064 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.ahx, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aia, i8 0, i64 16, i1 false)
  %i.aib = load i64, ptr %i.s, align 8            ; 4 uses
  %i.aic = icmp ugt i64 %i.aib, 1023
  br i1 %i.aic, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aid = trunc nuw nsw i64 %i.aib to i32
  store i32 %i.aid, ptr %i.ahx, align 8
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ahx, i64 4 ; 2 uses
  %i.aif = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aie, ptr align 1 %i.aif, i64 %i.aib, i1 false)
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aie, i64 %i.aib
  store i8 0, ptr %i.aig, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.fs, %bb.ft
  %i.aih = ptrtoint ptr %.sroa.17.2 to i64
  %i.aii = ptrtoint ptr %.sroa.0823.4 to i64      ; 2 uses
  %i.aij = sub i64 %i.aih, %i.aii                 ; 3 uses
  %i.aik = ashr exact i64 %i.aij, 6               ; 7 uses
  %i.ail = trunc i64 %i.aik to i32                ; 3 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ahx, i64 1028
  store i32 %i.ail, ptr %i.aim, align 4
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ahx, i64 1040
  store i32 %i.ail, ptr %i.ain, align 8
  store i32 %i.ail, ptr %i.ahz, align 8
  %i.aio = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aik, i64 24) ; 2 uses
  %i.aip = extractvalue { i64, i1 } %i.aio, 1
  %i.aiq = extractvalue { i64, i1 } %i.aio, 0
  %i.air = select i1 %i.aip, i64 -1, i64 %i.aiq   ; 2 uses
  %i.ais = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.air) #30
          to label %bb.fu unwind label %.loopexit1035 ; 3 uses

bb.fu:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ait = getelementptr inbounds [24 x i8], ptr %i.ais, i64 %i.aik
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fv, %bb.fu
  %i.aiu = phi ptr [ %i.ais, %bb.fu ], [ %i.aiw, %bb.fv ] ; 3 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aiu, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.aiv, align 4
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiu, i64 24 ; 2 uses
  %i.aix = icmp eq ptr %i.aiw, %i.ait
  br i1 %i.aix, label %bb.fw, label %bb.fv

bb.fw:                                            ; preds = %bb.fv
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 1032 ; 3 uses
  store ptr %i.ais, ptr %i.aiy, align 8
  %i.aiz = icmp ugt i64 %i.aik, 576460752303423487
  %i.aja = ashr exact i64 %i.aij, 1
  %i.ajb = select i1 %i.aiz, i64 -1, i64 %i.aja
  %i.ajc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ajb) #30
          to label %bb.fx unwind label %.loopexit1035 ; 4 uses

bb.fx:                                            ; preds = %bb.fw
  %i.ajd = getelementptr inbounds [32 x i8], ptr %i.ajc, i64 %i.aik
  %i.aje = ashr exact i64 %i.aij, 1
  %i.ajf = add nsw i64 %i.aje, -32                ; 2 uses
  %i.ajg = lshr i64 %i.ajf, 5
  %i.ajh = add nuw nsw i64 %i.ajg, 1
  %xtraiter = and i64 %i.ajh, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.fx, %.prol.preheader
  %i.aji = phi ptr [ %i.ajl, %.prol.preheader ], [ %i.ajc, %bb.fx ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.fx ]
  store double 0.000000e+00, ptr %i.aji, align 8
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ajj, align 8
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aji, i64 24
  store i32 1, ptr %i.ajk, align 8
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aji, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !162

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.fx
  %.unr = phi ptr [ %i.ajc, %bb.fx ], [ %i.ajl, %.prol.preheader ]
  %i.ajm = icmp ult i64 %i.ajf, 224
  br i1 %i.ajm, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ajn = phi ptr [ %i.akl, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.ajn, align 8
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ajo, align 8
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajn, i64 24
  store i32 1, ptr %i.ajp, align 8
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajn, i64 32
  store double 0.000000e+00, ptr %i.ajq, align 8
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajn, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ajr, align 8
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajn, i64 56
  store i32 1, ptr %i.ajs, align 8
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajn, i64 64
  store double 0.000000e+00, ptr %i.ajt, align 8
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajn, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.aju, align 8
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajn, i64 88
  store i32 1, ptr %i.ajv, align 8
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajn, i64 96
  store double 0.000000e+00, ptr %i.ajw, align 8
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajn, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ajx, align 8
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajn, i64 120
  store i32 1, ptr %i.ajy, align 8
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajn, i64 128
  store double 0.000000e+00, ptr %i.ajz, align 8
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajn, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.aka, align 8
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajn, i64 152
  store i32 1, ptr %i.akb, align 8
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajn, i64 160
  store double 0.000000e+00, ptr %i.akc, align 8
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajn, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.akd, align 8
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajn, i64 184
  store i32 1, ptr %i.ake, align 8
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajn, i64 192
  store double 0.000000e+00, ptr %i.akf, align 8
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajn, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.akg, align 8
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ajn, i64 216
  store i32 1, ptr %i.akh, align 8
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajn, i64 224
  store double 0.000000e+00, ptr %i.aki, align 8
  %i.akj = getelementptr inbounds nuw i8, ptr %i.ajn, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.akj, align 8
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ajn, i64 248
  store i32 1, ptr %i.akk, align 8
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ajn, i64 256 ; 2 uses
  %i.akm = icmp eq ptr %i.akl, %i.ajd
  br i1 %i.akm, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  store ptr %i.ajc, ptr %i.ahy, align 8
  %i.akn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.air) #30
          to label %bb.fy unwind label %.loopexit1035 ; 3 uses

bb.fy:                                            ; preds = %.unr-lcssa
  %i.ako = getelementptr inbounds [24 x i8], ptr %i.akn, i64 %i.aik
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fz, %bb.fy
  %i.akp = phi ptr [ %i.akn, %bb.fy ], [ %i.akr, %bb.fz ] ; 3 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.akp, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.akq, align 4
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akp, i64 24 ; 2 uses
  %i.aks = icmp eq ptr %i.akr, %i.ako
  br i1 %i.aks, label %.lr.ph1773.preheader, label %bb.fz

.lr.ph1773.preheader:                             ; preds = %bb.fz
  store ptr %i.akn, ptr %i.aia, align 8
  br label %.lr.ph1773

._crit_edge1774:                                  ; preds = %bb.gf
  %.not.i650 = icmp eq ptr %.sroa.13.01802, %.sroa.22.01801
  br i1 %.not.i650, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %._crit_edge1774
  store ptr %i.ahx, ptr %.sroa.13.01802, align 8
  %i.akt = getelementptr inbounds nuw i8, ptr %.sroa.13.01802, i64 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit

bb.gb:                                            ; preds = %._crit_edge1774
  %i.aku = ptrtoint ptr %.sroa.13.01802 to i64
  %i.akv = ptrtoint ptr %.sroa.0886.01803 to i64
  %i.akw = sub i64 %i.aku, %i.akv                 ; 6 uses
  %i.akx = icmp eq i64 %i.akw, 9223372036854775800
  br i1 %i.akx, label %bb.gc, label %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.gc:                                            ; preds = %bb.gb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #29
          to label %.noexc653 unwind label %.thread2430

.noexc653:                                        ; preds = %bb.gc
  unreachable

_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.gb
  %i.aky = ashr exact i64 %i.akw, 3               ; 3 uses
  %.sroa.speculated.i.i.i651 = call i64 @llvm.umax.i64(i64 %i.aky, i64 1)
  %i.akz = add nsw i64 %.sroa.speculated.i.i.i651, %i.aky ; 2 uses
  %i.ala = icmp ult i64 %i.akz, %i.aky
  %i.alb = call i64 @llvm.umin.i64(i64 %i.akz, i64 1152921504606846975)
  %i.alc = select i1 %i.ala, i64 1152921504606846975, i64 %i.alb ; 3 uses
  %.not.i.i.i652 = icmp ne i64 %i.alc, 0
  call void @llvm.assume(i1 %.not.i.i.i652)
  %i.ald = shl nuw nsw i64 %i.alc, 3
  %i.ale = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ald) #30
          to label %.noexc654 unwind label %.loopexit1035 ; 4 uses

.noexc654:                                        ; preds = %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.alf = getelementptr inbounds i8, ptr %i.ale, i64 %i.akw ; 2 uses
  store ptr %i.ahx, ptr %i.alf, align 8
  %i.alg = icmp sgt i64 %i.akw, 0
  br i1 %i.alg, label %bb.gd, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.gd:                                            ; preds = %.noexc654
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ale, ptr align 8 %.sroa.0886.01803, i64 %i.akw, i1 false)
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.gd, %.noexc654
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alf, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0886.01803, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ge
end_hunk_5
begin_hunk_6_@_ZN6Assimp13ColladaLoader15CreateAnimationEP7aiSceneRKNS_13ColladaParserEPKNS_7Collada9AnimationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i684: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683
  %i.avc = load i64, ptr %i.u, align 8
  %i.avd = add i64 %i.avc, 1
  call void @_ZdlPvm(ptr noundef %i.ava, i64 noundef %i.avd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i684
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.hq

bb.hq:                                            ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686
  %.sroa.20.4 = phi ptr [ %.sroa.20.01798, %bb.g ], [ %.sroa.20.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686 ] ; 2 uses
  %.sroa.12.4 = phi ptr [ %.sroa.12.01799, %bb.g ], [ %.sroa.12.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686 ] ; 2 uses
  %.sroa.0872.4 = phi ptr [ %.sroa.0872.01800, %bb.g ], [ %.sroa.0872.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686 ] ; 2 uses
  %.sroa.22.3 = phi ptr [ %.sroa.22.01801, %bb.g ], [ %.sroa.22.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686 ] ; 2 uses
  %.sroa.13.3 = phi ptr [ %.sroa.13.01802, %bb.g ], [ %.sroa.13.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686 ] ; 2 uses
  %.sroa.0886.3 = phi ptr [ %.sroa.0886.01803, %bb.g ], [ %.sroa.0886.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686 ] ; 2 uses
  %i.ave = load ptr, ptr %7, align 8              ; 2 uses
  %i.avf = icmp eq ptr %i.ave, %i.r
  br i1 %i.avf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit689, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i687

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i687: ; preds = %bb.hq
  %i.avg = load i64, ptr %i.r, align 8
  %i.avh = add i64 %i.avg, 1
  call void @_ZdlPvm(ptr noundef %i.ave, i64 noundef %i.avh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit689

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit689: ; preds = %bb.hq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i687
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.avi = load ptr, ptr %6, align 8              ; 3 uses
  %i.avj = load ptr, ptr %i.aw, align 8           ; 2 uses
  %.not4.i.i.i690 = icmp eq ptr %i.avi, %i.avj
  br i1 %.not4.i.i.i690, label %_ZSt8_DestroyIPN6Assimp7Collada12ChannelEntryES2_EvT_S4_RSaIT0_E.exit.i700, label %.lr.ph.i.i.i691

.lr.ph.i.i.i691:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit689, %_ZSt8_DestroyIN6Assimp7Collada12ChannelEntryEEvPT_.exit.i.i.i696
  %.05.i.i.i692 = phi ptr [ %i.avw, %_ZSt8_DestroyIN6Assimp7Collada12ChannelEntryEEvPT_.exit.i.i.i696 ], [ %i.avi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit689 ] ; 5 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %.05.i.i.i692, i64 40
  %i.avl = load ptr, ptr %i.avk, align 8          ; 2 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %.05.i.i.i692, i64 56 ; 2 uses
  %i.avn = icmp eq ptr %i.avl, %i.avm
  br i1 %i.avn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i694, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i693

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i693: ; preds = %.lr.ph.i.i.i691
  %i.avo = load i64, ptr %i.avm, align 8
  %i.avp = add i64 %i.avo, 1
  call void @_ZdlPvm(ptr noundef %i.avl, i64 noundef %i.avp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i694

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i694: ; preds = %.lr.ph.i.i.i691, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i693
  %i.avq = getelementptr inbounds nuw i8, ptr %.05.i.i.i692, i64 8
  %i.avr = load ptr, ptr %i.avq, align 8          ; 2 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %.05.i.i.i692, i64 24 ; 2 uses
  %i.avt = icmp eq ptr %i.avr, %i.avs
  br i1 %i.avt, label %_ZSt8_DestroyIN6Assimp7Collada12ChannelEntryEEvPT_.exit.i.i.i696, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i695

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i695: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i694
  %i.avu = load i64, ptr %i.avs, align 8
  %i.avv = add i64 %i.avu, 1
  call void @_ZdlPvm(ptr noundef %i.avr, i64 noundef %i.avv) #27
  br label %_ZSt8_DestroyIN6Assimp7Collada12ChannelEntryEEvPT_.exit.i.i.i696

_ZSt8_DestroyIN6Assimp7Collada12ChannelEntryEEvPT_.exit.i.i.i696: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i694, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i695
  %i.avw = getelementptr inbounds nuw i8, ptr %.05.i.i.i692, i64 120 ; 2 uses
  %.not.i.i.i697 = icmp eq ptr %i.avw, %i.avj
  br i1 %.not.i.i.i697, label %_ZSt8_DestroyIPN6Assimp7Collada12ChannelEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i698, label %.lr.ph.i.i.i691, !llvm.loop !169

_ZSt8_DestroyIPN6Assimp7Collada12ChannelEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i698: ; preds = %_ZSt8_DestroyIN6Assimp7Collada12ChannelEntryEEvPT_.exit.i.i.i696
  %.pr.i699 = load ptr, ptr %6, align 8
  br label %_ZSt8_DestroyIPN6Assimp7Collada12ChannelEntryES2_EvT_S4_RSaIT0_E.exit.i700

_ZSt8_DestroyIPN6Assimp7Collada12ChannelEntryES2_EvT_S4_RSaIT0_E.exit.i700: ; preds = %_ZSt8_DestroyIPN6Assimp7Collada12ChannelEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i698, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit689
  %i.avx = phi ptr [ %.pr.i699, %_ZSt8_DestroyIPN6Assimp7Collada12ChannelEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i698 ], [ %i.avi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit689 ] ; 3 uses
  %.not.i.i1.i701 = icmp eq ptr %i.avx, null
  br i1 %.not.i.i1.i701, label %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704, label %bb.hr

bb.hr:                                            ; preds = %_ZSt8_DestroyIPN6Assimp7Collada12ChannelEntryES2_EvT_S4_RSaIT0_E.exit.i700
  %i.avy = load ptr, ptr %i.ax, align 8
  %i.avz = ptrtoint ptr %i.avy to i64
  %i.awa = ptrtoint ptr %i.avx to i64
  %i.awb = sub i64 %i.avz, %i.awa
  call void @_ZdlPvm(ptr noundef nonnull %i.avx, i64 noundef %i.awb) #27
  br label %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704

_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704: ; preds = %_ZSt8_DestroyIPN6Assimp7Collada12ChannelEntryES2_EvT_S4_RSaIT0_E.exit.i700, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.awc = getelementptr inbounds nuw i8, ptr %.sroa.0869.01797, i64 8 ; 2 uses
  %.not959 = icmp eq ptr %i.awc, %i.q
  br i1 %.not959, label %._crit_edge1806, label %bb.d

bb.hs:                                            ; preds = %.loopexit1035, %bb.hn, %bb.gh, %.body639
  %.sroa.20.017981995 = phi ptr [ %.sroa.20.017981998, %bb.hn ], [ %.sroa.20.01798, %bb.gh ], [ %.sroa.20.01798, %.body639 ], [ %.sroa.20.01798, %.loopexit1035 ] ; 2 uses
  %.sroa.29.3 = phi ptr [ %.sroa.29.2930, %bb.hn ], [ %.sroa.29.2931, %bb.gh ], [ %.sroa.29.1, %.body639 ], [ %.sroa.29.4, %.loopexit1035 ]
  %.sroa.0823.3 = phi ptr [ %.sroa.0823.2936, %bb.hn ], [ %.sroa.0823.2937, %bb.gh ], [ %.sroa.0823.1, %.body639 ], [ %.sroa.0823.4, %.loopexit1035 ] ; 2 uses
  %.sroa.22.4 = phi ptr [ %.sroa.22.1, %bb.hn ], [ %.sroa.22.01801, %bb.gh ], [ %.sroa.22.01801, %.body639 ], [ %.sroa.22.01801.lcssa2095, %.loopexit1035 ] ; 2 uses
  %.sroa.0886.4 = phi ptr [ %.sroa.0886.1, %bb.hn ], [ %.sroa.0886.01803, %bb.gh ], [ %.sroa.0886.01803, %.body639 ], [ %.sroa.0886.01803, %.loopexit1035 ] ; 2 uses
  %.pn307.pn = phi { ptr, i32 } [ %.pn307, %bb.hn ], [ %i.amf, %bb.gh ], [ %.pn.pn, %.body639 ], [ %lpad.loopexit1037, %.loopexit1035 ] ; 2 uses
  %.not.i.i.i705 = icmp eq ptr %.sroa.0823.3, null
  br i1 %.not.i.i.i705, label %.body, label %._crit_edge2183

._crit_edge2183:                                  ; preds = %.thread2430, %bb.hs
  %.pn307.pn2443 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1038, %.thread2430 ], [ %.pn307.pn, %bb.hs ]
  %.sroa.0886.42442 = phi ptr [ %.sroa.0886.01803, %.thread2430 ], [ %.sroa.0886.4, %bb.hs ]
  %.sroa.22.42441 = phi ptr [ %.sroa.13.01802, %.thread2430 ], [ %.sroa.22.4, %bb.hs ]
  %.sroa.0823.32440 = phi ptr [ %.sroa.0823.4, %.thread2430 ], [ %.sroa.0823.3, %bb.hs ] ; 2 uses
  %.sroa.29.32439 = phi ptr [ %.sroa.29.4, %.thread2430 ], [ %.sroa.29.3, %bb.hs ]
  %.sroa.20.0179819952438 = phi ptr [ %.sroa.20.01798, %.thread2430 ], [ %.sroa.20.017981995, %bb.hs ]
  %.pre2184 = ptrtoint ptr %.sroa.0823.32440 to i64
  br label %bb.ht

bb.ht:                                            ; preds = %._crit_edge2183, %.thread942
  %.pre-phi = phi i64 [ %.pre2184, %._crit_edge2183 ], [ %i.aii, %.thread942 ]
  %.sroa.20.017981994 = phi ptr [ %.sroa.20.0179819952438, %._crit_edge2183 ], [ %.sroa.20.01798, %.thread942 ]
  %.pn307.pn955 = phi { ptr, i32 } [ %.pn307.pn2443, %._crit_edge2183 ], [ %i.amd, %.thread942 ]
  %.sroa.0886.4953 = phi ptr [ %.sroa.0886.42442, %._crit_edge2183 ], [ %.sroa.0886.01803, %.thread942 ]
  %.sroa.22.4951 = phi ptr [ %.sroa.22.42441, %._crit_edge2183 ], [ %.sroa.22.01801, %.thread942 ]
  %.sroa.0823.3950 = phi ptr [ %.sroa.0823.32440, %._crit_edge2183 ], [ %.sroa.0823.4, %.thread942 ]
  %.sroa.29.3949 = phi ptr [ %.sroa.29.32439, %._crit_edge2183 ], [ %.sroa.29.4, %.thread942 ]
  %i.awd = ptrtoint ptr %.sroa.29.3949 to i64
  %i.awe = sub i64 %i.awd, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0823.3950, i64 noundef %i.awe) #27
  br label %.body

.body:                                            ; preds = %bb.dv, %bb.ed, %bb.eh, %bb.ek, %bb.dz, %bb.el, %bb.hs, %bb.ht, %.body743
  %.sroa.20.017981993 = phi ptr [ %.sroa.20.01798, %.body743 ], [ %.sroa.20.01798, %bb.el ], [ %.sroa.20.01798, %bb.dv ], [ %.sroa.20.01798, %bb.ed ], [ %.sroa.20.01798, %bb.eh ], [ %.sroa.20.01798, %bb.ek ], [ %.sroa.20.01798, %bb.dz ], [ %.sroa.20.017981995, %bb.hs ], [ %.sroa.20.017981994, %bb.ht ] ; 2 uses
  %.sroa.22.6 = phi ptr [ %.sroa.22.01801, %.body743 ], [ %.sroa.22.01801, %bb.el ], [ %.sroa.22.01801, %bb.dv ], [ %.sroa.22.01801, %bb.ed ], [ %.sroa.22.01801, %bb.eh ], [ %.sroa.22.01801, %bb.ek ], [ %.sroa.22.01801, %bb.dz ], [ %.sroa.22.4, %bb.hs ], [ %.sroa.22.4951, %bb.ht ] ; 2 uses
  %.sroa.0886.6 = phi ptr [ %.sroa.0886.01803, %.body743 ], [ %.sroa.0886.01803, %bb.el ], [ %.sroa.0886.01803, %bb.dv ], [ %.sroa.0886.01803, %bb.ed ], [ %.sroa.0886.01803, %bb.eh ], [ %.sroa.0886.01803, %bb.ek ], [ %.sroa.0886.01803, %bb.dz ], [ %.sroa.0886.4, %bb.hs ], [ %.sroa.0886.4953, %bb.ht ] ; 2 uses
  %.pn322.pn.pn = phi { ptr, i32 } [ %.pn322.pn, %.body743 ], [ %i.zo, %bb.el ], [ %i.wf, %bb.dv ], [ %i.yf, %bb.ed ], [ %i.zg, %bb.eh ], [ %i.zn, %bb.ek ], [ %i.xf, %bb.dz ], [ %.pn307.pn, %bb.hs ], [ %.pn307.pn955, %bb.ht ] ; 2 uses
  %i.awf = load ptr, ptr %9, align 8              ; 2 uses
  %i.awg = icmp eq ptr %i.awf, %i.w
  br i1 %i.awg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i707

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i707: ; preds = %.body
  %i.awh = load i64, ptr %i.w, align 8
  %i.awi = add i64 %i.awh, 1
  call void @_ZdlPvm(ptr noundef %i.awf, i64 noundef %i.awi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i707
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.awj = load ptr, ptr %8, align 8              ; 2 uses
  %i.awk = icmp eq ptr %i.awj, %i.u
  br i1 %i.awk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit712, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i710

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i710: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709
  %i.awl = load i64, ptr %i.u, align 8
  %i.awm = add i64 %i.awl, 1
  call void @_ZdlPvm(ptr noundef %i.awj, i64 noundef %i.awm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit712

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit712: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i710
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.awn = load ptr, ptr %7, align 8              ; 2 uses
  %i.awo = icmp eq ptr %i.awn, %i.r
  br i1 %i.awo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit712
  %i.awp = load i64, ptr %i.r, align 8
  %i.awq = add i64 %i.awp, 1
  call void @_ZdlPvm(ptr noundef %i.awn, i64 noundef %i.awq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit712, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713, %bb.h
  %.sroa.20.017981992 = phi ptr [ %.sroa.20.01798, %bb.h ], [ %.sroa.20.017981993, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713 ], [ %.sroa.20.017981993, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit712 ]
  %.sroa.22.8 = phi ptr [ %.sroa.22.01801, %bb.h ], [ %.sroa.22.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713 ], [ %.sroa.22.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit712 ]
  %.sroa.0886.8 = phi ptr [ %.sroa.0886.01803, %bb.h ], [ %.sroa.0886.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713 ], [ %.sroa.0886.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit712 ]
  %.pn322.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.h ], [ %.pn322.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713 ], [ %.pn322.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit712 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.iq

bb.hu:                                            ; preds = %._crit_edge1806
  %i.awr = invoke noalias noundef nonnull dereferenceable(1096) ptr @_Znwm(i64 noundef 1096) #30
          to label %bb.hv unwind label %bb.ic     ; 13 uses

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.awr, i8 0, i64 1028, i1 false)
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 1032 ; 6 uses
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awr, i64 1040
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.aws, align 8
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awr, i64 1048 ; 2 uses
  store i32 0, ptr %i.awu, align 8
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awr, i64 1056 ; 2 uses
  store ptr null, ptr %i.awv, align 8
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awr, i64 1064
  store i32 0, ptr %i.aww, align 8
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awr, i64 1072
  store ptr null, ptr %i.awx, align 8
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awr, i64 1080 ; 2 uses
  store i32 0, ptr %i.awy, align 8
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awr, i64 1088 ; 2 uses
  store ptr null, ptr %i.awz, align 8
  %i.axa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.axb = load i64, ptr %i.axa, align 8          ; 4 uses
  %i.axc = icmp ugt i64 %i.axb, 1023
  br i1 %i.axc, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit716, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.axd = trunc nuw nsw i64 %i.axb to i32
  store i32 %i.axd, ptr %i.awr, align 8
  %i.axe = getelementptr inbounds nuw i8, ptr %i.awr, i64 4 ; 2 uses
  %i.axf = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.axe, ptr align 1 %i.axf, i64 %i.axb, i1 false)
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axe, i64 %i.axb
  store i8 0, ptr %i.axg, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit716

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit716: ; preds = %bb.hv, %bb.hw
  %i.axh = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.axi = ptrtoint ptr %.sroa.0886.0.lcssa to i64
  %i.axj = sub i64 %i.axh, %i.axi                 ; 5 uses
  %i.axk = ashr exact i64 %i.axj, 3               ; 2 uses
  %i.axl = trunc i64 %i.axk to i32                ; 2 uses
  store i32 %i.axl, ptr %i.awu, align 8
  %.not = icmp eq i32 %i.axl, 0
  br i1 %.not, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.hx

bb.hx:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit716
  %i.axm = icmp ugt i64 %i.axk, 2305843009213693951
  %i.axn = select i1 %i.axm, i64 -1, i64 %i.axj
  %i.axo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.axn) #30
          to label %bb.hy unwind label %bb.ic     ; 3 uses

bb.hy:                                            ; preds = %bb.hx
  store ptr %i.axo, ptr %i.awv, align 8
  %i.axp = icmp sgt i64 %i.axj, 8
  br i1 %i.axp, label %bb.hz, label %bb.ia, !prof !14

bb.hz:                                            ; preds = %bb.hy
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.axo, ptr align 8 %.sroa.0886.0.lcssa, i64 %i.axj, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.ia:                                            ; preds = %bb.hy
  %i.axq = icmp eq i64 %i.axj, 8
  br i1 %i.axq, label %bb.ib, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.ib:                                            ; preds = %bb.ia
  %i.axr = load ptr, ptr %.sroa.0886.0.lcssa, align 8
  store ptr %i.axr, ptr %i.axo, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.ic:                                            ; preds = %_ZNKSt6vectorIP11aiAnimationSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.ik, %bb.id, %bb.hx, %bb.hu
  %i.axs = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %bb.ib, %bb.ia, %bb.hz, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit716
  %i.axt = ptrtoint ptr %.sroa.12.0.lcssa to i64
  %i.axu = ptrtoint ptr %.sroa.0872.0.lcssa to i64
  %i.axv = sub i64 %i.axt, %i.axu                 ; 5 uses
  %i.axw = lshr exact i64 %i.axv, 3
  %i.axx = trunc i64 %i.axw to i32                ; 2 uses
  store i32 %i.axx, ptr %i.awy, align 8
  %.not294 = icmp eq i32 %i.axx, 0
  br i1 %.not294, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP15aiMeshMorphAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.id

bb.id:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.axy = and i64 %i.axv, 34359738360
  %i.axz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.axy) #30
          to label %bb.ie unwind label %bb.ic     ; 3 uses

bb.ie:                                            ; preds = %bb.id
  store ptr %i.axz, ptr %i.awz, align 8
  %i.aya = icmp sgt i64 %i.axv, 8
  br i1 %i.aya, label %bb.if, label %bb.ig, !prof !14

bb.if:                                            ; preds = %bb.ie
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.axz, ptr align 8 %.sroa.0872.0.lcssa, i64 %i.axv, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP15aiMeshMorphAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.ig:                                            ; preds = %bb.ie
  %i.ayb = icmp eq i64 %i.axv, 8
  br i1 %i.ayb, label %bb.ih, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP15aiMeshMorphAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.ih:                                            ; preds = %bb.ig
  %i.ayc = load ptr, ptr %.sroa.0872.0.lcssa, align 8
  store ptr %i.ayc, ptr %i.axz, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP15aiMeshMorphAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP15aiMeshMorphAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %bb.ih, %bb.ig, %bb.if, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  store double 0.000000e+00, ptr %i.aws, align 8
  br i1 %i.bp, label %.preheader, label %.lr.ph1815

.preheader:                                       ; preds = %.lr.ph1815, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP15aiMeshMorphAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %.promoted1821 = phi double [ 0.000000e+00, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP15aiMeshMorphAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ], [ %i.azj, %.lr.ph1815 ]
  br i1 %i.bq, label %._crit_edge1820, label %.lr.ph1819

.lr.ph1815:                                       ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP15aiMeshMorphAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, %.lr.ph1815
  %.val9651816 = phi double [ %i.azj, %.lr.ph1815 ], [ 0.000000e+00, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP15aiMeshMorphAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ] ; 2 uses
  %.sroa.0749.01814 = phi ptr [ %i.azk, %.lr.ph1815 ], [ %.sroa.0886.0.lcssa, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP15aiMeshMorphAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ] ; 4 uses
  %i.ayd = load ptr, ptr %.sroa.0749.01814, align 8 ; 2 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 1032
  %i.ayf = load ptr, ptr %i.aye, align 8
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayd, i64 1028
  %i.ayh = load i32, ptr %i.ayg, align 4
  %i.ayi = add i32 %i.ayh, -1
  %i.ayj = zext i32 %i.ayi to i64
  %i.ayk = getelementptr inbounds nuw [24 x i8], ptr %i.ayf, i64 %i.ayj
  %i.ayl = load double, ptr %i.ayk, align 8       ; 2 uses
  %i.aym = fcmp olt double %.val9651816, %i.ayl
  %i.ayn = select i1 %i.aym, double %i.ayl, double %.val9651816 ; 3 uses
  store double %i.ayn, ptr %i.aws, align 8
  %i.ayo = load ptr, ptr %.sroa.0749.01814, align 8 ; 2 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayo, i64 1048
  %i.ayq = load ptr, ptr %i.ayp, align 8
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayo, i64 1040
  %i.ays = load i32, ptr %i.ayr, align 8
  %i.ayt = add i32 %i.ays, -1
  %i.ayu = zext i32 %i.ayt to i64
  %i.ayv = getelementptr inbounds nuw [32 x i8], ptr %i.ayq, i64 %i.ayu
  %i.ayw = load double, ptr %i.ayv, align 8       ; 2 uses
  %i.ayx = fcmp olt double %i.ayn, %i.ayw
  %i.ayy = select i1 %i.ayx, double %i.ayw, double %i.ayn ; 3 uses
  store double %i.ayy, ptr %i.aws, align 8
  %i.ayz = load ptr, ptr %.sroa.0749.01814, align 8 ; 2 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 1064
  %i.azb = load ptr, ptr %i.aza, align 8
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayz, i64 1056
  %i.azd = load i32, ptr %i.azc, align 8
  %i.aze = add i32 %i.azd, -1
  %i.azf = zext i32 %i.aze to i64
  %i.azg = getelementptr inbounds nuw [24 x i8], ptr %i.azb, i64 %i.azf
  %i.azh = load double, ptr %i.azg, align 8       ; 2 uses
  %i.azi = fcmp olt double %i.ayy, %i.azh
  %i.azj = select i1 %i.azi, double %i.azh, double %i.ayy ; 3 uses
  store double %i.azj, ptr %i.aws, align 8
  %i.azk = getelementptr inbounds nuw i8, ptr %.sroa.0749.01814, i64 8 ; 2 uses
  %.not960 = icmp eq ptr %i.azk, %.sroa.13.0.lcssa
  br i1 %.not960, label %.preheader, label %.lr.ph1815

._crit_edge1820:                                  ; preds = %.lr.ph1819, %.preheader
  store double 1.000000e+03, ptr %i.awt, align 8
  %i.azl = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.azn = load ptr, ptr %i.azm, align 8          ; 3 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.azp = load ptr, ptr %i.azo, align 8
  %.not.i720 = icmp eq ptr %i.azn, %i.azp
  br i1 %.not.i720, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %._crit_edge1820
  store ptr %i.awr, ptr %i.azn, align 8
  %i.azq = load ptr, ptr %i.azm, align 8
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 8
  store ptr %i.azr, ptr %i.azm, align 8
  br label %_ZNSt6vectorIP11aiAnimationSaIS1_EE9push_backERKS1_.exit

bb.ij:                                            ; preds = %._crit_edge1820
  %i.azs = load ptr, ptr %i.azl, align 8          ; 4 uses
  %i.azt = ptrtoint ptr %i.azn to i64
  %i.azu = ptrtoint ptr %i.azs to i64
  %i.azv = sub i64 %i.azt, %i.azu                 ; 6 uses
  %i.azw = icmp eq i64 %i.azv, 9223372036854775800
  br i1 %i.azw, label %bb.ik, label %_ZNKSt6vectorIP11aiAnimationSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ik:                                            ; preds = %bb.ij
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #29
          to label %.noexc724 unwind label %bb.ic

.noexc724:                                        ; preds = %bb.ik
  unreachable

_ZNKSt6vectorIP11aiAnimationSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ij
  %i.azx = ashr exact i64 %i.azv, 3               ; 3 uses
  %.sroa.speculated.i.i.i721 = call i64 @llvm.umax.i64(i64 %i.azx, i64 1)
  %i.azy = add nsw i64 %.sroa.speculated.i.i.i721, %i.azx ; 2 uses
  %i.azz = icmp ult i64 %i.azy, %i.azx
  %i.baa = call i64 @llvm.umin.i64(i64 %i.azy, i64 1152921504606846975)
  %i.bab = select i1 %i.azz, i64 1152921504606846975, i64 %i.baa ; 3 uses
  %.not.i.i.i722 = icmp ne i64 %i.bab, 0
  call void @llvm.assume(i1 %.not.i.i.i722)
  %i.bac = shl nuw nsw i64 %i.bab, 3
  %i.bad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bac) #30
          to label %.noexc725 unwind label %bb.ic ; 4 uses

.noexc725:                                        ; preds = %_ZNKSt6vectorIP11aiAnimationSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bae = getelementptr inbounds i8, ptr %i.bad, i64 %i.azv ; 2 uses
  store ptr %i.awr, ptr %i.bae, align 8
  %i.baf = icmp sgt i64 %i.azv, 0
  br i1 %i.baf, label %bb.il, label %_ZNSt6vectorIP11aiAnimationSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.il:                                            ; preds = %.noexc725
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bad, ptr align 8 %i.azs, i64 %i.azv, i1 false)
  br label %_ZNSt6vectorIP11aiAnimationSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP11aiAnimationSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.il, %.noexc725
  %i.bag = getelementptr inbounds nuw i8, ptr %i.bae, i64 8
  %.not.i17.i.i723 = icmp eq ptr %i.azs, null
  br i1 %.not.i17.i.i723, label %_ZNSt6vectorIP11aiAnimationSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.im

bb.im:                                            ; preds = %_ZNSt6vectorIP11aiAnimationSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.azs, i64 noundef %i.azv) #27
  br label %_ZNSt6vectorIP11aiAnimationSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP11aiAnimationSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.im, %_ZNSt6vectorIP11aiAnimationSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.bad, ptr %i.azl, align 8
  store ptr %i.bag, ptr %i.azm, align 8
  %i.bah = getelementptr inbounds nuw [8 x i8], ptr %i.bad, i64 %i.bab
  store ptr %i.bah, ptr %i.azo, align 8
  br label %_ZNSt6vectorIP11aiAnimationSaIS1_EE9push_backERKS1_.exit
end_hunk_6
