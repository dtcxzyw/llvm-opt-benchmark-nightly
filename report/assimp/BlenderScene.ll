inline.NumInlined: 5803
inline.NumDeleted: 1917
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZNK6Assimp7Blender9Structure15ReadFieldArray2ILi1EfLm4ELm4EEEvRAT1__AT2__T0_PKcRKNS0_12FileDatabaseE:bb.a
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  store ptr %2, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.n, ptr %4, align 8
  %i.o = icmp eq ptr %2, null
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.307) #23
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.p, ptr %i.a, align 8
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc53 unwind label %bb.k   ; 2 uses

.noexc53:                                         ; preds = %.noexc.i
  store ptr %i.r, ptr %4, align 8
  %i.s = load i64, ptr %i.a, align 8
  store i64 %i.s, ptr %i.n, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc53, %bb.c
  %i.t = phi ptr [ %i.r, %.noexc53 ], [ %i.n, %bb.c ] ; 2 uses
  switch i64 %i.p, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.u = load i8, ptr %2, align 1
  store i8 %i.u, ptr %i.t, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %2, i64 %i.p, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.v = load i64, ptr %i.a, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.v, ptr %i.w, align 8
  %i.x = load ptr, ptr %4, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.z = invoke noundef nonnull align 8 dereferenceable(100) ptr @_ZNK6Assimp7Blender9StructureixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.g unwind label %bb.l       ; 5 uses

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %4, align 8               ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.n, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ag = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, 2
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ak = call ptr @__cxa_allocate_exception(i64 16) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 4, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 4, ptr %i.d, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA8_KcRPS1_RA17_S1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_S1_RmRA2_S1_SI_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 1 dereferenceable(8) @.str.323, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) @.str.324, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) @.str.325, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.326, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp7Blender5ErrorE, i64 16), ptr %i.ak, align 8
  invoke void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.ad unwind label %bb.n

bb.k:                                             ; preds = %.noexc.i, %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.l:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE  ; 2 uses
  %i.an = load ptr, ptr %4, align 8               ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.n
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.l
  %i.ap = load i64, ptr %i.n, align 8
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.k
  %.pn = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.am, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.m:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

bb.n:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.body

bb.o:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @__cxa_free_exception(ptr nonnull %i.ak) #22
  br label %.body

bb.p:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aw ; 2 uses
  store ptr %i.az, ptr %i.ax, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp ugt ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.q, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader: ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 80 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8
  %.not84 = icmp eq i64 %i.be, 0
  br i1 %.not84, label %.lr.ph83.preheader, label %.preheader72.lr.ph

.preheader72.lr.ph:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 88 ; 2 uses
  br label %.preheader72

bb.q:                                             ; preds = %bb.p
  %i.bg = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull @.str.308)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc58 unwind label %bb.m

.noexc58:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.bg) #22
  br label %.body

.preheader72:                                     ; preds = %.preheader72.lr.ph, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %indvar = phi i64 [ 0, %.preheader72.lr.ph ], [ %indvar.next, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit ] ; 4 uses
  %i.bi = load i64, ptr %i.bf, align 8
  %.not85 = icmp eq i64 %i.bi, 0
  br i1 %.not85, label %.lr.ph78, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader72
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvar
  br label %bb.t

.preheader:                                       ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %i.bk = trunc nuw nsw i64 %indvar.next to i32
  %i.bl = icmp samesign ult i64 %indvar, 3
  br i1 %i.bl, label %.lr.ph83.preheader, label %.loopexit

.lr.ph83.preheader:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %.preheader
  %.036.lcssa102 = phi i32 [ %i.bk, %.preheader ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 2 uses
  %i.bm = shl nuw nsw i32 %.036.lcssa102, 4
  %i.bn = zext nneg i32 %i.bm to i64
  %scevgep93 = getelementptr i8, ptr %1, i64 %i.bn
  %i.bo = shl nuw nsw i32 %.036.lcssa102, 4
  %narrow100 = sub nuw nsw i32 64, %i.bo
  %i.bp = zext nneg i32 %narrow100 to i64
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep93, i8 0, i64 %i.bp, i1 false)
  br label %.loopexit

.preheader71:                                     ; preds = %bb.u
  %i.bq = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.br = icmp samesign ult i64 %indvars.iv, 3
  br i1 %i.br, label %.lr.ph78, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit

.lr.ph78:                                         ; preds = %.preheader72, %.preheader71
  %.0.lcssa104 = phi i32 [ %i.bq, %.preheader71 ], [ 0, %.preheader72 ] ; 2 uses
  %5 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvar
  %i.bs = shl nuw nsw i32 %.0.lcssa104, 2
  %i.bt = zext nneg i32 %i.bs to i64
  %scevgep88 = getelementptr i8, ptr %5, i64 %i.bt
  %i.bu = shl nuw nsw i32 %.0.lcssa104, 2
  %narrow = sub nuw nsw i32 16, %i.bu
  %i.bv = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep88, i8 0, i64 %i.bv, i1 false)
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit

bb.t:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertIfEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.bw, ptr noundef nonnull align 8 dereferenceable(232) %3)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bx = load i64, ptr %i.bf, align 8
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bx, i64 4)
  %i.by = icmp samesign ugt i64 %.sroa.speculated, %indvars.iv.next
  br i1 %i.by, label %bb.t, label %.preheader71, !llvm.loop !5

bb.v:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %.lr.ph78, %.preheader71
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 3 uses
  %i.ca = load i64, ptr %i.bd, align 8
  %.sroa.speculated66 = call i64 @llvm.umin.i64(i64 %i.ca, i64 4)
  %i.cb = icmp samesign ugt i64 %.sroa.speculated66, %indvar.next
  br i1 %i.cb, label %.preheader72, label %.preheader, !llvm.loop !7

.body:                                            ; preds = %bb.n, %bb.m, %bb.s, %bb.v, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %.pn50.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.bz, %bb.v ], [ %i.as, %bb.n ], [ %i.at, %bb.o ], [ %i.ar, %bb.m ], [ %i.bh, %bb.s ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn50.pn, 1
  %i.cc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp7Blender5ErrorE) #22
  %i.cd = icmp eq i32 %.2, %i.cc
  br i1 %i.cd, label %bb.w, label %common.resume

bb.w:                                             ; preds = %.body
  %.243 = extractvalue { ptr, i32 } %.pn50.pn, 0
  %i.ce = call ptr @__cxa_begin_catch(ptr %.243) #22 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call noundef ptr %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #22
  %i.cj = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc60 unwind label %bb.ab

.noexc60:                                         ; preds = %bb.w
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.cj, ptr noundef %i.ci)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %.noexc60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph83.preheader, %.preheader, %bb.x
  %sext = shl i64 %i.m, 32
  %i.ck = ashr exact i64 %sext, 32
  %i.cl = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ck ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.co, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = icmp ugt ptr %i.co, %i.cr
  br i1 %i.cs, label %bb.y, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.y:                                             ; preds = %.loopexit
  %i.ct = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull @.str.308)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.ab, %bb.aa
  %common.resume.op = phi { ptr, i32 } [ %i.cu, %bb.aa ], [ %.pn50.pn, %.body ], [ %i.cy, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

bb.aa:                                            ; preds = %bb.y
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ct) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %.loopexit
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 8
  ret void

bb.ab:                                            ; preds = %.noexc60, %bb.w
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #25
  unreachable

bb.ad:                                            ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6Assimp7Blender9Structure14ReadFieldArrayILi1EcLm32EEEvRAT1__T0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  store ptr %2, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.m, ptr %4, align 8
  %i.n = icmp eq ptr %2, null
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.307) #23
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.o, ptr %i.a, align 8
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc40 unwind label %bb.k   ; 2 uses

.noexc40:                                         ; preds = %.noexc.i
  store ptr %i.q, ptr %4, align 8
  %i.r = load i64, ptr %i.a, align 8
  store i64 %i.r, ptr %i.m, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc40, %bb.c
  %i.s = phi ptr [ %i.q, %.noexc40 ], [ %i.m, %bb.c ] ; 2 uses
  switch i64 %i.o, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %2, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %2, i64 %i.o, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.u = load i64, ptr %i.a, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.u, ptr %i.v, align 8
  %i.w = load ptr, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.y = invoke noundef nonnull align 8 dereferenceable(100) ptr @_ZNK6Assimp7Blender9StructureixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.g unwind label %bb.l       ; 4 uses

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.m
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ab = load i64, ptr %i.m, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_0
