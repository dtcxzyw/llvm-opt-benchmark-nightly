Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/BlenderScene?download=true
inline.NumInlined: 5803
inline.NumDeleted: 1917
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZNK6Assimp7Blender9Structure15ReadFieldArray2ILi1EfLm4ELm4EEEvRAT1__AT2__T0_PKcRKNS0_12FileDatabaseE:bb.a
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
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, 2
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ak = call ptr @__cxa_allocate_exception(i64 16) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 4, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 4, ptr %i.d, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA8_KcRPS1_RA17_S1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_S1_RmRA2_S1_SI_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 1 dereferenceable(8) @.str.323, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) @.str.324, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) @.str.325, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.326, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp7Blender5ErrorE, i64 16), ptr %i.ak, align 8
  invoke void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.ab unwind label %bb.m

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

bb.m:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.body

bb.n:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @__cxa_free_exception(ptr nonnull %i.ak) #22
  br label %.body

bb.o:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.av ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp ugt ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.p, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader: ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.z, i64 80 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %.not85 = icmp eq i64 %i.bd, 0
  br i1 %.not85, label %.lr.ph84.preheader, label %.preheader72.lr.ph

.preheader72.lr.ph:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 88 ; 2 uses
  br label %.preheader72

bb.p:                                             ; preds = %bb.o
  %i.bf = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull @.str.308)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.bf) #22
  br label %.body

.preheader72:                                     ; preds = %.preheader72.lr.ph, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %indvars.iv93 = phi i64 [ 0, %.preheader72.lr.ph ], [ %indvars.iv.next94, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit ] ; 4 uses
  %i.bh = load i64, ptr %i.be, align 8
  %.not86 = icmp eq i64 %i.bh, 0
  br i1 %.not86, label %.lr.ph79, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader72
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv93
  br label %bb.s

.preheader:                                       ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %i.bj = trunc nuw nsw i64 %indvars.iv.next94 to i32
  %i.bk = icmp samesign ult i64 %indvars.iv93, 3
  br i1 %i.bk, label %.lr.ph84.preheader, label %.loopexit

.lr.ph84.preheader:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %.preheader
  %.036.lcssa105 = phi i32 [ %i.bj, %.preheader ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 2 uses
  %i.bl = shl nuw nsw i32 %.036.lcssa105, 4
  %i.bm = zext nneg i32 %i.bl to i64
  %scevgep96 = getelementptr i8, ptr %1, i64 %i.bm
  %i.bn = shl nuw nsw i32 %.036.lcssa105, 4
  %narrow103 = sub nuw nsw i32 64, %i.bn
  %i.bo = zext nneg i32 %narrow103 to i64
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep96, i8 0, i64 %i.bo, i1 false)
  br label %.loopexit

.preheader71:                                     ; preds = %bb.t
  %i.bp = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bq = icmp samesign ult i64 %indvars.iv, 3
  br i1 %i.bq, label %.lr.ph79, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit

.lr.ph79:                                         ; preds = %.preheader72, %.preheader71
  %.0.lcssa107 = phi i32 [ %i.bp, %.preheader71 ], [ 0, %.preheader72 ] ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv93
  %i.bs = shl nuw nsw i32 %.0.lcssa107, 2
  %i.bt = zext nneg i32 %i.bs to i64
  %scevgep = getelementptr i8, ptr %i.br, i64 %i.bt
  %i.bu = shl nuw nsw i32 %.0.lcssa107, 2
  %narrow = sub nuw nsw i32 16, %i.bu
  %i.bv = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.bv, i1 false)
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit

bb.s:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertIfEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.bw, ptr noundef nonnull align 8 dereferenceable(232) %3)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bx = load i64, ptr %i.be, align 8
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bx, i64 4)
  %i.by = icmp samesign ugt i64 %.sroa.speculated, %indvars.iv.next
  br i1 %i.by, label %bb.s, label %.preheader71, !llvm.loop !75

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit.split-lp110 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %.lr.ph79, %.preheader71
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 3 uses
  %i.bz = load i64, ptr %i.bc, align 8
  %.sroa.speculated66 = call i64 @llvm.umin.i64(i64 %i.bz, i64 4)
  %i.ca = icmp samesign ugt i64 %.sroa.speculated66, %indvars.iv.next94
  br i1 %i.ca, label %.preheader72, label %.preheader, !llvm.loop !76

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r, %bb.m, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %.pn50.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.as, %bb.n ], [ %i.ar, %bb.m ], [ %i.bg, %bb.r ], [ %lpad.loopexit.split-lp110, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn50.pn, 1
  %i.cb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp7Blender5ErrorE) #22
  %i.cc = icmp eq i32 %.2, %i.cb
  br i1 %i.cc, label %bb.u, label %common.resume

bb.u:                                             ; preds = %.body
  %.243 = extractvalue { ptr, i32 } %.pn50.pn, 0
  %i.cd = call ptr @__cxa_begin_catch(ptr %.243) #22 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call noundef ptr %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #22
  %i.ci = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc60 unwind label %bb.z

.noexc60:                                         ; preds = %bb.u
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ci, ptr noundef %i.ch)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %.noexc60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph84.preheader, %.preheader, %bb.v
  %i.cj = shl i64 %i.m, 32
  %i.ck = ashr exact i64 %i.cj, 32
  %i.cl = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ck ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.co, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = icmp ugt ptr %i.co, %i.cr
  br i1 %i.cs, label %bb.w, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.w:                                             ; preds = %.loopexit
  %i.ct = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull @.str.308)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.z, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cu, %bb.y ], [ %.pn50.pn, %.body ], [ %i.cy, %bb.z ]
  resume { ptr, i32 } %common.resume.op

bb.y:                                             ; preds = %bb.w
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

bb.z:                                             ; preds = %.noexc60, %bb.u
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #25
  unreachable

bb.ab:                                            ; preds = %bb.j
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

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.af = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 2
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 32, ptr %i.c, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA8_KcRPS1_RA17_S1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_S1_RmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(8) @.str.323, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) @.str.324, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) @.str.325, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp7Blender5ErrorE, i64 16), ptr %i.aj, align 8
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.z unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.l:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE  ; 2 uses
  %i.am = load ptr, ptr %4, align 8               ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.m
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.l
  %i.ao = load i64, ptr %i.m, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.al, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.m:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.body

bb.n:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @__cxa_free_exception(ptr nonnull %i.aj) #22
  br label %.body

bb.o:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au ; 2 uses
  store ptr %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader: ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %.not58 = icmp eq i64 %i.bc, 0
  br i1 %.not58, label %.lr.ph57.preheader, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %.body

.preheader:                                       ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %i.bf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bg = icmp samesign ult i64 %indvars.iv, 31
  br i1 %i.bg, label %.lr.ph57.preheader, label %.loopexit

.lr.ph57.preheader:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %.preheader
  %.0.lcssa68 = phi i32 [ %i.bf, %.preheader ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 2 uses
  %i.bh = zext nneg i32 %.0.lcssa68 to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.bh
  %narrow = sub nuw nsw i32 32, %.0.lcssa68
  %i.bi = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.bi, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertIcEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.af, ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(232) %3)
          to label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bk = load i64, ptr %i.bb, align 8
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bk, i64 32)
  %i.bl = icmp samesign ugt i64 %.sroa.speculated, %indvars.iv.next
  br i1 %i.bl, label %.lr.ph, label %.preheader, !llvm.loop !77

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit.split-lp70 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r, %bb.m, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn37.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.ar, %bb.n ], [ %i.aq, %bb.m ], [ %i.be, %bb.r ], [ %lpad.loopexit.split-lp70, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn37.pn, 1
  %i.bm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp7Blender5ErrorE) #22
  %i.bn = icmp eq i32 %.2, %i.bm
  br i1 %i.bn, label %bb.s, label %common.resume

bb.s:                                             ; preds = %.body
  %.232 = extractvalue { ptr, i32 } %.pn37.pn, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %.232) #22 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef ptr %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #22
  %i.bt = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc46 unwind label %bb.x

.noexc46:                                         ; preds = %bb.s
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bt, ptr noundef %i.bs)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %.noexc46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph57.preheader, %.preheader, %bb.t
  %i.bu = shl i64 %i.l, 32
  %i.bv = ashr exact i64 %i.bu, 32
  %i.bw = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bv ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp ugt ptr %i.bz, %i.cc
  br i1 %i.cd, label %bb.u, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.u:                                             ; preds = %.loopexit
  %i.ce = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.308)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.x, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.cf, %bb.w ], [ %.pn37.pn, %.body ], [ %i.cj, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %bb.u
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ce) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %.loopexit
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 8
  ret void

bb.x:                                             ; preds = %.noexc46, %bb.s
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #25
  unreachable

bb.z:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6Assimp7Blender9Structure12ReadFieldPtrILi1ESt10shared_ptrNS0_6ObjectEEEbRT0_IT1_EPKcRKNS0_12FileDatabaseEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"struct.Assimp::Blender::Pointer", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"struct.Assimp::Blender::Structure::_defaultInitializer.188", align 1 ; 4 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = shl i64 %i.k, 32
  %i.m = ashr exact i64 %i.l, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.n, ptr %6, align 8
  %i.o = icmp eq ptr %2, null
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.307) #23
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.p, ptr %i.a, align 8
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc29 unwind label %bb.j   ; 2 uses

.noexc29:                                         ; preds = %.noexc.i
  store ptr %i.r, ptr %6, align 8
  %i.s = load i64, ptr %i.a, align 8
  store i64 %i.s, ptr %i.n, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc29, %bb.c
  %i.t = phi ptr [ %i.r, %.noexc29 ], [ %i.n, %bb.c ] ; 2 uses
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
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.v, ptr %i.w, align 8
  %i.x = load ptr, ptr %6, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.z = invoke noundef nonnull align 8 dereferenceable(100) ptr @_ZNK6Assimp7Blender9StructureixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.k       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %6, align 8               ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.n, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = and i32 %i.af, 1
  %.not = icmp eq i32 %i.ag, 0
end_hunk_0
begin_hunk_1_@_ZNK6Assimp7Blender9Structure12ReadFieldPtrILi0ESt10shared_ptrNS0_3TexEEEbRT0_IT1_EPKcRKNS0_12FileDatabaseEb:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6Assimp7Blender9Structure14ReadFieldArrayILi0EcLm32EEEvRAT1__T0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
          to label %.noexc39 unwind label %bb.k   ; 2 uses

.noexc39:                                         ; preds = %.noexc.i
  store ptr %i.q, ptr %4, align 8
  %i.r = load i64, ptr %i.a, align 8
  store i64 %i.r, ptr %i.m, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc39, %bb.c
  %i.s = phi ptr [ %i.q, %.noexc39 ], [ %i.m, %bb.c ] ; 2 uses
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

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.af = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 2
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 32, ptr %i.c, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA8_KcRPS1_RA17_S1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_S1_RmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(8) @.str.323, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) @.str.324, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) @.str.325, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp7Blender5ErrorE, i64 16), ptr %i.aj, align 8
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.w unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.l:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE  ; 2 uses
  %i.am = load ptr, ptr %4, align 8               ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.m
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.l
  %i.ao = load i64, ptr %i.m, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.al, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.m:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.body

bb.n:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @__cxa_free_exception(ptr nonnull %i.aj) #22
  br label %.body

bb.o:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au ; 2 uses
  store ptr %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader: ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %.not55 = icmp eq i64 %i.bc, 0
  br i1 %.not55, label %.lr.ph54.preheader, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %.body

.preheader:                                       ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %i.bf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bg = icmp samesign ult i64 %indvars.iv, 31
  br i1 %i.bg, label %.lr.ph54.preheader, label %.loopexit

.lr.ph54.preheader:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %.preheader
  %.0.lcssa65 = phi i32 [ %i.bf, %.preheader ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 2 uses
  %i.bh = zext nneg i32 %.0.lcssa65 to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.bh
  %narrow = sub nuw nsw i32 32, %.0.lcssa65
  %i.bi = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.bi, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertIcEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.af, ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(232) %3)
          to label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bk = load i64, ptr %i.bb, align 8
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bk, i64 32)
  %i.bl = icmp samesign ugt i64 %.sroa.speculated, %indvars.iv.next
  br i1 %i.bl, label %.lr.ph, label %.preheader, !llvm.loop !78

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r, %bb.m, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %.pn36.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.ar, %bb.n ], [ %i.aq, %bb.m ], [ %i.be, %bb.r ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn36.pn, 1
  %i.bm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp7Blender5ErrorE) #22
  %i.bn = icmp eq i32 %.2, %i.bm
  br i1 %i.bn, label %bb.s, label %common.resume

bb.s:                                             ; preds = %.body
  %.232 = extractvalue { ptr, i32 } %.pn36.pn, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %.232) #22 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef ptr %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #22 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph54.preheader, %.preheader, %bb.s
  %i.bt = shl i64 %i.l, 32
  %i.bu = ashr exact i64 %i.bt, 32
  %i.bv = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %i.by, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = icmp ugt ptr %i.by, %i.cb
  br i1 %i.cc, label %bb.t, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.t:                                             ; preds = %.loopexit
  %i.cd = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull @.str.308)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.ce, %bb.v ], [ %.pn36.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cd) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %.loopexit
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 8
  ret void

bb.w:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6Assimp7Blender9Structure9ReadFieldILi0EcEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.k, ptr %4, align 8
  %i.l = icmp eq ptr %2, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.307) #23
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.m, ptr %i.a, align 8
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc23 unwind label %bb.l   ; 2 uses

.noexc23:                                         ; preds = %.noexc.i
  store ptr %i.o, ptr %4, align 8
  %i.p = load i64, ptr %i.a, align 8
  store i64 %i.p, ptr %i.k, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc23, %bb.c
  %i.q = phi ptr [ %i.o, %.noexc23 ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.m, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %2, align 1
  store i8 %i.r, ptr %i.q, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %2, i64 %i.m, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = load ptr, ptr %4, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.w = invoke noundef nonnull align 8 dereferenceable(100) ptr @_ZNK6Assimp7Blender9StructureixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.g unwind label %bb.m       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %4, align 8                ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.k
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.z = load i64, ptr %i.k, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ad = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.ag ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp ugt ptr %i.aj, %i.al
  br i1 %i.am, label %bb.i, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit

bb.i:                                             ; preds = %bb.h
  %i.an = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull @.str.308)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc24 unwind label %bb.n

.noexc24:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZNK6Assimp7Blender9Structure14ReadFieldArrayILi0EfLm3EEEvRAT1__T0_PKcRKNS0_12FileDatabaseE:bb.a
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
          to label %.noexc39 unwind label %bb.k   ; 2 uses

.noexc39:                                         ; preds = %.noexc.i
  store ptr %i.q, ptr %4, align 8
  %i.r = load i64, ptr %i.a, align 8
  store i64 %i.r, ptr %i.m, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc39, %bb.c
  %i.s = phi ptr [ %i.q, %.noexc39 ], [ %i.m, %bb.c ] ; 2 uses
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

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.af = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 2
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 3, ptr %i.c, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA8_KcRPS1_RA17_S1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_S1_RmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(8) @.str.323, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) @.str.324, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) @.str.325, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp7Blender5ErrorE, i64 16), ptr %i.aj, align 8
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.w unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.l:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE  ; 2 uses
  %i.am = load ptr, ptr %4, align 8               ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.m
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.l
  %i.ao = load i64, ptr %i.m, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.al, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.m:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.body

bb.n:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @__cxa_free_exception(ptr nonnull %i.aj) #22
  br label %.body

bb.o:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au ; 2 uses
  store ptr %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader: ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %.not55 = icmp eq i64 %i.bc, 0
  br i1 %.not55, label %.lr.ph54.preheader, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %.body

.preheader:                                       ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %i.bf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bg = icmp samesign ult i64 %indvars.iv, 2
  br i1 %i.bg, label %.lr.ph54.preheader, label %.loopexit

.lr.ph54.preheader:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %.preheader
  %.0.lcssa65 = phi i32 [ %i.bf, %.preheader ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 2 uses
  %i.bh = shl nuw nsw i32 %.0.lcssa65, 2
  %i.bi = zext nneg i32 %i.bh to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.bi
  %i.bj = shl nuw nsw i32 %.0.lcssa65, 2
  %narrow = sub nsw i32 12, %i.bj
  %i.bk = zext i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bk, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertIfEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.af, ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 8 dereferenceable(232) %3)
          to label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bm = load i64, ptr %i.bb, align 8
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bm, i64 3)
  %i.bn = icmp samesign ugt i64 %.sroa.speculated, %indvars.iv.next
  br i1 %i.bn, label %.lr.ph, label %.preheader, !llvm.loop !79

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r, %bb.m, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %.pn36.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.ar, %bb.n ], [ %i.aq, %bb.m ], [ %i.be, %bb.r ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn36.pn, 1
  %i.bo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp7Blender5ErrorE) #22
  %i.bp = icmp eq i32 %.2, %i.bo
  br i1 %i.bp, label %bb.s, label %common.resume

bb.s:                                             ; preds = %.body
  %.232 = extractvalue { ptr, i32 } %.pn36.pn, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %.232) #22 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #22 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, i8 0, i64 12, i1 false)
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph54.preheader, %.preheader, %bb.s
  %i.bv = shl i64 %i.l, 32
  %i.bw = ashr exact i64 %i.bv, 32
  %i.bx = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bw ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = icmp ugt ptr %i.ca, %i.cd
  br i1 %i.ce, label %bb.t, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.t:                                             ; preds = %.loopexit
  %i.cf = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull @.str.308)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.v ], [ %.pn36.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %bb.t
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cf) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %.loopexit
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 8
  ret void

bb.w:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6Assimp7Blender9Structure9ReadFieldILi0EfEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.k, ptr %4, align 8
  %i.l = icmp eq ptr %2, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.307) #23
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.m, ptr %i.a, align 8
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc23 unwind label %bb.l   ; 2 uses

.noexc23:                                         ; preds = %.noexc.i
  store ptr %i.o, ptr %4, align 8
  %i.p = load i64, ptr %i.a, align 8
  store i64 %i.p, ptr %i.k, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc23, %bb.c
  %i.q = phi ptr [ %i.o, %.noexc23 ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.m, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %2, align 1
  store i8 %i.r, ptr %i.q, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %2, i64 %i.m, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = load ptr, ptr %4, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.w = invoke noundef nonnull align 8 dereferenceable(100) ptr @_ZNK6Assimp7Blender9StructureixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.g unwind label %bb.m       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %4, align 8                ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.k
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.z = load i64, ptr %i.k, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ad = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.ag ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp ugt ptr %i.aj, %i.al
  br i1 %i.am, label %bb.i, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit

bb.i:                                             ; preds = %bb.h
  %i.an = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull @.str.308)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc24 unwind label %bb.n

.noexc24:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_ZNK6Assimp7Blender9Structure15ReadFieldArray2ILi2EfLm4ELm2EEEvRAT1__AT2__T0_PKcRKNS0_12FileDatabaseE:bb.a
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
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 2 uses

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, 2
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ak = call ptr @__cxa_allocate_exception(i64 16) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 4, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 2, ptr %i.d, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA8_KcRPS1_RA17_S1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_S1_RmRA2_S1_SI_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 1 dereferenceable(8) @.str.323, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) @.str.324, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) @.str.325, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.326, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp7Blender5ErrorE, i64 16), ptr %i.ak, align 8
  invoke void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.aa unwind label %bb.m

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

bb.m:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.body

bb.n:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @__cxa_free_exception(ptr nonnull %i.ak) #22
  br label %.body

bb.o:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.av ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp ugt ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.p, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader: ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.z, i64 80 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %.not82 = icmp eq i64 %i.bd, 0
  br i1 %.not82, label %.lr.ph81.preheader, label %.preheader69.lr.ph

.preheader69.lr.ph:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 88 ; 2 uses
  br label %.preheader69

bb.p:                                             ; preds = %bb.o
  %i.bf = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull @.str.308)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc58:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.bf) #22
  br label %.body

.preheader69:                                     ; preds = %.preheader69.lr.ph, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %indvars.iv90 = phi i64 [ 0, %.preheader69.lr.ph ], [ %indvars.iv.next91, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit ] ; 4 uses
  %i.bh = load i64, ptr %i.be, align 8
  %.not83 = icmp eq i64 %i.bh, 0                  ; 2 uses
  br i1 %.not83, label %.lr.ph76, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader69
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv90 ; 2 uses
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertIfEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.bi, ptr noundef nonnull align 8 dereferenceable(232) %3)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.s:                                             ; preds = %.lr.ph
  %i.bj = load i64, ptr %i.be, align 8
  %i.bk = icmp ult i64 %i.bj, 2                   ; 2 uses
  br i1 %i.bk, label %.lr.ph76, label %.lr.ph.peel.newph

.lr.ph.peel.newph:                                ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertIfEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 8 dereferenceable(232) %3)
          to label %.preheader68.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.preheader:                                       ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %i.bm = trunc nuw nsw i64 %indvars.iv.next91 to i32
  %i.bn = icmp samesign ult i64 %indvars.iv90, 3
  br i1 %i.bn, label %.lr.ph81.preheader, label %.loopexit

.lr.ph81.preheader:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %.preheader
  %.036.lcssa100 = phi i32 [ %i.bm, %.preheader ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 2 uses
  %i.bo = shl nuw nsw i32 %.036.lcssa100, 3
  %i.bp = zext nneg i32 %i.bo to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.bp
  %i.bq = shl nuw nsw i32 %.036.lcssa100, 3
  %narrow = sub nuw nsw i32 32, %i.bq
  %i.br = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.br, i1 false)
  br label %.loopexit

.lr.ph76:                                         ; preds = %bb.s, %.preheader69, %.preheader68.loopexit
  %.0.lcssa102 = phi i64 [ 1, %.preheader68.loopexit ], [ 0, %.preheader69 ], [ 1, %bb.s ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv90 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.0.lcssa102
  store float 0.000000e+00, ptr %i.bt, align 4
  br i1 %.not83, label %.lr.ph76.peel.newph, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit

.lr.ph76.peel.newph:                              ; preds = %.lr.ph76
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store float 0.000000e+00, ptr %i.bu, align 4
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit

.preheader68.loopexit:                            ; preds = %.lr.ph.peel.newph
  br i1 %i.bk, label %.lr.ph76, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.q, %.lr.ph.peel.newph, %.lr.ph
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %.lr.ph76, %.lr.ph76.peel.newph, %.preheader68.loopexit
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 3 uses
  %i.bv = load i64, ptr %i.bc, align 8
  %.sroa.speculated63 = call i64 @llvm.umin.i64(i64 %i.bv, i64 4)
  %i.bw = icmp samesign ugt i64 %.sroa.speculated63, %indvars.iv.next91
  br i1 %i.bw, label %.preheader69, label %.preheader, !llvm.loop !80

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %bb.r, %bb.m, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %.pn50.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.as, %bb.n ], [ %i.ar, %bb.m ], [ %i.bg, %bb.r ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn50.pn, 1
  %i.bx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp7Blender5ErrorE) #22
  %i.by = icmp eq i32 %.2, %i.bx
  br i1 %i.by, label %bb.t, label %common.resume

bb.t:                                             ; preds = %.body
  %.243 = extractvalue { ptr, i32 } %.pn50.pn, 0
  %i.bz = call ptr @__cxa_begin_catch(ptr %.243) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call noundef ptr %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #22
  invoke void @_ZN6Assimp7Blender9Structure19_defaultInitializerILi2EEclIA4_A2_fEEvRT_PKc(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef %i.cd)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph81.preheader, %.preheader, %bb.u
  %i.ce = shl i64 %i.m, 32
  %i.cf = ashr exact i64 %i.ce, 32
  %i.cg = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cf ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr %i.cj, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = icmp ugt ptr %i.cj, %i.cm
  br i1 %i.cn, label %bb.v, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.v:                                             ; preds = %.loopexit
  %i.co = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull @.str.308)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.y, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.cp, %bb.x ], [ %.pn50.pn, %.body ], [ %i.ct, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %bb.v
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.co) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %.loopexit
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 8
  ret void

bb.y:                                             ; preds = %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #25
  unreachable

bb.aa:                                            ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6Assimp7Blender9Structure14ReadFieldArrayILi2EiLm4EEEvRAT1__T0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.Assimp::Blender::Structure::_defaultInitializer", align 1 ; 4 uses
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

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.af = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 2
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 4, ptr %i.c, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA8_KcRPS1_RA17_S1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_S1_RmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(8) @.str.323, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) @.str.324, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) @.str.325, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp7Blender5ErrorE, i64 16), ptr %i.aj, align 8
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.z unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.l:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE  ; 2 uses
  %i.am = load ptr, ptr %4, align 8               ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.m
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.l
  %i.ao = load i64, ptr %i.m, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.al, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.m:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.body

bb.n:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @__cxa_free_exception(ptr nonnull %i.aj) #22
  br label %.body

bb.o:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au ; 2 uses
  store ptr %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader: ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %.not56 = icmp eq i64 %i.bc, 0
  br i1 %.not56, label %.lr.ph55.preheader, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %.body

.preheader:                                       ; preds = %_ZNK6Assimp7Blender9Structure7ConvertIiEEvRT_RKNS0_12FileDatabaseE.exit
  %i.bf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bg = icmp samesign ult i64 %indvars.iv, 3
  br i1 %i.bg, label %.lr.ph55.preheader, label %.loopexit

.lr.ph55.preheader:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %.preheader
  %.0.lcssa66 = phi i32 [ %i.bf, %.preheader ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 2 uses
  %i.bh = shl nuw nsw i32 %.0.lcssa66, 2
  %i.bi = zext nneg i32 %i.bh to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.bi
  %i.bj = shl nuw nsw i32 %.0.lcssa66, 2
  %narrow = sub nuw nsw i32 16, %i.bj
  %i.bk = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.bk, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %_ZNK6Assimp7Blender9Structure7ConvertIiEEvRT_RKNS0_12FileDatabaseE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK6Assimp7Blender9Structure7ConvertIiEEvRT_RKNS0_12FileDatabaseE.exit ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  invoke void @_ZN6Assimp7Blender17ConvertDispatcherIiEEvRT_RKNS0_9StructureERKNS0_12FileDatabaseE(ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 8 dereferenceable(120) %i.af, ptr noundef nonnull align 8 dereferenceable(232) %3)
          to label %_ZNK6Assimp7Blender9Structure7ConvertIiEEvRT_RKNS0_12FileDatabaseE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6Assimp7Blender9Structure7ConvertIiEEvRT_RKNS0_12FileDatabaseE.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bm = load i64, ptr %i.bb, align 8
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bm, i64 4)
  %i.bn = icmp samesign ugt i64 %.sroa.speculated, %indvars.iv.next
  br i1 %i.bn, label %.lr.ph, label %.preheader, !llvm.loop !81

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit.split-lp68 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r, %bb.m, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn37.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.ar, %bb.n ], [ %i.aq, %bb.m ], [ %i.be, %bb.r ], [ %lpad.loopexit.split-lp68, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn37.pn, 1
  %i.bo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp7Blender5ErrorE) #22
  %i.bp = icmp eq i32 %.2, %i.bo
  br i1 %i.bp, label %bb.s, label %common.resume

bb.s:                                             ; preds = %.body
  %.232 = extractvalue { ptr, i32 } %.pn37.pn, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %.232) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #22
  invoke void @_ZN6Assimp7Blender9Structure19_defaultInitializerILi2EEclIA4_iEEvRT_PKc(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %i.bu)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph55.preheader, %.preheader, %bb.t
  %i.bv = shl i64 %i.l, 32
  %i.bw = ashr exact i64 %i.bv, 32
  %i.bx = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bw ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = icmp ugt ptr %i.ca, %i.cd
  br i1 %i.ce, label %bb.u, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.u:                                             ; preds = %.loopexit
  %i.cf = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull @.str.308)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.x, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.w ], [ %.pn37.pn, %.body ], [ %i.ck, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cf) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %.loopexit
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 8
  ret void

bb.x:                                             ; preds = %bb.s
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #25
  unreachable

bb.z:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp7Blender9Structure7ConvertINS0_19SubsurfModifierDataEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZNK6Assimp7Blender9Structure9ReadFieldILi2ENS0_12ModifierDataEEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @_ZNK6Assimp7Blender9Structure9ReadFieldILi1EsEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 2 dereferenceable(2) %i.b, ptr noundef nonnull @.str.56, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 106
  tail call void @_ZNK6Assimp7Blender9Structure9ReadFieldILi2EsEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 2 dereferenceable(2) %i.c, ptr noundef nonnull @.str.57, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 108
  tail call void @_ZNK6Assimp7Blender9Structure9ReadFieldILi0EsEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 2 dereferenceable(2) %i.d, ptr noundef nonnull @.str.58, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 110
  tail call void @_ZNK6Assimp7Blender9Structure9ReadFieldILi0EsEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 2 dereferenceable(2) %i.e, ptr noundef nonnull @.str.59, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.i ; 2 uses
  store ptr %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp ugt ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit

bb.b:                                             ; preds = %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.308)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #22
  resume { ptr, i32 } %i.q

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6Assimp7Blender9Structure9ReadFieldILi2ENS0_12ModifierDataEEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"struct.Assimp::Blender::Structure::_defaultInitializer", align 1 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.k, ptr %4, align 8
  %i.l = icmp eq ptr %2, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.307) #23
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.m, ptr %i.a, align 8
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc24 unwind label %bb.l   ; 2 uses

.noexc24:                                         ; preds = %.noexc.i
  store ptr %i.o, ptr %4, align 8
  %i.p = load i64, ptr %i.a, align 8
  store i64 %i.p, ptr %i.k, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc24, %bb.c
  %i.q = phi ptr [ %i.o, %.noexc24 ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.m, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
end_hunk_3
begin_hunk_4_@_ZNK6Assimp7Blender9Structure12ReadFieldPtrILi0ESt10shared_ptrNS0_5GroupEEEbRT0_IT1_EPKcRKNS0_12FileDatabaseEb:bb.a
  %.sroa.8.0.i.i.i = phi i32 [ %.sroa.8.0.extract.shift.i.i.i, %bb.v ], [ %.sroa.6.0.extract.shift.i.i.i, %bb.w ]
  %.sroa.6.0.in.i.i.i = phi i32 [ %.sroa.6.0.extract.shift.i.i.i, %bb.v ], [ %.sroa.8.0.extract.shift.i.i.i, %bb.w ]
  %.sroa.02.0.in.i.i.i = phi i32 [ %i.bw, %bb.v ], [ %.sroa.10.0.extract.shift.i.i.i, %bb.w ]
  %.sroa.10.0.i.i.i = phi i32 [ %.sroa.10.0.extract.shift.i.i.i, %bb.v ], [ %i.ca, %bb.w ]
  store ptr %i.bo, ptr %i.bm, align 8
  %.sroa.10.0.insert.shift.i.i.i = shl nuw i32 %.sroa.10.0.i.i.i, 24
  %.sroa.8.0.insert.ext.i.i.i = shl i32 %.sroa.8.0.i.i.i, 16
  %.sroa.8.0.insert.shift.i.i.i = and i32 %.sroa.8.0.insert.ext.i.i.i, 16711680
  %.sroa.8.0.insert.insert.i.i.i = or disjoint i32 %.sroa.10.0.insert.shift.i.i.i, %.sroa.8.0.insert.shift.i.i.i
  %.sroa.6.0.insert.ext.i.i.i = shl nuw i32 %.sroa.6.0.in.i.i.i, 8
  %.sroa.6.0.insert.shift.i.i.i = and i32 %.sroa.6.0.insert.ext.i.i.i, 65280
  %.sroa.6.0.insert.insert.i.i.i = or disjoint i32 %.sroa.8.0.insert.insert.i.i.i, %.sroa.6.0.insert.shift.i.i.i
  %.sroa.02.0.insert.ext.i.i.i = and i32 %.sroa.02.0.in.i.i.i, 255
  %.sroa.02.0.insert.insert.i.i.i = or disjoint i32 %.sroa.6.0.insert.insert.i.i.i, %.sroa.02.0.insert.ext.i.i.i
  %i.cb = zext i32 %.sroa.02.0.insert.insert.i.i.i to i64
  br label %bb.x

bb.x:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit.i, %bb.r
  %storemerge.i = phi i64 [ %i.cb, %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit.i ], [ %i.bl, %bb.r ]
  store i64 %storemerge.i, ptr %5, align 8
  %i.cc = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_5GroupEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.z, i1 noundef zeroext %4)
  br i1 %4, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.m ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr %i.cg, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = icmp ugt ptr %i.cg, %i.cj
  br i1 %i.ck, label %bb.z, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.z:                                             ; preds = %bb.y
  %i.cl = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull @.str.308)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %bb.ad, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %i.cm, %bb.ab ], [ %.pn26, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

bb.ab:                                            ; preds = %bb.z
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cl) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %bb.y, %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit, %bb.n
  %.0 = phi i1 [ %i.cc, %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit ], [ false, %bb.n ]
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
  %i.k = shl i64 %i.j, 32
  %i.l = ashr exact i64 %i.k, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.m, ptr %5, align 8
  %i.n = icmp eq ptr %2, null
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.307) #23
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.o, ptr %i.a, align 8
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc47 unwind label %bb.p   ; 2 uses

.noexc47:                                         ; preds = %.noexc.i
  store ptr %i.q, ptr %5, align 8
  %i.r = load i64, ptr %i.a, align 8
  store i64 %i.r, ptr %i.m, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc47, %bb.c
  %i.s = phi ptr [ %i.q, %.noexc47 ], [ %i.m, %bb.c ] ; 2 uses
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
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.u, ptr %i.v, align 8
  %i.w = load ptr, ptr %5, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.y = invoke noundef nonnull align 8 dereferenceable(100) ptr @_ZNK6Assimp7Blender9StructureixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.q       ; 20 uses

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %5, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.m
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ab = load i64, ptr %i.m, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ad = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.af ; 2 uses
  store ptr %i.ai, ptr %i.ag, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp ugt ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.h, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %.lr.ph64.preheader, label %.lr.ph

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull @.str.308)
          to label %.invoke unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.ao) #22
  br label %.body

.preheader58:                                     ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %i.aq = icmp samesign ult i64 %.03762, 17
  br i1 %i.aq, label %.lr.ph64.preheader, label %.preheader

.lr.ph64.preheader:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %.preheader58
  %.037.lcssa77 = phi i64 [ %i.bn, %.preheader58 ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ]
  %i.ar = shl nuw nsw i64 %.037.lcssa77, 3        ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.ar
  %i.as = sub nuw nsw i64 144, %i.ar
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.as, i1 false)
  br label %.preheader

.lr.ph:                                           ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %.03762 = phi i64 [ %i.bn, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.03762
  %i.au = load i8, ptr %3, align 8, !range !70, !noundef !71
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = load ptr, ptr %i.b, align 8             ; 4 uses
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.ax = invoke noundef i64 @_ZN6Assimp12StreamReaderILb1ELb1EE3GetImEET_v(ptr noundef nonnull align 8 dereferenceable(49) %i.aw)
          to label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp ugt ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.be = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull @.str.322)
          to label %.invoke unwind label %bb.m

.invoke:                                          ; preds = %bb.l, %bb.h
  %i.bf = phi ptr [ %i.ao, %bb.h ], [ %i.be, %bb.l ]
  invoke void @__cxa_throw(ptr nonnull %i.bf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.be) #22
  br label %.body

bb.n:                                             ; preds = %bb.k
  %i.bh = load i32, ptr %i.az, align 1            ; 5 uses
  %.sroa.6.0.extract.shift.i.i.i = lshr i32 %i.bh, 8 ; 2 uses
  %.sroa.8.0.extract.shift.i.i.i = lshr i32 %i.bh, 16 ; 2 uses
  %.sroa.10.0.extract.shift.i.i.i = lshr i32 %i.bh, 24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.bj = load i8, ptr %i.bi, align 8, !range !70, !noundef !71
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = and i32 %i.bh, 255
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit.i

_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit.i: ; preds = %bb.o, %bb.n
  %.sroa.8.0.i.i.i = phi i32 [ %.sroa.8.0.extract.shift.i.i.i, %bb.n ], [ %.sroa.6.0.extract.shift.i.i.i, %bb.o ]
  %.sroa.6.0.in.i.i.i = phi i32 [ %.sroa.6.0.extract.shift.i.i.i, %bb.n ], [ %.sroa.8.0.extract.shift.i.i.i, %bb.o ]
  %.sroa.02.0.in.i.i.i = phi i32 [ %i.bh, %bb.n ], [ %.sroa.10.0.extract.shift.i.i.i, %bb.o ]
  %.sroa.10.0.i.i.i = phi i32 [ %.sroa.10.0.extract.shift.i.i.i, %bb.n ], [ %i.bl, %bb.o ]
  store ptr %i.ba, ptr %i.ay, align 8
  %.sroa.10.0.insert.shift.i.i.i = shl nuw i32 %.sroa.10.0.i.i.i, 24
  %.sroa.8.0.insert.ext.i.i.i = shl i32 %.sroa.8.0.i.i.i, 16
  %.sroa.8.0.insert.shift.i.i.i = and i32 %.sroa.8.0.insert.ext.i.i.i, 16711680
  %.sroa.8.0.insert.insert.i.i.i = or disjoint i32 %.sroa.10.0.insert.shift.i.i.i, %.sroa.8.0.insert.shift.i.i.i
  %.sroa.6.0.insert.ext.i.i.i = shl nuw i32 %.sroa.6.0.in.i.i.i, 8
  %.sroa.6.0.insert.shift.i.i.i = and i32 %.sroa.6.0.insert.ext.i.i.i, 65280
  %.sroa.6.0.insert.insert.i.i.i = or disjoint i32 %.sroa.8.0.insert.insert.i.i.i, %.sroa.6.0.insert.shift.i.i.i
  %.sroa.02.0.insert.ext.i.i.i = and i32 %.sroa.02.0.in.i.i.i, 255
  %.sroa.02.0.insert.insert.i.i.i = or disjoint i32 %.sroa.6.0.insert.insert.i.i.i, %.sroa.02.0.insert.ext.i.i.i
  %i.bm = zext i32 %.sroa.02.0.insert.insert.i.i.i to i64
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit.i, %bb.j
  %storemerge.i = phi i64 [ %i.bm, %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit.i ], [ %i.ax, %bb.j ]
  store i64 %storemerge.i, ptr %i.at, align 8
  %i.bn = add nuw nsw i64 %.03762, 1              ; 3 uses
  %i.bo = load i64, ptr %i.am, align 8
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bo, i64 18)
  %i.bp = icmp samesign ult i64 %i.bn, %.sroa.speculated
  br i1 %i.bp, label %.lr.ph, label %.preheader58, !llvm.loop !82

bb.p:                                             ; preds = %.noexc.i, %bb.b
  %i.bq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.q:                                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE  ; 2 uses
  %i.bs = load ptr, ptr %5, align 8               ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.m
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.q
  %i.bu = load i64, ptr %i.m, align 8
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.p ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.br, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %.invoke
  %lpad.loopexit.split-lp80 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

.preheader:                                       ; preds = %.lr.ph64.preheader, %.preheader58
  %i.bw = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bz = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cc = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cf = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ci = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cl = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.co = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cr = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.cu = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.cx = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.da = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.dd = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.dg = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.dj = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.dm = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.dp = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ds = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.dv = call noundef zeroext i1 @_ZNK6Assimp7Blender9Structure14ResolvePointerISt10shared_ptrNS0_4MTexEEEbRT_IT0_ERKNS0_7PointerERKNS0_12FileDatabaseERKNS0_5FieldEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef nonnull align 8 dereferenceable(232) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.y, i1 noundef zeroext false)
  %i.dw = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.l ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store ptr %i.dz, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = icmp ugt ptr %i.dz, %i.ec
  br i1 %i.ed, label %bb.s, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.pn45 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.ap, %bb.i ], [ %i.bg, %bb.m ], [ %lpad.loopexit.split-lp80, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.139 = extractvalue { ptr, i32 } %.pn45, 1
  %i.ee = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp7Blender5ErrorE) #22
  %i.ef = icmp eq i32 %.139, %i.ee
  br i1 %i.ef, label %bb.r, label %bb.w

bb.r:                                             ; preds = %.body
  %.141 = extractvalue { ptr, i32 } %.pn45, 0
  %i.eg = call ptr @__cxa_begin_catch(ptr %.141) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call noundef ptr %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #22
  call void @_ZN6Assimp7Blender9Structure19_defaultInitializerILi0EEclISt10shared_ptrINS0_4MTexEELj18EEEvRAT0__T_PKc(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef %i.ek)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EE5resetEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #22
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZNSt12__shared_ptrIN6Assimp7Blender4MTexELN9__gnu_cxx12_Lock_policyE2EE5resetEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #22
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_4
begin_hunk_5_@_ZNK6Assimp7Blender9Structure14ReadFieldArrayILi2EfLm3EEEvRAT1__T0_PKcRKNS0_12FileDatabaseE:bb.a
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.Assimp::Blender::Structure::_defaultInitializer", align 1 ; 4 uses
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

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.af = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 2
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 3, ptr %i.c, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA8_KcRPS1_RA17_S1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_S1_RmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(8) @.str.323, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) @.str.324, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) @.str.325, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp7Blender5ErrorE, i64 16), ptr %i.aj, align 8
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.z unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.l:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE  ; 2 uses
  %i.am = load ptr, ptr %4, align 8               ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.m
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.l
  %i.ao = load i64, ptr %i.m, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.al, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.m:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.body

bb.n:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @__cxa_free_exception(ptr nonnull %i.aj) #22
  br label %.body

bb.o:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au ; 2 uses
  store ptr %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader: ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %.not55 = icmp eq i64 %i.bc, 0
  br i1 %.not55, label %.lr.ph54.preheader, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %.body

.preheader:                                       ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %i.bf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bg = icmp samesign ult i64 %indvars.iv, 2
  br i1 %i.bg, label %.lr.ph54.preheader, label %.loopexit

.lr.ph54.preheader:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %.preheader
  %.0.lcssa65 = phi i32 [ %i.bf, %.preheader ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 2 uses
  %i.bh = shl nuw nsw i32 %.0.lcssa65, 2
  %i.bi = zext nneg i32 %i.bh to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.bi
  %i.bj = shl nuw nsw i32 %.0.lcssa65, 2
  %narrow = sub nsw i32 12, %i.bj
  %i.bk = zext i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bk, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertIfEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.af, ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 8 dereferenceable(232) %3)
          to label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bm = load i64, ptr %i.bb, align 8
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bm, i64 3)
  %i.bn = icmp samesign ugt i64 %.sroa.speculated, %indvars.iv.next
  br i1 %i.bn, label %.lr.ph, label %.preheader, !llvm.loop !83

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r, %bb.m, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn37.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.ar, %bb.n ], [ %i.aq, %bb.m ], [ %i.be, %bb.r ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn37.pn, 1
  %i.bo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp7Blender5ErrorE) #22
  %i.bp = icmp eq i32 %.2, %i.bo
  br i1 %i.bp, label %bb.s, label %common.resume

bb.s:                                             ; preds = %.body
  %.232 = extractvalue { ptr, i32 } %.pn37.pn, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %.232) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #22
  invoke void @_ZN6Assimp7Blender9Structure19_defaultInitializerILi2EEclIA3_fEEvRT_PKc(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %i.bu)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph54.preheader, %.preheader, %bb.t
  %i.bv = shl i64 %i.l, 32
  %i.bw = ashr exact i64 %i.bv, 32
  %i.bx = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bw ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = icmp ugt ptr %i.ca, %i.cd
  br i1 %i.ce, label %bb.u, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.u:                                             ; preds = %.loopexit
  %i.cf = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull @.str.308)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.x, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.w ], [ %.pn37.pn, %.body ], [ %i.ck, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cf) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %.loopexit
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 8
  ret void

bb.x:                                             ; preds = %bb.s
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #25
  unreachable

bb.z:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6Assimp7Blender9Structure14ReadFieldArrayILi1EfLm3EEEvRAT1__T0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.af = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 2
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 3, ptr %i.c, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA8_KcRPS1_RA17_S1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_S1_RmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(8) @.str.323, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) @.str.324, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) @.str.325, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp7Blender5ErrorE, i64 16), ptr %i.aj, align 8
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.z unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.l:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE  ; 2 uses
  %i.am = load ptr, ptr %4, align 8               ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.m
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.l
  %i.ao = load i64, ptr %i.m, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.al, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.m:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.body

bb.n:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @__cxa_free_exception(ptr nonnull %i.aj) #22
  br label %.body

bb.o:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au ; 2 uses
  store ptr %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader: ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %.not58 = icmp eq i64 %i.bc, 0
  br i1 %.not58, label %.lr.ph57.preheader, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %.body

.preheader:                                       ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %i.bf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bg = icmp samesign ult i64 %indvars.iv, 2
  br i1 %i.bg, label %.lr.ph57.preheader, label %.loopexit

.lr.ph57.preheader:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %.preheader
  %.0.lcssa68 = phi i32 [ %i.bf, %.preheader ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 2 uses
  %i.bh = shl nuw nsw i32 %.0.lcssa68, 2
  %i.bi = zext nneg i32 %i.bh to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.bi
  %i.bj = shl nuw nsw i32 %.0.lcssa68, 2
  %narrow = sub nsw i32 12, %i.bj
  %i.bk = zext i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bk, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertIfEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.af, ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 8 dereferenceable(232) %3)
          to label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bm = load i64, ptr %i.bb, align 8
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bm, i64 3)
  %i.bn = icmp samesign ugt i64 %.sroa.speculated, %indvars.iv.next
  br i1 %i.bn, label %.lr.ph, label %.preheader, !llvm.loop !84

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit.split-lp70 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r, %bb.m, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn37.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.ar, %bb.n ], [ %i.aq, %bb.m ], [ %i.be, %bb.r ], [ %lpad.loopexit.split-lp70, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn37.pn, 1
  %i.bo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp7Blender5ErrorE) #22
  %i.bp = icmp eq i32 %.2, %i.bo
  br i1 %i.bp, label %bb.s, label %common.resume

bb.s:                                             ; preds = %.body
  %.232 = extractvalue { ptr, i32 } %.pn37.pn, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %.232) #22 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #22
  %i.bv = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc46 unwind label %bb.x

.noexc46:                                         ; preds = %bb.s
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bv, ptr noundef %i.bu)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %.noexc46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, i8 0, i64 12, i1 false)
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph57.preheader, %.preheader, %bb.t
  %i.bw = shl i64 %i.l, 32
  %i.bx = ashr exact i64 %i.bw, 32
  %i.by = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bx ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %i.cb, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = icmp ugt ptr %i.cb, %i.ce
  br i1 %i.cf, label %bb.u, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.u:                                             ; preds = %.loopexit
  %i.cg = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull @.str.308)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.cg, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.x, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.ch, %bb.w ], [ %.pn37.pn, %.body ], [ %i.cl, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %bb.u
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cg) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %.loopexit
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 8
  ret void

bb.x:                                             ; preds = %.noexc46, %bb.s
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #25
  unreachable

bb.z:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp7Blender9Structure7ConvertINS0_5MEdgeEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZNK6Assimp7Blender9Structure9ReadFieldILi2EiEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull @.str.60, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  tail call void @_ZNK6Assimp7Blender9Structure9ReadFieldILi2EiEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @.str.61, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZNK6Assimp7Blender9Structure9ReadFieldILi0EcEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull @.str.219, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 25
  tail call void @_ZNK6Assimp7Blender9Structure9ReadFieldILi0EcEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull @.str.218, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 26
  tail call void @_ZNK6Assimp7Blender9Structure9ReadFieldILi0EsEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 2 dereferenceable(2) %i.e, ptr noundef nonnull @.str.51, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.i ; 2 uses
  store ptr %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp ugt ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit

bb.b:                                             ; preds = %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.308)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #22
  resume { ptr, i32 } %i.q

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp7Blender9Structure7ConvertINS0_7MLoopUVEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZNK6Assimp7Blender9Structure14ReadFieldArrayILi0EfLm2EEEvRAT1__T0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.a, ptr noundef nonnull @.str.49, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZNK6Assimp7Blender9Structure9ReadFieldILi0EiEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @.str.51, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 %i.f ; 2 uses
  store ptr %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp ugt ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull @.str.308)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.m) #22
  resume { ptr, i32 } %i.n

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6Assimp7Blender9Structure14ReadFieldArrayILi0EfLm2EEEvRAT1__T0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
end_hunk_5
begin_hunk_6_@_ZNK6Assimp7Blender9Structure7ConvertINS0_2IDEEEvRT_RKNS0_12FileDatabaseE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6Assimp7Blender9Structure14ReadFieldArrayILi1EcLm1024EEEvRAT1__T0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 1 dereferenceable(1024) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.af = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 2
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 1024, ptr %i.c, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA8_KcRPS1_RA17_S1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_S1_RmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(8) @.str.323, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) @.str.324, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) @.str.325, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp7Blender5ErrorE, i64 16), ptr %i.aj, align 8
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.z unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.l:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE  ; 2 uses
  %i.am = load ptr, ptr %4, align 8               ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.m
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.l
  %i.ao = load i64, ptr %i.m, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.al, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.m:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.body

bb.n:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @__cxa_free_exception(ptr nonnull %i.aj) #22
  br label %.body

bb.o:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au ; 2 uses
  store ptr %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader: ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %.not58 = icmp eq i64 %i.bc, 0
  br i1 %.not58, label %.lr.ph57.preheader, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %.body

.preheader:                                       ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %i.bf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bg = icmp samesign ult i64 %indvars.iv, 1023
  br i1 %i.bg, label %.lr.ph57.preheader, label %.loopexit

.lr.ph57.preheader:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %.preheader
  %.0.lcssa68 = phi i32 [ %i.bf, %.preheader ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 2 uses
  %i.bh = zext nneg i32 %.0.lcssa68 to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.bh
  %narrow = sub nuw nsw i32 1024, %.0.lcssa68
  %i.bi = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.bi, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertIcEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.af, ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(232) %3)
          to label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bk = load i64, ptr %i.bb, align 8
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bk, i64 1024)
  %i.bl = icmp samesign ugt i64 %.sroa.speculated, %indvars.iv.next
  br i1 %i.bl, label %.lr.ph, label %.preheader, !llvm.loop !85

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit.split-lp70 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r, %bb.m, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn37.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.ar, %bb.n ], [ %i.aq, %bb.m ], [ %i.be, %bb.r ], [ %lpad.loopexit.split-lp70, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn37.pn, 1
  %i.bm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp7Blender5ErrorE) #22
  %i.bn = icmp eq i32 %.2, %i.bm
  br i1 %i.bn, label %bb.s, label %common.resume

bb.s:                                             ; preds = %.body
  %.232 = extractvalue { ptr, i32 } %.pn37.pn, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %.232) #22 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef ptr %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #22
  %i.bt = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc46 unwind label %bb.x

.noexc46:                                         ; preds = %bb.s
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bt, ptr noundef %i.bs)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %.noexc46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %1, i8 0, i64 1024, i1 false)
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph57.preheader, %.preheader, %bb.t
  %i.bu = shl i64 %i.l, 32
  %i.bv = ashr exact i64 %i.bu, 32
  %i.bw = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bv ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp ugt ptr %i.bz, %i.cc
  br i1 %i.cd, label %bb.u, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.u:                                             ; preds = %.loopexit
  %i.ce = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.308)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.x, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.cf, %bb.w ], [ %.pn37.pn, %.body ], [ %i.cj, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %bb.u
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ce) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %.loopexit
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 8
  ret void

bb.x:                                             ; preds = %.noexc46, %bb.s
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #25
  unreachable

bb.z:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp7Blender9Structure7ConvertINS0_4MColEEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(232) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZNK6Assimp7Blender9Structure9ReadFieldILi2EcEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull @.str.37, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 17
  tail call void @_ZNK6Assimp7Blender9Structure9ReadFieldILi2EcEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 18
  tail call void @_ZNK6Assimp7Blender9Structure9ReadFieldILi2EcEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 19
  tail call void @_ZNK6Assimp7Blender9Structure9ReadFieldILi2EcEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull @.str.215, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %i.h ; 2 uses
  store ptr %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp ugt ptr %i.k, %i.m
  br i1 %i.n, label %bb.b, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit

bb.b:                                             ; preds = %bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.308)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.o) #22
  resume { ptr, i32 } %i.p

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6Assimp7Blender9Structure9ReadFieldILi2EcEEvRT0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"struct.Assimp::Blender::Structure::_defaultInitializer", align 1 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.k, ptr %4, align 8
  %i.l = icmp eq ptr %2, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.307) #23
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.m, ptr %i.a, align 8
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc24 unwind label %bb.l   ; 2 uses

.noexc24:                                         ; preds = %.noexc.i
  store ptr %i.o, ptr %4, align 8
  %i.p = load i64, ptr %i.a, align 8
  store i64 %i.p, ptr %i.k, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc24, %bb.c
  %i.q = phi ptr [ %i.o, %.noexc24 ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.m, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
end_hunk_6
begin_hunk_7_@_ZNK6Assimp7Blender9Structure7ConvertINS0_7LibraryEEEvRT_RKNS0_12FileDatabaseE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6Assimp7Blender9Structure14ReadFieldArrayILi1EcLm240EEEvRAT1__T0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 1 dereferenceable(240) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.af = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 2
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 240, ptr %i.c, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA8_KcRPS1_RA17_S1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_S1_RmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(8) @.str.323, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) @.str.324, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) @.str.325, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp7Blender5ErrorE, i64 16), ptr %i.aj, align 8
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.z unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.l:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE  ; 2 uses
  %i.am = load ptr, ptr %4, align 8               ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.m
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.l
  %i.ao = load i64, ptr %i.m, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.al, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.m:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.body

bb.n:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @__cxa_free_exception(ptr nonnull %i.aj) #22
  br label %.body

bb.o:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au ; 2 uses
  store ptr %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader: ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %.not58 = icmp eq i64 %i.bc, 0
  br i1 %.not58, label %.lr.ph57.preheader, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %.body

.preheader:                                       ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %i.bf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bg = icmp samesign ult i64 %indvars.iv, 239
  br i1 %i.bg, label %.lr.ph57.preheader, label %.loopexit

.lr.ph57.preheader:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %.preheader
  %.0.lcssa68 = phi i32 [ %i.bf, %.preheader ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 2 uses
  %i.bh = zext nneg i32 %.0.lcssa68 to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.bh
  %narrow = sub nuw nsw i32 240, %.0.lcssa68
  %i.bi = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.bi, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertIcEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.af, ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(232) %3)
          to label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bk = load i64, ptr %i.bb, align 8
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bk, i64 240)
  %i.bl = icmp samesign ugt i64 %.sroa.speculated, %indvars.iv.next
  br i1 %i.bl, label %.lr.ph, label %.preheader, !llvm.loop !86

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit.split-lp70 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r, %bb.m, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn37.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.ar, %bb.n ], [ %i.aq, %bb.m ], [ %i.be, %bb.r ], [ %lpad.loopexit.split-lp70, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn37.pn, 1
  %i.bm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp7Blender5ErrorE) #22
  %i.bn = icmp eq i32 %.2, %i.bm
  br i1 %i.bn, label %bb.s, label %common.resume

bb.s:                                             ; preds = %.body
  %.232 = extractvalue { ptr, i32 } %.pn37.pn, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %.232) #22 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef ptr %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #22
  %i.bt = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc46 unwind label %bb.x

.noexc46:                                         ; preds = %bb.s
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bt, ptr noundef %i.bs)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %.noexc46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(240) %1, i8 0, i64 240, i1 false)
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph57.preheader, %.preheader, %bb.t
  %i.bu = shl i64 %i.l, 32
  %i.bv = ashr exact i64 %i.bu, 32
  %i.bw = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bv ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp ugt ptr %i.bz, %i.cc
  br i1 %i.cd, label %bb.u, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.u:                                             ; preds = %.loopexit
  %i.ce = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.308)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.x, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.cf, %bb.w ], [ %.pn37.pn, %.body ], [ %i.cj, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %bb.u
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ce) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %.loopexit
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 8
  ret void

bb.x:                                             ; preds = %.noexc46, %bb.s
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #25
  unreachable

bb.z:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6Assimp7Blender9Structure14ReadFieldArrayILi2EcLm240EEEvRAT1__T0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 1 dereferenceable(240) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.Assimp::Blender::Structure::_defaultInitializer", align 1 ; 4 uses
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

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.af = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 2
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 240, ptr %i.c, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA8_KcRPS1_RA17_S1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_S1_RmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(8) @.str.323, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) @.str.324, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) @.str.325, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp7Blender5ErrorE, i64 16), ptr %i.aj, align 8
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.z unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.l:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE  ; 2 uses
  %i.am = load ptr, ptr %4, align 8               ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.m
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.l
  %i.ao = load i64, ptr %i.m, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.al, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.m:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.body

bb.n:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @__cxa_free_exception(ptr nonnull %i.aj) #22
  br label %.body

bb.o:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au ; 2 uses
  store ptr %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader: ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %.not55 = icmp eq i64 %i.bc, 0
  br i1 %.not55, label %.lr.ph54.preheader, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %.body

.preheader:                                       ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %i.bf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bg = icmp samesign ult i64 %indvars.iv, 239
  br i1 %i.bg, label %.lr.ph54.preheader, label %.loopexit

.lr.ph54.preheader:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %.preheader
  %.0.lcssa65 = phi i32 [ %i.bf, %.preheader ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 2 uses
  %i.bh = zext nneg i32 %.0.lcssa65 to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.bh
  %narrow = sub nuw nsw i32 240, %.0.lcssa65
  %i.bi = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.bi, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertIcEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.af, ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(232) %3)
          to label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bk = load i64, ptr %i.bb, align 8
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bk, i64 240)
  %i.bl = icmp samesign ugt i64 %.sroa.speculated, %indvars.iv.next
  br i1 %i.bl, label %.lr.ph, label %.preheader, !llvm.loop !87

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r, %bb.m, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn37.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.ar, %bb.n ], [ %i.aq, %bb.m ], [ %i.be, %bb.r ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn37.pn, 1
  %i.bm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp7Blender5ErrorE) #22
  %i.bn = icmp eq i32 %.2, %i.bm
  br i1 %i.bn, label %bb.s, label %common.resume

bb.s:                                             ; preds = %.body
  %.232 = extractvalue { ptr, i32 } %.pn37.pn, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %.232) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef ptr %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #22
  invoke void @_ZN6Assimp7Blender9Structure19_defaultInitializerILi2EEclIA240_cEEvRT_PKc(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(240) %1, ptr noundef %i.bs)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph54.preheader, %.preheader, %bb.t
  %i.bt = shl i64 %i.l, 32
  %i.bu = ashr exact i64 %i.bt, 32
  %i.bv = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %i.by, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = icmp ugt ptr %i.by, %i.cb
  br i1 %i.cc, label %bb.u, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.u:                                             ; preds = %.loopexit
  %i.cd = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull @.str.308)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.x, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.ce, %bb.w ], [ %.pn37.pn, %.body ], [ %i.ci, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cd) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %.loopexit
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 8
  ret void

bb.x:                                             ; preds = %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #25
  unreachable

bb.z:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6Assimp7Blender9Structure12ReadFieldPtrILi1ESt10shared_ptrNS0_7LibraryEEEbRT0_IT1_EPKcRKNS0_12FileDatabaseEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"struct.Assimp::Blender::Pointer", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"struct.Assimp::Blender::Structure::_defaultInitializer.188", align 1 ; 4 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = shl i64 %i.k, 32
  %i.m = ashr exact i64 %i.l, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.n, ptr %6, align 8
  %i.o = icmp eq ptr %2, null
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.307) #23
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.p, ptr %i.a, align 8
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc29 unwind label %bb.j   ; 2 uses

.noexc29:                                         ; preds = %.noexc.i
  store ptr %i.r, ptr %6, align 8
  %i.s = load i64, ptr %i.a, align 8
  store i64 %i.s, ptr %i.n, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc29, %bb.c
  %i.t = phi ptr [ %i.r, %.noexc29 ], [ %i.n, %bb.c ] ; 2 uses
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
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.v, ptr %i.w, align 8
  %i.x = load ptr, ptr %6, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.z = invoke noundef nonnull align 8 dereferenceable(100) ptr @_ZNK6Assimp7Blender9StructureixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.k       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %6, align 8               ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.n, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = and i32 %i.af, 1
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.h, label %bb.p

end_hunk_7
begin_hunk_8_@_ZNK6Assimp7Blender9Structure14ReadFieldArrayILi1EiLm42EEEvRAT1__T0_PKcRKNS0_12FileDatabaseE:bb.a
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

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.af = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 2
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 42, ptr %i.c, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA8_KcRPS1_RA17_S1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_S1_RmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(8) @.str.323, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) @.str.324, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) @.str.325, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp7Blender5ErrorE, i64 16), ptr %i.aj, align 8
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.z unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.l:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE  ; 2 uses
  %i.am = load ptr, ptr %4, align 8               ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.m
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.l
  %i.ao = load i64, ptr %i.m, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.al, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.m:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.body

bb.n:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @__cxa_free_exception(ptr nonnull %i.aj) #22
  br label %.body

bb.o:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au ; 2 uses
  store ptr %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader: ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %.not59 = icmp eq i64 %i.bc, 0
  br i1 %.not59, label %.lr.ph58.preheader, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %.body

.preheader:                                       ; preds = %_ZNK6Assimp7Blender9Structure7ConvertIiEEvRT_RKNS0_12FileDatabaseE.exit
  %i.bf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bg = icmp samesign ult i64 %indvars.iv, 41
  br i1 %i.bg, label %.lr.ph58.preheader, label %.loopexit

.lr.ph58.preheader:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %.preheader
  %.0.lcssa69 = phi i32 [ %i.bf, %.preheader ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 2 uses
  %i.bh = shl nuw nsw i32 %.0.lcssa69, 2
  %i.bi = zext nneg i32 %i.bh to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.bi
  %i.bj = shl nuw nsw i32 %.0.lcssa69, 2
  %narrow = sub nsw i32 168, %i.bj
  %i.bk = zext i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bk, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %_ZNK6Assimp7Blender9Structure7ConvertIiEEvRT_RKNS0_12FileDatabaseE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK6Assimp7Blender9Structure7ConvertIiEEvRT_RKNS0_12FileDatabaseE.exit ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  invoke void @_ZN6Assimp7Blender17ConvertDispatcherIiEEvRT_RKNS0_9StructureERKNS0_12FileDatabaseE(ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 8 dereferenceable(120) %i.af, ptr noundef nonnull align 8 dereferenceable(232) %3)
          to label %_ZNK6Assimp7Blender9Structure7ConvertIiEEvRT_RKNS0_12FileDatabaseE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6Assimp7Blender9Structure7ConvertIiEEvRT_RKNS0_12FileDatabaseE.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bm = load i64, ptr %i.bb, align 8
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bm, i64 42)
  %i.bn = icmp samesign ugt i64 %.sroa.speculated, %indvars.iv.next
  br i1 %i.bn, label %.lr.ph, label %.preheader, !llvm.loop !89

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r, %bb.m, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn37.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.ar, %bb.n ], [ %i.aq, %bb.m ], [ %i.be, %bb.r ], [ %lpad.loopexit.split-lp71, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn37.pn, 1
  %i.bo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp7Blender5ErrorE) #22
  %i.bp = icmp eq i32 %.2, %i.bo
  br i1 %i.bp, label %bb.s, label %common.resume

bb.s:                                             ; preds = %.body
  %.232 = extractvalue { ptr, i32 } %.pn37.pn, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %.232) #22 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #22
  %i.bv = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc47 unwind label %bb.x

.noexc47:                                         ; preds = %bb.s
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bv, ptr noundef %i.bu)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %.noexc47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(168) %1, i8 0, i64 168, i1 false)
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph58.preheader, %.preheader, %bb.t
  %i.bw = shl i64 %i.l, 32
  %i.bx = ashr exact i64 %i.bw, 32
  %i.by = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bx ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %i.cb, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = icmp ugt ptr %i.cb, %i.ce
  br i1 %i.cf, label %bb.u, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.u:                                             ; preds = %.loopexit
  %i.cg = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull @.str.308)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.cg, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.x, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.ch, %bb.w ], [ %.pn37.pn, %.body ], [ %i.cl, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %bb.u
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cg) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %.loopexit
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 8
  ret void

bb.x:                                             ; preds = %.noexc47, %bb.s
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #25
  unreachable

bb.z:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6Assimp7Blender9Structure18ReadFieldPtrVectorILi1ESt10shared_ptrNS0_15CustomDataLayerEEEbRNS0_6vectorIT0_IT1_EEEPKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %"struct.Assimp::Blender::Pointer", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"struct.Assimp::Blender::Structure::_defaultInitializer.188", align 1 ; 4 uses
  %7 = alloca %"class.std::shared_ptr.260", align 8 ; 9 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = load ptr, ptr %1, align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorISt10shared_ptrIN6Assimp7Blender15CustomDataLayerEESaIS4_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender15CustomDataLayerEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender15CustomDataLayerEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender15CustomDataLayerEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4
  %i.m = load ptr, ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #22, !inline_history !90
  %i.p = load ptr, ptr %i.g, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #22, !inline_history !90
  br label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender15CustomDataLayerEEEvPT_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender15CustomDataLayerEEEvPT_.exit.i.i.i.i, !prof !68

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #22
  br label %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender15CustomDataLayerEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender15CustomDataLayerEEEvPT_.exit.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender15CustomDataLayerEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender15CustomDataLayerEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN6Assimp7Blender15CustomDataLayerEEEvPT_.exit.i.i.i.i
  store ptr %i.c, ptr %i.d, align 8
  %.pre = load ptr, ptr %i.b, align 8
  br label %_ZNSt6vectorISt10shared_ptrIN6Assimp7Blender15CustomDataLayerEESaIS4_EE5clearEv.exit

_ZNSt6vectorISt10shared_ptrIN6Assimp7Blender15CustomDataLayerEESaIS4_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender15CustomDataLayerEES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.x = phi ptr [ %2, %bb.a ], [ %.pre, %_ZSt8_DestroyIPSt10shared_ptrIN6Assimp7Blender15CustomDataLayerEES4_EvT_S6_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = shl i64 %i.ag, 32
  %i.ai = ashr exact i64 %i.ah, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.aj, ptr %5, align 8
  %i.ak = icmp eq ptr %i.x, null
end_hunk_8
begin_hunk_9_@_ZNK6Assimp7Blender9Structure7ConvertINS0_15CustomDataLayerEEEvRT_RKNS0_12FileDatabaseE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6Assimp7Blender9Structure14ReadFieldArrayILi1EcLm64EEEvRAT1__T0_PKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 1 dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(232) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.af = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6Assimp7Blender3DNAixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 2
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 64, ptr %i.c, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA8_KcRPS1_RA17_S1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA32_S1_RmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(8) @.str.323, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) @.str.324, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) @.str.325, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp7Blender5ErrorE, i64 16), ptr %i.aj, align 8
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6Assimp7Blender5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.z unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.l:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE  ; 2 uses
  %i.am = load ptr, ptr %4, align 8               ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.m
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.l
  %i.ao = load i64, ptr %i.m, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.al, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.m:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.body

bb.n:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @__cxa_free_exception(ptr nonnull %i.aj) #22
  br label %.body

bb.o:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au ; 2 uses
  store ptr %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader: ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %.not58 = icmp eq i64 %i.bc, 0
  br i1 %.not58, label %.lr.ph57.preheader, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.308)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  call void @__cxa_free_exception(ptr nonnull %i.bd) #22
  br label %.body

.preheader:                                       ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %i.bf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bg = icmp samesign ult i64 %indvars.iv, 63
  br i1 %i.bg, label %.lr.ph57.preheader, label %.loopexit

.lr.ph57.preheader:                               ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %.preheader
  %.0.lcssa68 = phi i32 [ %i.bf, %.preheader ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 2 uses
  %i.bh = zext nneg i32 %.0.lcssa68 to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.bh
  %narrow = sub nuw nsw i32 64, %.0.lcssa68
  %i.bi = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.bi, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit ], [ 0, %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit.preheader ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  invoke void @_ZNK6Assimp7Blender9Structure7ConvertIcEEvRT_RKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %i.af, ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(232) %3)
          to label %_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6Assimp12StreamReaderILb1ELb1EE6IncPtrEl.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bk = load i64, ptr %i.bb, align 8
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bk, i64 64)
  %i.bl = icmp samesign ugt i64 %.sroa.speculated, %indvars.iv.next
  br i1 %i.bl, label %.lr.ph, label %.preheader, !llvm.loop !93

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit.split-lp70 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp7Blender5ErrorE
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r, %bb.m, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn37.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.ar, %bb.n ], [ %i.aq, %bb.m ], [ %i.be, %bb.r ], [ %lpad.loopexit.split-lp70, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn37.pn, 1
  %i.bm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp7Blender5ErrorE) #22
  %i.bn = icmp eq i32 %.2, %i.bm
  br i1 %i.bn, label %bb.s, label %common.resume

bb.s:                                             ; preds = %.body
  %.232 = extractvalue { ptr, i32 } %.pn37.pn, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %.232) #22 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef ptr %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #22
  %i.bt = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc46 unwind label %bb.x

.noexc46:                                         ; preds = %bb.s
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bt, ptr noundef %i.bs)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %.noexc46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph57.preheader, %.preheader, %bb.t
  %i.bu = shl i64 %i.l, 32
  %i.bv = ashr exact i64 %i.bu, 32
  %i.bw = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bv ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp ugt ptr %i.bz, %i.cc
  br i1 %i.cd, label %bb.u, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.u:                                             ; preds = %.loopexit
  %i.ce = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.308)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.x, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.cf, %bb.w ], [ %.pn37.pn, %.body ], [ %i.cj, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %bb.u
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ce) #22
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %.loopexit
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 8
  ret void

bb.x:                                             ; preds = %.noexc46, %bb.s
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #25
  unreachable

bb.z:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6Assimp7Blender9Structure17ReadCustomDataPtrILi2EEEbRSt10shared_ptrINS0_8ElemBaseEEiPKcRKNS0_12FileDatabaseE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(232) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"struct.Assimp::Blender::Pointer", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"struct.Assimp::Blender::Structure::_defaultInitializer", align 1 ; 4 uses
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.l, ptr %6, align 8
  %i.m = icmp eq ptr %3, null
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.307) #23
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.n, ptr %i.a, align 8
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %bb.j   ; 2 uses

.noexc32:                                         ; preds = %.noexc.i
  store ptr %i.p, ptr %6, align 8
  %i.q = load i64, ptr %i.a, align 8
  store i64 %i.q, ptr %i.l, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc32, %bb.c
  %i.r = phi ptr [ %i.p, %.noexc32 ], [ %i.l, %bb.c ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %3, align 1
  store i8 %i.s, ptr %i.r, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %3, i64 %i.n, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.t = load i64, ptr %i.a, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.t, ptr %i.u, align 8
  %i.v = load ptr, ptr %6, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.x = invoke noundef nonnull align 8 dereferenceable(100) ptr @_ZNK6Assimp7Blender9StructureixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.k       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %6, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.l
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.aa = load i64, ptr %i.l, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 1
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.h, label %bb.t

end_hunk_9
