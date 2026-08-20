inline.NumInlined: 5803
inline.NumDeleted: 1917
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZNK6Assimp7Blender9Structure12ReadFieldPtrILi0ESt10shared_ptrNS0_5GroupEEEbRT0_IT1_EPKcRKNS0_12FileDatabaseEb:bb.a
  %.sroa.10.0.insert.shift.i.i.i = shl nuw i32 %.sroa.10.0.i.i.i, 24
  %.sroa.8.0.insert.ext.i.i.i = shl i32 %.sroa.8.0.i.i.i, 16
  %.sroa.8.0.insert.shift.i.i.i = and i32 %.sroa.8.0.insert.ext.i.i.i, 16711680
  %.sroa.8.0.insert.insert.i.i.i = or disjoint i32 %.sroa.10.0.insert.shift.i.i.i, %.sroa.8.0.insert.shift.i.i.i
  %.sroa.6.0.insert.ext.i.i.i = shl nuw i32 %.sroa.6.0.in.i.i.i, 8
  %.sroa.6.0.insert.shift.i.i.i = and i32 %.sroa.6.0.insert.ext.i.i.i, 65280
  %.sroa.6.0.insert.insert.i.i.i = or disjoint i32 %.sroa.8.0.insert.insert.i.i.i, %.sroa.6.0.insert.shift.i.i.i
  %.sroa.02.0.insert.ext.i.i.i = and i32 %.sroa.02.0.in.i.i.i, 255
  %.sroa.02.0.insert.insert.i.i.i = or disjoint i32 %.sroa.6.0.insert.insert.i.i.i, %.sroa.02.0.insert.ext.i.i.i
  %i.ca = zext i32 %.sroa.02.0.insert.insert.i.i.i to i64
  br label %bb.x

bb.x:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit.i, %bb.r
  %storemerge.i = phi i64 [ %i.ca, %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit.i ], [ %i.bk, %bb.r ]
  store i64 %storemerge.i, ptr %5, align 8
  %i.cb = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_5GroupEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext %4)
  br i1 %4, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.l ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.cf, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = icmp ugt ptr %i.cf, %i.ci
  br i1 %i.cj, label %bb.z, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.z:                                             ; preds = %bb.y
  %i.ck = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull @.str.308)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @__cxa_throw(ptr nonnull %i.ck, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %bb.ad, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %i.cl, %bb.ab ], [ %.pn26, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

bb.ab:                                            ; preds = %bb.z
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ck) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %bb.y, %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit, %bb.n
  %.0 = phi i1 [ %i.cb, %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit ], [ false, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i1 %.0

bb.ad:                                            ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6Assimp7Blender9Structure12ReadFieldPtrILi0ESt10shared_ptrNS0_4MTexELm18EEEbRAT2__T0_IT1_EPKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca [18 x %"struct.Assimp::Blender::Pointer"], align 16 ; 24 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"struct.Assimp::Blender::Structure::_defaultInitializer.187", align 1 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %4, i8 0, i64 144, i1 false)
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %sext = shl i64 %i.j, 32
  %i.k = ashr exact i64 %sext, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.l, ptr %5, align 8
  %i.m = icmp eq ptr %2, null
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.307) #23
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.n, ptr %i.a, align 8
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc47 unwind label %bb.r   ; 2 uses

.noexc47:                                         ; preds = %.noexc.i
  store ptr %i.p, ptr %5, align 8
  %i.q = load i64, ptr %i.a, align 8
  store i64 %i.q, ptr %i.l, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc47, %bb.c
  %i.r = phi ptr [ %i.p, %.noexc47 ], [ %i.l, %bb.c ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %2, align 1
  store i8 %i.s, ptr %i.r, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %2, i64 %i.n, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.t = load i64, ptr %i.a, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.t, ptr %i.u, align 8
  %i.v = load ptr, ptr %5, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.x = invoke noundef nonnull align 8 dereferenceable(100) ptr @_ZNK6Assimp7Blender9StructureixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.s       ; 20 uses

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %5, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.l
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.aa = load i64, ptr %i.l, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ac = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.ae ; 2 uses
  store ptr %i.ah, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp ugt ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %.lr.ph64.preheader, label %.lr.ph

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull @.str.308)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc48 unwind label %bb.t

.noexc48:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.an) #22
  br label %.body

.preheader58:                                     ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %i.ap = icmp samesign ult i64 %.03762, 17
  br i1 %i.ap, label %.lr.ph64.preheader, label %.preheader

.lr.ph64.preheader:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %.preheader58
  %.037.lcssa76 = phi i64 [ %i.bl, %.preheader58 ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ]
  %i.aq = shl nuw nsw i64 %.037.lcssa76, 3        ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.aq
  %i.ar = sub nuw nsw i64 144, %i.aq
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.ar, i1 false)
  br label %.preheader

.lr.ph:                                           ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %.03762 = phi i64 [ %i.bl, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.03762
  %i.at = load i8, ptr %3, align 8, !range !9, !noundef !10
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = load ptr, ptr %i.b, align 8             ; 4 uses
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.aw = invoke noundef i64 @_ZN6Assimp12StreamReaderILb1ELb1EE3GetImEET_v(ptr noundef nonnull align 8 dereferenceable(49) %i.av)
          to label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit unwind label %.loopexit

bb.l:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp ugt ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.322)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc50 unwind label %.loopexit.split-lp

.noexc50:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %.body

bb.p:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.ay, align 1            ; 5 uses
  %.sroa.6.0.extract.shift.i.i.i = lshr i32 %i.bf, 8 ; 2 uses
  %.sroa.8.0.extract.shift.i.i.i = lshr i32 %i.bf, 16 ; 2 uses
  %.sroa.10.0.extract.shift.i.i.i = lshr i32 %i.bf, 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.bh = load i8, ptr %i.bg, align 8, !range !9, !noundef !10
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = and i32 %i.bf, 255
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit.i

_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit.i: ; preds = %bb.q, %bb.p
  %.sroa.8.0.i.i.i = phi i32 [ %.sroa.8.0.extract.shift.i.i.i, %bb.p ], [ %.sroa.6.0.extract.shift.i.i.i, %bb.q ]
  %.sroa.6.0.in.i.i.i = phi i32 [ %.sroa.6.0.extract.shift.i.i.i, %bb.p ], [ %.sroa.8.0.extract.shift.i.i.i, %bb.q ]
  %.sroa.02.0.in.i.i.i = phi i32 [ %i.bf, %bb.p ], [ %.sroa.10.0.extract.shift.i.i.i, %bb.q ]
  %.sroa.10.0.i.i.i = phi i32 [ %.sroa.10.0.extract.shift.i.i.i, %bb.p ], [ %i.bj, %bb.q ]
  store ptr %i.az, ptr %i.ax, align 8
  %.sroa.10.0.insert.shift.i.i.i = shl nuw i32 %.sroa.10.0.i.i.i, 24
  %.sroa.8.0.insert.ext.i.i.i = shl i32 %.sroa.8.0.i.i.i, 16
  %.sroa.8.0.insert.shift.i.i.i = and i32 %.sroa.8.0.insert.ext.i.i.i, 16711680
  %.sroa.8.0.insert.insert.i.i.i = or disjoint i32 %.sroa.10.0.insert.shift.i.i.i, %.sroa.8.0.insert.shift.i.i.i
  %.sroa.6.0.insert.ext.i.i.i = shl nuw i32 %.sroa.6.0.in.i.i.i, 8
  %.sroa.6.0.insert.shift.i.i.i = and i32 %.sroa.6.0.insert.ext.i.i.i, 65280
  %.sroa.6.0.insert.insert.i.i.i = or disjoint i32 %.sroa.8.0.insert.insert.i.i.i, %.sroa.6.0.insert.shift.i.i.i
  %.sroa.02.0.insert.ext.i.i.i = and i32 %.sroa.02.0.in.i.i.i, 255
  %.sroa.02.0.insert.insert.i.i.i = or disjoint i32 %.sroa.6.0.insert.insert.i.i.i, %.sroa.02.0.insert.ext.i.i.i
  %i.bk = zext i32 %.sroa.02.0.insert.insert.i.i.i to i64
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit.i, %bb.k
  %storemerge.i = phi i64 [ %i.bk, %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit.i ], [ %i.aw, %bb.k ]
  store i64 %storemerge.i, ptr %i.as, align 8
  %i.bl = add nuw nsw i64 %.03762, 1              ; 3 uses
  %i.bm = load i64, ptr %i.al, align 8
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bm, i64 18)
  %i.bn = icmp samesign ult i64 %i.bl, %.sroa.speculated
  br i1 %i.bn, label %.lr.ph, label %.preheader58, !llvm.loop !15

bb.r:                                             ; preds = %.noexc.i, %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.s:                                             ; preds = %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE  ; 2 uses
  %i.bq = load ptr, ptr %5, align 8               ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.l
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.s
  %i.bs = load i64, ptr %i.l, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.r ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.bp, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.body

bb.t:                                             ; preds = %bb.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

.preheader:                                       ; preds = %.lr.ph64.preheader, %.preheader58
  %i.bv = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cb = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ce = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ch = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ck = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cn = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cq = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ct = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.cw = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cz = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.dc = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.df = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.di = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.dl = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.do = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.dr = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.du = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.x, i1 noundef zeroext false)
  %i.dv = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.k ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store ptr %i.dy, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = icmp ugt ptr %i.dy, %i.eb
  br i1 %i.ec, label %bb.v, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.o, %bb.t, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.pn45 = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.bu, %bb.t ], [ %i.be, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  %.139 = extractvalue { ptr, i32 } %.pn45, 1
  %i.ed = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp7Blender5ErrorE) #22
  %i.ee = icmp eq i32 %.139, %i.ed
  br i1 %i.ee, label %bb.u, label %bb.z

bb.u:                                             ; preds = %.body
  %.141 = extractvalue { ptr, i32 } %.pn45, 0
  %i.ef = call ptr @__cxa_begin_catch(ptr %.141) #22 ; 2 uses
end_hunk_0
