Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/STEPFileReader?download=true
inline.NumInlined: 2036
inline.NumDeleted: 924
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp12LineSplitterppEv:bb.a
bb.y:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit33
  %i.ci = load ptr, ptr %i.d, align 8, !nonnull !14, !align !15 ; 2 uses
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
  %i.cs = load i8, ptr %i.cr, align 2, !range !71, !noundef !14
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %.preheader, label %.critedge

.preheader:                                       ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit34
  %i.cu = load ptr, ptr %i.d, align 8, !nonnull !14, !align !15 ; 3 uses
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
  %i.dy = icmp eq ptr %i.dx, %i.ab
  br i1 %i.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.aj
  %i.dz = icmp ult i64 %i.dv, 16
  tail call void @llvm.assume(i1 %i.dz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aj
  %i.ea = load i64, ptr %i.ab, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.eb = phi i64 [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ec = icmp ugt i64 %i.dw, %i.eb
  br i1 %i.ec, label %bb.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.dv, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.p, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.ak
  %i.ed = phi ptr [ %.pre.i.i, %bb.ak ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dv
  store i8 %i.al, ptr %i.ee, align 1
  store i64 %i.dw, ptr %i.q, align 8
  %i.ef = load ptr, ptr %i.p, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dw
  store i8 0, ptr %i.eg, align 1
  %i.eh = load ptr, ptr %i.d, align 8, !nonnull !14, !align !15 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = and i64 %i.eo, 4294967295
  %.not = icmp eq i64 %i.ep, 0
  br i1 %.not, label %.critedge, label %bb.h, !llvm.loop !70

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %.backedge, %.critedge9.backedge, %.preheader, %.critedge9.preheader, %bb.g, %bb.af, %bb.p, %.critedge7, %.critedge14, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit34
  %i.eq = load i64, ptr %0, align 8
  %i.er = add i64 %i.eq, 1
  store i64 %i.er, ptr %0, align 8
  br label %bb.al

bb.al:                                            ; preds = %.critedge, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4STEP7EXPRESS8DataType5ParseERPKcS4_mPKNS1_16ConversionSchemaE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.25") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef readnone captures(address) %2, i64 noundef %3, ptr nofree noundef readonly captures(address) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = ptrtoaddr ptr %2 to i64
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
  br label %bb.b, !llvm.loop !1

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.b ], [ %scevgep.i.i, %bb.c ] ; 11 uses
  store ptr %.0.lcssa.i.i, ptr %i.f, align 8
  %19 = load i8, ptr %.0.lcssa.i.i, align 1       ; 7 uses
  switch i8 %19, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 44, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
    i8 32, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
    i8 9, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
    i8 13, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
    i8 10, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
    i8 0, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
    i8 12, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread:  ; preds = %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
  invoke void @_ZN6Assimp4STEP11SyntaxErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN6Assimp4STEP11SyntaxErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.bu unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.085 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.q = load ptr, ptr %5, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %.085, label %bb.h, label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %.085, label %bb.h, label %bb.bt

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn132237 = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #27
  br label %bb.bt

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %.critedge.i.i
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.critedge135, label %.preheader254

.preheader254:                                    ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %bb.t
  %i.v = phi i8 [ %.pre.a, %bb.t ], [ %19, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ] ; 3 uses
  %.089 = phi ptr [ %i.cz, %bb.t ], [ %.0.lcssa.i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ] ; 2 uses
  %.087 = phi i1 [ %spec.select, %bb.t ], [ false, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ] ; 2 uses
  switch i8 %i.v, label %bb.t [
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
  %i.w = load i8, ptr %.190, align 1
  switch i8 %i.w, label %bb.j [
    i8 32, label %.preheader253.backedge
    i8 9, label %.preheader253.backedge
  ]

.preheader253.backedge:                           ; preds = %.preheader253, %.preheader253
  br label %.preheader253

bb.j:                                             ; preds = %.preheader253
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.x = ptrtoint ptr %.190 to i64
  %i.y = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = add nsw i64 %i.z, 1                     ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ab, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i64 %i.aa, ptr %i.e, align 8
  %i.ac = icmp ugt i64 %i.aa, 15
  br i1 %i.ac, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.j
  %i.ad = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc137 unwind label %bb.p  ; 2 uses

.noexc137:                                        ; preds = %.noexc.i
  store ptr %i.ad, ptr %7, align 8
  %i.ae = load i64, ptr %i.e, align 8
  store i64 %i.ae, ptr %i.ab, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc137, %bb.j
  %i.af = phi ptr [ %i.ad, %.noexc137 ], [ %i.ab, %bb.j ] ; 2 uses
  switch i64 %i.aa, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.ag = load i8, ptr %.0.lcssa.i.i, align 1
  store i8 %i.ag, ptr %i.af, align 1
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %.0.lcssa.i.i, i64 %i.aa, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i
  %i.ah = load i64, ptr %i.e, align 8             ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %7, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.al = load ptr, ptr %7, align 8               ; 7 uses
  %i.am = load i64, ptr %i.ai, align 8            ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  %.not6.i = icmp samesign eq i64 %i.am, 0
  br i1 %.not6.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFccEET0_T_SD_SC_T1_.exit, label %iter.check

iter.check:                                       ; preds = %bb.m
  %min.iters.check = icmp ult i64 %i.am, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check314 = icmp ult i64 %i.am, 32
  br i1 %min.iters.check314, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %i.am, 24
  %n.vec = and i64 %i.am, -32                     ; 4 uses
  %i.ap = getelementptr i8, ptr %i.al, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %index ; 3 uses
  %i.aq = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1 ; 3 uses
  %wide.load315 = load <16 x i8>, ptr %i.aq, align 1 ; 3 uses
  %i.ar = add <16 x i8> %wide.load, splat (i8 -65)
  %i.as = add <16 x i8> %wide.load315, splat (i8 -65)
  %i.at = icmp ult <16 x i8> %i.ar, splat (i8 26)
  %i.au = icmp ult <16 x i8> %i.as, splat (i8 26)
  %i.av = add nuw nsw <16 x i8> %wide.load, splat (i8 32)
  %i.aw = add nuw nsw <16 x i8> %wide.load315, splat (i8 32)
  %i.ax = select <16 x i1> %i.at, <16 x i8> %i.av, <16 x i8> %wide.load
  %i.ay = select <16 x i1> %i.au, <16 x i8> %i.aw, <16 x i8> %wide.load315
  store <16 x i8> %i.ax, ptr %next.gep, align 1
  store <16 x i8> %i.ay, ptr %i.aq, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFccEET0_T_SD_SC_T1_.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec316 = and i64 %i.am, -8                   ; 3 uses
  %i.ba = getelementptr i8, ptr %i.al, i64 %n.vec316
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index317 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next320, %vec.epilog.vector.body ] ; 2 uses
  %next.gep318 = getelementptr i8, ptr %i.al, i64 %index317 ; 2 uses
  %wide.load319 = load <8 x i8>, ptr %next.gep318, align 1 ; 3 uses
  %i.bb = add <8 x i8> %wide.load319, splat (i8 -65)
  %i.bc = icmp ult <8 x i8> %i.bb, splat (i8 26)
  %i.bd = add nuw nsw <8 x i8> %wide.load319, splat (i8 32)
  %i.be = select <8 x i1> %i.bc, <8 x i8> %i.bd, <8 x i8> %wide.load319
  store <8 x i8> %i.be, ptr %next.gep318, align 1
  %index.next320 = add nuw i64 %index317, 8       ; 2 uses
end_hunk_0
