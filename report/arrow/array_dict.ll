inline.NumInlined: 10069
inline.NumDeleted: 2207
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_8Int8TypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE:bb.a
bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !2332
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(41) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.n = load ptr, ptr %5, align 8, !tbaa !172, !noalias !2332 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !84, !noalias !2332
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !172, !noalias !2332 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.u, align 8, !tbaa !84, !noalias !2332
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !2332
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !2332
  %i.y = load ptr, ptr %6, align 8, !tbaa !172    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !84
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.am

bb.g:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.ae = load ptr, ptr %6, align 8, !tbaa !172   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %.body
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !84
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.an

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !158
  %.not54118 = icmp sgt i64 %i.al, 0
  br i1 %.not54118, label %.lr.ph120, label %.critedge70

.lr.ph120:                                        ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1080 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 2 uses
  br label %bb.af

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !158
  %i.au = shl i64 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !287
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %7, i64 noundef %i.au, ptr noundef %i.aw)
  %i.ax = load ptr, ptr %7, align 8, !tbaa !140
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.l, label %bb.j, !prof !97

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !140
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.critedge66 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2337)
  call void @llvm.experimental.noalias.scope.decl(metadata !2340)
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !204, !noalias !2343 ; 2 uses
  store i64 %i.bb, ptr %8, align 8, !tbaa !204, !alias.scope !2343
  store ptr null, ptr %i.ba, align 8, !tbaa !204, !noalias !2343
  %.cast = inttoptr i64 %i.bb to ptr              ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !158
  %.not56.not116 = icmp sgt i64 %i.bg, 0
  br i1 %.not56.not116, label %.lr.ph, label %.critedge64

.lr.ph:                                           ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 1080 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit82
  %i.bm = phi ptr [ %i.be, %.lr.ph ], [ %i.cn, %_ZN5arrow6StatusD2Ev.exit82 ]
  %.039117 = phi i64 [ 0, %.lr.ph ], [ %i.co, %_ZN5arrow6StatusD2Ev.exit82 ] ; 3 uses
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !2344
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.039117
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !84  ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.039117
  %i.br = zext i8 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3, !noalias !2346 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, -1
  br i1 %i.bu, label %bb.n, label %_ZN5arrow6StatusD2Ev.exit82

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !295, !noalias !2346 ; 3 uses
  %i.bw = load ptr, ptr %i.bj, align 8, !tbaa !294, !noalias !2346 ; 4 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 9 uses
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = load ptr, ptr %i.bl, align 8, !tbaa !296, !noalias !2346
  %.not.i.i.i = icmp eq ptr %i.bv, %i.cb
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 %i.bp, ptr %i.bv, align 1, !tbaa !84, !noalias !2346
  %i.cc = load ptr, ptr %i.bk, align 8, !tbaa !295, !noalias !2346
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store ptr %i.cd, ptr %i.bk, align 8, !tbaa !295, !noalias !2346
  br label %_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.ce = icmp eq i64 %i.bz, 9223372036854775807
  br i1 %i.ce, label %bb.q, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #29
          to label %.noexc77 unwind label %.loopexit.split-lp

.noexc77:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.p
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.cf = add i64 %.sroa.speculated.i.i.i.i.i, %i.bz ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bz
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 9223372036854775807)
  %i.ci = select i1 %i.cg, i64 9223372036854775807, i64 %i.ch ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i.i, label %9

9:                                                ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i
  %10 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #26
          to label %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i.i unwind label %.loopexit

_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i.i: ; preds = %9, %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i
  %11 = phi ptr [ null, %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %10, %9 ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 %i.bz ; 2 uses
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !84, !noalias !2346
  %i.ck = icmp sgt i64 %i.bz, 0
  br i1 %i.ck, label %bb.r, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %11, ptr align 1 %i.bw, i64 %i.bz, i1 false), !noalias !2346
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.r, %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %.not.i17.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.bz) #27, !noalias !2346
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i
  store ptr %11, ptr %i.bj, align 8, !tbaa !294, !noalias !2346
  store ptr %i.cl, ptr %i.bk, align 8, !tbaa !295, !noalias !2346
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 %i.ci
  store ptr %i.cm, ptr %i.bl, align 8, !tbaa !296, !noalias !2346
  br label %_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i

_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i:      ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i, %bb.o
  store i32 %i.ca, ptr %i.bs, align 4, !tbaa !3, !noalias !2346
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !33
  br label %_ZN5arrow6StatusD2Ev.exit82

.loopexit:                                        ; preds = %9
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_ZN5arrow6StatusD2Ev.exit82:                      ; preds = %_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i, %bb.m
  %i.cn = phi ptr [ %.pre, %_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i ], [ %i.bm, %bb.m ] ; 2 uses
  %.0.i.i = phi i32 [ %i.ca, %_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i ], [ %i.bt, %bb.m ]
  store i32 %.0.i.i, ptr %i.bq, align 4, !tbaa !3, !noalias !2346
  store ptr null, ptr %0, align 8, !tbaa !140
  %i.co = add nuw nsw i64 %.039117, 1             ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !158
  %.not56.not = icmp slt i64 %i.co, %i.cq
  br i1 %.not56.not, label %bb.m, label %.critedge64, !llvm.loop !2351

.critedge64:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit82, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc84 unwind label %bb.ac

.noexc84:                                         ; preds = %.critedge64
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !112 ; 8 uses
  %i.ct = load <2 x ptr>, ptr %3, align 8, !tbaa !116
  %i.cu = load <2 x ptr>, ptr %4, align 16, !tbaa !116
  store <2 x ptr> %i.cu, ptr %3, align 8, !tbaa !116
  store <2 x ptr> %i.ct, ptr %4, align 16, !tbaa !116
  %.not.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.t

bb.t:                                             ; preds = %.noexc84
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.cv, align 8, !tbaa !108
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !111
  %i.da = load ptr, ptr %i.cs, align 8, !tbaa !87
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #25, !inline_history !1749
  %i.dd = load ptr, ptr %i.cs, align 8, !tbaa !87
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #25, !inline_history !1749
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i83 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i.i83, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i = phi i32 [ %i.cy, %bb.w ], [ %i.di, %bb.x ]
  %i.dj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dj, label %bb.y, label %bb.z, !prof !98

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.u, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.dk = load ptr, ptr %8, align 8, !tbaa !204   ; 3 uses
  %.not.i85 = icmp eq ptr %i.dk, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.z
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !87
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dk) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.z, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.do = load ptr, ptr %7, align 8, !tbaa !140   ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.aa, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dq = load ptr, ptr %i.ba, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i86, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.aa
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !87
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dq) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %7, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.du = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.do, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !143, !range !129, !noundef !130
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.aa, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.critedge70

bb.ac:                                            ; preds = %.critedge64
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %.pre121.a = load ptr, ptr %8, align 8, !tbaa !204
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ac
  %i.dz = phi ptr [ %.pre121.a, %bb.ac ], [ %.cast, %.loopexit ], [ %.cast, %.loopexit.split-lp ] ; 3 uses
  %.pn57 = phi { ptr, i32 } [ %i.dy, %bb.ac ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i87 = icmp eq ptr %i.dz, null
  br i1 %.not.i87, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88: ; preds = %bb.ad
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !87
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dz) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, %bb.k
  %.pn60 = phi { ptr, i32 } [ %i.az, %bb.k ], [ %.pn57, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.an

bb.af:                                            ; preds = %.lr.ph120, %_ZN5arrow6StatusD2Ev.exit106
  %i.ed = phi ptr [ %i.aj, %.lr.ph120 ], [ %i.fb, %_ZN5arrow6StatusD2Ev.exit106 ]
  %.037119 = phi i64 [ 0, %.lr.ph120 ], [ %i.fc, %_ZN5arrow6StatusD2Ev.exit106 ] ; 2 uses
  %i.ee = load ptr, ptr %i.am, align 8, !tbaa !2344
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.037119
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !84  ; 3 uses
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.eh ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3, !noalias !2352
  %i.ek = icmp eq i32 %i.ej, -1
  br i1 %i.ek, label %bb.ag, label %_ZN5arrow6StatusD2Ev.exit106

bb.ag:                                            ; preds = %bb.af
  %i.el = load ptr, ptr %i.ap, align 8, !tbaa !295, !noalias !2352 ; 3 uses
  %i.em = load ptr, ptr %i.ao, align 8, !tbaa !294, !noalias !2352 ; 4 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 9 uses
  %i.eq = trunc i64 %i.ep to i32
  %i.er = load ptr, ptr %i.aq, align 8, !tbaa !296, !noalias !2352
  %.not.i.i.i91 = icmp eq ptr %i.el, %i.er
  br i1 %.not.i.i.i91, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i8 %i.eg, ptr %i.el, align 1, !tbaa !84, !noalias !2352
  %i.es = load ptr, ptr %i.ap, align 8, !tbaa !295, !noalias !2352
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  store ptr %i.et, ptr %i.ap, align 8, !tbaa !295, !noalias !2352
  br label %_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i92

bb.ai:                                            ; preds = %bb.ag
  %i.eu = icmp eq i64 %i.ep, 9223372036854775807
  br i1 %i.eu, label %bb.aj, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i93

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #29, !noalias !2352
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i93: ; preds = %bb.ai
  %.sroa.speculated.i.i.i.i.i94 = tail call i64 @llvm.umax.i64(i64 %i.ep, i64 1)
  %i.ev = add i64 %.sroa.speculated.i.i.i.i.i94, %i.ep ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.ep
  %i.ex = tail call i64 @llvm.umin.i64(i64 %i.ev, i64 9223372036854775807)
  %i.ey = select i1 %i.ew, i64 9223372036854775807, i64 %i.ex ; 3 uses
  %.not.i.i.i.i.i95 = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i.i.i.i95, label %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i.i96, label %12

12:                                               ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i93
  %13 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #26, !noalias !2352
  br label %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i.i96

_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i.i96: ; preds = %12, %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i93
  %14 = phi ptr [ %13, %12 ], [ null, %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i93 ] ; 4 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 %i.ep ; 2 uses
  store i8 %i.eg, ptr %15, align 1, !tbaa !84, !noalias !2352
  %16 = icmp sgt i64 %i.ep, 0
  br i1 %16, label %bb.ak, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i97

bb.ak:                                            ; preds = %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i.i96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %14, ptr align 1 %i.em, i64 %i.ep, i1 false), !noalias !2352
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i97

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i97: ; preds = %bb.ak, %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i.i96
  %i.ez = getelementptr inbounds nuw i8, ptr %15, i64 1
  %.not.i17.i.i.i.i98 = icmp eq ptr %i.em, null
  br i1 %.not.i17.i.i.i.i98, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i99, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i97
  tail call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.ep) #27, !noalias !2352
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i99

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i99: ; preds = %bb.al, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i97
  store ptr %14, ptr %i.ao, align 8, !tbaa !294, !noalias !2352
  store ptr %i.ez, ptr %i.ap, align 8, !tbaa !295, !noalias !2352
  %i.fa = getelementptr inbounds nuw i8, ptr %14, i64 %i.ey
  store ptr %i.fa, ptr %i.aq, align 8, !tbaa !296, !noalias !2352
  br label %_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i92

_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i92:    ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i99, %bb.ah
  store i32 %i.eq, ptr %i.ei, align 4, !tbaa !3, !noalias !2352
  %.pre122 = load ptr, ptr %i.c, align 8, !tbaa !33
  br label %_ZN5arrow6StatusD2Ev.exit106

_ZN5arrow6StatusD2Ev.exit106:                     ; preds = %bb.af, %_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i92
  %i.fb = phi ptr [ %i.ed, %bb.af ], [ %.pre122, %_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i92 ] ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !140
  %i.fc = add nuw nsw i64 %.037119, 1             ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !158
  %.not54 = icmp slt i64 %i.fc, %i.fe
  br i1 %.not54, label %bb.af, label %.critedge70, !llvm.loop !2357

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit106, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !140, !alias.scope !2358
  br label %bb.am

.critedge66:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.am

bb.am:                                            ; preds = %.critedge70, %.critedge66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.an:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn60.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn60, %bb.ae ]
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_8Int8TypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1072
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !295
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !294
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.k, ptr %4, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !111
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !98

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.n:                                             ; preds = %bb.ab, %bb.p, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.o:                                             ; preds = %bb.a
  %.not15 = icmp samesign ugt i32 %i.i, 32767
  br i1 %.not15, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %bb.q unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  store ptr %i.am, ptr %4, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112 ; 4 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i22, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not7.i.i.i23 = icmp eq ptr %i.ap, null
  br i1 %.not7.i.i.i23, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i24 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

bb.u:                                             ; preds = %bb.s
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i31 = load ptr, ptr %i.an, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25: ; preds = %bb.u, %bb.t, %bb.r
  %i.aw = phi ptr [ %i.aq, %bb.r ], [ %i.aq, %bb.t ], [ %.pr.pre.i.i.i31, %bb.u ] ; 8 uses
  %.not8.i.i.i26 = icmp eq ptr %i.aw, null
  br i1 %.not8.i.i.i26, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i30, label %bb.v

bb.v:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.w, label %bb.x

end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_9UInt8TypeEE5UnifyERKNS_5ArrayEPSt10shared_ptrINS_6BufferEE:bb.a
bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !2408
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(41) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.n = load ptr, ptr %5, align 8, !tbaa !172, !noalias !2408 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !84, !noalias !2408
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !172, !noalias !2408 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.u, align 8, !tbaa !84, !noalias !2408
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !2408
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !2408
  %i.y = load ptr, ptr %6, align 8, !tbaa !172    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !84
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.am

bb.g:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.ae = load ptr, ptr %6, align 8, !tbaa !172   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %.body
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !84
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.an

bb.h:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !158
  %.not54118 = icmp sgt i64 %i.al, 0
  br i1 %.not54118, label %.lr.ph120, label %.critedge70

.lr.ph120:                                        ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1080 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 2 uses
  br label %bb.af

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !158
  %i.au = shl i64 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !304
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.50") align 8 %7, i64 noundef %i.au, ptr noundef %i.aw)
  %i.ax = load ptr, ptr %7, align 8, !tbaa !140
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.l, label %bb.j, !prof !97

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !140
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.critedge66 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2413)
  call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !204, !noalias !2419 ; 2 uses
  store i64 %i.bb, ptr %8, align 8, !tbaa !204, !alias.scope !2419
  store ptr null, ptr %i.ba, align 8, !tbaa !204, !noalias !2419
  %.cast = inttoptr i64 %i.bb to ptr              ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !158
  %.not56.not116 = icmp sgt i64 %i.bg, 0
  br i1 %.not56.not116, label %.lr.ph, label %.critedge64

.lr.ph:                                           ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 1080 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit82
  %i.bm = phi ptr [ %i.be, %.lr.ph ], [ %i.cn, %_ZN5arrow6StatusD2Ev.exit82 ]
  %.039117 = phi i64 [ 0, %.lr.ph ], [ %i.co, %_ZN5arrow6StatusD2Ev.exit82 ] ; 3 uses
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !2420
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.039117
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !84  ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.039117
  %i.br = zext i8 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3, !noalias !2422 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, -1
  br i1 %i.bu, label %bb.n, label %_ZN5arrow6StatusD2Ev.exit82

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !312, !noalias !2422 ; 3 uses
  %i.bw = load ptr, ptr %i.bj, align 8, !tbaa !311, !noalias !2422 ; 4 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 9 uses
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = load ptr, ptr %i.bl, align 8, !tbaa !313, !noalias !2422
  %.not.i.i.i = icmp eq ptr %i.bv, %i.cb
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 %i.bp, ptr %i.bv, align 1, !tbaa !84, !noalias !2422
  %i.cc = load ptr, ptr %i.bk, align 8, !tbaa !312, !noalias !2422
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store ptr %i.cd, ptr %i.bk, align 8, !tbaa !312, !noalias !2422
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.ce = icmp eq i64 %i.bz, 9223372036854775807
  br i1 %i.ce, label %bb.q, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #29
          to label %.noexc77 unwind label %.loopexit.split-lp

.noexc77:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.p
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.cf = add i64 %.sroa.speculated.i.i.i.i.i, %i.bz ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bz
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 9223372036854775807)
  %i.ci = select i1 %i.cg, i64 9223372036854775807, i64 %i.ch ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i, label %9

9:                                                ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  %10 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #26
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i unwind label %.loopexit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i: ; preds = %9, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  %11 = phi ptr [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %10, %9 ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 %i.bz ; 2 uses
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !84, !noalias !2422
  %i.ck = icmp sgt i64 %i.bz, 0
  br i1 %i.ck, label %bb.r, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %11, ptr align 1 %i.bw, i64 %i.bz, i1 false), !noalias !2422
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.r, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %.not.i17.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.bz) #27, !noalias !2422
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  store ptr %11, ptr %i.bj, align 8, !tbaa !311, !noalias !2422
  store ptr %i.cl, ptr %i.bk, align 8, !tbaa !312, !noalias !2422
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 %i.ci
  store ptr %i.cm, ptr %i.bl, align 8, !tbaa !313, !noalias !2422
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i

_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i:      ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i, %bb.o
  store i32 %i.ca, ptr %i.bs, align 4, !tbaa !3, !noalias !2422
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !33
  br label %_ZN5arrow6StatusD2Ev.exit82

.loopexit:                                        ; preds = %9
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_ZN5arrow6StatusD2Ev.exit82:                      ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i, %bb.m
  %i.cn = phi ptr [ %.pre, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i ], [ %i.bm, %bb.m ] ; 2 uses
  %.0.i.i = phi i32 [ %i.ca, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i ], [ %i.bt, %bb.m ]
  store i32 %.0.i.i, ptr %i.bq, align 4, !tbaa !3, !noalias !2422
  store ptr null, ptr %0, align 8, !tbaa !140
  %i.co = add nuw nsw i64 %.039117, 1             ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !158
  %.not56.not = icmp slt i64 %i.co, %i.cq
  br i1 %.not56.not, label %bb.m, label %.critedge64, !llvm.loop !2427

.critedge64:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit82, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc84 unwind label %bb.ac

.noexc84:                                         ; preds = %.critedge64
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !112 ; 8 uses
  %i.ct = load <2 x ptr>, ptr %3, align 8, !tbaa !116
  %i.cu = load <2 x ptr>, ptr %4, align 16, !tbaa !116
  store <2 x ptr> %i.cu, ptr %3, align 8, !tbaa !116
  store <2 x ptr> %i.ct, ptr %4, align 16, !tbaa !116
  %.not.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.t

bb.t:                                             ; preds = %.noexc84
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.cv, align 8, !tbaa !108
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !111
  %i.da = load ptr, ptr %i.cs, align 8, !tbaa !87
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #25, !inline_history !1749
  %i.dd = load ptr, ptr %i.cs, align 8, !tbaa !87
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #25, !inline_history !1749
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i83 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i.i83, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i = phi i32 [ %i.cy, %bb.w ], [ %i.di, %bb.x ]
  %i.dj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dj, label %bb.y, label %bb.z, !prof !98

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.u, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.dk = load ptr, ptr %8, align 8, !tbaa !204   ; 3 uses
  %.not.i85 = icmp eq ptr %i.dk, null
  br i1 %.not.i85, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.z
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !87
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dk) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.z, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.do = load ptr, ptr %7, align 8, !tbaa !140   ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.aa, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !97

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.dq = load ptr, ptr %i.ba, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i86, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.aa
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !87
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dq) #25, !inline_history !215
  %.pr.pre.i = load ptr, ptr %7, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !191

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.du = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.do, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !143, !range !129, !noundef !130
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.aa, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.critedge70

bb.ac:                                            ; preds = %.critedge64
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %.pre121.a = load ptr, ptr %8, align 8, !tbaa !204
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ac
  %i.dz = phi ptr [ %.pre121.a, %bb.ac ], [ %.cast, %.loopexit ], [ %.cast, %.loopexit.split-lp ] ; 3 uses
  %.pn57 = phi { ptr, i32 } [ %i.dy, %bb.ac ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i87 = icmp eq ptr %i.dz, null
  br i1 %.not.i87, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88: ; preds = %bb.ad
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !87
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dz) #25, !inline_history !214
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i88, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89, %bb.k
  %.pn60 = phi { ptr, i32 } [ %i.az, %bb.k ], [ %.pn57, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit89 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.an

bb.af:                                            ; preds = %.lr.ph120, %_ZN5arrow6StatusD2Ev.exit106
  %i.ed = phi ptr [ %i.aj, %.lr.ph120 ], [ %i.fb, %_ZN5arrow6StatusD2Ev.exit106 ]
  %.037119 = phi i64 [ 0, %.lr.ph120 ], [ %i.fc, %_ZN5arrow6StatusD2Ev.exit106 ] ; 2 uses
  %i.ee = load ptr, ptr %i.am, align 8, !tbaa !2420
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.037119
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !84  ; 3 uses
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.eh ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3, !noalias !2428
  %i.ek = icmp eq i32 %i.ej, -1
  br i1 %i.ek, label %bb.ag, label %_ZN5arrow6StatusD2Ev.exit106

bb.ag:                                            ; preds = %bb.af
  %i.el = load ptr, ptr %i.ap, align 8, !tbaa !312, !noalias !2428 ; 3 uses
  %i.em = load ptr, ptr %i.ao, align 8, !tbaa !311, !noalias !2428 ; 4 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 9 uses
  %i.eq = trunc i64 %i.ep to i32
  %i.er = load ptr, ptr %i.aq, align 8, !tbaa !313, !noalias !2428
  %.not.i.i.i91 = icmp eq ptr %i.el, %i.er
  br i1 %.not.i.i.i91, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i8 %i.eg, ptr %i.el, align 1, !tbaa !84, !noalias !2428
  %i.es = load ptr, ptr %i.ap, align 8, !tbaa !312, !noalias !2428
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  store ptr %i.et, ptr %i.ap, align 8, !tbaa !312, !noalias !2428
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i92

bb.ai:                                            ; preds = %bb.ag
  %i.eu = icmp eq i64 %i.ep, 9223372036854775807
  br i1 %i.eu, label %bb.aj, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i93

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #29, !noalias !2428
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i93: ; preds = %bb.ai
  %.sroa.speculated.i.i.i.i.i94 = tail call i64 @llvm.umax.i64(i64 %i.ep, i64 1)
  %i.ev = add i64 %.sroa.speculated.i.i.i.i.i94, %i.ep ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.ep
  %i.ex = tail call i64 @llvm.umin.i64(i64 %i.ev, i64 9223372036854775807)
  %i.ey = select i1 %i.ew, i64 9223372036854775807, i64 %i.ex ; 3 uses
  %.not.i.i.i.i.i95 = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i.i.i.i95, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i96, label %12

12:                                               ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i93
  %13 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #26, !noalias !2428
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i96

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i96: ; preds = %12, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i93
  %14 = phi ptr [ %13, %12 ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i93 ] ; 4 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 %i.ep ; 2 uses
  store i8 %i.eg, ptr %15, align 1, !tbaa !84, !noalias !2428
  %16 = icmp sgt i64 %i.ep, 0
  br i1 %16, label %bb.ak, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i97

bb.ak:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %14, ptr align 1 %i.em, i64 %i.ep, i1 false), !noalias !2428
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i97

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i97: ; preds = %bb.ak, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i96
  %i.ez = getelementptr inbounds nuw i8, ptr %15, i64 1
  %.not.i17.i.i.i.i98 = icmp eq ptr %i.em, null
  br i1 %.not.i17.i.i.i.i98, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i99, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i97
  tail call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.ep) #27, !noalias !2428
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i99

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i99: ; preds = %bb.al, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i97
  store ptr %14, ptr %i.ao, align 8, !tbaa !311, !noalias !2428
  store ptr %i.ez, ptr %i.ap, align 8, !tbaa !312, !noalias !2428
  %i.fa = getelementptr inbounds nuw i8, ptr %14, i64 %i.ey
  store ptr %i.fa, ptr %i.aq, align 8, !tbaa !313, !noalias !2428
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i92

_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i92:    ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i99, %bb.ah
  store i32 %i.eq, ptr %i.ei, align 4, !tbaa !3, !noalias !2428
  %.pre122 = load ptr, ptr %i.c, align 8, !tbaa !33
  br label %_ZN5arrow6StatusD2Ev.exit106

_ZN5arrow6StatusD2Ev.exit106:                     ; preds = %bb.af, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i92
  %i.fb = phi ptr [ %i.ed, %bb.af ], [ %.pre122, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i92 ] ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !140
  %i.fc = add nuw nsw i64 %.037119, 1             ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !158
  %.not54 = icmp slt i64 %i.fc, %i.fe
  br i1 %.not54, label %bb.af, label %.critedge70, !llvm.loop !2433

.critedge70:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit106, %.preheader, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !140, !alias.scope !2434
  br label %bb.am

.critedge66:                                      ; preds = %bb.j
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.am

bb.am:                                            ; preds = %.critedge70, %.critedge66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.an:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn60.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn60, %bb.ae ]
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_9UInt8TypeEE9GetResultEPSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 7 uses
  %6 = alloca %"class.arrow::Result.46", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1072
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !312
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !311
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not = icmp sgt i32 %i.i, 127
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  store ptr %i.k, ptr %4, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !111
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i9.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !98

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !112
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.n:                                             ; preds = %bb.ab, %bb.p, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.o:                                             ; preds = %bb.a
  %.not15 = icmp samesign ugt i32 %i.i, 32767
  br i1 %.not15, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %bb.q unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  store ptr %i.am, ptr %4, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112 ; 4 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i22, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not7.i.i.i23 = icmp eq ptr %i.ap, null
  br i1 %.not7.i.i.i23, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i24 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

bb.u:                                             ; preds = %bb.s
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i31 = load ptr, ptr %i.an, align 8, !tbaa !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25: ; preds = %bb.u, %bb.t, %bb.r
  %i.aw = phi ptr [ %i.aq, %bb.r ], [ %i.aq, %bb.t ], [ %.pr.pre.i.i.i31, %bb.u ] ; 8 uses
  %.not8.i.i.i26 = icmp eq ptr %i.aw, null
  br i1 %.not8.i.i.i26, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i30, label %bb.v

bb.v:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.w, label %bb.x

end_hunk_1
