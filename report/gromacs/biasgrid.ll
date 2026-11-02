Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/biasgrid?download=true
inline.NumInlined: 729
inline.NumDeleted: 389
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3gmx8BiasGridC2ENS_8ArrayRefIKNS_9DimParamsEEENS1_IKNS_12AwhDimParamsEEE:bb.a

bb.l:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i58.invoke
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn47 = phi { ptr, i32 } [ %i.bp, %bb.m ], [ %i.bo, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #27
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorIN3gmx8GridAxisESaIS1_EE12emplace_backIJRdS5_iRKibEEERS1_DpOT_.exit, %_ZNSt6vectorIN3gmx8GridAxisESaIS1_EE12emplace_backIJRdS5_S5_S5_EEERS1_DpOT_.exit
  %i.bq = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.br = getelementptr inbounds nuw [48 x i8], ptr %i.bq, i64 %indvars.iv
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !40
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul nsw i64 %.030175, %i.bu             ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !100

bb.p:                                             ; preds = %bb.n, %.loopexit.split-lp151.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn49 = phi { ptr, i32 } [ %lpad.loopexit.split-lp402, %.loopexit.split-lp151.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn47, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  br label %.loopexit.split-lp

bb.q:                                             ; preds = %._crit_edge
  %i.bw = call ptr @getenv(ptr noundef nonnull @.str.9) #27
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.r, label %._crit_edge.thread

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.10, i64 noundef %i.bv, ptr noundef nonnull @.str.9)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.by = call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.t unwind label %.thread

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %bb.u unwind label %.thread134

bb.u:                                             ; preds = %bb.t
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %6, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %8, align 8, !tbaa !47
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx8BiasGridC2ENS_8ArrayRefIKNS_9DimParamsEEENS1_IKNS_12AwhDimParamsEEE, ptr %i.bz, align 8, !tbaa !54
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !54
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 821, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !35
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.by, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr %i.by, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #28
          to label %bb.bk unwind label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.thread:                                          ; preds = %bb.s
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread134:                                       ; preds = %bb.t
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #27
  br label %.sink.split

bb.x:                                             ; preds = %bb.u, %bb.v
  %.028 = phi i1 [ false, %bb.v ], [ true, %bb.u ]
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br i1 %.028, label %bb.y, label %bb.z

.sink.split:                                      ; preds = %.thread, %.thread134
  %.pn.pn133.ph = phi { ptr, i32 } [ %i.cc, %.thread134 ], [ %i.cb, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.x
  %.pn.pn133 = phi { ptr, i32 } [ %i.cd, %bb.x ], [ %.pn.pn133.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.by) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn.pn132 = phi { ptr, i32 } [ %.pn.pn133, %bb.y ], [ %i.cd, %bb.x ] ; 2 uses
  %i.ce = load ptr, ptr %5, align 8, !tbaa !58    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.z
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !59
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.w
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.w ], [ %.pn.pn132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn.pn132, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.loopexit.split-lp

._crit_edge.thread:                               ; preds = %bb.c, %bb.q, %._crit_edge
  %.030.lcssa233 = phi i64 [ %i.bv, %._crit_edge ], [ %i.bv, %bb.q ], [ 1, %bb.c ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !60 ; 3 uses
  %i.cl = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 72                ; 3 uses
  %i.cq = icmp ugt i64 %.030.lcssa233, %i.cp
  br i1 %i.cq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.thread
  %i.cr = sub nuw i64 %.030.lcssa233, %i.cp
  invoke void @_ZNSt6vectorIN3gmx9GridPointESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.cr)
          to label %_ZNSt6vectorIN3gmx9GridPointESaIS1_EE6resizeEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %._crit_edge.thread
  %i.cs = icmp ult i64 %.030.lcssa233, %i.cp
  br i1 %i.cs, label %bb.ac, label %_ZNSt6vectorIN3gmx9GridPointESaIS1_EE6resizeEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw [72 x i8], ptr %i.cl, i64 %.030.lcssa233 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ck, %i.ct
  br i1 %.not.i.i, label %_ZNSt6vectorIN3gmx9GridPointESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ac, %_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.db, %_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i.i.i.i ], [ %i.ct, %bb.ac ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !63 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !64
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #30
  br label %_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.db, %i.ck
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3gmx9GridPointES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN3gmx9GridPointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i.i.i.i
  store ptr %i.ct, ptr %i.cj, align 8, !tbaa !60
  br label %_ZNSt6vectorIN3gmx9GridPointESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN3gmx9GridPointESaIS1_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN3gmx9GridPointES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.ac, %bb.ab, %bb.aa
  call void @_ZN3gmx8BiasGrid10initPointsEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.dc = load ptr, ptr %i.cj, align 8, !tbaa !60
  %i.dd = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %.not = icmp eq ptr %i.dc, %i.dd
  br i1 %.not, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %_ZNSt6vectorIN3gmx9GridPointESaIS1_EE6resizeEm.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.pre = load ptr, ptr %i.de, align 8, !tbaa !39
  %.pre190 = load ptr, ptr %i.n, align 8, !tbaa !26
  br label %bb.ae

._crit_edge179:                                   ; preds = %.loopexit, %_ZNSt6vectorIN3gmx9GridPointESaIS1_EE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  ret void

bb.ae:                                            ; preds = %.lr.ph178, %.loopexit
  %i.df = phi ptr [ %.pre190, %.lr.ph178 ], [ %i.nz, %.loopexit ] ; 7 uses
  %i.dg = phi ptr [ %.pre, %.lr.ph178 ], [ %i.ny, %.loopexit ]
  %i.dh = phi ptr [ %i.dd, %.lr.ph178 ], [ %i.oc, %.loopexit ] ; 3 uses
  %.0177 = phi i64 [ 0, %.lr.ph178 ], [ %i.oa, %.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds nuw [72 x i8], ptr %i.dh, i64 %.0177 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = ptrtoint ptr %i.df to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = sdiv exact i64 %i.dm, 48                ; 4 uses
  %i.do = trunc i64 %i.dn to i32
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ae
  %i.dq = shl i64 %.0177, 32
  %i.dr = ashr exact i64 %i.dq, 32
  %i.ds = getelementptr [72 x i8], ptr %i.dh, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 32     ; 6 uses
  %wide.trip.count.i = and i64 %i.dn, 2147483647  ; 6 uses
  %min.iters.check356 = icmp samesign ult i64 %wide.trip.count.i, 16
  br i1 %min.iters.check356, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.du = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %i.dv = getelementptr i8, ptr %i.f, i64 %i.du   ; 3 uses
  %i.dw = getelementptr i8, ptr %i.g, i64 %i.du   ; 3 uses
  %i.dx = getelementptr i8, ptr %i.df, i64 32     ; 2 uses
  %i.dy = mul nuw nsw i64 %wide.trip.count.i, 48
  %i.dz = getelementptr i8, ptr %i.df, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 -7     ; 2 uses
  %i.eb = mul i64 %.0177, 72
  %i.ec = getelementptr i8, ptr %i.dh, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 32
  %i.ee = getelementptr i8, ptr %i.ed, i64 %i.du  ; 2 uses
  %bound0 = icmp ult ptr %i.f, %i.dw
  %bound1 = icmp ult ptr %i.g, %i.dv
  %found.conflict = and i1 %bound0, %bound1
  %bound0357 = icmp ult ptr %i.f, %i.ea
  %bound1358 = icmp ult ptr %i.dx, %i.dv
  %found.conflict359 = and i1 %bound0357, %bound1358
  %conflict.rdx = or i1 %found.conflict, %found.conflict359
  %bound0360 = icmp ult ptr %i.f, %i.ee
  %bound1361 = icmp ult ptr %i.dt, %i.dv
  %found.conflict362 = and i1 %bound0360, %bound1361
  %conflict.rdx363 = or i1 %conflict.rdx, %found.conflict362
  %bound0364 = icmp ult ptr %i.g, %i.ea
  %bound1365 = icmp ult ptr %i.dx, %i.dw
  %found.conflict366 = and i1 %bound0364, %bound1365
  %conflict.rdx367 = or i1 %conflict.rdx363, %found.conflict366
  %bound0368 = icmp ult ptr %i.g, %i.ee
  %bound1369 = icmp ult ptr %i.dt, %i.dw
  %found.conflict370 = and i1 %bound0368, %bound1369
  %conflict.rdx371 = or i1 %conflict.rdx367, %found.conflict370
  br i1 %conflict.rdx371, label %scalar.ph.preheader, label %vector.ph372

vector.ph372:                                     ; preds = %vector.memcheck
  %n.vec373 = and i64 %i.dn, 2147483640           ; 3 uses
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph372
  %index375 = phi i64 [ 0, %vector.ph372 ], [ %index.next381, %vector.body374 ] ; 4 uses
  %vec.ind376 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph372 ], [ %vec.ind.next382, %vector.body374 ] ; 2 uses
  %wide.gep377.a = getelementptr inbounds nuw [48 x i8], ptr %i.df, <8 x i64> %vec.ind376 ; 9 uses
  %i.ef = extractelement <8 x ptr> %wide.gep377.a, i64 0
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.eh = extractelement <8 x ptr> %wide.gep377.a, i64 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ej = extractelement <8 x ptr> %wide.gep377.a, i64 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.el = extractelement <8 x ptr> %wide.gep377.a, i64 3
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.en = extractelement <8 x ptr> %wide.gep377.a, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.ep = extractelement <8 x ptr> %wide.gep377.a, i64 5
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.er = extractelement <8 x ptr> %wide.gep377.a, i64 6
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.et = extractelement <8 x ptr> %wide.gep377.a, i64 7
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.ev = load i8, ptr %i.eg, align 8, !tbaa !31, !alias.scope !132
  %i.ew = load i8, ptr %i.ei, align 8, !tbaa !31, !alias.scope !132
  %i.ex = load i8, ptr %i.ek, align 8, !tbaa !31, !alias.scope !132
  %i.ey = load i8, ptr %i.em, align 8, !tbaa !31, !alias.scope !132
  %i.ez = load i8, ptr %i.eo, align 8, !tbaa !31, !alias.scope !132
  %i.fa = load i8, ptr %i.eq, align 8, !tbaa !31, !alias.scope !132
  %i.fb = load i8, ptr %i.es, align 8, !tbaa !31, !alias.scope !132
  %i.fc = load i8, ptr %i.eu, align 8, !tbaa !31, !alias.scope !132
  %i.fd = insertelement <8 x i8> poison, i8 %i.ev, i64 0
  %i.fe = insertelement <8 x i8> %i.fd, i8 %i.ew, i64 1
  %i.ff = insertelement <8 x i8> %i.fe, i8 %i.ex, i64 2
  %i.fg = insertelement <8 x i8> %i.ff, i8 %i.ey, i64 3
  %i.fh = insertelement <8 x i8> %i.fg, i8 %i.ez, i64 4
  %i.fi = insertelement <8 x i8> %i.fh, i8 %i.fa, i64 5
  %i.fj = insertelement <8 x i8> %i.fi, i8 %i.fb, i64 6
  %i.fk = insertelement <8 x i8> %i.fj, i8 %i.fc, i64 7
  %i.fl = trunc nuw <8 x i8> %i.fk to <8 x i1>    ; 3 uses
  %wide.gep378 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep377.a, i64 32
  %wide.masked.gather379 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep378, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !40, !alias.scope !132 ; 2 uses
  %i.fm = xor <8 x i1> %i.fl, splat (i1 true)
  %i.fn = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather379, <8 x i32> splat (i32 11)) ; 2 uses
  %i.fo = getelementptr [4 x i8], ptr %i.dt, i64 %index375
  %wide.masked.load = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.fo, <8 x i1> %i.fm, <8 x i32> poison), !tbaa !35, !alias.scope !133
  %i.fp = sdiv <8 x i32> %i.fn, splat (i32 -2)
  %i.fq = add <8 x i32> %wide.masked.load, %i.fp
  %predphi = select <8 x i1> %i.fl, <8 x i32> %wide.masked.gather379, <8 x i32> %i.fn
  %predphi380 = select <8 x i1> %i.fl, <8 x i32> zeroinitializer, <8 x i32> %i.fq
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index375
  store <8 x i32> %predphi, ptr %i.fr, align 16, !tbaa !35, !alias.scope !134, !noalias !135
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index375
  store <8 x i32> %predphi380, ptr %i.fs, align 16, !tbaa !35, !alias.scope !136, !noalias !137
  %index.next381 = add nuw i64 %index375, 8       ; 2 uses
  %vec.ind.next382 = add nuw nsw <8 x i64> %vec.ind376, splat (i64 8)
  %i.ft = icmp eq i64 %index.next381, %n.vec373
  br i1 %i.ft, label %middle.block383, label %vector.body374, !llvm.loop !106

middle.block383:                                  ; preds = %vector.body374
  %cmp.n384 = icmp eq i64 %wide.trip.count.i, %n.vec373
  br i1 %cmp.n384, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block383
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec373, %middle.block383 ] ; 7 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  %xtraiter = and i64 %i.dn, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fu = getelementptr inbounds nuw [48 x i8], ptr %i.df, i64 %indvars.iv.i.ph ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.fw = load i8, ptr %i.fv, align 8, !tbaa !31, !range !32, !noundef !33
  %i.fx = trunc nuw i8 %i.fw to i1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !40 ; 2 uses
  br i1 %i.fx, label %scalar.ph.prol.loopexit.unr-lcssa, label %bb.af

bb.af:                                            ; preds = %scalar.ph.prol
  %.sroa.speculated.i.prol = call i32 @llvm.smin.i32(i32 %i.fz, i32 11) ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.i.ph
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !35
  %.neg.i.prol = sdiv i32 %.sroa.speculated.i.prol, -2
  %i.gc = add i32 %i.gb, %.neg.i.prol
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %bb.af, %scalar.ph.prol
  %.sroa.speculated.sink.i.prol = phi i32 [ %.sroa.speculated.i.prol, %bb.af ], [ %i.fz, %scalar.ph.prol ]
  %.sink.i.prol = phi i32 [ %i.gc, %bb.af ], [ 0, %scalar.ph.prol ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.ph
  store i32 %.sroa.speculated.sink.i.prol, ptr %i.gd, align 16, !tbaa !35
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i.ph
  store i32 %.sink.i.prol, ptr %i.ge, align 16, !tbaa !35
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.gf = icmp eq i64 %wide.trip.count.i, %.neg
  br i1 %i.gf, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %bb.ai, %middle.block383, %bb.ae
  %i.gg = getelementptr inbounds nuw i8, ptr %i.di, i64 56 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.di, i64 64 ; 3 uses
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.ai
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.ai ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.gi = getelementptr inbounds nuw [48 x i8], ptr %i.df, i64 %indvars.iv.i ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gk = load i8, ptr %i.gj, align 8, !tbaa !31, !range !32, !noundef !33
  %i.gl = trunc nuw i8 %i.gk to i1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !40 ; 2 uses
  br i1 %i.gl, label %scalar.ph.1, label %bb.ag

bb.ag:                                            ; preds = %scalar.ph
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.gn, i32 11) ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.i
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !35
  %.neg.i = sdiv i32 %.sroa.speculated.i, -2
  %i.gq = add i32 %i.gp, %.neg.i
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.ag, %scalar.ph
  %.sroa.speculated.sink.i = phi i32 [ %.sroa.speculated.i, %bb.ag ], [ %i.gn, %scalar.ph ]
  %.sink.i = phi i32 [ %i.gq, %bb.ag ], [ 0, %scalar.ph ]
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  store i32 %.sroa.speculated.sink.i, ptr %i.gr, align 4, !tbaa !35
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  store i32 %.sink.i, ptr %i.gs, align 4, !tbaa !35
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.gt = getelementptr inbounds nuw [48 x i8], ptr %i.df, i64 %indvars.iv.next.i ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  %i.gv = load i8, ptr %i.gu, align 8, !tbaa !31, !range !32, !noundef !33
  %i.gw = trunc nuw i8 %i.gv to i1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !40 ; 2 uses
  br i1 %i.gw, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %scalar.ph.1
  %.sroa.speculated.i.1 = call i32 @llvm.smin.i32(i32 %i.gy, i32 11) ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.next.i
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !35
  %.neg.i.1 = sdiv i32 %.sroa.speculated.i.1, -2
  %i.hb = add i32 %i.ha, %.neg.i.1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %scalar.ph.1
  %.sroa.speculated.sink.i.1 = phi i32 [ %.sroa.speculated.i.1, %bb.ah ], [ %i.gy, %scalar.ph.1 ]
  %.sink.i.1 = phi i32 [ %i.hb, %bb.ah ], [ 0, %scalar.ph.1 ]
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i
  store i32 %.sroa.speculated.sink.i.1, ptr %i.hc, align 4, !tbaa !35
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.i
  store i32 %.sink.i.1, ptr %i.hd, align 4, !tbaa !35
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !107

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.backedge, %._crit_edge.i
  %.0127 = phi i32 [ -1, %._crit_edge.i ], [ %.3.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.backedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.he = icmp sgt i32 %.0127, -1
  br i1 %i.he, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %i.hf = load ptr, ptr %i.de, align 8, !tbaa !39 ; 3 uses
  %i.hg = load ptr, ptr %i.n, align 8, !tbaa !26  ; 4 uses
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = sdiv exact i64 %i.hj, 48                ; 3 uses
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = icmp sgt i32 %i.hl, 0
  br i1 %i.hm, label %.lr.ph.i.i, label %.loopexit

end_hunk_0
