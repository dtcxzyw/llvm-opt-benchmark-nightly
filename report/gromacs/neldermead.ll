inline.NumInlined: 466
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3gmx17NelderMeadSimplexC2ERKSt8functionIFfNS_8ArrayRefIKfEEEES4_:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.g) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

.split153:                                        ; preds = %bb.aa
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.split153.us, %.split153
  %.us-phi154 = phi ptr [ %i.ei, %.split153 ], [ %i.ar, %.split153.us ] ; 2 uses
  %.us-phi155 = phi { ptr, i32 } [ %i.ex, %.split153 ], [ %i.be, %.split153.us ] ; 2 uses
  %.not.i.i.i.i49 = icmp eq ptr %.us-phi154, null
  br i1 %.not.i.i.i.i49, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdlPvm(ptr noundef nonnull %.us-phi154, i64 noundef %i.g) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

"_ZNSt7__cxx114listIN3gmx29RealFunctionvalueAtCoordinateESaIS2_EE4sortIZNS1_17NelderMeadSimplexC1ERKSt8functionIFfNS1_8ArrayRefIKfEEEESA_E3$_0EEvT_.exit": ; preds = %._crit_edge.i, %bb.j, %._crit_edge
  invoke void @_ZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %"_ZNSt7__cxx114listIN3gmx29RealFunctionvalueAtCoordinateESaIS2_EE4sortIZNS1_17NelderMeadSimplexC1ERKSt8functionIFfNS1_8ArrayRefIKfEEEESA_E3$_0EEvT_.exit"
  %.not.i.i.i51 = icmp eq ptr %.sroa.083.0105125, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIfSaIfEED2Ev.exit52, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ey = ptrtoint ptr %.sink.i110122 to i64
  %i.ez = sub i64 %i.ey, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0105125, i64 noundef %i.ez) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit52

_ZNSt6vectorIfSaIfEED2Ev.exit52:                  ; preds = %bb.ae, %bb.af
  ret void

bb.ag:                                            ; preds = %"_ZNSt7__cxx114listIN3gmx29RealFunctionvalueAtCoordinateESaIS2_EE4sortIZNS1_17NelderMeadSimplexC1ERKSt8functionIFfNS1_8ArrayRefIKfEEEESA_E3$_0EEvT_.exit"
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %.loopexit.split.us, %.loopexit.split, %.loopexit138, %bb.ab, %bb.ac, %bb.ad, %bb.u, %bb.v, %bb.w, %bb.x, %bb.ag
  %.pn18.pn = phi { ptr, i32 } [ %i.dy, %bb.x ], [ %i.fa, %bb.ag ], [ %i.du, %bb.v ], [ %.us-phi155, %bb.ad ], [ %i.du, %bb.u ], [ %i.dy, %bb.w ], [ %lpad.phi142, %bb.ab ], [ %.us-phi155, %bb.ac ], [ %lpad.phi142, %.loopexit138 ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit, %.loopexit.split ] ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %.sroa.083.0105125, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIfSaIfEED2Ev.exit54, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.pn18.pn136 = phi { ptr, i32 } [ %i.dt, %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ], [ %.pn18.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit ]
  %.sroa.083.0106135 = phi ptr [ %i.j, %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ], [ %.sroa.083.0105125, %_ZNSt6vectorIfSaIfEED2Ev.exit ]
  %.sink.i108134 = phi ptr [ %i.k, %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ], [ %.sink.i110122, %_ZNSt6vectorIfSaIfEED2Ev.exit ]
  %i.fb = phi i64 [ %i.l, %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ], [ %i.u, %_ZNSt6vectorIfSaIfEED2Ev.exit ]
  %i.fc = ptrtoint ptr %.sink.i108134 to i64
  %i.fd = sub i64 %i.fc, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0106135, i64 noundef %i.fd) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit54

_ZNSt6vectorIfSaIfEED2Ev.exit54:                  ; preds = %bb.ah, %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.t
  %.pn18.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.t ], [ %.pn18.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %.pn18.pn136, %bb.ah ]
  %i.fe = load ptr, ptr %i.d, align 8, !tbaa !25  ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIfSaIfEED2Ev.exit56, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit54
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !29
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.fe to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fj) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit56

_ZNSt6vectorIfSaIfEED2Ev.exit56:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit54, %bb.ai
  %i.fk = load ptr, ptr %i.c, align 8, !tbaa !25  ; 3 uses
  %.not.i.i.i57 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIfSaIfEED2Ev.exit58, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit56
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !29
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fk to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fp) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit58

_ZNSt6vectorIfSaIfEED2Ev.exit58:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit56, %bb.aj
  call void @_ZNSt7__cxx1110_List_baseIN3gmx29RealFunctionvalueAtCoordinateESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #18
  resume { ptr, i32 } %.pn18.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i.preheader:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !25   ; 4 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %.thread87, label %bb.a

.thread87:                                        ; preds = %.lr.ph.i.preheader
  %i.l = getelementptr inbounds i8, ptr null, i64 %i.k
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.a:                                             ; preds = %.lr.ph.i.preheader
  %i.m = icmp ugt i64 %i.k, 9223372036854775804
  br i1 %i.m, label %.noexc.i.i, label %bb.b, !prof !46

.noexc.i.i:                                       ; preds = %bb.a
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #17 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k ; 3 uses
  %i.p = icmp samesign ugt i64 %i.k, 4
  br i1 %i.p, label %bb.c, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %i.k, 4
  br i1 %i.q, label %bb.e, label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.d
  %i.r = load float, ptr %i.h, align 4, !tbaa !14
  store float %i.r, ptr %i.n, align 4, !tbaa !14
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit:                ; preds = %.thread87, %bb.c, %bb.d, %bb.e
  %i.s = phi ptr [ %i.o, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.l, %.thread87 ] ; 2 uses
  %i.t = phi ptr [ %i.n, %bb.c ], [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ null, %.thread87 ] ; 2 uses
  %.not18.i = icmp eq ptr %i.b, %i.d
  br i1 %.not18.i, label %"_ZSt10accumulateISt14_List_iteratorIN3gmx29RealFunctionvalueAtCoordinateEESt6vectorIfSaIfEEZNS1_17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_0ET0_T_SA_S9_T1_.exit", label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i
  %.sroa.033.0 = phi ptr [ %i.af, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i ], [ %i.t, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit ] ; 8 uses
  %.sroa.8.0 = phi ptr [ %i.ae, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i ], [ %i.s, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit ] ; 2 uses
  %.sroa.014.019.i = phi ptr [ %i.br, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i ], [ %i.b, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit ] ; 2 uses
  %i.u = ptrtoint ptr %.sroa.8.0 to i64
  %i.v = ptrtoint ptr %.sroa.033.0 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 9 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.8.0, %.sroa.033.0
  br i1 %.not.i.i.i.i.i, label %.thread17.i, label %bb.f

.thread17.i:                                      ; preds = %.lr.ph.i12
  %i.x = getelementptr inbounds i8, ptr null, i64 %i.w
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i

bb.f:                                             ; preds = %.lr.ph.i12
  %i.y = icmp ugt i64 %i.w, 9223372036854775804
  br i1 %i.y, label %.noexc.i.i.i, label %bb.g, !prof !46

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #16
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17
          to label %.noexc14 unwind label %.loopexit ; 6 uses

.noexc14:                                         ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w ; 3 uses
  %i.ab = icmp samesign ugt i64 %i.w, 4
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !19

bb.h:                                             ; preds = %.noexc14
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %.sroa.033.0, i64 %i.w, i1 false), !noalias !47
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i

bb.i:                                             ; preds = %.noexc14
  %i.ac = icmp eq i64 %i.w, 4
  br i1 %i.ac, label %bb.j, label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ad = load float, ptr %.sroa.033.0, align 4, !tbaa !14, !noalias !47
  store float %i.ad, ptr %i.z, align 4, !tbaa !14, !noalias !47
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i:              ; preds = %bb.j, %bb.i, %bb.h, %.thread17.i
  %i.ae = phi ptr [ %i.aa, %bb.h ], [ %i.aa, %bb.i ], [ %i.aa, %bb.j ], [ %i.x, %.thread17.i ] ; 5 uses
  %i.af = phi ptr [ %i.z, %bb.h ], [ %i.z, %bb.i ], [ %i.z, %bb.j ], [ null, %.thread17.i ] ; 13 uses
  %i.ag = ptrtoaddr ptr %i.ae to i64              ; 3 uses
  %i.ah = ptrtoaddr ptr %i.af to i64              ; 3 uses
  %.not8.i.i.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not8.i.i.i, label %"_ZZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvENK3$_0clESt6vectorIfSaIfEERKNS_29RealFunctionvalueAtCoordinateE.exit.i", label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 16
  %.val.i = load ptr, ptr %i.ai, align 8, !tbaa !50, !noalias !47 ; 9 uses
  %i.aj = add i64 %i.ag, -4
  %i.ak = sub i64 %i.aj, %i.ah                    ; 3 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %1 = sub i64 %i.ag, %i.ah
  %2 = and i64 %1, 3
  %ident.check.not = icmp eq i64 %2, 0
  br i1 %ident.check.not, label %vector.memcheck, label %.lr.ph.i.i.i.preheader

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.af, i64 4
  %i.an = add i64 %i.ag, -4
  %i.ao = sub i64 %i.an, %i.ah
  %i.ap = and i64 %i.ao, -4                       ; 2 uses
  %scevgep102 = getelementptr i8, ptr %scevgep, i64 %i.ap
  %scevgep103 = getelementptr i8, ptr %.val.i, i64 4
  %scevgep104 = getelementptr i8, ptr %scevgep103, i64 %i.ap
  %bound0 = icmp ult ptr %i.af, %scevgep104
  %bound1 = icmp ult ptr %.val.i, %scevgep102
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check105 = icmp ult i64 %i.ak, 124
  br i1 %min.iters.check105, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aq = and i64 %i.am, 24
  %n.vec = and i64 %i.am, 9223372036854775776     ; 4 uses
  %i.ar = shl i64 %n.vec, 2                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.af, i64 %i.ar
  %i.at = getelementptr i8, ptr %.val.i, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.au ; 5 uses
  %next.gep106 = getelementptr i8, ptr %.val.i, i64 %i.au ; 4 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 32 ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !14, !alias.scope !51, !noalias !54
  %wide.load107 = load <8 x float>, ptr %i.av, align 4, !tbaa !14, !alias.scope !51, !noalias !54
  %wide.load108 = load <8 x float>, ptr %i.aw, align 4, !tbaa !14, !alias.scope !51, !noalias !54
  %wide.load109 = load <8 x float>, ptr %i.ax, align 4, !tbaa !14, !alias.scope !51, !noalias !54
  %i.ay = getelementptr i8, ptr %next.gep106, i64 32
  %i.az = getelementptr i8, ptr %next.gep106, i64 64
  %i.ba = getelementptr i8, ptr %next.gep106, i64 96
  %wide.load110 = load <8 x float>, ptr %next.gep106, align 4, !tbaa !14, !alias.scope !58, !noalias !59
  %wide.load111 = load <8 x float>, ptr %i.ay, align 4, !tbaa !14, !alias.scope !58, !noalias !59
  %wide.load112 = load <8 x float>, ptr %i.az, align 4, !tbaa !14, !alias.scope !58, !noalias !59
  %wide.load113 = load <8 x float>, ptr %i.ba, align 4, !tbaa !14, !alias.scope !58, !noalias !59
  %i.bb = fadd <8 x float> %wide.load, %wide.load110
  %i.bc = fadd <8 x float> %wide.load107, %wide.load111
  %i.bd = fadd <8 x float> %wide.load108, %wide.load112
  %i.be = fadd <8 x float> %wide.load109, %wide.load113
  store <8 x float> %i.bb, ptr %next.gep, align 4, !tbaa !14, !alias.scope !51, !noalias !54
  store <8 x float> %i.bc, ptr %i.av, align 4, !tbaa !14, !alias.scope !51, !noalias !54
  store <8 x float> %i.bd, ptr %i.aw, align 4, !tbaa !14, !alias.scope !51, !noalias !54
  store <8 x float> %i.be, ptr %i.ax, align 4, !tbaa !14, !alias.scope !51, !noalias !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %"_ZZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvENK3$_0clESt6vectorIfSaIfEERKNS_29RealFunctionvalueAtCoordinateE.exit.i", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec115 = and i64 %i.am, 9223372036854775800  ; 3 uses
  %i.bg = shl i64 %n.vec115, 2                    ; 2 uses
  %i.bh = getelementptr i8, ptr %i.af, i64 %i.bg
  %i.bi = getelementptr i8, ptr %.val.i, i64 %i.bg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index116 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next121, %vec.epilog.vector.body ] ; 2 uses
  %i.bj = shl i64 %index116, 2                    ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.af, i64 %i.bj ; 2 uses
  %next.gep118 = getelementptr i8, ptr %.val.i, i64 %i.bj
  %wide.load119 = load <8 x float>, ptr %next.gep117, align 4, !tbaa !14, !alias.scope !51, !noalias !54
  %wide.load120 = load <8 x float>, ptr %next.gep118, align 4, !tbaa !14, !alias.scope !58, !noalias !59
  %i.bk = fadd <8 x float> %wide.load119, %wide.load120
  store <8 x float> %i.bk, ptr %next.gep117, align 4, !tbaa !14, !alias.scope !51, !noalias !54
  %index.next121 = add nuw i64 %index116, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !64

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n122 = icmp eq i64 %i.am, %n.vec115
  br i1 %cmp.n122, label %"_ZZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvENK3$_0clESt6vectorIfSaIfEERKNS_29RealFunctionvalueAtCoordinateE.exit.i", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.011.i.i.i.ph = phi ptr [ %i.af, %iter.check ], [ %i.af, %vector.scevcheck ], [ %i.af, %vector.memcheck ], [ %i.as, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  %.sroa.02.010.i.i.i.ph = phi ptr [ %.val.i, %iter.check ], [ %.val.i, %vector.scevcheck ], [ %.val.i, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.sroa.0.011.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i ], [ %.sroa.0.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.sroa.02.010.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i ], [ %.sroa.02.010.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bm = load float, ptr %.sroa.0.011.i.i.i, align 4, !tbaa !14, !noalias !59
  %i.bn = load float, ptr %.sroa.02.010.i.i.i, align 4, !tbaa !14, !noalias !59
  %i.bo = fadd float %i.bm, %i.bn
  store float %i.bo, ptr %.sroa.0.011.i.i.i, align 4, !tbaa !14, !noalias !59
  %i.bp = getelementptr i8, ptr %.sroa.0.011.i.i.i, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.bp, %i.ae
  br i1 %.not.i.i.i, label %"_ZZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvENK3$_0clESt6vectorIfSaIfEERKNS_29RealFunctionvalueAtCoordinateE.exit.i", label %.lr.ph.i.i.i, !llvm.loop !65

"_ZZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvENK3$_0clESt6vectorIfSaIfEERKNS_29RealFunctionvalueAtCoordinateE.exit.i": ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i, label %bb.k

bb.k:                                             ; preds = %"_ZZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvENK3$_0clESt6vectorIfSaIfEERKNS_29RealFunctionvalueAtCoordinateE.exit.i"
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.w) #19, !noalias !47
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i:                 ; preds = %bb.k, %"_ZZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvENK3$_0clESt6vectorIfSaIfEERKNS_29RealFunctionvalueAtCoordinateE.exit.i"
  %i.br = load ptr, ptr %.sroa.014.019.i, align 8, !tbaa !13, !noalias !47 ; 2 uses
  %.not.i13 = icmp eq ptr %i.br, %i.d
  br i1 %.not.i13, label %"_ZSt10accumulateISt14_List_iteratorIN3gmx29RealFunctionvalueAtCoordinateEESt6vectorIfSaIfEEZNS1_17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_0ET0_T_SA_S9_T1_.exit", label %.lr.ph.i12, !llvm.loop !66

"_ZSt10accumulateISt14_List_iteratorIN3gmx29RealFunctionvalueAtCoordinateEESt6vectorIfSaIfEEZNS1_17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_0ET0_T_SA_S9_T1_.exit": ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %.sroa.033.1 = phi ptr [ %i.t, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit ], [ %i.af, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i ] ; 2 uses
  %.sroa.8.1 = phi ptr [ %i.s, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !25 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !29
  store ptr %.sroa.033.1, ptr %i.bs, align 8, !tbaa !25
  store ptr %.sroa.8.1, ptr %i.bu, align 8, !tbaa !28
  store ptr %.sroa.8.1, ptr %i.bv, align 8, !tbaa !29
  %.not.i.i.i.i.i15 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i15, label %_ZNSt6vectorIfSaIfEED2Ev.exit18, label %bb.l

bb.l:                                             ; preds = %"_ZSt10accumulateISt14_List_iteratorIN3gmx29RealFunctionvalueAtCoordinateEESt6vectorIfSaIfEEZNS1_17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_0ET0_T_SA_S9_T1_.exit"
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bt to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bz) #19
  %.pre = load ptr, ptr %i.bs, align 8, !tbaa !50
  %.pre72 = load ptr, ptr %i.bu, align 8, !tbaa !50
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit18

_ZNSt6vectorIfSaIfEED2Ev.exit18:                  ; preds = %"_ZSt10accumulateISt14_List_iteratorIN3gmx29RealFunctionvalueAtCoordinateEESt6vectorIfSaIfEEZNS1_17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_0ET0_T_SA_S9_T1_.exit", %bb.l
  %i.ca = phi ptr [ %.sroa.8.1, %"_ZSt10accumulateISt14_List_iteratorIN3gmx29RealFunctionvalueAtCoordinateEESt6vectorIfSaIfEEZNS1_17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_0ET0_T_SA_S9_T1_.exit" ], [ %.pre72, %bb.l ] ; 6 uses
  %i.cb = phi ptr [ %.sroa.033.1, %"_ZSt10accumulateISt14_List_iteratorIN3gmx29RealFunctionvalueAtCoordinateEESt6vectorIfSaIfEEZNS1_17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_0ET0_T_SA_S9_T1_.exit" ], [ %.pre, %bb.l ] ; 16 uses
  %3 = ptrtoaddr ptr %i.ca to i64                 ; 2 uses
  %i.cc = ptrtoaddr ptr %i.cb to i64              ; 3 uses
  %.not8.i = icmp eq ptr %i.cb, %i.ca
  br i1 %.not8.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_1ET0_T_SB_SA_T1_.exit", label %iter.check141

iter.check141:                                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit18
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !35
  %i.cf = add i64 %i.ce, -1
  %i.cg = uitofp i64 %i.cf to float               ; 3 uses
  %i.ch = add i64 %3, -4
  %i.ci = sub i64 %i.ch, %i.cc                    ; 5 uses
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 10 uses
  %min.iters.check125 = icmp ult i64 %i.ci, 12
  br i1 %min.iters.check125, label %vec.epilog.scalar.ph142.preheader, label %vector.scevcheck125

vector.scevcheck125:                              ; preds = %iter.check141
  %4 = sub i64 %3, %i.cc
  %5 = and i64 %4, 3
  %ident.check126.not = icmp eq i64 %5, 0
  br i1 %ident.check126.not, label %vector.main.loop.iter.check126, label %vec.epilog.scalar.ph142.preheader

vector.main.loop.iter.check126:                   ; preds = %vector.scevcheck125
  %min.iters.check127 = icmp ult i64 %i.ci, 124
  br i1 %min.iters.check127, label %vec.epilog.ph145, label %vector.ph128

vector.ph128:                                     ; preds = %vector.main.loop.iter.check126
  %i.cl = and i64 %i.ck, 28
  %n.vec129 = and i64 %i.ck, 9223372036854775776  ; 4 uses
  %i.cm = shl i64 %n.vec129, 2
  %i.cn = getelementptr i8, ptr %i.cb, i64 %i.cm
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cg, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph128
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next137, %vector.body130 ] ; 2 uses
  %i.co = shl i64 %index131, 2
  %next.gep132 = getelementptr i8, ptr %i.cb, i64 %i.co ; 5 uses
  %i.cp = getelementptr i8, ptr %next.gep132, i64 32 ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep132, i64 64 ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep132, i64 96 ; 2 uses
  %wide.load133 = load <8 x float>, ptr %next.gep132, align 4, !tbaa !14
  %wide.load134 = load <8 x float>, ptr %i.cp, align 4, !tbaa !14
  %wide.load135 = load <8 x float>, ptr %i.cq, align 4, !tbaa !14
  %wide.load136 = load <8 x float>, ptr %i.cr, align 4, !tbaa !14
  %i.cs = fdiv <8 x float> %wide.load133, %broadcast.splat
  %i.ct = fdiv <8 x float> %wide.load134, %broadcast.splat
  %i.cu = fdiv <8 x float> %wide.load135, %broadcast.splat
  %i.cv = fdiv <8 x float> %wide.load136, %broadcast.splat
  store <8 x float> %i.cs, ptr %next.gep132, align 4, !tbaa !14
  store <8 x float> %i.ct, ptr %i.cp, align 4, !tbaa !14
  store <8 x float> %i.cu, ptr %i.cq, align 4, !tbaa !14
  store <8 x float> %i.cv, ptr %i.cr, align 4, !tbaa !14
  %index.next137 = add nuw i64 %index131, 32      ; 2 uses
  %i.cw = icmp eq i64 %index.next137, %n.vec129
  br i1 %i.cw, label %middle.block138, label %vector.body130, !llvm.loop !67

middle.block138:                                  ; preds = %vector.body130
  %cmp.n139 = icmp eq i64 %i.ck, %n.vec129
  br i1 %cmp.n139, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_1ET0_T_SB_SA_T1_.exit.thread", label %vec.epilog.iter.check143

vec.epilog.iter.check143:                         ; preds = %middle.block138
  %min.epilog.iters.check144 = icmp eq i64 %i.cl, 0
  br i1 %min.epilog.iters.check144, label %vec.epilog.scalar.ph142.preheader, label %vec.epilog.ph145, !prof !68

vec.epilog.ph145:                                 ; preds = %vector.main.loop.iter.check126, %vec.epilog.iter.check143
  %vec.epilog.resume.val140 = phi i64 [ %n.vec129, %vec.epilog.iter.check143 ], [ 0, %vector.main.loop.iter.check126 ]
  %n.vec146 = and i64 %i.ck, 9223372036854775804  ; 3 uses
  %i.cx = shl i64 %n.vec146, 2
  %i.cy = getelementptr i8, ptr %i.cb, i64 %i.cx
  %broadcast.splatinsert147 = insertelement <4 x float> poison, float %i.cg, i64 0
  %broadcast.splat148 = shufflevector <4 x float> %broadcast.splatinsert147, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body149

vec.epilog.vector.body149:                        ; preds = %vec.epilog.vector.body149, %vec.epilog.ph145
  %index150 = phi i64 [ %vec.epilog.resume.val140, %vec.epilog.ph145 ], [ %index.next153, %vec.epilog.vector.body149 ] ; 2 uses
  %i.cz = shl i64 %index150, 2
  %next.gep151 = getelementptr i8, ptr %i.cb, i64 %i.cz ; 2 uses
  %wide.load152 = load <4 x float>, ptr %next.gep151, align 4, !tbaa !14
  %i.da = fdiv <4 x float> %wide.load152, %broadcast.splat148
  store <4 x float> %i.da, ptr %next.gep151, align 4, !tbaa !14
  %index.next153 = add nuw i64 %index150, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next153, %n.vec146
  br i1 %i.db, label %vec.epilog.middle.block154, label %vec.epilog.vector.body149, !llvm.loop !69

vec.epilog.middle.block154:                       ; preds = %vec.epilog.vector.body149
  %cmp.n155 = icmp eq i64 %i.ck, %n.vec146
  br i1 %cmp.n155, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_1ET0_T_SB_SA_T1_.exit.thread", label %vec.epilog.scalar.ph142.preheader

vec.epilog.scalar.ph142.preheader:                ; preds = %vector.scevcheck125, %iter.check141, %vec.epilog.iter.check143, %vec.epilog.middle.block154
  %.sroa.05.010.i.ph = phi ptr [ %i.cb, %iter.check141 ], [ %i.cb, %vector.scevcheck125 ], [ %i.cn, %vec.epilog.iter.check143 ], [ %i.cy, %vec.epilog.middle.block154 ]
  br label %vec.epilog.scalar.ph142

vec.epilog.scalar.ph142:                          ; preds = %vec.epilog.scalar.ph142.preheader, %vec.epilog.scalar.ph142
  %.sroa.05.010.i = phi ptr [ %i.dd, %vec.epilog.scalar.ph142 ], [ %.sroa.05.010.i.ph, %vec.epilog.scalar.ph142.preheader ] ; 3 uses
  %.val1.i = load float, ptr %.sroa.05.010.i, align 4, !tbaa !14
  %i.dc = fdiv float %.val1.i, %i.cg
  store float %i.dc, ptr %.sroa.05.010.i, align 4, !tbaa !14
  %i.dd = getelementptr i8, ptr %.sroa.05.010.i, i64 4 ; 2 uses
  %.not.i20 = icmp eq ptr %i.dd, %i.ca
  br i1 %.not.i20, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_1ET0_T_SB_SA_T1_.exit.thread", label %vec.epilog.scalar.ph142, !llvm.loop !70

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_1ET0_T_SB_SA_T1_.exit": ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit18
  %i.de = ptrtoint ptr %i.ca to i64
  %i.df = ptrtoint ptr %i.cb to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = icmp ugt i64 %i.dg, 9223372036854775804
  br i1 %i.dh, label %.noexc.i, label %_ZN3gmx12_GLOBAL__N_117linearCombinationEfNS_8ArrayRefIKfEEfS3_.exit

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_1ET0_T_SB_SA_T1_.exit.thread": ; preds = %vec.epilog.scalar.ph142, %vec.epilog.middle.block154, %middle.block138
  %i.di = ptrtoint ptr %i.ca to i64
  %i.dj = ptrtoint ptr %i.cb to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 3 uses
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !25 ; 7 uses
  %i.do = ptrtoaddr ptr %i.dn to i64
  %i.dp = ashr exact i64 %i.dk, 2                 ; 2 uses
  %i.dq = icmp ugt i64 %i.dp, 2305843009213693951
  br i1 %i.dq, label %.noexc.i, label %.noexc12.i

.noexc.i:                                         ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_1ET0_T_SB_SA_T1_.exit.thread", %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_1ET0_T_SB_SA_T1_.exit"
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16, !noalias !71
  unreachable

.noexc12.i:                                       ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_1ET0_T_SB_SA_T1_.exit.thread"
  %i.dr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #17, !noalias !71 ; 13 uses
  %i.ds = ptrtoaddr ptr %i.dr to i64              ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dk ; 3 uses
  store float 0.000000e+00, ptr %i.dr, align 4, !tbaa !14, !noalias !71
  %i.du = getelementptr i8, ptr %i.dr, i64 4      ; 3 uses
  %i.dv = add nsw i64 %i.dp, -1                   ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %iter.check179, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc12.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.dv, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.du, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !14, !noalias !71
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx.i.i.i.i.i.i.i.i
  br label %iter.check179

iter.check179:                                    ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc12.i
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.dx, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.du, %.noexc12.i ] ; 3 uses
  %min.iters.check159 = icmp ult i64 %i.ci, 12
  br i1 %min.iters.check159, label %.lr.ph.i.i.preheader, label %vector.memcheck157

vector.memcheck157:                               ; preds = %iter.check179
  %i.dy = sub i64 %i.cc, %i.ds
  %diff.check = icmp ugt i64 %i.dy, -64
  %i.dz = sub i64 %i.do, %i.ds
  %diff.check158 = icmp ugt i64 %i.dz, -64
  %conflict.rdx = or i1 %diff.check, %diff.check158
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check160

vector.main.loop.iter.check160:                   ; preds = %vector.memcheck157
  %min.iters.check161 = icmp ult i64 %i.ci, 60
  br i1 %min.iters.check161, label %vec.epilog.ph183, label %vector.ph162

vector.ph162:                                     ; preds = %vector.main.loop.iter.check160
  %i.ea = and i64 %i.ck, 12
  %n.vec163 = and i64 %i.ck, 9223372036854775792  ; 4 uses
  %i.eb = shl i64 %n.vec163, 2                    ; 3 uses
  %i.ec = getelementptr i8, ptr %i.cb, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.dr, i64 %i.eb
  %i.ee = getelementptr i8, ptr %i.dn, i64 %i.eb
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next173, %vector.body164 ] ; 2 uses
  %i.ef = shl i64 %index165, 2                    ; 3 uses
  %next.gep166 = getelementptr i8, ptr %i.cb, i64 %i.ef ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.dr, i64 %i.ef ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.dn, i64 %i.ef ; 2 uses
  %i.eg = getelementptr i8, ptr %next.gep166, i64 32
  %wide.load169 = load <8 x float>, ptr %next.gep166, align 4, !tbaa !14, !noalias !71
  %wide.load170 = load <8 x float>, ptr %i.eg, align 4, !tbaa !14, !noalias !71
  %i.eh = getelementptr i8, ptr %next.gep168, i64 32
  %wide.load171 = load <8 x float>, ptr %next.gep168, align 4, !tbaa !14, !noalias !71
  %wide.load172 = load <8 x float>, ptr %i.eh, align 4, !tbaa !14, !noalias !71
  %i.ei = fneg <8 x float> %wide.load171
  %i.ej = fneg <8 x float> %wide.load172
  %i.ek = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load169, <8 x float> splat (float 2.000000e+00), <8 x float> %i.ei)
  %i.el = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load170, <8 x float> splat (float 2.000000e+00), <8 x float> %i.ej)
  %i.em = getelementptr i8, ptr %next.gep167, i64 32
  store <8 x float> %i.ek, ptr %next.gep167, align 4, !tbaa !14, !noalias !71
  store <8 x float> %i.el, ptr %i.em, align 4, !tbaa !14, !noalias !71
  %index.next173 = add nuw i64 %index165, 16      ; 2 uses
  %i.en = icmp eq i64 %index.next173, %n.vec163
  br i1 %i.en, label %middle.block174, label %vector.body164, !llvm.loop !74

middle.block174:                                  ; preds = %vector.body164
  %cmp.n175 = icmp eq i64 %i.ck, %n.vec163
  br i1 %cmp.n175, label %_ZN3gmx12_GLOBAL__N_117linearCombinationEfNS_8ArrayRefIKfEEfS3_.exit, label %vec.epilog.iter.check181

vec.epilog.iter.check181:                         ; preds = %middle.block174
  %min.epilog.iters.check182 = icmp eq i64 %i.ea, 0
  br i1 %min.epilog.iters.check182, label %.lr.ph.i.i.preheader, label %vec.epilog.ph183, !prof !75

vec.epilog.ph183:                                 ; preds = %vector.main.loop.iter.check160, %vec.epilog.iter.check181
  %vec.epilog.resume.val176 = phi i64 [ %n.vec163, %vec.epilog.iter.check181 ], [ 0, %vector.main.loop.iter.check160 ]
  %n.vec184 = and i64 %i.ck, 9223372036854775804  ; 3 uses
  %i.eo = shl i64 %n.vec184, 2                    ; 3 uses
  %i.ep = getelementptr i8, ptr %i.cb, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.dr, i64 %i.eo
  %i.er = getelementptr i8, ptr %i.dn, i64 %i.eo
  br label %vec.epilog.vector.body185

vec.epilog.vector.body185:                        ; preds = %vec.epilog.vector.body185, %vec.epilog.ph183
  %index186 = phi i64 [ %vec.epilog.resume.val176, %vec.epilog.ph183 ], [ %index.next192, %vec.epilog.vector.body185 ] ; 2 uses
  %i.es = shl i64 %index186, 2                    ; 3 uses
  %next.gep187 = getelementptr i8, ptr %i.cb, i64 %i.es
  %next.gep188 = getelementptr i8, ptr %i.dr, i64 %i.es
  %next.gep189 = getelementptr i8, ptr %i.dn, i64 %i.es
  %wide.load190 = load <4 x float>, ptr %next.gep187, align 4, !tbaa !14, !noalias !71
  %wide.load191 = load <4 x float>, ptr %next.gep189, align 4, !tbaa !14, !noalias !71
  %i.et = fneg <4 x float> %wide.load191
  %i.eu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load190, <4 x float> splat (float 2.000000e+00), <4 x float> %i.et)
  store <4 x float> %i.eu, ptr %next.gep188, align 4, !tbaa !14, !noalias !71
  %index.next192 = add nuw i64 %index186, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next192, %n.vec184
  br i1 %i.ev, label %vec.epilog.middle.block193, label %vec.epilog.vector.body185, !llvm.loop !76

vec.epilog.middle.block193:                       ; preds = %vec.epilog.vector.body185
  %cmp.n194 = icmp eq i64 %i.ck, %n.vec184
  br i1 %cmp.n194, label %_ZN3gmx12_GLOBAL__N_117linearCombinationEfNS_8ArrayRefIKfEEfS3_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck157, %iter.check179, %vec.epilog.iter.check181, %vec.epilog.middle.block193
  %.sroa.09.014.i.i.ph = phi ptr [ %i.cb, %iter.check179 ], [ %i.cb, %vector.memcheck157 ], [ %i.ec, %vec.epilog.iter.check181 ], [ %i.ep, %vec.epilog.middle.block193 ]
  %.sroa.05.013.i.i.ph = phi ptr [ %i.dr, %iter.check179 ], [ %i.dr, %vector.memcheck157 ], [ %i.ed, %vec.epilog.iter.check181 ], [ %i.eq, %vec.epilog.middle.block193 ]
  %.sroa.07.012.i.i.ph = phi ptr [ %i.dn, %iter.check179 ], [ %i.dn, %vector.memcheck157 ], [ %i.ee, %vec.epilog.iter.check181 ], [ %i.er, %vec.epilog.middle.block193 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.09.014.i.i = phi ptr [ %i.fa, %.lr.ph.i.i ], [ %.sroa.09.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.05.013.i.i = phi ptr [ %i.fc, %.lr.ph.i.i ], [ %.sroa.05.013.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.07.012.i.i = phi ptr [ %i.fb, %.lr.ph.i.i ], [ %.sroa.07.012.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ew = load float, ptr %.sroa.09.014.i.i, align 4, !tbaa !14, !noalias !71
  %i.ex = load float, ptr %.sroa.07.012.i.i, align 4, !tbaa !14, !noalias !71
  %i.ey = fneg float %i.ex
  %i.ez = tail call noundef float @llvm.fmuladd.f32(float %i.ew, float 2.000000e+00, float %i.ey)
  store float %i.ez, ptr %.sroa.05.013.i.i, align 4, !tbaa !14, !noalias !71
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i.i, i64 4 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i, i64 4
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.fa, %i.ca
  br i1 %.not.i.i, label %_ZN3gmx12_GLOBAL__N_117linearCombinationEfNS_8ArrayRefIKfEEfS3_.exit, label %.lr.ph.i.i, !llvm.loop !77

_ZN3gmx12_GLOBAL__N_117linearCombinationEfNS_8ArrayRefIKfEEfS3_.exit: ; preds = %.lr.ph.i.i, %middle.block174, %vec.epilog.middle.block193, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_1ET0_T_SB_SA_T1_.exit"
  %.sroa.030.0 = phi ptr [ null, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_1ET0_T_SB_SA_T1_.exit" ], [ %i.dr, %middle.block174 ], [ %i.dr, %vec.epilog.middle.block193 ], [ %i.dr, %.lr.ph.i.i ]
  %.sroa.7.0 = phi ptr [ null, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_1ET0_T_SB_SA_T1_.exit" ], [ %.0.i.i.i.i.i.ph.i, %middle.block174 ], [ %.0.i.i.i.i.i.ph.i, %vec.epilog.middle.block193 ], [ %.0.i.i.i.i.i.ph.i, %.lr.ph.i.i ]
  %.sroa.9.0 = phi ptr [ null, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_1ET0_T_SB_SA_T1_.exit" ], [ %i.dt, %middle.block174 ], [ %i.dt, %vec.epilog.middle.block193 ], [ %i.dt, %.lr.ph.i.i ]
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !25 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !29
  store ptr %.sroa.030.0, ptr %i.fd, align 8, !tbaa !25
  store ptr %.sroa.7.0, ptr %i.ff, align 8, !tbaa !28
  store ptr %.sroa.9.0, ptr %i.fg, align 8, !tbaa !29
  %.not.i.i.i.i.i22 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i.i22, label %_ZNSt6vectorIfSaIfEED2Ev.exit25, label %bb.m

bb.m:                                             ; preds = %_ZN3gmx12_GLOBAL__N_117linearCombinationEfNS_8ArrayRefIKfEEfS3_.exit
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.fe to i64
  %i.fk = sub i64 %i.fi, %i.fj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fk) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit25

_ZNSt6vectorIfSaIfEED2Ev.exit25:                  ; preds = %bb.m, %_ZN3gmx12_GLOBAL__N_117linearCombinationEfNS_8ArrayRefIKfEEfS3_.exit
  ret void

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i26 = icmp eq ptr %.sroa.033.0, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIfSaIfEED2Ev.exit27, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.0, i64 noundef %i.w) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit27

end_hunk_0
begin_hunk_1_@_ZNK3gmx17NelderMeadSimplex14orientedLengthEv:bb.a
  %.sroa.07.012.i.i.ph = phi ptr [ %i.bp, %iter.check ], [ %i.bp, %vector.memcheck ], [ %i.bx, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.09.014.i.i = phi ptr [ %i.cn, %.lr.ph.i.i ], [ %.sroa.09.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.05.013.i.i = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %.sroa.05.013.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.07.012.i.i = phi ptr [ %i.co, %.lr.ph.i.i ], [ %.sroa.07.012.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ck = load float, ptr %.sroa.09.014.i.i, align 4, !tbaa !14, !noalias !113
  %i.cl = load float, ptr %.sroa.07.012.i.i, align 4, !tbaa !14, !noalias !113
  %i.cm = fsub float %i.ck, %i.cl
  store float %i.cm, ptr %.sroa.05.013.i.i, align 4, !tbaa !14, !noalias !113
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i.i, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.cn, %i.p
  br i1 %.not.i.i, label %.lr.ph.i.preheader, label %.lr.ph.i.i, !llvm.loop !121

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i.i.i.i.i.i.i
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi float [ %i.cs, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.sroa.02.06.i.prol = phi ptr [ %i.ct, %.lr.ph.i.prol ], [ %i.br, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cr = load float, ptr %.sroa.02.06.i.prol, align 4, !tbaa !14 ; 2 uses
  %i.cs = tail call noundef float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %.07.i.prol) ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !122

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi float [ poison, %.lr.ph.i.preheader ], [ %i.cs, %.lr.ph.i.prol ]
  %.07.i.unr = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.cs, %.lr.ph.i.prol ]
  %.sroa.02.06.i.unr = phi ptr [ %i.br, %.lr.ph.i.preheader ], [ %i.ct, %.lr.ph.i.prol ]
  br i1 %i.ac, label %._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi float [ %i.dq, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.02.06.i = phi ptr [ %i.dr, %.lr.ph.i ], [ %.sroa.02.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cu = load float, ptr %.sroa.02.06.i, align 4, !tbaa !14 ; 2 uses
  %i.cv = tail call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %.07.i)
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !14 ; 2 uses
  %i.cy = tail call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.cv)
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8
  %i.da = load float, ptr %i.cz, align 4, !tbaa !14 ; 2 uses
  %i.db = tail call noundef float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.cy)
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 12
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !14 ; 2 uses
  %i.de = tail call noundef float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %i.db)
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 16
  %i.dg = load float, ptr %i.df, align 4, !tbaa !14 ; 2 uses
  %i.dh = tail call noundef float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.de)
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 20
  %i.dj = load float, ptr %i.di, align 4, !tbaa !14 ; 2 uses
  %i.dk = tail call noundef float @llvm.fmuladd.f32(float %i.dj, float %i.dj, float %i.dh)
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 24
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !14 ; 2 uses
  %i.dn = tail call noundef float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float %i.dk)
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 28
  %i.dp = load float, ptr %i.do, align 4, !tbaa !14 ; 2 uses
  %i.dq = tail call noundef float @llvm.fmuladd.f32(float %i.dp, float %i.dp, float %i.dn) ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 32 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.dr, %i.cq
  br i1 %.not.i.7, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !123

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa = phi float [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.dq, %.lr.ph.i ] ; 2 uses
  %i.ds = fcmp olt float %.050, %.lcssa
  %.sroa.speculated40 = select i1 %i.ds, float %.lcssa, float %.050 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %.fr59) #19
  %i.dt = load ptr, ptr %.sroa.022.049, align 8, !tbaa !13 ; 2 uses
  %.not = icmp eq ptr %i.dt, %0
  br i1 %.not, label %._crit_edge, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

.loopexit.split:                                  ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split, %.loopexit.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit, %.loopexit.split ]
  %.not.i.i.i13 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIfSaIfEED2Ev.exit14, label %bb.h

bb.h:                                             ; preds = %.loopexit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %.fr59) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit14

_ZNSt6vectorIfSaIfEED2Ev.exit14:                  ; preds = %.loopexit, %bb.h
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSNSt8__detail15_List_node_baseE", !11, i64 0, !11, i64 8}
!11 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!10, !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !7, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN3gmx6copyOfIfEESt6vectorIT_SaIS2_EERKNS_8ArrayRefIKS2_EE: argument 0"}
!18 = distinct !{!18, !"_ZN3gmx6copyOfIfEESt6vectorIT_SaIS2_EERKNS_8ArrayRefIKS2_EE"}
!19 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!20 = !{!21, !12, i64 16}
!21 = !{!"_ZTSSt14_Function_base", !7, i64 0, !12, i64 16}
!22 = !{!23, !12, i64 24}
!23 = !{!"_ZTSSt8functionIFfN3gmx8ArrayRefIKfEEEE", !21, i64 0, !12, i64 24}
!24 = distinct !{null}
!25 = !{!26, !27, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 float", !12, i64 0}
!28 = !{!26, !27, i64 8}
!29 = !{!26, !27, i64 16}
!30 = !{!31, !15, i64 24}
!31 = !{!"_ZTSN3gmx29RealFunctionvalueAtCoordinateE", !32, i64 0, !15, i64 24}
!32 = !{!"_ZTSSt6vectorIfSaIfEE", !33, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !26, i64 0}
!35 = !{!36, !39, i64 16}
!36 = !{!"_ZTSNSt7__cxx1110_List_baseIN3gmx29RealFunctionvalueAtCoordinateESaIS2_EEE", !37, i64 0}
!37 = !{!"_ZTSNSt7__cxx1110_List_baseIN3gmx29RealFunctionvalueAtCoordinateESaIS2_EE10_List_implE", !38, i64 0}
!38 = !{!"_ZTSNSt8__detail17_List_node_headerE", !10, i64 0, !39, i64 16}
!39 = !{!"long", !7, i64 0}
!40 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!41 = !{!11, !11, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZSt10accumulateISt14_List_iteratorIN3gmx29RealFunctionvalueAtCoordinateEESt6vectorIfSaIfEEZNS1_17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_0ET0_T_SA_S9_T1_: argument 0"}
!49 = distinct !{!49, !"_ZSt10accumulateISt14_List_iteratorIN3gmx29RealFunctionvalueAtCoordinateEESt6vectorIfSaIfEEZNS1_17NelderMeadSimplex32updateCentroidAndReflectionPointEvE3$_0ET0_T_SA_S9_T1_"}
!50 = !{!27, !27, i64 0}
!51 = !{!52}
!52 = distinct !{!52, !53}
!53 = distinct !{!53, !"LVerDomain"}
!54 = !{!55, !48, !57}
!55 = distinct !{!55, !56, !"_ZZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvENK3$_0clESt6vectorIfSaIfEERKNS_29RealFunctionvalueAtCoordinateE: argument 0"}
!56 = distinct !{!56, !"_ZZN3gmx17NelderMeadSimplex32updateCentroidAndReflectionPointEvENK3$_0clESt6vectorIfSaIfEERKNS_29RealFunctionvalueAtCoordinateE"}
!57 = distinct !{!57, !53}
!58 = !{!57}
!59 = !{!55, !48}
!60 = distinct !{!60, !43, !61, !62}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!"branch_weights", i32 8, i32 24}
!64 = distinct !{!64, !43, !61, !62}
!65 = distinct !{!65, !43, !61}
!66 = distinct !{!66, !43}
!67 = distinct !{!67, !43, !61, !62}
!68 = !{!"branch_weights", i32 4, i32 28}
!69 = distinct !{!69, !43, !61, !62}
!70 = distinct !{!70, !43, !61}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN3gmx12_GLOBAL__N_117linearCombinationEfNS_8ArrayRefIKfEEfS3_: argument 0"}
!73 = distinct !{!73, !"_ZN3gmx12_GLOBAL__N_117linearCombinationEfNS_8ArrayRefIKfEEfS3_"}
!74 = distinct !{!74, !43, !61, !62}
!75 = !{!"branch_weights", i32 4, i32 12}
!76 = distinct !{!76, !43, !61, !62}
!77 = distinct !{!77, !43, !61}
!78 = distinct !{!78, !43}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZSt4nextISt16reverse_iteratorISt20_List_const_iteratorIN3gmx29RealFunctionvalueAtCoordinateEEEET_S6_NSt15iterator_traitsIS6_E15difference_typeE: argument 0"}
!81 = distinct !{!81, !"_ZSt4nextISt16reverse_iteratorISt20_List_const_iteratorIN3gmx29RealFunctionvalueAtCoordinateEEEET_S6_NSt15iterator_traitsIS6_E15difference_typeE"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN3gmx12_GLOBAL__N_117linearCombinationEfNS_8ArrayRefIKfEEfS3_: argument 0"}
!84 = distinct !{!84, !"_ZN3gmx12_GLOBAL__N_117linearCombinationEfNS_8ArrayRefIKfEEfS3_"}
!85 = distinct !{!85, !43, !61, !62}
!86 = distinct !{!86, !43, !61, !62}
!87 = distinct !{!87, !43, !61}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN3gmx12_GLOBAL__N_117linearCombinationEfNS_8ArrayRefIKfEEfS3_: argument 0"}
!90 = distinct !{!90, !"_ZN3gmx12_GLOBAL__N_117linearCombinationEfNS_8ArrayRefIKfEEfS3_"}
!91 = distinct !{!91, !43, !61, !62}
!92 = distinct !{!92, !43, !61, !62}
!93 = distinct !{!93, !43, !61}
!94 = !{!38, !39, i64 16}
!95 = distinct !{!95, !96}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = distinct !{!97, !43}
!98 = distinct !{!98, !43}
!99 = !{!12, !12, i64 0}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZZN3gmx17NelderMeadSimplex29shrinkSimplexPointsExceptBestERKSt8functionIFfNS_8ArrayRefIKfEEEEENK3$_0clERKNS_29RealFunctionvalueAtCoordinateE: argument 0"}
!102 = distinct !{!102, !"_ZZN3gmx17NelderMeadSimplex29shrinkSimplexPointsExceptBestERKSt8functionIFfNS_8ArrayRefIKfEEEEENK3$_0clERKNS_29RealFunctionvalueAtCoordinateE"}
!103 = !{!104, !101}
!104 = distinct !{!104, !105, !"_ZN3gmx12_GLOBAL__N_117linearCombinationEfNS_8ArrayRefIKfEEfS3_: argument 0"}
!105 = distinct !{!105, !"_ZN3gmx12_GLOBAL__N_117linearCombinationEfNS_8ArrayRefIKfEEfS3_"}
!106 = distinct !{!106, !43, !61, !62}
!107 = distinct !{!107, !43, !61, !62}
!108 = distinct !{!108, !43, !61}
!109 = distinct !{!109, !43}
!110 = distinct !{!110, !43}
!111 = distinct !{!111, !43}
!112 = distinct !{!112, !43}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN3gmx12_GLOBAL__N_117linearCombinationEfNS_8ArrayRefIKfEEfS3_: argument 0"}
!115 = distinct !{!115, !"_ZN3gmx12_GLOBAL__N_117linearCombinationEfNS_8ArrayRefIKfEEfS3_"}
!116 = distinct !{!116, !43, !61, !62}
!117 = distinct !{!117, !43, !61, !62}
!118 = distinct !{!118, !43, !61}
!119 = distinct !{!119, !43, !61, !62}
!120 = distinct !{!120, !43, !61, !62}
!121 = distinct !{!121, !43, !61}
!122 = distinct !{!122, !96}
!123 = distinct !{!123, !43}
end_hunk_1
