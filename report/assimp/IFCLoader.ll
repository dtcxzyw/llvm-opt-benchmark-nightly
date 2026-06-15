inline.NumInlined: 2494
inline.NumDeleted: 1209
begin_hunk_0_@_ZN6Assimp11IFCImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i

.noexc230:                                        ; preds = %bb.dj
  unreachable

bb.dk:                                            ; preds = %bb.di
  %i.mm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @__cxa_free_exception(ptr nonnull %i.ml) #28
  br label %.body231

bb.dl:                                            ; preds = %bb.df, %bb.de
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %.body231

bb.dm:                                            ; preds = %bb.dj
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %.body231

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 32 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8            ; 2 uses
  %.not.i.i236 = icmp eq ptr %i.mq, null
  br i1 %.not.i.i236, label %bb.do, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.mk)
          to label %.noexc237 unwind label %bb.gr

.noexc237:                                        ; preds = %bb.do
  %.pre.i.i = load ptr, ptr %i.mp, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i:          ; preds = %.noexc237, %bb.dn
  %i.mr = phi ptr [ %.pre.i.i, %.noexc237 ], [ %i.mq, %bb.dn ]
  %i.ms = call ptr @__dynamic_cast(ptr nonnull %i.mr, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x310IfcProjectE, i64 -1) #28 ; 3 uses
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %bb.dp, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x310IfcProjectEEERKT_v.exit

bb.dp:                                            ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  invoke void @__cxa_bad_cast() #30
          to label %.noexc238 unwind label %bb.gr

.noexc238:                                        ; preds = %bb.dp
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x310IfcProjectEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, ptr %26, align 16
  %i.mv = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 4 uses
  store ptr %i.jh, ptr %i.mv, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 6 uses
  store ptr %i.ms, ptr %i.mw, align 16
  %i.mx = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 8 uses
  store ptr %2, ptr %i.mx, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 3 uses
  store double 1.000000e+00, ptr %i.my, align 16
  %i.mz = getelementptr inbounds nuw i8, ptr %26, i64 56 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %26, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mz, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.na, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %26, i64 96 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %26, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.nb, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.nc, align 16
  %i.nd = getelementptr inbounds nuw i8, ptr %26, i64 136 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %26, i64 168 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nd, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ne, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %26, i64 176 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %26, i64 232 ; 3 uses
  store i32 0, ptr %i.ng, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %26, i64 240
  store ptr null, ptr %i.nh, align 16
  %i.ni = getelementptr inbounds nuw i8, ptr %26, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.nf, i8 0, i64 48, i1 false)
  store ptr %i.ng, ptr %i.ni, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %26, i64 256
  store ptr %i.ng, ptr %i.nj, align 16
  %i.nk = getelementptr inbounds nuw i8, ptr %26, i64 264
  store i64 0, ptr %i.nk, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %26, i64 280 ; 3 uses
  store i32 0, ptr %i.nl, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %26, i64 288
  store ptr null, ptr %i.nm, align 16
  %i.nn = getelementptr inbounds nuw i8, ptr %26, i64 296
  store ptr %i.nl, ptr %i.nn, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %26, i64 304
  store ptr %i.nl, ptr %i.no, align 16
  %i.np = getelementptr inbounds nuw i8, ptr %26, i64 312
  store i64 0, ptr %i.np, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %26, i64 320
  store ptr %i.mu, ptr %i.nq, align 16
  %i.nr = getelementptr inbounds nuw i8, ptr %26, i64 328
  %i.ns = getelementptr inbounds nuw i8, ptr %26, i64 352 ; 3 uses
  store i32 0, ptr %i.ns, align 16
  %i.nt = getelementptr inbounds nuw i8, ptr %26, i64 360
  store ptr null, ptr %i.nt, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %26, i64 368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nr, i8 0, i64 16, i1 false)
  store ptr %i.ns, ptr %i.nu, align 16
  %i.nv = getelementptr inbounds nuw i8, ptr %26, i64 376
  store ptr %i.ns, ptr %i.nv, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %26, i64 384
  store i64 0, ptr %i.nw, align 16
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ms, i64 328
  %i.ny = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcUnitAssignmentEEcvPKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.nx)
          to label %.noexc240 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc240:                                        ; preds = %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x310IfcProjectEEERKT_v.exit
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %bb.dq, label %.preheader.i

.preheader.i:                                     ; preds = %.noexc240
  %i.oa = load ptr, ptr %i.mw, align 16, !nonnull !19, !align !30
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 328
  %i.oc = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcUnitAssignmentEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ob)
          to label %.noexc241 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc241:                                        ; preds = %.preheader.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 24
  %i.of = load ptr, ptr %i.oe, align 8
  %i.og = load ptr, ptr %i.od, align 8
  %.not.i239 = icmp eq ptr %i.of, %i.og
  br i1 %.not.i239, label %_ZN12_GLOBAL__N_18SetUnitsERN6Assimp3IFC14ConversionDataE.exit, label %.lr.ph.i

bb.dq:                                            ; preds = %.noexc240
  %i.oh = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc242 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc242:                                        ; preds = %bb.dq
  br i1 %i.oh, label %_ZN12_GLOBAL__N_18SetUnitsERN6Assimp3IFC14ConversionDataE.exit, label %bb.dr

bb.dr:                                            ; preds = %.noexc242
  %i.oi = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc243 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc243:                                        ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  store ptr @.str, ptr %i.i, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA35_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.oi, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 1 dereferenceable(35) @.str.35)
          to label %.noexc244 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc244:                                        ; preds = %.noexc243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  br label %_ZN12_GLOBAL__N_18SetUnitsERN6Assimp3IFC14ConversionDataE.exit

.lr.ph.i:                                         ; preds = %.noexc241, %.noexc247
  %.06.i = phi i64 [ %i.ot, %.noexc247 ], [ 0, %.noexc241 ] ; 2 uses
  %i.oj = load ptr, ptr %i.mw, align 16, !nonnull !19, !align !30
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 328
  %i.ol = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcUnitAssignmentEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ok)
          to label %.noexc245 unwind label %.loopexit.split-lp.loopexit

.noexc245:                                        ; preds = %.lr.ph.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.on = load ptr, ptr %i.om, align 8
  %i.oo = getelementptr inbounds nuw [16 x i8], ptr %i.on, i64 %.06.i
  %i.op = load ptr, ptr %i.oo, align 8
  invoke fastcc void @_ZN12_GLOBAL__N_111ConvertUnitERKN6Assimp4STEP7EXPRESS8DataTypeERNS0_3IFC14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(8) %i.op, ptr noundef nonnull align 8 dereferenceable(392) %26)
          to label %.noexc246 unwind label %.loopexit.split-lp.loopexit

.noexc246:                                        ; preds = %.noexc245
  %i.oq = load ptr, ptr %i.mw, align 16, !nonnull !19, !align !30
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 328
  %i.os = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcUnitAssignmentEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.or)
          to label %.noexc247 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc247:                                        ; preds = %.noexc246
  %i.ot = add nuw i64 %.06.i, 1                   ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 24
  %i.ow = load ptr, ptr %i.ov, align 8
  %i.ox = load ptr, ptr %i.ou, align 8
  %i.oy = ptrtoint ptr %i.ow to i64
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = sub i64 %i.oy, %i.oz
  %i.pb = ashr exact i64 %i.pa, 4
  %i.pc = icmp ult i64 %i.ot, %i.pb
  br i1 %i.pc, label %.lr.ph.i, label %_ZN12_GLOBAL__N_18SetUnitsERN6Assimp3IFC14ConversionDataE.exit, !llvm.loop !31

_ZN12_GLOBAL__N_18SetUnitsERN6Assimp3IFC14ConversionDataE.exit: ; preds = %.noexc247, %.noexc244, %.noexc242, %.noexc241
  %i.pd = load ptr, ptr %i.mw, align 16, !nonnull !19, !align !30 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 304
  %i.pf = load ptr, ptr %i.pe, align 8            ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pd, i64 312
  %i.ph = load ptr, ptr %i.pg, align 8            ; 3 uses
  %.not2224.i = icmp eq ptr %i.pf, %i.ph
  br i1 %.not2224.i, label %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit, label %.lr.ph.i248

.lr.ph.i248:                                      ; preds = %_ZN12_GLOBAL__N_18SetUnitsERN6Assimp3IFC14ConversionDataE.exit, %.lr.ph.i248.backedge
  %.sroa.015.025.i = phi ptr [ %.sroa.015.025.i.be, %.lr.ph.i248.backedge ], [ %i.pf, %_ZN12_GLOBAL__N_18SetUnitsERN6Assimp3IFC14ConversionDataE.exit ] ; 3 uses
  %i.pi = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x324IfcRepresentationContextEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.015.025.i)
          to label %.noexc251 unwind label %.loopexit ; 5 uses

.noexc251:                                        ; preds = %.lr.ph.i248
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 88
  %27 = load i8, ptr %i.pj, align 8, !range !32, !noundef !19
  %28 = trunc nuw i8 %27 to i1
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 64
  %29 = load i64, ptr %i.pk, align 8
  %30 = icmp eq i64 %29, 5
  %or.cond.i = select i1 %28, i1 %30, i1 false
  br i1 %or.cond.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %.critedge.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %.noexc251
  %31 = getelementptr inbounds nuw i8, ptr %i.pi, i64 56
  %i.pl = load ptr, ptr %31, align 8              ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 1
  %i.pn = xor i32 %i.pm, 1701080909
  %i.po = getelementptr i8, ptr %i.pl, i64 4
  %i.pp = load i8, ptr %i.po, align 1
  %i.pq = zext i8 %i.pp to i32
  %i.pr = xor i32 %i.pq, 108
  %i.ps = or i32 %i.pn, %i.pr
  %i.pt = icmp ne i32 %i.ps, 0
  %i.pu = zext i1 %i.pt to i32
  %i.pv = icmp eq i32 %i.pu, 0
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 8 ; 2 uses
  %.not22.i = icmp eq ptr %i.pw, %i.ph
  %or.cond.i.a = select i1 %i.pv, i1 true, i1 %.not22.i
  br i1 %or.cond.i.a, label %.thread.i249, label %.lr.ph.i248.backedge

.lr.ph.i248.backedge:                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.critedge.i
  %.sroa.015.025.i.be = phi ptr [ %i.pw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ %.old.i, %.critedge.i ]
  br label %.lr.ph.i248

.critedge.i:                                      ; preds = %.noexc251
  %.old.i = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 8 ; 2 uses
  %.not22.old.i = icmp eq ptr %.old.i, %i.ph
  br i1 %.not22.old.i, label %.thread.i249, label %.lr.ph.i248.backedge

.thread.i249:                                     ; preds = %.critedge.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.px = load ptr, ptr %i.pi, align 8
  %i.py = getelementptr i8, ptr %i.px, i64 -24
  %i.pz = load i64, ptr %i.py, align 8
  %i.qa = getelementptr inbounds i8, ptr %i.pi, i64 %i.pz
  %i.qb = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.qa, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x333IfcGeometricRepresentationContextE, i64 -1) #28 ; 2 uses
  %.not14.i = icmp eq ptr %i.qb, null
  br i1 %.not14.i, label %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit, label %bb.ds

bb.ds:                                            ; preds = %.thread.i249
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 136
  %i.qd = load ptr, ptr %i.qc, align 8
  invoke void @_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS_4STEP7EXPRESS8DataTypeERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(128) %i.my, ptr noundef nonnull align 8 dereferenceable(8) %i.qd, ptr noundef nonnull align 8 dereferenceable(392) %26)
          to label %.noexc252 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc252:                                        ; preds = %bb.ds
  %i.qe = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc253 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc253:                                        ; preds = %.noexc252
  br i1 %i.qe, label %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit, label %bb.dt

bb.dt:                                            ; preds = %.noexc253
  %i.qf = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc254 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc254:                                        ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  store ptr @.str, ptr %i.h, align 8
  invoke void @_ZN6Assimp6Logger5debugIJPKcRA28_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.qf, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(28) @.str.49)
          to label %.noexc255 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc255:                                        ; preds = %.noexc254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  br label %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit

_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit: ; preds = %.noexc255, %.noexc253, %.thread.i249, %_ZN12_GLOBAL__N_18SetUnitsERN6Assimp3IFC14ConversionDataE.exit
  %i.qg = load ptr, ptr %i.mv, align 8, !nonnull !19, !align !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.qh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.qh, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.qh, ptr noundef nonnull align 1 dereferenceable(7) @.str.20, i64 7, i1 false)
  %i.qi = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 7, ptr %i.qi, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %7, i64 23
  store i8 0, ptr %i.qj, align 1
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qg, i64 160
  %i.ql = load ptr, ptr %i.qk, align 8            ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qg, i64 152 ; 10 uses
  %.not10.i.i.i.i257 = icmp eq ptr %i.ql, null    ; 2 uses
  br i1 %.not10.i.i.i.i257, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %.lr.ph.i.i.i.i258

.lr.ph.i.i.i.i258:                                ; preds = %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i264
  %.012.i.i.i.i259 = phi ptr [ %.1.i.i.i.i269, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i264 ], [ %i.ql, %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit ] ; 4 uses
  %.0811.i.i.i.i260 = phi ptr [ %.19.i.i.i.i266, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i264 ], [ %i.qm, %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit ]
  %i.qn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i259, i64 40
  %i.qo = load i64, ptr %i.qn, align 8            ; 3 uses
  %i.qp = icmp eq i64 %i.qo, 0
  br i1 %i.qp, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i289, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i261

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i261: ; preds = %.lr.ph.i.i.i.i258
  %.sroa.speculated.i.i.i.i.i.i.i262 = call i64 @llvm.umin.i64(i64 %i.qo, i64 7)
  %i.qq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i259, i64 32
  %i.qr = load ptr, ptr %i.qq, align 8
  %i.qs = call i32 @memcmp(ptr noundef %i.qr, ptr noundef nonnull %i.qh, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i262) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i263 = icmp eq i32 %i.qs, 0
  br i1 %.not.i.i.i.i.i.i.i263, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i289, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i264

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i289: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i261, %.lr.ph.i.i.i.i258
  %i.qt = add i64 %i.qo, -7
  %spec.select7.i.i.i.i.i.i.i.i290 = call i64 @llvm.smax.i64(i64 %i.qt, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i291 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i290, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i292 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i291 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i264

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i264: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i289, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i261
  %.0.i.i.i.i.i.i.i265 = phi i32 [ %i.qs, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i261 ], [ %.0.i6.i.i.i.i.i.i.i292, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i289 ]
  %i.qu = icmp slt i32 %.0.i.i.i.i.i.i.i265, 0    ; 2 uses
  %.19.i.i.i.i266 = select i1 %i.qu, ptr %.0811.i.i.i.i260, ptr %.012.i.i.i.i259 ; 5 uses
  %.1.in.v.i.i.i.i267 = select i1 %i.qu, i64 24, i64 16
  %.1.in.i.i.i.i268 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i259, i64 %.1.in.v.i.i.i.i267
  %.1.i.i.i.i269 = load ptr, ptr %.1.in.i.i.i.i268, align 8 ; 2 uses
  %.not.i.i.i.i270 = icmp eq ptr %.1.i.i.i.i269, null
  br i1 %.not.i.i.i.i270, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i271, label %.lr.ph.i.i.i.i258, !llvm.loop !29

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i271: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i264
  %i.qv = icmp eq ptr %.19.i.i.i.i266, %i.qm
  br i1 %i.qv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %bb.du

bb.du:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i271
  %i.qw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i266, i64 40
  %i.qx = load i64, ptr %i.qw, align 8            ; 3 uses
  %i.qy = icmp eq i64 %i.qx, 0
  br i1 %i.qy, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i285, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i272

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i272: ; preds = %bb.du
  %.sroa.speculated.i.i.i.i.i.i273 = call i64 @llvm.umin.i64(i64 %i.qx, i64 7)
  %i.qz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i266, i64 32
  %i.ra = load ptr, ptr %i.qz, align 8
  %i.rb = call i32 @memcmp(ptr noundef nonnull %i.qh, ptr noundef %i.ra, i64 noundef %.sroa.speculated.i.i.i.i.i.i273) #28 ; 2 uses
  %.not.i.i.i.i.i.i274 = icmp eq i32 %i.rb, 0
  br i1 %.not.i.i.i.i.i.i274, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i285, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i285: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i272, %bb.du
  %i.rc = sub i64 7, %i.qx
  %spec.select7.i.i.i.i.i.i.i286 = call i64 @llvm.smax.i64(i64 %i.rc, i64 -2147483648)
  %.08.i.i.i.i.i.i.i287 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i286, i64 2147483647)
  %.0.i6.i.i.i.i.i.i288 = trunc nsw i64 %.08.i.i.i.i.i.i.i287 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i285, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i272
  %.0.i.i.i.i.i.i275 = phi i32 [ %i.rb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i272 ], [ %.0.i6.i.i.i.i.i.i288, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i285 ]
  %i.rd = icmp slt i32 %.0.i.i.i.i.i.i275, 0
  %spec.select.i.i.i276 = select i1 %i.rd, ptr %i.qm, ptr %.19.i.i.i.i266
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i271, %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit
  %.sroa.0.0.i.i.i = phi ptr [ %i.qm, %_ZN12_GLOBAL__N_118SetCoordinateSpaceERN6Assimp3IFC14ConversionDataE.exit ], [ %i.qm, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i271 ], [ %spec.select.i.i.i276, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 104
  %.pre.i277 = load i64, ptr %.phi.trans.insert.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.re = icmp eq i64 %.pre.i277, 0
  br i1 %i.re, label %._crit_edge.i.i127.i, label %bb.dz

._crit_edge.i.i127.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.rf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.rf, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.rf, ptr noundef nonnull align 1 dereferenceable(11) @.str.21, i64 11, i1 false)
  %i.rg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 11, ptr %i.rg, align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %8, i64 27
  store i8 0, ptr %i.rh, align 1
  br i1 %.not10.i.i.i.i257, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i, label %.lr.ph.i.i.i132.i

.lr.ph.i.i.i132.i:                                ; preds = %._crit_edge.i.i127.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i138.i
  %.012.i.i.i133.i = phi ptr [ %.1.i.i.i143.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i138.i ], [ %i.ql, %._crit_edge.i.i127.i ] ; 4 uses
  %.0811.i.i.i134.i = phi ptr [ %.19.i.i.i140.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i138.i ], [ %i.qm, %._crit_edge.i.i127.i ]
  %i.ri = getelementptr inbounds nuw i8, ptr %.012.i.i.i133.i, i64 40
  %i.rj = load i64, ptr %i.ri, align 8            ; 3 uses
  %i.rk = icmp eq i64 %i.rj, 0
  br i1 %i.rk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i157.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i136.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i136.i: ; preds = %.lr.ph.i.i.i132.i
  %.sroa.speculated.i.i.i.i.i.i135.i = call i64 @llvm.umin.i64(i64 %i.rj, i64 11)
  %i.rl = getelementptr inbounds nuw i8, ptr %.012.i.i.i133.i, i64 32
  %i.rm = load ptr, ptr %i.rl, align 8
  %i.rn = call i32 @memcmp(ptr noundef %i.rm, ptr noundef nonnull %i.rf, i64 noundef %.sroa.speculated.i.i.i.i.i.i135.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i137.i = icmp eq i32 %i.rn, 0
  br i1 %.not.i.i.i.i.i.i137.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i157.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i138.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i157.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i136.i, %.lr.ph.i.i.i132.i
  %i.ro = add i64 %i.rj, -11
  %spec.select7.i.i.i.i.i.i.i158.i = call i64 @llvm.smax.i64(i64 %i.ro, i64 -2147483648)
  %.08.i.i.i.i.i.i.i159.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i158.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i160.i = trunc nsw i64 %.08.i.i.i.i.i.i.i159.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i138.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i138.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i157.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i136.i
  %.0.i.i.i.i.i.i139.i = phi i32 [ %i.rn, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i136.i ], [ %.0.i6.i.i.i.i.i.i160.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i157.i ]
  %i.rp = icmp slt i32 %.0.i.i.i.i.i.i139.i, 0    ; 2 uses
  %.19.i.i.i140.i = select i1 %i.rp, ptr %.0811.i.i.i134.i, ptr %.012.i.i.i133.i ; 5 uses
  %.1.in.v.i.i.i141.i = select i1 %i.rp, i64 24, i64 16
  %.1.in.i.i.i142.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i133.i, i64 %.1.in.v.i.i.i141.i
  %.1.i.i.i143.i = load ptr, ptr %.1.in.i.i.i142.i, align 8 ; 2 uses
  %.not.i.i.i144.i = icmp eq ptr %.1.i.i.i143.i, null
  br i1 %.not.i.i.i144.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i145.i, label %.lr.ph.i.i.i132.i, !llvm.loop !29

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i145.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i138.i
  %i.rq = icmp eq ptr %.19.i.i.i140.i, %i.qm
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i, label %bb.dv

bb.dv:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISI_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i145.i
  %i.rr = getelementptr inbounds nuw i8, ptr %.19.i.i.i140.i, i64 40
  %i.rs = load i64, ptr %i.rr, align 8            ; 3 uses
  %i.rt = icmp eq i64 %i.rs, 0
  br i1 %i.rt, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i153.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i147.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i147.i: ; preds = %bb.dv
  %.sroa.speculated.i.i.i.i.i146.i = call i64 @llvm.umin.i64(i64 %i.rs, i64 11)
  %i.ru = getelementptr inbounds nuw i8, ptr %.19.i.i.i140.i, i64 32
  %i.rv = load ptr, ptr %i.ru, align 8
  %i.rw = call i32 @memcmp(ptr noundef nonnull %i.rf, ptr noundef %i.rv, i64 noundef %.sroa.speculated.i.i.i.i.i146.i) #28 ; 2 uses
  %.not.i.i.i.i.i148.i = icmp eq i32 %i.rw, 0
  br i1 %.not.i.i.i.i.i148.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i153.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i149.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i153.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i147.i, %bb.dv
  %i.rx = sub i64 11, %i.rs
  %spec.select7.i.i.i.i.i.i154.i = call i64 @llvm.smax.i64(i64 %i.rx, i64 -2147483648)
  %.08.i.i.i.i.i.i155.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i154.i, i64 2147483647)
  %.0.i6.i.i.i.i.i156.i = trunc nsw i64 %.08.i.i.i.i.i.i155.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i149.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i149.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i153.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i147.i
  %.0.i.i.i.i.i150.i = phi i32 [ %i.rw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i147.i ], [ %.0.i6.i.i.i.i.i156.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i153.i ]
  %i.ry = icmp slt i32 %.0.i.i.i.i.i150.i, 0
end_hunk_0
