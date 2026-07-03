inline.NumInlined: 2036
inline.NumDeleted: 924
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp12LineSplitterppEv:bb.a
  %.pre67 = ptrtoint ptr %.pre52.pre to i64
  %.pre68 = sub i64 %.pre66, %.pre67
  %.pre69 = and i64 %.pre68, 4294967295
  %i.bi = icmp eq i64 %.pre69, 0                  ; 2 uses
  switch i8 %i.bh, label %.critedge7 [
    i8 32, label %.critedge9.backedge
    i8 13, label %.critedge9.backedge
    i8 10, label %.critedge9.backedge
  ]

.critedge9.backedge:                              ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit32, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit32, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit32
  br i1 %i.bi, label %.critedge, label %.lr.ph43

.critedge7:                                       ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit32
  br i1 %i.bi, label %.critedge, label %bb.p

bb.p:                                             ; preds = %.critedge7
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre48.pre, i64 24
  %i.bk = getelementptr inbounds i8, ptr %.pre52.pre, i64 -1 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.pre48.pre, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = icmp ugt ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull @.str.31)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.t:                                             ; preds = %bb.l
  %i.bq = icmp eq i8 %i.al, 13
  %i.br = load ptr, ptr %i.d, align 8, !nonnull !37, !align !38 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 3 uses
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = icmp ne i64 %i.bz, 0
  %or.cond12 = and i1 %i.bq, %i.ca
  br i1 %or.cond12, label %bb.u, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit34

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = icmp ugt ptr %i.cb, %i.cd
  br i1 %i.ce, label %bb.v, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit33

bb.v:                                             ; preds = %bb.u
  %i.cf = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull @.str.30)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit33: ; preds = %bb.u
  %i.ch = load i8, ptr %i.bv, align 1
  store ptr %i.cb, ptr %i.bu, align 8
  %.not27 = icmp eq i8 %i.ch, 10
  br i1 %.not27, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit34, label %bb.y

bb.y:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit33
  %i.ci = load ptr, ptr %i.d, align 8, !nonnull !37, !align !38 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -1 ; 2 uses
  store ptr %i.cl, ptr %i.cj, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = icmp ugt ptr %i.cl, %i.cn
  br i1 %i.co, label %bb.z, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit34

bb.z:                                             ; preds = %bb.y
  %i.cp = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull @.str.31)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @__cxa_throw(ptr nonnull %i.cp, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit34: ; preds = %bb.y, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit33, %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.cs = load i8, ptr %i.cr, align 2, !range !60, !noundef !37
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %.preheader, label %.critedge

.preheader:                                       ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit34
  %i.cu = load ptr, ptr %i.d, align 8, !nonnull !37, !align !38 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = and i64 %i.db, 4294967295
  %.not2840 = icmp eq i64 %i.dc, 0
  br i1 %.not2840, label %.critedge, label %.lr.ph41

.lr.ph41:                                         ; preds = %.preheader, %.backedge
  %i.dd = phi ptr [ %.pre47.pre, %.backedge ], [ %i.cy, %.preheader ] ; 2 uses
  %i.de = phi ptr [ %.phi.trans.insert46.phi.trans.insert, %.backedge ], [ %i.cx, %.preheader ]
  %i.df = phi ptr [ %.pre.pre, %.backedge ], [ %i.cu, %.preheader ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = icmp ugt ptr %i.dg, %i.di
  br i1 %i.dj, label %bb.ac, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit35

bb.ac:                                            ; preds = %.lr.ph41
  %i.dk = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull @.str.30)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit35: ; preds = %.lr.ph41
  %i.dm = load i8, ptr %i.dd, align 1
  store ptr %i.dg, ptr %i.de, align 8
  %.pre.pre = load ptr, ptr %i.d, align 8         ; 5 uses
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 32
  %.pre45.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8
  %.phi.trans.insert46.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 24 ; 2 uses
  %.pre47.pre = load ptr, ptr %.phi.trans.insert46.phi.trans.insert, align 8 ; 3 uses
  %.pre78 = ptrtoint ptr %.pre45.pre to i64
  %.pre79 = ptrtoint ptr %.pre47.pre to i64
  %.pre80 = sub i64 %.pre78, %.pre79
  %.pre81 = and i64 %.pre80, 4294967295
  %i.dn = icmp eq i64 %.pre81, 0                  ; 2 uses
  switch i8 %i.dm, label %.critedge14 [
    i8 32, label %.backedge
    i8 9, label %.backedge
  ]

.backedge:                                        ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit35, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit35
  br i1 %i.dn, label %.critedge, label %.lr.ph41

.critedge14:                                      ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit35
  br i1 %i.dn, label %.critedge, label %bb.af

bb.af:                                            ; preds = %.critedge14
  %i.do = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 24
  %i.dp = getelementptr inbounds i8, ptr %.pre47.pre, i64 -1 ; 2 uses
  store ptr %i.dp, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = icmp ugt ptr %i.dp, %i.dr
  br i1 %i.ds, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.dt = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull @.str.31)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @__cxa_throw(ptr nonnull %i.dt, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.aj:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit
  %i.dv = load i64, ptr %i.q, align 8             ; 4 uses
  %i.dw = add i64 %i.dv, 1                        ; 3 uses
  %i.dx = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.ab                ; 2 uses
  br i1 %i.dy, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.dz = icmp ult i64 %i.dv, 16
  tail call void @llvm.assume(i1 %i.dz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.ak, %bb.aj
  %1 = load i64, ptr %i.ab, align 8
  %2 = select i1 %i.dy, i64 15, i64 %1
  %i.ea = icmp ugt i64 %i.dw, %2
  br i1 %i.ea, label %bb.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.dv, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.p, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.al
  %i.eb = phi ptr [ %.pre.i.i, %bb.al ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dv
  store i8 %i.al, ptr %i.ec, align 1
  store i64 %i.dw, ptr %i.q, align 8
  %i.ed = load ptr, ptr %i.p, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dw
  store i8 0, ptr %i.ee, align 1
  %i.ef = load ptr, ptr %i.d, align 8, !nonnull !37, !align !38 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8            ; 2 uses
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = and i64 %i.em, 4294967295
  %.not = icmp eq i64 %i.en, 0
  br i1 %.not, label %.critedge, label %bb.h, !llvm.loop !61

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %.backedge, %.critedge9.backedge, %.preheader, %.critedge9.preheader, %bb.g, %bb.af, %bb.p, %.critedge7, %.critedge14, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit34
  %i.eo = load i64, ptr %0, align 8
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %0, align 8
  br label %bb.am

bb.am:                                            ; preds = %.critedge, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4STEP7EXPRESS8DataType5ParseERPKcS4_mPKNS1_16ConversionSchemaE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.25") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::shared_ptr.43", align 16 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator", align 1   ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::allocator", align 1   ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.g = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.h = load ptr, ptr %1, align 8                ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.j, %i.i
  %scevgep.i.i = getelementptr i8, ptr %i.h, i64 %i.k
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i = phi ptr [ %i.h, %bb.a ], [ %i.m, %bb.d ] ; 4 uses
  %i.l = load i8, ptr %.0.i.i, align 1
  switch i8 %i.l, label %.critedge.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i = icmp eq ptr %.0.i.i, %2
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.b, !llvm.loop !48

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.b ], [ %scevgep.i.i, %bb.c ] ; 11 uses
  store ptr %.0.lcssa.i.i, ptr %i.f, align 8
  %i.n = load i8, ptr %.0.lcssa.i.i, align 1      ; 7 uses
  switch i8 %i.n, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 44, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
    i8 32, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
    i8 9, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
    i8 13, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
    i8 10, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
    i8 0, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
    i8 12, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread:  ; preds = %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
  invoke void @_ZN6Assimp4STEP11SyntaxErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN6Assimp4STEP11SyntaxErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.bv unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.085 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.r = load ptr, ptr %5, align 8                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %.085, label %bb.h, label %bb.bu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %.085, label %bb.h, label %bb.bu

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn132237 = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.o) #27
  br label %bb.bu

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %.critedge.i.i
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.critedge135, label %.preheader254

.preheader254:                                    ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %bb.t
  %i.w = phi i8 [ %.pre, %bb.t ], [ %i.n, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ] ; 3 uses
  %.089 = phi ptr [ %i.cz, %bb.t ], [ %.0.lcssa.i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ] ; 2 uses
  %.087 = phi i1 [ %spec.select, %bb.t ], [ false, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ] ; 2 uses
  switch i8 %i.w, label %bb.t [
    i8 0, label %.critedge135
    i8 41, label %.critedge135
    i8 44, label %.critedge135
    i8 40, label %bb.i
  ]

bb.i:                                             ; preds = %.preheader254
  br i1 %.087, label %.preheader253, label %.critedge135

.preheader253:                                    ; preds = %bb.i, %.preheader253.backedge
  %.089.pn = phi ptr [ %.190, %.preheader253.backedge ], [ %.089, %bb.i ] ; 2 uses
  %.190 = getelementptr inbounds i8, ptr %.089.pn, i64 -1 ; 3 uses
  %i.x = load i8, ptr %.190, align 1
  switch i8 %i.x, label %bb.j [
    i8 32, label %.preheader253.backedge
    i8 9, label %.preheader253.backedge
  ]

.preheader253.backedge:                           ; preds = %.preheader253, %.preheader253
  br label %.preheader253

bb.j:                                             ; preds = %.preheader253
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.y = ptrtoint ptr %.190 to i64
  %i.z = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = add nsw i64 %i.aa, 1                    ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ac, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i64 %i.ab, ptr %i.e, align 8
  %i.ad = icmp ugt i64 %i.ab, 15
  br i1 %i.ad, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.j
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc137 unwind label %bb.p  ; 2 uses

.noexc137:                                        ; preds = %.noexc.i
  store ptr %i.ae, ptr %7, align 8
  %i.af = load i64, ptr %i.e, align 8
  store i64 %i.af, ptr %i.ac, align 8
end_hunk_0
