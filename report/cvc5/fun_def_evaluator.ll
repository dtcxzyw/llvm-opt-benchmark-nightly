inline.NumInlined: 1558
inline.NumDeleted: 611
begin_hunk_0_@_ZNK4cvc58internal6theory11quantifiers15FunDefEvaluator18getDefinitionIndexERKNS0_12NodeTemplateILb1EEERm:bb.a
  %i.my = add nuw nsw i32 %i.mw, 1
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = shl nuw nsw i64 %i.mz, 40
  %i.nb = and i64 %i.mt, -1152920405095219201
  %i.nc = or i64 %i.na, %i.nb                     ; 2 uses
  store i64 %i.nc, ptr %i.ms, align 8, !noalias !72
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit93

bb.bi:                                            ; preds = %.noexc91
  %i.nd = icmp eq i32 %i.mw, 1048574
  br i1 %i.nd, label %bb.bj, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit93, !prof !24

bb.bj:                                            ; preds = %bb.bi
  %i.ne = or i64 %i.mt, 1152920405095219200
  store i64 %i.ne, ptr %i.ms, align 8, !noalias !72
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ms)
          to label %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit93_crit_edge unwind label %bb.cc

._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit93_crit_edge: ; preds = %bb.bj
  %.pre158 = load i64, ptr %i.ms, align 8
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit93

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit93: ; preds = %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit93_crit_edge, %bb.bi, %bb.bh
  %i.nf = phi i64 [ %.pre158, %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit93_crit_edge ], [ %i.mt, %bb.bi ], [ %i.nc, %bb.bh ] ; 3 uses
  %.not115 = icmp eq ptr %i.ku, %i.ms
  %i.ng = and i64 %i.nf, 1152920405095219200
  %.not.i.i94 = icmp eq i64 %i.ng, 1152920405095219200
  br i1 %.not.i.i94, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit95, label %bb.bk, !prof !24

bb.bk:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit93
  %i.nh = add i64 %i.nf, 1152920405095219200
  %i.ni = and i64 %i.nh, 1152920405095219200      ; 2 uses
  %i.nj = and i64 %i.nf, -1152920405095219201
  %i.nk = or disjoint i64 %i.ni, %i.nj
  store i64 %i.nk, ptr %i.ms, align 8
  %i.nl = icmp eq i64 %i.ni, 0
  br i1 %i.nl, label %bb.bl, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit95, !prof !24

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ms)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit95 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nm = landingpad { ptr, i32 }
          catch ptr null
  %i.nn = extractvalue { ptr, i32 } %i.nm, 0
  tail call void @__clang_call_terminate(ptr %i.nn) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit95: ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit93, %bb.bk, %bb.bl
  %i.no = load i64, ptr %i.lt, align 8            ; 3 uses
  %i.np = and i64 %i.no, 1152920405095219200
  %.not.i.i96 = icmp eq i64 %i.np, 1152920405095219200
  br i1 %.not.i.i96, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit97, label %bb.bn, !prof !24

bb.bn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit95
  %i.nq = add i64 %i.no, 1152920405095219200
  %i.nr = and i64 %i.nq, 1152920405095219200      ; 2 uses
  %i.ns = and i64 %i.no, -1152920405095219201
  %i.nt = or disjoint i64 %i.nr, %i.ns
  store i64 %i.nt, ptr %i.lt, align 8
  %i.nu = icmp eq i64 %i.nr, 0
  br i1 %i.nu, label %bb.bo, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit97, !prof !24

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit97 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nv = landingpad { ptr, i32 }
          catch ptr null
  %i.nw = extractvalue { ptr, i32 } %i.nv, 0
  tail call void @__clang_call_terminate(ptr %i.nw) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit97: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit95, %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.nx = load i64, ptr %i.ku, align 8            ; 3 uses
  %i.ny = and i64 %i.nx, 1152920405095219200
  %.not.i.i98 = icmp eq i64 %i.ny, 1152920405095219200
  br i1 %.not.i.i98, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit99, label %bb.bq, !prof !24

bb.bq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit97
  %i.nz = add i64 %i.nx, 1152920405095219200
  %i.oa = and i64 %i.nz, 1152920405095219200      ; 2 uses
  %i.ob = and i64 %i.nx, -1152920405095219201
  %i.oc = or disjoint i64 %i.oa, %i.ob
  store i64 %i.oc, ptr %i.ku, align 8
  %i.od = icmp eq i64 %i.oa, 0
  br i1 %i.od, label %bb.br, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit99, !prof !24

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ku)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit99 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.oe = landingpad { ptr, i32 }
          catch ptr null
  %i.of = extractvalue { ptr, i32 } %i.oe, 0
  tail call void @__clang_call_terminate(ptr %i.of) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit99: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit97, %bb.bq, %bb.br
  %i.og = load i64, ptr %i.jv, align 8            ; 3 uses
  %i.oh = and i64 %i.og, 1152920405095219200
  %.not.i.i100 = icmp eq i64 %i.oh, 1152920405095219200
  br i1 %.not.i.i100, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit101, label %bb.bt, !prof !24

bb.bt:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit99
  %i.oi = add i64 %i.og, 1152920405095219200
  %i.oj = and i64 %i.oi, 1152920405095219200      ; 2 uses
  %i.ok = and i64 %i.og, -1152920405095219201
  %i.ol = or disjoint i64 %i.oj, %i.ok
  store i64 %i.ol, ptr %i.jv, align 8
  %i.om = icmp eq i64 %i.oj, 0
  br i1 %i.om, label %bb.bu, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit101, !prof !24

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit101 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.on = landingpad { ptr, i32 }
          catch ptr null
  %i.oo = extractvalue { ptr, i32 } %i.on, 0
  tail call void @__clang_call_terminate(ptr %i.oo) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit101: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit99, %bb.bt, %bb.bu
  %i.op = load i64, ptr %i.iw, align 8            ; 3 uses
  %i.oq = and i64 %i.op, 1152920405095219200
  %.not.i.i102 = icmp eq i64 %i.oq, 1152920405095219200
  br i1 %.not.i.i102, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit103, label %bb.bw, !prof !24

bb.bw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit101
  %i.or = add i64 %i.op, 1152920405095219200
  %i.os = and i64 %i.or, 1152920405095219200      ; 2 uses
  %i.ot = and i64 %i.op, -1152920405095219201
  %i.ou = or disjoint i64 %i.os, %i.ot
  store i64 %i.ou, ptr %i.iw, align 8
  %i.ov = icmp eq i64 %i.os, 0
  br i1 %i.ov, label %bb.bx, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit103, !prof !24

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.iw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit103 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ow = landingpad { ptr, i32 }
          catch ptr null
  %i.ox = extractvalue { ptr, i32 } %i.ow, 0
  tail call void @__clang_call_terminate(ptr %i.ox) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit103: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit101, %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %.not115, label %bb.au, label %.loopexit

bb.bz:                                            ; preds = %bb.ba, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit77
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ca:                                            ; preds = %bb.bd, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit81
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cb:                                            ; preds = %bb.bg, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit85
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bj, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit89
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #21
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn45 = phi { ptr, i32 } [ %i.pb, %bb.cc ], [ %i.pa, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ca
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %bb.cd ], [ %i.oz, %bb.ca ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.bz
  %.pn45.pn.pn = phi { ptr, i32 } [ %.pn45.pn, %bb.ce ], [ %i.oy, %bb.bz ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.cg

.loopexit:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit103, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75
  br i1 %i.ci, label %bb.q, label %.thread113, !llvm.loop !75

.preheader._crit_edge:                            ; preds = %.preheader, %bb.au
  store i64 %.031136, ptr %2, align 8, !tbaa !30
  br label %.thread113

bb.cg:                                            ; preds = %bb.as, %bb.at, %bb.cf, %bb.p
  %.pn45.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.p ], [ %.pn45.pn.pn, %bb.cf ], [ %i.ij, %bb.at ], [ %.pn, %bb.as ]
  resume { ptr, i32 } %.pn45.pn.pn.pn.pn

.thread113:                                       ; preds = %.loopexit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %.preheader._crit_edge
  %.4 = phi i1 [ true, %.preheader._crit_edge ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ false, %.loopexit ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers15FunDefEvaluator13addDefinitionERKNS0_12NodeTemplateILb1EEES7_S7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::tuple.375", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.378", align 1    ; 3 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.a = load ptr, ptr %1, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023
  %i.f = tail call noundef zeroext i1 @_ZN4cvc58internal11NodeManager11hasOperatorENS0_4kind6Kind_tE(i32 noundef %i.e)
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNK4cvc58internal12NodeTemplateILb1EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !20     ; 5 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !20
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = lshr i64 %i.h, 40
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = and i32 %i.j, 1048575                    ; 3 uses
  %i.l = icmp samesign ult i32 %i.k, 1048574
  br i1 %i.l, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw nsw i32 %i.k, 1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 40
  %i.p = and i64 %i.h, -1152920405095219201
  %i.q = or i64 %i.o, %i.p
  store i64 %i.q, ptr %i.g, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i32 %i.k, 1048574
  br i1 %i.r, label %bb.f, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !24

bb.f:                                             ; preds = %bb.e
  %i.s = or i64 %i.h, 1152920405095219200
  store i64 %i.s, ptr %i.g, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !76   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.x = load ptr, ptr %3, align 8, !tbaa !20     ; 5 uses
  store ptr %i.x, ptr %i.u, align 8, !tbaa !20
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = lshr i64 %i.y, 40
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = and i32 %i.aa, 1048575                  ; 3 uses
  %i.ac = icmp samesign ult i32 %i.ab, 1048574
  br i1 %i.ac, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.ad = add nuw nsw i32 %i.ab, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 40
  %i.ag = and i64 %i.y, -1152920405095219201
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.x, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i32 %i.ab, 1048574
  br i1 %i.ai, label %bb.j, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !24

bb.j:                                             ; preds = %bb.i
  %i.aj = or i64 %i.y, 1152920405095219200
  store i64 %i.aj, ptr %i.x, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i unwind label %bb.as

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !76
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.al, ptr %i.t, align 8, !tbaa !76
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit unwind label %bb.as

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !17 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.ar = load ptr, ptr %6, align 8, !tbaa !20
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = and i64 %i.as, 1099511627775            ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.l ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.l ]
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = and i64 %i.aw, 1099511627775
  %i.ay = icmp samesign ult i64 %i.ax, %i.at      ; 2 uses
  %.19.i.i.i.i = select i1 %i.ay, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.ay, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers15FunDefEvaluator10FunDefInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE11lower_boundERSB_.exit.i, label %bb.l, !llvm.loop !81

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers15FunDefEvaluator10FunDefInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE11lower_boundERSB_.exit.i: ; preds = %bb.l
  %i.az = icmp eq ptr %.19.i.i.i.i, %i.aq
  br i1 %i.az, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers15FunDefEvaluator10FunDefInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE11lower_boundERSB_.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !20
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = and i64 %i.bc, 1099511627775
  %i.be = icmp samesign ult i64 %i.at, %i.bd
  br i1 %i.be, label %.critedge.i, label %bb.n

.critedge.i:                                      ; preds = %bb.m, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers15FunDefEvaluator10FunDefInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE11lower_boundERSB_.exit.i, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.m ], [ %.19.i.i.i.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers15FunDefEvaluator10FunDefInfoESt4lessIS3_ESaISt4pairIKS3_S7_EEE11lower_boundERSB_.exit.i ], [ %i.aq, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %6, ptr %4, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bf = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers15FunDefEvaluator10FunDefInfoEESt10_Select1stISA_ESt4lessIS3_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc30 unwind label %bb.at

.noexc30:                                         ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.n

bb.n:                                             ; preds = %.noexc30, %bb.m
  %.sroa.06.0.i = phi ptr [ %i.bf, %.noexc30 ], [ %.19.i.i.i.i, %bb.m ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !20 ; 4 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !20
  %.not.i31 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i31, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.o, !prof !24

bb.o:                                             ; preds = %bb.n
  %i.bj = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bk = and i64 %i.bj, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.bk, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.p, !prof !24

bb.p:                                             ; preds = %bb.o
  %i.bl = add i64 %i.bj, 1152920405095219200
  %i.bm = and i64 %i.bl, 1152920405095219200      ; 2 uses
  %i.bn = and i64 %i.bj, -1152920405095219201
  %i.bo = or disjoint i64 %i.bm, %i.bn
  store i64 %i.bo, ptr %i.bh, align 8
  %i.bp = icmp eq i64 %i.bm, 0
  br i1 %i.bp, label %bb.q, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !24

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.at

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.q, %bb.p, %bb.o
  %i.bq = load ptr, ptr %3, align 8, !tbaa !20    ; 5 uses
  store ptr %i.bq, ptr %i.bg, align 8, !tbaa !20
  %i.br = load i64, ptr %i.bq, align 8            ; 3 uses
  %i.bs = lshr i64 %i.br, 40
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = and i32 %i.bt, 1048575                  ; 3 uses
  %i.bv = icmp samesign ult i32 %i.bu, 1048574
  br i1 %i.bv, label %bb.r, label %bb.s, !prof !23

bb.r:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.bw = add nuw nsw i32 %i.bu, 1
end_hunk_0
