Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/helptopic?download=true
inline.NumInlined: 422
inline.NumDeleted: 218
begin_hunk_0_@_ZNK3gmx26AbstractCompositeHelpTopic17writeSubTopicListERKNS_17HelpWriterContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.am:                                            ; preds = %bb.ac
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.bu
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.am
  %i.du = load i64, ptr %i.bu, align 8, !tbaa !18
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.am, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  %.pn = phi { ptr, i32 } [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.dr, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ar

bb.an:                                            ; preds = %.noexc.i63
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.ao:                                            ; preds = %bb.ag
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.bw
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.ao
  %i.ea = load i64, ptr %i.bw, align 8, !tbaa !18
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.an
  %.pn37 = phi { ptr, i32 } [ %i.dw, %bb.an ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %i.dx, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ar

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.aq:                                            ; preds = %bb.ai
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.by
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.aq
  %i.eg = load i64, ptr %i.by, align 8, !tbaa !18
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.ap
  %.pn39 = phi { ptr, i32 } [ %i.ec, %bb.ap ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.ed, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ar

_ZN3gmxL13isNullOrEmptyEPKc.exit53.thread:        ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZN3gmxL13isNullOrEmptyEPKc.exit53
  %i.ei = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.091.1141) #26 ; 2 uses
  %i.ej = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %.not110 = icmp eq ptr %i.ei, %i.ek
  br i1 %.not110, label %._crit_edge144, label %bb.u, !llvm.loop !59

._crit_edge144:                                   ; preds = %_ZN3gmxL13isNullOrEmptyEPKc.exit53.thread, %bb.t
  call void @_ZN3gmx18TextTableFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.loopexit111

bb.ar:                                            ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %bb.ak
  %.pn39.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.ak ], [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.dq, %bb.al ]
  call void @_ZN3gmx18TextTableFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.as

.loopexit111:                                     ; preds = %_ZN3gmxL13isNullOrEmptyEPKc.exit.thread, %bb.n, %bb.b, %._crit_edge144, %._crit_edge
  %.134 = phi i1 [ true, %._crit_edge144 ], [ false, %._crit_edge ], [ true, %bb.b ], [ false, %bb.n ], [ true, %_ZN3gmxL13isNullOrEmptyEPKc.exit.thread ]
  ret i1 %.134

bb.as:                                            ; preds = %bb.ar, %bb.m
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %bb.m ], [ %.pn39.pn.pn, %bb.ar ]
  resume { ptr, i32 } %.pn45.pn
}

declare noundef i32 @_ZNK3gmx17HelpWriterContext12outputFormatEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZNK3gmx17HelpWriterContext14paragraphBreakEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN3gmx17HelpWriterContextC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN3gmx17HelpWriterContext15enterSubSectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN3gmx17HelpWriterContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3gmx17HelpWriterContext10outputFileEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN3gmx18TextTableFormatterC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN3gmx18TextTableFormatter9addColumnEPKcib(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN3gmx18TextTableFormatter20setFirstColumnIndentEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

declare void @_ZN3gmx10TextWriter9writeLineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare void @_ZN3gmx18TextTableFormatter5clearEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN3gmx18TextTableFormatter13addColumnLineEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare void @_ZN3gmx10TextWriter11writeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare void @_ZN3gmx18TextTableFormatter9formatRowB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN3gmx18TextTableFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx26AbstractCompositeHelpTopic11addSubTopicESt10unique_ptrINS_10IHelpTopicESt14default_deleteIS2_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef align 8 %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.std::pair.45", align 8     ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !41     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3
  %i.l = add nsw i64 %i.k, 1                      ; 4 uses
  %i.m = icmp ugt i64 %i.l, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.i
  %i.r = ashr exact i64 %i.q, 3
  %i.s = icmp ult i64 %i.r, %i.l
  br i1 %i.s, label %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.t = shl nuw nsw i64 %i.l, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25 ; 8 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !39   ; 10 uses
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !40   ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = ptrtoaddr ptr %i.v to i64
  %i.z = add i64 %i.x, -8
  %i.aa = sub i64 %i.z, %i.y                      ; 3 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.aa, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i64 %i.aa, 120
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 4611686018427387888     ; 4 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.u, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ah ; 4 uses
  %next.gep30 = getelementptr i8, ptr %i.v, i64 %i.ah ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.ai = getelementptr i8, ptr %next.gep30, i64 32
  %i.aj = getelementptr i8, ptr %next.gep30, i64 64
  %i.ak = getelementptr i8, ptr %next.gep30, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep30, align 8, !tbaa !41, !alias.scope !69
  %wide.load31 = load <4 x i64>, ptr %i.ai, align 8, !tbaa !41, !alias.scope !69
  %wide.load32 = load <4 x i64>, ptr %i.aj, align 8, !tbaa !41, !alias.scope !69
  %wide.load33 = load <4 x i64>, ptr %i.ak, align 8, !tbaa !41, !alias.scope !69
  %i.al = getelementptr i8, ptr %next.gep, i64 32
  %i.am = getelementptr i8, ptr %next.gep, i64 64
  %i.an = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !41, !alias.scope !68
  store <4 x i64> %wide.load31, ptr %i.al, align 8, !tbaa !41, !alias.scope !68
  store <4 x i64> %wide.load32, ptr %i.am, align 8, !tbaa !41, !alias.scope !68
  store <4 x i64> %wide.load33, ptr %i.an, align 8, !tbaa !41, !alias.scope !68
  %i.ao = getelementptr i8, ptr %next.gep30, i64 32
  %i.ap = getelementptr i8, ptr %next.gep30, i64 64
  %i.aq = getelementptr i8, ptr %next.gep30, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep30, align 8, !tbaa !41, !alias.scope !69
  store <4 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !41, !alias.scope !69
  store <4 x ptr> splat (ptr null), ptr %i.ap, align 8, !tbaa !41, !alias.scope !69
  store <4 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !41, !alias.scope !69
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %i.ac, 4611686018427387900   ; 3 uses
  %i.as = shl i64 %n.vec35, 3                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.u, i64 %i.as
  %i.au = getelementptr i8, ptr %i.v, i64 %i.as
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %i.av = shl i64 %index36, 3                     ; 2 uses
  %next.gep37 = getelementptr i8, ptr %i.u, i64 %i.av
  %next.gep38 = getelementptr i8, ptr %i.v, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %wide.load39 = load <4 x i64>, ptr %next.gep38, align 8, !tbaa !41, !alias.scope !69
  store <4 x i64> %wide.load39, ptr %next.gep37, align 8, !tbaa !41, !alias.scope !68
  store <4 x ptr> splat (ptr null), ptr %next.gep38, align 8, !tbaa !41, !alias.scope !69
  %index.next40 = add nuw i64 %index36, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next40, %n.vec35
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !64

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %i.ac, %n.vec35
  br i1 %cmp.n41, label %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.ax = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !41, !alias.scope !69
  store i64 %i.ax, ptr %.012.i.i.i.i, align 8, !tbaa !41, !alias.scope !68
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !41, !alias.scope !69
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.w
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !65

_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.v, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.v to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.bd) #23
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.u, ptr %i.d, align 8, !tbaa !39
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.j
  store ptr %i.be, ptr %i.e, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.l
  store ptr %i.bf, ptr %i.n, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.bg = phi ptr [ %i.d, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.bm, ptr %3, align 8, !tbaa !23
  %i.bn = icmp eq ptr %i.bl, null
  br i1 %i.bn, label %.noexc, label %bb.e

.noexc:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #24
  unreachable

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.bo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !24
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.bq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bq, ptr %3, align 8, !tbaa !17
  %i.br = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.br, ptr %i.bm, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.e
  %i.bs = phi ptr [ %i.bq, %.noexc.i ], [ %i.bm, %bb.e ] ; 2 uses
  switch i64 %i.bo, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.bt = load i8, ptr %i.bl, align 1, !tbaa !18
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !18
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr nonnull align 1 %i.bl, i64 %i.bo, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !25
  %i.bw = load ptr, ptr %3, align 8, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bu
  store i8 0, ptr %i.bx, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.by, ptr %2, align 8, !tbaa !23, !alias.scope !70
  %i.bz = load ptr, ptr %3, align 8, !tbaa !17, !noalias !70 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bm
  br i1 %i.ca, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.cb = load i64, ptr %i.bv, align 8, !tbaa !25, !noalias !70 ; 3 uses
  %i.cc = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  %i.cd = add nuw nsw i64 %i.cb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.by, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.cd, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  store ptr %i.bz, ptr %2, align 8, !tbaa !17, !alias.scope !70
  %i.ce = load i64, ptr %i.bm, align 8, !tbaa !18, !noalias !70
  store i64 %i.ce, ptr %i.by, align 8, !tbaa !18, !alias.scope !70
  %.pre.i = load i64, ptr %i.bv, align 8, !tbaa !25, !noalias !70
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.i
  %i.cf = phi i64 [ %i.cb, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !25, !alias.scope !70
  store ptr %i.bm, ptr %3, align 8, !tbaa !17, !noalias !70
  store i64 0, ptr %i.bv, align 8, !tbaa !25, !noalias !70
  store i8 0, ptr %i.bm, align 8, !tbaa !18, !noalias !70
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.b, ptr %i.ch, align 8, !tbaa !72, !alias.scope !70
  %i.ci = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN3gmx10IHelpTopicESt4lessIS5_ESaISt4pairIKS5_S9_EEE6insertISC_IS5_S9_EEENSt9enable_ifIXsr16is_constructibleISE_T_EE5valueESC_ISt17_Rb_tree_iteratorISE_EbEE4typeEOSK_(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.k unwind label %bb.n       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.cj = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.by
  br i1 %i.ck, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN3gmx10IHelpTopicEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.k
  %i.cl = load i64, ptr %i.by, align 8, !tbaa !18
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #23
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN3gmx10IHelpTopicEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN3gmx10IHelpTopicEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  %i.cn = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bm
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN3gmx10IHelpTopicEED2Ev.exit
  %i.cp = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN3gmx10IHelpTopicEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !20  ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !40 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !42
  %.not.i.i = icmp eq ptr %i.ct, %i.cv
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cw = load i64, ptr %1, align 8, !tbaa !41
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !41
  store ptr null, ptr %1, align 8, !tbaa !41
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !40
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %bb.j
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.by
  br i1 %i.da, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN3gmx10IHelpTopicEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %bb.n
  %i.db = load i64, ptr %i.by, align 8, !tbaa !18
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #23
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN3gmx10IHelpTopicEED2Ev.exit10

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN3gmx10IHelpTopicEED2Ev.exit10: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  %i.dd = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bm
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN3gmx10IHelpTopicEED2Ev.exit10
  %i.df = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN3gmx10IHelpTopicEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.cy
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN3gmx10IHelpTopicESt4lessIS5_ESaISt4pairIKS5_S9_EEE6insertISC_IS5_S9_EEENSt9enable_ifIXsr16is_constructibleISE_T_EE5valueESC_ISt17_Rb_tree_iteratorISE_EbEE4typeEOSK_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN3gmx10IHelpTopicEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev:bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN3gmx10IHelpTopicEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !18
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN3gmx10IHelpTopicEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN3gmx10IHelpTopicEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #23
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN3gmx10IHelpTopicEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN3gmx10IHelpTopicEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !31 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #22 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !31  ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !74

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !25   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !17
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !17
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #22 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !39     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !41
  store i64 %i.r, ptr %i.q, align 8, !tbaa !41
  store ptr null, ptr %2, align 8, !tbaa !41
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 3 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check35 = icmp ult i64 %i.t, 120
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.v, 12
  %n.vec = and i64 %i.v, 4611686018427387888      ; 4 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 4 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.aa ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.ab = getelementptr i8, ptr %next.gep36, i64 32
  %i.ac = getelementptr i8, ptr %next.gep36, i64 64
  %i.ad = getelementptr i8, ptr %next.gep36, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep36, align 8, !tbaa !41, !alias.scope !91
  %wide.load37 = load <4 x i64>, ptr %i.ab, align 8, !tbaa !41, !alias.scope !91
  %wide.load38 = load <4 x i64>, ptr %i.ac, align 8, !tbaa !41, !alias.scope !91
  %wide.load39 = load <4 x i64>, ptr %i.ad, align 8, !tbaa !41, !alias.scope !91
  %i.ae = getelementptr i8, ptr %next.gep, i64 32
  %i.af = getelementptr i8, ptr %next.gep, i64 64
  %i.ag = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !41, !alias.scope !90
  store <4 x i64> %wide.load37, ptr %i.ae, align 8, !tbaa !41, !alias.scope !90
  store <4 x i64> %wide.load38, ptr %i.af, align 8, !tbaa !41, !alias.scope !90
  store <4 x i64> %wide.load39, ptr %i.ag, align 8, !tbaa !41, !alias.scope !90
  %i.ah = getelementptr i8, ptr %next.gep36, i64 32
  %i.ai = getelementptr i8, ptr %next.gep36, i64 64
  %i.aj = getelementptr i8, ptr %next.gep36, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !41, !alias.scope !91
  store <4 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !41, !alias.scope !91
  store <4 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !41, !alias.scope !91
  store <4 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !41, !alias.scope !91
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec41 = and i64 %i.v, 4611686018427387900    ; 3 uses
  %i.al = shl i64 %n.vec41, 3                     ; 2 uses
  %i.am = getelementptr i8, ptr %i.p, i64 %i.al   ; 2 uses
  %i.an = getelementptr i8, ptr %i.c, i64 %i.al
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 2 uses
  %i.ao = shl i64 %index42, 3                     ; 2 uses
  %next.gep43 = getelementptr i8, ptr %i.p, i64 %i.ao
  %next.gep44 = getelementptr i8, ptr %i.c, i64 %i.ao ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %wide.load45 = load <4 x i64>, ptr %next.gep44, align 8, !tbaa !41, !alias.scope !91
  store <4 x i64> %wide.load45, ptr %next.gep43, align 8, !tbaa !41, !alias.scope !90
  store <4 x ptr> splat (ptr null), ptr %next.gep44, align 8, !tbaa !41, !alias.scope !91
  %index.next46 = add nuw i64 %index42, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next46, %n.vec41
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !79

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %i.v, %n.vec41
  br i1 %cmp.n47, label %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.aq = load i64, ptr %.0911.i.i.i, align 8, !tbaa !41, !alias.scope !91
  store i64 %i.aq, ptr %.012.i.i.i, align 8, !tbaa !41, !alias.scope !90
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !41, !alias.scope !91
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !80

_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.am, %vec.epilog.middle.block ], [ %i.y, %middle.block ], [ %i.as, %.lr.ph.i.i.i ] ; 2 uses
  %i.at = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 8 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %iter.check69

iter.check69:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.au = add i64 %i.d, -8
  %i.av = sub i64 %i.au, %i.m                     ; 3 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 5 uses
  %min.iters.check51 = icmp ult i64 %i.av, 24
  br i1 %min.iters.check51, label %.lr.ph.i.i.i17.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check69
  %i.ay = add i64 %i.d, -8
  %i.az = sub i64 %i.ay, %i.m
  %i.ba = and i64 %i.az, -8                       ; 2 uses
  %i.bb = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = getelementptr i8, ptr %1, i64 %i.ba
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %bound0 = icmp ult ptr %i.at, %i.be
  %bound1 = icmp ult ptr %1, %i.bc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader, label %vector.main.loop.iter.check52

vector.main.loop.iter.check52:                    ; preds = %vector.memcheck
  %min.iters.check53 = icmp ult i64 %i.av, 120
  br i1 %min.iters.check53, label %vec.epilog.ph73, label %vector.ph54

vector.ph54:                                      ; preds = %vector.main.loop.iter.check52
  %i.bf = and i64 %i.ax, 12
  %n.vec55 = and i64 %i.ax, 4611686018427387888   ; 4 uses
  %i.bg = shl i64 %n.vec55, 3                     ; 2 uses
  %i.bh = getelementptr i8, ptr %i.at, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %1, i64 %i.bg
  br label %vector.body56

vector.body56:                                    ; preds = %vector.ph54, %vector.body56
  %index57 = phi i64 [ 0, %vector.ph54 ], [ %index.next64, %vector.body56 ] ; 2 uses
  %i.bj = shl i64 %index57, 3                     ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.at, i64 %i.bj ; 4 uses
  %next.gep59 = getelementptr i8, ptr %1, i64 %i.bj ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.bk = getelementptr i8, ptr %next.gep59, i64 32
  %i.bl = getelementptr i8, ptr %next.gep59, i64 64
  %i.bm = getelementptr i8, ptr %next.gep59, i64 96
  %wide.load60 = load <4 x i64>, ptr %next.gep59, align 8, !tbaa !41, !alias.scope !94
  %wide.load61 = load <4 x i64>, ptr %i.bk, align 8, !tbaa !41, !alias.scope !94
  %wide.load62 = load <4 x i64>, ptr %i.bl, align 8, !tbaa !41, !alias.scope !94
  %wide.load63 = load <4 x i64>, ptr %i.bm, align 8, !tbaa !41, !alias.scope !94
  %i.bn = getelementptr i8, ptr %next.gep58, i64 32
  %i.bo = getelementptr i8, ptr %next.gep58, i64 64
  %i.bp = getelementptr i8, ptr %next.gep58, i64 96
  store <4 x i64> %wide.load60, ptr %next.gep58, align 8, !tbaa !41, !alias.scope !95, !noalias !96
  store <4 x i64> %wide.load61, ptr %i.bn, align 8, !tbaa !41, !alias.scope !95, !noalias !96
  store <4 x i64> %wide.load62, ptr %i.bo, align 8, !tbaa !41, !alias.scope !95, !noalias !96
  store <4 x i64> %wide.load63, ptr %i.bp, align 8, !tbaa !41, !alias.scope !95, !noalias !96
  %i.bq = getelementptr i8, ptr %next.gep59, i64 32
  %i.br = getelementptr i8, ptr %next.gep59, i64 64
  %i.bs = getelementptr i8, ptr %next.gep59, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep59, align 8, !tbaa !41, !alias.scope !94
  store <4 x ptr> splat (ptr null), ptr %i.bq, align 8, !tbaa !41, !alias.scope !94
  store <4 x ptr> splat (ptr null), ptr %i.br, align 8, !tbaa !41, !alias.scope !94
  store <4 x ptr> splat (ptr null), ptr %i.bs, align 8, !tbaa !41, !alias.scope !94
  %index.next64 = add nuw i64 %index57, 16        ; 2 uses
  %i.bt = icmp eq i64 %index.next64, %n.vec55
  br i1 %i.bt, label %middle.block65, label %vector.body56, !llvm.loop !87

middle.block65:                                   ; preds = %vector.body56
  %cmp.n66 = icmp eq i64 %i.ax, %n.vec55
  br i1 %cmp.n66, label %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %vec.epilog.iter.check71

vec.epilog.iter.check71:                          ; preds = %middle.block65
  %min.epilog.iters.check72 = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check72, label %.lr.ph.i.i.i17.preheader, label %vec.epilog.ph73, !prof !46

vec.epilog.ph73:                                  ; preds = %vector.main.loop.iter.check52, %vec.epilog.iter.check71
  %vec.epilog.resume.val67 = phi i64 [ %n.vec55, %vec.epilog.iter.check71 ], [ 0, %vector.main.loop.iter.check52 ]
  %n.vec74 = and i64 %i.ax, 4611686018427387900   ; 3 uses
  %i.bu = shl i64 %n.vec74, 3                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.at, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %1, i64 %i.bu
  br label %vec.epilog.vector.body75

vec.epilog.vector.body75:                         ; preds = %vec.epilog.vector.body75, %vec.epilog.ph73
  %index76 = phi i64 [ %vec.epilog.resume.val67, %vec.epilog.ph73 ], [ %index.next80, %vec.epilog.vector.body75 ] ; 2 uses
  %i.bx = shl i64 %index76, 3                     ; 2 uses
  %next.gep77 = getelementptr i8, ptr %i.at, i64 %i.bx
  %next.gep78 = getelementptr i8, ptr %1, i64 %i.bx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %wide.load79 = load <4 x i64>, ptr %next.gep78, align 8, !tbaa !41, !alias.scope !94
  store <4 x i64> %wide.load79, ptr %next.gep77, align 8, !tbaa !41, !alias.scope !95, !noalias !96
  store <4 x ptr> splat (ptr null), ptr %next.gep78, align 8, !tbaa !41, !alias.scope !94
  %index.next80 = add nuw i64 %index76, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next80, %n.vec74
  br i1 %i.by, label %vec.epilog.middle.block81, label %vec.epilog.vector.body75, !llvm.loop !88

vec.epilog.middle.block81:                        ; preds = %vec.epilog.vector.body75
  %cmp.n82 = icmp eq i64 %i.ax, %n.vec74
  br i1 %cmp.n82, label %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %iter.check69, %vector.memcheck, %vec.epilog.iter.check71, %vec.epilog.middle.block81
  %.012.i.i.i18.ph = phi ptr [ %i.at, %iter.check69 ], [ %i.at, %vector.memcheck ], [ %i.bh, %vec.epilog.iter.check71 ], [ %i.bv, %vec.epilog.middle.block81 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %iter.check69 ], [ %1, %vector.memcheck ], [ %i.bi, %vec.epilog.iter.check71 ], [ %i.bw, %vec.epilog.middle.block81 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.cb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ca, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.bz = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !41, !alias.scope !93
  store i64 %i.bz, ptr %.012.i.i.i18, align 8, !tbaa !41, !alias.scope !92
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !41, !alias.scope !93
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ca, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !89

_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block65, %vec.epilog.middle.block81, %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.at, %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bv, %vec.epilog.middle.block81 ], [ %i.bh, %middle.block65 ], [ %i.cb, %.lr.ph.i.i.i17 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !42
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cf) #23
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !39
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !40
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cg, ptr %i.cc, align 8, !tbaa !42
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !32}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !15, i64 8, !6, i64 16}
!17 = !{!16, !13, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!"p1 _ZTSN3gmx26AbstractCompositeHelpTopic4ImplE", !12, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTSSt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS1_EE", !12, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!14, !13, i64 0}
!24 = !{!15, !15, i64 0}
!25 = !{!16, !15, i64 8}
!26 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!27 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!28 = !{!"_ZTSSt18_Rb_tree_node_base", !26, i64 0, !27, i64 8, !27, i64 16, !27, i64 24}
!29 = !{!"_ZTSSt15_Rb_tree_header", !28, i64 0, !15, i64 32}
!30 = !{!29, !27, i64 8}
!31 = !{!27, !27, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"p1 _ZTSN3gmx10IHelpTopicE", !12, i64 0}
!34 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN3gmx10IHelpTopicEE", !16, i64 0, !33, i64 32}
!35 = !{!34, !33, i64 32}
!36 = !{!29, !27, i64 16}
!37 = !{!29, !15, i64 32}
!38 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!39 = !{!38, !21, i64 0}
!40 = !{!38, !21, i64 8}
!41 = !{!33, !33, i64 0}
!42 = !{!38, !21, i64 16}
!43 = !{!28, !27, i64 24}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"branch_weights", i32 4, i32 12}
!47 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN3gmx10IHelpTopicEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !12, i64 0}
!48 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN3gmx10IHelpTopicEEE", !12, i64 0}
!49 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN3gmx10IHelpTopicEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeE", !47, i64 0, !48, i64 8}
!50 = !{!49, !48, i64 8}
!51 = !{!29, !26, i64 0}
!52 = !{!29, !27, i64 24}
!53 = distinct !{null, null, null, null, null, null, null, null, null}
!54 = distinct !{!54, !32}
!55 = distinct !{!55, !32}
!56 = !{!28, !27, i64 16}
!57 = distinct !{!57, !32}
!58 = distinct !{!58, !32}
!59 = distinct !{!59, !32}
!60 = distinct !{!60, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!61 = distinct !{!61, !60, !"_ZSt19__relocate_object_aISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!62 = distinct !{!62, !60, !"_ZSt19__relocate_object_aISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!63 = distinct !{!63, !32, !44, !45}
!64 = distinct !{!64, !32, !44, !45}
!65 = distinct !{!65, !32, !45, !44}
!66 = distinct !{!66, i1 true, !"_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPKN3gmx10IHelpTopicEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSC_INSD_IT0_E4typeEE6__typeEEOSE_OSJ_"}
!67 = distinct !{!67, !66, !"_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPKN3gmx10IHelpTopicEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSC_INSD_IT0_E4typeEE6__typeEEOSE_OSJ_: argument 0"}
!68 = !{!61}
!69 = !{!62}
!70 = !{!67}
!71 = !{!"_ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN3gmx10IHelpTopicEE", !16, i64 0, !33, i64 32}
!72 = !{!71, !33, i64 32}
!73 = !{!47, !47, i64 0}
!74 = distinct !{!74, !32}
!75 = distinct !{!75, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!76 = distinct !{!76, !75, !"_ZSt19__relocate_object_aISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!77 = distinct !{!77, !75, !"_ZSt19__relocate_object_aISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!78 = distinct !{!78, !32, !44, !45}
!79 = distinct !{!79, !32, !44, !45}
!80 = distinct !{!80, !32, !45, !44}
!81 = distinct !{!81, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!82 = distinct !{!82, !81, !"_ZSt19__relocate_object_aISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!83 = distinct !{!83, !81, !"_ZSt19__relocate_object_aISt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!84 = distinct !{!84, i1 false, !"LVerDomain"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !32, !44, !45}
!88 = distinct !{!88, !32, !44, !45}
!89 = distinct !{!89, !32, !44}
!90 = !{!76}
!91 = !{!77}
!92 = !{!82}
!93 = !{!83}
!94 = !{!83, !85}
!95 = !{!82, !86}
!96 = !{!85}
end_hunk_1
