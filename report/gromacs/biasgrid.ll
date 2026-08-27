Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/biasgrid?download=true
inline.NumInlined: 729
inline.NumDeleted: 389
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3gmx8BiasGridC2ENS_8ArrayRefIKNS_9DimParamsEEENS1_IKNS_12AwhDimParamsEEE:bb.a
bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn47 = phi { ptr, i32 } [ %i.bo, %bb.n ], [ %i.bn, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #27
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt6vectorIN3gmx8GridAxisESaIS1_EE12emplace_backIJRdS5_iRKibEEERS1_DpOT_.exit, %_ZNSt6vectorIN3gmx8GridAxisESaIS1_EE12emplace_backIJRdS5_S5_S5_EEERS1_DpOT_.exit
  %i.bp = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.bq = getelementptr inbounds nuw [48 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !38
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul nsw i64 %.030175, %i.bt             ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !101

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn49 = phi { ptr, i32 } [ %lpad.phi154, %bb.i ], [ %.pn47, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  br label %bb.bk

bb.r:                                             ; preds = %._crit_edge
  %i.bv = call ptr @getenv(ptr noundef nonnull @.str.9) #27
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.s, label %._crit_edge.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.10, i64 noundef %i.bu, ptr noundef nonnull @.str.9)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bx = call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.u unwind label %.thread

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %bb.v unwind label %.thread134

bb.v:                                             ; preds = %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %6, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %8, align 8, !tbaa !91
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx8BiasGridC2ENS_8ArrayRefIKNS_9DimParamsEEENS1_IKNS_12AwhDimParamsEEE, ptr %i.by, align 8, !tbaa !102
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 821, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.bx, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr %i.bx, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #28
          to label %bb.bn unwind label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.thread:                                          ; preds = %bb.t
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread134:                                       ; preds = %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #27
  br label %.sink.split

bb.y:                                             ; preds = %bb.v, %bb.w
  %.028 = phi i1 [ false, %bb.w ], [ true, %bb.v ]
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br i1 %.028, label %bb.z, label %bb.aa

.sink.split:                                      ; preds = %.thread, %.thread134
  %.pn.pn133.ph = phi { ptr, i32 } [ %i.cb, %.thread134 ], [ %i.ca, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.y
  %.pn.pn133 = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %.pn.pn133.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bx) #27
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn.pn132 = phi { ptr, i32 } [ %.pn.pn133, %bb.z ], [ %i.cc, %bb.y ] ; 2 uses
  %i.cd = load ptr, ptr %5, align 8, !tbaa !103   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !107
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.x
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.x ], [ %.pn.pn132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn.pn132, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bk

._crit_edge.thread:                               ; preds = %bb.c, %bb.r, %._crit_edge
  %.030.lcssa228 = phi i64 [ %i.bu, %._crit_edge ], [ %i.bu, %bb.r ], [ 1, %bb.c ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = sdiv exact i64 %i.cn, 72                ; 3 uses
  %i.cp = icmp ugt i64 %.030.lcssa228, %i.co
  br i1 %i.cp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.thread
  %i.cq = sub nuw i64 %.030.lcssa228, %i.co
  invoke void @_ZNSt6vectorIN3gmx9GridPointESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.cq)
          to label %_ZNSt6vectorIN3gmx9GridPointESaIS1_EE6resizeEm.exit unwind label %bb.af

bb.ac:                                            ; preds = %._crit_edge.thread
  %i.cr = icmp ult i64 %.030.lcssa228, %i.co
  br i1 %i.cr, label %bb.ad, label %_ZNSt6vectorIN3gmx9GridPointESaIS1_EE6resizeEm.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw [72 x i8], ptr %i.ck, i64 %.030.lcssa228 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cj, %i.cs
  br i1 %.not.i.i, label %_ZNSt6vectorIN3gmx9GridPointESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad, %_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.da, %_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i.i.i.i ], [ %i.cs, %bb.ad ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !109 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !112
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #30
  br label %_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i.i.i.i: ; preds = %bb.ae, %.lr.ph.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.da, %i.cj
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3gmx9GridPointES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !113

_ZSt8_DestroyIPN3gmx9GridPointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i.i.i.i
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !108
  br label %_ZNSt6vectorIN3gmx9GridPointESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN3gmx9GridPointESaIS1_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN3gmx9GridPointES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.ad, %bb.ac, %bb.ab
  call void @_ZN3gmx8BiasGrid10initPointsEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.db = load ptr, ptr %i.ci, align 8, !tbaa !108
  %i.dc = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %.not = icmp eq ptr %i.db, %i.dc
  br i1 %.not, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %_ZNSt6vectorIN3gmx9GridPointESaIS1_EE6resizeEm.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.pre = load ptr, ptr %i.dd, align 8, !tbaa !37
  %.pre187 = load ptr, ptr %i.n, align 8, !tbaa !15
  br label %bb.ag

._crit_edge179:                                   ; preds = %.loopexit, %_ZNSt6vectorIN3gmx9GridPointESaIS1_EE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  ret void

bb.af:                                            ; preds = %bb.ab
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ag:                                            ; preds = %.lr.ph178, %.loopexit
  %i.df = phi ptr [ %.pre187, %.lr.ph178 ], [ %i.nq, %.loopexit ] ; 7 uses
  %i.dg = phi ptr [ %.pre, %.lr.ph178 ], [ %i.np, %.loopexit ]
  %i.dh = phi ptr [ %i.dc, %.lr.ph178 ], [ %i.nt, %.loopexit ] ; 3 uses
  %.0177 = phi i64 [ 0, %.lr.ph178 ], [ %i.nr, %.loopexit ] ; 4 uses
  %sext361 = shl i64 %.0177, 32
  %9 = ashr exact i64 %sext361, 32
  %i.di = mul nsw i64 %9, 72
  %i.dj = getelementptr inbounds nuw [72 x i8], ptr %i.dh, i64 %.0177 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.dl = ptrtoint ptr %i.dg to i64
  %i.dm = ptrtoint ptr %i.df to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = sdiv exact i64 %i.dn, 48                ; 4 uses
  %i.dp = trunc i64 %i.do to i32
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ag
  %sext = shl i64 %.0177, 32
  %i.dr = ashr exact i64 %sext, 32
  %i.ds = getelementptr [72 x i8], ptr %i.dh, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 32     ; 6 uses
  %wide.trip.count.i = and i64 %i.do, 2147483647  ; 6 uses
  %min.iters.check346 = icmp samesign ult i64 %wide.trip.count.i, 16
  br i1 %min.iters.check346, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.du = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.du ; 3 uses
  %scevgep325 = getelementptr i8, ptr %i.g, i64 %i.du ; 3 uses
  %scevgep326 = getelementptr i8, ptr %i.df, i64 32 ; 2 uses
  %scevgep327 = getelementptr i8, ptr %i.df, i64 -7
  %i.dv = mul nuw nsw i64 %wide.trip.count.i, 48
  %scevgep328 = getelementptr i8, ptr %scevgep327, i64 %i.dv ; 2 uses
  %scevgep329.a = getelementptr i8, ptr %i.dh, i64 32
  %i.dw = getelementptr i8, ptr %scevgep329.a, i64 %i.di
  %scevgep330 = getelementptr i8, ptr %i.dw, i64 %i.du ; 2 uses
  %bound0 = icmp ult ptr %i.f, %scevgep325
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0331 = icmp ult ptr %i.f, %scevgep328
  %bound1332 = icmp ult ptr %scevgep326, %scevgep
  %found.conflict333 = and i1 %bound0331, %bound1332
  %conflict.rdx = or i1 %found.conflict, %found.conflict333
  %bound0334 = icmp ult ptr %i.f, %scevgep330
  %bound1335 = icmp ult ptr %i.dt, %scevgep
  %found.conflict336 = and i1 %bound0334, %bound1335
  %conflict.rdx337 = or i1 %conflict.rdx, %found.conflict336
  %bound0338 = icmp ult ptr %i.g, %scevgep328
  %bound1339 = icmp ult ptr %scevgep326, %scevgep325
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx341 = or i1 %conflict.rdx337, %found.conflict340
  %bound0342 = icmp ult ptr %i.g, %scevgep330
  %bound1343 = icmp ult ptr %i.dt, %scevgep325
  %found.conflict344 = and i1 %bound0342, %bound1343
  %conflict.rdx345 = or i1 %conflict.rdx341, %found.conflict344
  br i1 %conflict.rdx345, label %scalar.ph.preheader, label %vector.ph347

vector.ph347:                                     ; preds = %vector.memcheck
  %n.vec348 = and i64 %i.do, 2147483640           ; 3 uses
  br label %vector.body349

vector.body349:                                   ; preds = %vector.body349, %vector.ph347
  %index350 = phi i64 [ 0, %vector.ph347 ], [ %index.next356, %vector.body349 ] ; 4 uses
  %vec.ind351 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph347 ], [ %vec.ind.next357, %vector.body349 ] ; 2 uses
  %wide.gep352.a = getelementptr inbounds nuw [48 x i8], ptr %i.df, <8 x i64> %vec.ind351 ; 9 uses
  %i.dx = extractelement <8 x ptr> %wide.gep352.a, i64 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.dz = extractelement <8 x ptr> %wide.gep352.a, i64 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eb = extractelement <8 x ptr> %wide.gep352.a, i64 2
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ed = extractelement <8 x ptr> %wide.gep352.a, i64 3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.ef = extractelement <8 x ptr> %wide.gep352.a, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.eh = extractelement <8 x ptr> %wide.gep352.a, i64 5
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ej = extractelement <8 x ptr> %wide.gep352.a, i64 6
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.el = extractelement <8 x ptr> %wide.gep352.a, i64 7
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.en = load i8, ptr %i.dy, align 8, !tbaa !22, !range !23, !alias.scope !114, !noundef !24
  %i.eo = load i8, ptr %i.ea, align 8, !tbaa !22, !range !23, !alias.scope !114, !noundef !24
  %i.ep = load i8, ptr %i.ec, align 8, !tbaa !22, !range !23, !alias.scope !114, !noundef !24
  %i.eq = load i8, ptr %i.ee, align 8, !tbaa !22, !range !23, !alias.scope !114, !noundef !24
  %i.er = load i8, ptr %i.eg, align 8, !tbaa !22, !range !23, !alias.scope !114, !noundef !24
  %i.es = load i8, ptr %i.ei, align 8, !tbaa !22, !range !23, !alias.scope !114, !noundef !24
  %i.et = load i8, ptr %i.ek, align 8, !tbaa !22, !range !23, !alias.scope !114, !noundef !24
  %i.eu = load i8, ptr %i.em, align 8, !tbaa !22, !range !23, !alias.scope !114, !noundef !24
  %i.ev = insertelement <8 x i8> poison, i8 %i.en, i64 0
  %i.ew = insertelement <8 x i8> %i.ev, i8 %i.eo, i64 1
  %i.ex = insertelement <8 x i8> %i.ew, i8 %i.ep, i64 2
  %i.ey = insertelement <8 x i8> %i.ex, i8 %i.eq, i64 3
  %i.ez = insertelement <8 x i8> %i.ey, i8 %i.er, i64 4
  %i.fa = insertelement <8 x i8> %i.ez, i8 %i.es, i64 5
  %i.fb = insertelement <8 x i8> %i.fa, i8 %i.et, i64 6
  %i.fc = insertelement <8 x i8> %i.fb, i8 %i.eu, i64 7
  %i.fd = trunc nuw <8 x i8> %i.fc to <8 x i1>    ; 3 uses
  %wide.gep353 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep352.a, i64 32
  %wide.masked.gather354 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep353, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38, !alias.scope !114 ; 2 uses
  %i.fe = xor <8 x i1> %i.fd, splat (i1 true)
  %i.ff = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather354, <8 x i32> splat (i32 11)) ; 2 uses
  %i.fg = getelementptr [4 x i8], ptr %i.dt, i64 %index350
  %wide.masked.load = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.fg, <8 x i1> %i.fe, <8 x i32> poison), !tbaa !29, !alias.scope !117
  %i.fh = sdiv <8 x i32> %i.ff, splat (i32 -2)
  %i.fi = add <8 x i32> %wide.masked.load, %i.fh
  %predphi = select <8 x i1> %i.fd, <8 x i32> %wide.masked.gather354, <8 x i32> %i.ff
  %predphi355 = select <8 x i1> %i.fd, <8 x i32> zeroinitializer, <8 x i32> %i.fi
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index350
  store <8 x i32> %predphi, ptr %i.fj, align 16, !tbaa !29, !alias.scope !119, !noalias !121
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index350
  store <8 x i32> %predphi355, ptr %i.fk, align 16, !tbaa !29, !alias.scope !123, !noalias !124
  %index.next356 = add nuw i64 %index350, 8       ; 2 uses
  %vec.ind.next357 = add nuw nsw <8 x i64> %vec.ind351, splat (i64 8)
  %i.fl = icmp eq i64 %index.next356, %n.vec348
  br i1 %i.fl, label %middle.block358, label %vector.body349, !llvm.loop !125

middle.block358:                                  ; preds = %vector.body349
  %cmp.n359 = icmp eq i64 %wide.trip.count.i, %n.vec348
  br i1 %cmp.n359, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block358
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec348, %middle.block358 ] ; 7 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  %xtraiter = and i64 %i.do, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fm = getelementptr inbounds nuw [48 x i8], ptr %i.df, i64 %indvars.iv.i.ph ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !22, !range !23, !noundef !24
  %i.fp = trunc nuw i8 %i.fo to i1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !38 ; 2 uses
  br i1 %i.fp, label %scalar.ph.prol.loopexit.unr-lcssa, label %bb.ah

bb.ah:                                            ; preds = %scalar.ph.prol
  %.sroa.speculated.i.prol = call i32 @llvm.smin.i32(i32 %i.fr, i32 11) ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.i.ph
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !29
  %.neg.i.prol = sdiv i32 %.sroa.speculated.i.prol, -2
  %i.fu = add i32 %i.ft, %.neg.i.prol
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %bb.ah, %scalar.ph.prol
  %.sroa.speculated.sink.i.prol = phi i32 [ %.sroa.speculated.i.prol, %bb.ah ], [ %i.fr, %scalar.ph.prol ]
  %.sink.i.prol = phi i32 [ %i.fu, %bb.ah ], [ 0, %scalar.ph.prol ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.ph
  store i32 %.sroa.speculated.sink.i.prol, ptr %i.fv, align 16, !tbaa !29
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i.ph
  store i32 %.sink.i.prol, ptr %i.fw, align 16, !tbaa !29
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.fx = icmp eq i64 %wide.trip.count.i, %.neg
  br i1 %i.fx, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %bb.ak, %middle.block358, %bb.ag
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dj, i64 56 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dj, i64 64 ; 3 uses
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.ak
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.ak ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ga = getelementptr inbounds nuw [48 x i8], ptr %i.df, i64 %indvars.iv.i ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !22, !range !23, !noundef !24
  %i.gd = trunc nuw i8 %i.gc to i1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !38 ; 2 uses
  br i1 %i.gd, label %scalar.ph.1, label %bb.ai

bb.ai:                                            ; preds = %scalar.ph
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.gf, i32 11) ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.i
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !29
  %.neg.i = sdiv i32 %.sroa.speculated.i, -2
  %i.gi = add i32 %i.gh, %.neg.i
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.ai, %scalar.ph
  %.sroa.speculated.sink.i = phi i32 [ %.sroa.speculated.i, %bb.ai ], [ %i.gf, %scalar.ph ]
  %.sink.i = phi i32 [ %i.gi, %bb.ai ], [ 0, %scalar.ph ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  store i32 %.sroa.speculated.sink.i, ptr %i.gj, align 4, !tbaa !29
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  store i32 %.sink.i, ptr %i.gk, align 4, !tbaa !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.gl = getelementptr inbounds nuw [48 x i8], ptr %i.df, i64 %indvars.iv.next.i ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.gn = load i8, ptr %i.gm, align 8, !tbaa !22, !range !23, !noundef !24
  %i.go = trunc nuw i8 %i.gn to i1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !38 ; 2 uses
  br i1 %i.go, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %scalar.ph.1
  %.sroa.speculated.i.1 = call i32 @llvm.smin.i32(i32 %i.gq, i32 11) ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.next.i
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !29
  %.neg.i.1 = sdiv i32 %.sroa.speculated.i.1, -2
  %i.gt = add i32 %i.gs, %.neg.i.1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %scalar.ph.1
  %.sroa.speculated.sink.i.1 = phi i32 [ %.sroa.speculated.i.1, %bb.aj ], [ %i.gq, %scalar.ph.1 ]
  %.sink.i.1 = phi i32 [ %i.gt, %bb.aj ], [ 0, %scalar.ph.1 ]
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i
  store i32 %.sroa.speculated.sink.i.1, ptr %i.gu, align 4, !tbaa !29
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.i
  store i32 %.sink.i.1, ptr %i.gv, align 4, !tbaa !29
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !126

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.backedge, %._crit_edge.i
  %.0127 = phi i32 [ -1, %._crit_edge.i ], [ %.3.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.backedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.gw = icmp sgt i32 %.0127, -1
  br i1 %i.gw, label %bb.al, label %bb.at

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %i.gx = load ptr, ptr %i.dd, align 8, !tbaa !37 ; 3 uses
  %i.gy = load ptr, ptr %i.n, align 8, !tbaa !15  ; 4 uses
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = sdiv exact i64 %i.hb, 48                ; 3 uses
  %i.hd = trunc i64 %i.hc to i32
  %i.he = icmp sgt i32 %i.hd, 0
  br i1 %i.he, label %.lr.ph.i.i, label %.loopexit
end_hunk_0
