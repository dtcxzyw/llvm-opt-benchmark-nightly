inline.NumInlined: 16320
inline.NumDeleted: 7419
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6duckdb6Binder10BindCopyToERNS_13CopyStatementERKNS_12CopyFunctionENS_10CopyToTypeE:bb.a
bb.fo:                                            ; preds = %bb.fn
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.mj, ptr noundef nonnull align 8 dereferenceable(32) %50)
          to label %bb.fp unwind label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  invoke void @__cxa_throw(ptr nonnull %i.mj, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.nz unwind label %bb.fq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457.thread: ; preds = %bb.fn
  %i.mk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #25
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.0232 = phi i1 [ false, %bb.fp ], [ true, %bb.fo ] ; 2 uses
  %i.ml = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mm = load ptr, ptr %50, align 8, !tbaa !25   ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.mo = icmp eq ptr %i.mm, %i.mn
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455: ; preds = %bb.fq
  call void @_ZdlPv(ptr noundef %i.mm) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #25
  br i1 %.0232, label %bb.fr, label %bb.nq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457: ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #25
  br i1 %.0232, label %bb.fr, label %bb.nq

bb.fr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457
  %.pn271738 = phi { ptr, i32 } [ %i.mk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457.thread ], [ %i.ml, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457 ], [ %i.ml, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455 ]
  call void @__cxa_free_exception(ptr %i.mj) #25
  br label %bb.nq

bb.fs:                                            ; preds = %bb.fm, %.critedge.thread
  %i.mp = trunc nuw i8 %.0226.lcssa1301132213411359 to i1 ; 3 uses
  br i1 %i.mp, label %bb.fz, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.mq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !315
  %i.ms = load ptr, ptr %13, align 16, !tbaa !310
  %i.mt = ptrtoint ptr %i.mr to i64
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = sub i64 %i.mt, %i.mu
  %i.mw = ashr exact i64 %i.mv, 3
  %i.mx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.my = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !23
  %i.na = load ptr, ptr %i.mx, align 8, !tbaa !20
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = ptrtoint ptr %i.na to i64
  %i.nd = sub i64 %i.nb, %i.nc
  %i.ne = ashr exact i64 %i.nd, 5
  %i.nf = icmp eq i64 %i.mw, %i.ne
  br i1 %i.nf, label %bb.fu, label %bb.fz

bb.fu:                                            ; preds = %bb.ft
  %i.ng = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %53)
          to label %bb.fv unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460.thread

bb.fv:                                            ; preds = %bb.fu
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ng, ptr noundef nonnull align 8 dereferenceable(32) %52)
          to label %bb.fw unwind label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  invoke void @__cxa_throw(ptr nonnull %i.ng, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.nz unwind label %bb.fx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460.thread: ; preds = %bb.fu
  %i.nh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #25
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.0230 = phi i1 [ false, %bb.fw ], [ true, %bb.fv ] ; 2 uses
  %i.ni = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.nj = load ptr, ptr %52, align 8, !tbaa !25   ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i458

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i458: ; preds = %bb.fx
  call void @_ZdlPv(ptr noundef %i.nj) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #25
  br i1 %.0230, label %bb.fy, label %bb.nq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460: ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #25
  br i1 %.0230, label %bb.fy, label %bb.nq

bb.fy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i458, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460
  %.pn273741 = phi { ptr, i32 } [ %i.nh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460.thread ], [ %i.ni, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460 ], [ %i.ni, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i458 ]
  call void @__cxa_free_exception(ptr %i.ng) #25
  br label %bb.nq

bb.fz:                                            ; preds = %bb.ft, %bb.fs
  %i.nm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8CopyInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ga unwind label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 192
  %i.no = invoke noundef zeroext i1 @_ZN6duckdb10FileSystem12IsRemoteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.nn)
          to label %bb.gb unwind label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  br i1 %i.no, label %bb.go, label %bb.gd

bb.gc:                                            ; preds = %bb.ga, %bb.fz
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.nq

bb.gd:                                            ; preds = %bb.gb
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !26, !nonnull !95, !align !96
  %i.ns = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb10FileSystem13GetFileSystemERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.nr)
          to label %bb.ge unwind label %bb.gl     ; 2 uses

bb.ge:                                            ; preds = %bb.gd
  %i.nt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8CopyInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.gf unwind label %bb.gm

bb.gf:                                            ; preds = %bb.ge
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 192
  %i.nv = load ptr, ptr %i.ns, align 8, !tbaa !119
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 160
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = invoke noundef zeroext i1 %i.nx(ptr noundef nonnull align 8 dereferenceable(8) %i.ns, ptr noundef nonnull align 8 dereferenceable(32) %i.nu, ptr null)
          to label %bb.gg unwind label %bb.gm

bb.gg:                                            ; preds = %bb.gf
  %i.nz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8CopyInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.gh unwind label %bb.gn     ; 2 uses

bb.gh:                                            ; preds = %bb.gg
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 200
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !16
  %i.oc = icmp eq i64 %i.ob, 11
  br i1 %i.oc, label %bb.gi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit462

bb.gi:                                            ; preds = %bb.gh
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 192
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !25 ; 2 uses
  %i.of = load i64, ptr %i.oe, align 1
  %i.og = xor i64 %i.of, 7238537148778243119
  %i.oh = getelementptr i8, ptr %i.oe, i64 3
  %i.oi = load i64, ptr %i.oh, align 1
  %i.oj = xor i64 %i.oi, 8391735957915905910
  %i.ok = or i64 %i.og, %i.oj
  %i.ol = icmp ne i64 %i.ok, 0                    ; 2 uses
  %i.om = zext i1 %i.ol to i32                    ; 0 uses
  %i.on = zext i1 %i.ol to i8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit462

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit462: ; preds = %bb.gh, %bb.gi
  %i.oo = phi i8 [ 1, %bb.gh ], [ %i.on, %bb.gi ]
  br i1 %.0217.lcssa1303132013431357, label %bb.go, label %bb.gj

bb.gj:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit462
  %or.cond3.not = and i1 %.not1377, %i.ny
  br i1 %or.cond3.not, label %bb.gk, label %bb.go

bb.gk:                                            ; preds = %bb.gj
  %i.op = load ptr, ptr %13, align 16, !tbaa !313
  %i.oq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !313
  %i.os = icmp eq ptr %i.op, %i.or
  %spec.select772 = select i1 %i.os, i8 %i.oo, i8 0
  br label %bb.go

bb.gl:                                            ; preds = %bb.gd
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %bb.nq

bb.gm:                                            ; preds = %bb.gf, %bb.ge
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %bb.nq

bb.gn:                                            ; preds = %bb.gg
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.nq

bb.go:                                            ; preds = %bb.gk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit462, %bb.gj, %bb.gb
  %.3213 = phi i8 [ 0, %bb.gb ], [ %.0210.lcssa1305131813451355, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit462 ], [ %spec.select772, %bb.gk ], [ 0, %bb.gj ]
  %i.ow = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !316
  %.not278 = icmp eq ptr %i.ox, null
  br i1 %.not278, label %bb.iy, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #25
  %i.oy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.gq unwind label %bb.gv     ; 2 uses

bb.gq:                                            ; preds = %bb.gp
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !119
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pb = load ptr, ptr %i.pa, align 8
  invoke void %i.pb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.496") align 8 %54, ptr noundef nonnull align 8 dereferenceable(97) %i.oy)
          to label %bb.gr unwind label %bb.gv

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #25
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !26, !nonnull !95, !align !96
  store ptr %i.pd, ptr %55, align 8, !tbaa !317
  %i.pe = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8CopyInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.gs unwind label %bb.gw

bb.gs:                                            ; preds = %bb.gr
  %i.pf = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 280
  store ptr %i.pg, ptr %i.pf, align 8, !tbaa !318
  %i.ph = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 7 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %55, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ph, i8 0, i64 24, i1 false)
  store i8 %4, ptr %i.pi, align 8, !tbaa !320
  %i.pj = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !329 ; 3 uses
  %i.pl = load ptr, ptr %54, align 8, !tbaa !332  ; 3 uses
  %i.pm = ptrtoint ptr %i.pk to i64
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = sub i64 %i.pm, %i.pn                    ; 2 uses
  %i.pp = ashr exact i64 %i.po, 4                 ; 2 uses
  %i.pq = icmp ugt i64 %i.pp, 1152921504606846975
  br i1 %i.pq, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.233) #27
          to label %.noexc464 unwind label %bb.gx

.noexc464:                                        ; preds = %bb.gt
  unreachable

bb.gu:                                            ; preds = %bb.gs
  %i.pr = getelementptr inbounds nuw i8, ptr %55, i64 32 ; 4 uses
  %.not1287 = icmp eq ptr %i.pk, %i.pl
  br i1 %.not1287, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.gu
  %i.ps = ashr exact i64 %i.po, 1
  %i.pt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ps) #26
          to label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i unwind label %bb.gx ; 3 uses

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %i.pu = getelementptr inbounds nuw i8, ptr %55, i64 24
  store ptr %i.pt, ptr %i.ph, align 8, !tbaa !333
  store ptr %i.pt, ptr %i.pu, align 8, !tbaa !334
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.pp
  store ptr %i.pv, ptr %i.pr, align 8, !tbaa !335
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %bb.gu, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %.not1101 = icmp eq ptr %i.pk, %i.pl
  br i1 %.not1101, label %._crit_edge1095, label %.lr.ph1094

.lr.ph1094:                                       ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.pw = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.px = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.py = getelementptr inbounds nuw i8, ptr %55, i64 24 ; 4 uses
  br label %bb.gy

._crit_edge1095:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #25
  %i.pz = load ptr, ptr %i.ow, align 8, !tbaa !316
  invoke void %i.pz(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.508") align 8 %57, ptr noundef nonnull align 8 dereferenceable(41) %55)
          to label %bb.hk unwind label %bb.hz

bb.gv:                                            ; preds = %bb.gq, %bb.gp
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit536

bb.gw:                                            ; preds = %bb.gr
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.iw

bb.gx:                                            ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, %bb.gt
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %bb.iv

bb.gy:                                            ; preds = %.lr.ph1094, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  %.02211093 = phi i64 [ 0, %.lr.ph1094 ], [ %i.rx, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.qd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_13ColumnBindingELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %54, i64 noundef %.02211093)
          to label %bb.gz unwind label %bb.hf

bb.gz:                                            ; preds = %bb.gy
  %i.qe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.pw, i64 noundef %.02211093)
          to label %bb.ha unwind label %bb.hg

bb.ha:                                            ; preds = %bb.gz
  %i.qf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.px, i64 noundef %.02211093)
          to label %bb.hb unwind label %bb.hh

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #25
  invoke void @_ZN6duckdb9make_uniqINS_24BoundColumnRefExpressionEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeERNS_13ColumnBindingEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.514") align 8 %56, ptr noundef nonnull align 8 dereferenceable(32) %i.qe, ptr noundef nonnull align 8 dereferenceable(24) %i.qf, ptr noundef nonnull align 8 dereferenceable(16) %i.qd)
          to label %bb.hc unwind label %bb.hi

bb.hc:                                            ; preds = %bb.hb
  %i.qg = load ptr, ptr %56, align 8, !tbaa !336  ; 5 uses
  store ptr null, ptr %56, align 8, !tbaa !336
  %i.qh = load ptr, ptr %i.py, align 8, !tbaa !334 ; 6 uses
  %i.qi = load ptr, ptr %i.pr, align 8, !tbaa !335
  %.not.i.i = icmp eq ptr %i.qh, %i.qi
  br i1 %.not.i.i, label %bb.hd, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.hc
  %i.qj = ptrtoint ptr %i.qg to i64
  store i64 %i.qj, ptr %i.qh, align 8, !tbaa !117
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  store ptr %i.qk, ptr %i.py, align 8, !tbaa !334
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

bb.hd:                                            ; preds = %bb.hc
  %i.ql = load ptr, ptr %i.ph, align 8, !tbaa !333 ; 10 uses
  %i.qm = ptrtoint ptr %i.qh to i64               ; 3 uses
  %i.qn = ptrtoint ptr %i.ql to i64               ; 3 uses
  %i.qo = sub i64 %i.qm, %i.qn                    ; 3 uses
  %i.qp = icmp eq i64 %i.qo, 9223372036854775800
  br i1 %i.qp, label %bb.he, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.he:                                            ; preds = %bb.hd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc467 unwind label %.loopexit.split-lp

.noexc467:                                        ; preds = %bb.he
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.hd
  %i.qq = ashr exact i64 %i.qo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.qq, i64 1)
  %i.qr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.qq ; 2 uses
  %i.qs = icmp ult i64 %i.qr, %i.qq
  %i.qt = call i64 @llvm.umin.i64(i64 %i.qr, i64 1152921504606846975)
  %i.qu = select i1 %i.qs, i64 1152921504606846975, i64 %i.qt ; 4 uses
  %.not.i.i.i.i466 = icmp ne i64 %i.qu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i466)
  %i.qv = shl nuw nsw i64 %i.qu, 3
  %i.qw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qv) #26
          to label %.noexc468 unwind label %.loopexit ; 12 uses

.noexc468:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.qo
  %i.qy = ptrtoint ptr %i.qg to i64
  store i64 %i.qy, ptr %i.qx, align 8, !tbaa !117
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ql, %i.qh
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc468
  %i.qz = sub i64 %i.qm, %i.qn
  %i.ra = add i64 %i.qz, -8                       ; 2 uses
  %i.rb = lshr i64 %i.ra, 3
  %i.rc = add nuw nsw i64 %i.rb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ra, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader1411, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.qw, i64 8
  %i.rd = add i64 %i.qm, -8
  %i.re = sub i64 %i.rd, %i.qn
  %i.rf = and i64 %i.re, -8                       ; 2 uses
  %scevgep1382 = getelementptr i8, ptr %scevgep, i64 %i.rf
  %scevgep1383 = getelementptr i8, ptr %i.ql, i64 8
  %scevgep1384 = getelementptr i8, ptr %scevgep1383, i64 %i.rf
  %bound0 = icmp ult ptr %i.qw, %scevgep1384
  %bound1 = icmp ult ptr %i.ql, %scevgep1382
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader1411, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rc, 4611686018427387900     ; 3 uses
  %i.rg = shl i64 %n.vec, 3                       ; 2 uses
  %i.rh = getelementptr i8, ptr %i.qw, i64 %i.rg  ; 2 uses
  %i.ri = getelementptr i8, ptr %i.ql, i64 %i.rg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qw, i64 %i.rj ; 2 uses
end_hunk_0
