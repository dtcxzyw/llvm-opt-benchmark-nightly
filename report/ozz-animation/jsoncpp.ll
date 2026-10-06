Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/jsoncpp?download=true
inline.NumInlined: 3522
inline.NumDeleted: 846
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK4Json5Value14getMemberNamesB5cxx11Ev:bb.a

bb.g:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !50
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EED2Ev.exit34

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EED2Ev.exit

bb.j:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.not91 = icmp eq ptr %i.o, %i.p
  br i1 %.not91, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit
  %.sroa.050.095 = phi ptr [ %.sroa.050.1, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ null, %bb.j ] ; 12 uses
  %.sroa.10.094 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ null, %bb.j ] ; 8 uses
  %.sroa.047.093 = phi ptr [ %i.bf, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ %i.o, %bb.j ] ; 3 uses
  %.sroa.15.092 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ null, %bb.j ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.10.094, %.sroa.15.092
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.q = ptrtoint ptr %.sroa.047.093 to i64
  store i64 %i.q, ptr %.sroa.10.094, align 8, !tbaa !192
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit

bb.l:                                             ; preds = %.lr.ph
  %i.r = ptrtoint ptr %.sroa.10.094 to i64        ; 2 uses
  %i.s = ptrtoint ptr %.sroa.050.095 to i64       ; 3 uses
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.m, label %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #44
          to label %.noexc unwind label %.loopexit.split-lp68

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #43
          to label %.noexc19 unwind label %.loopexit67 ; 10 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  %i.ad = ptrtoint ptr %.sroa.047.093 to i64
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !192
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.050.095, %.sroa.10.094
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc19
  %i.ae = ptrtoaddr ptr %i.ab to i64
  %i.af = add i64 %i.r, -8
  %i.ag = sub i64 %i.af, %i.s                     ; 3 uses
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 24
  %i.aj = sub i64 %i.s, %i.ae
  %diff.check = icmp ugt i64 %i.aj, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check148 = icmp ult i64 %i.ag, 120
  br i1 %min.iters.check148, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %i.ai, 12
  %n.vec = and i64 %i.ai, 4611686018427387888     ; 4 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.ab, i64 %i.al  ; 2 uses
  %i.an = getelementptr i8, ptr %.sroa.050.095, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ao ; 4 uses
  %next.gep149 = getelementptr i8, ptr %.sroa.050.095, i64 %i.ao ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.ap = getelementptr i8, ptr %next.gep149, i64 32
  %i.aq = getelementptr i8, ptr %next.gep149, i64 64
  %i.ar = getelementptr i8, ptr %next.gep149, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep149, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  %wide.load150 = load <4 x i64>, ptr %i.ap, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  %wide.load151 = load <4 x i64>, ptr %i.aq, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  %wide.load152 = load <4 x i64>, ptr %i.ar, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  %i.as = getelementptr i8, ptr %next.gep, i64 32
  %i.at = getelementptr i8, ptr %next.gep, i64 64
  %i.au = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !192, !alias.scope !540, !noalias !541
  store <4 x i64> %wide.load150, ptr %i.as, align 8, !tbaa !192, !alias.scope !540, !noalias !541
  store <4 x i64> %wide.load151, ptr %i.at, align 8, !tbaa !192, !alias.scope !540, !noalias !541
  store <4 x i64> %wide.load152, ptr %i.au, align 8, !tbaa !192, !alias.scope !540, !noalias !541
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !532

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec154 = and i64 %i.ai, 4611686018427387900  ; 3 uses
  %i.aw = shl i64 %n.vec154, 3                    ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ab, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %.sroa.050.095, i64 %i.aw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index155 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next159, %vec.epilog.vector.body ] ; 2 uses
  %i.az = shl i64 %index155, 3                    ; 2 uses
  %next.gep156 = getelementptr i8, ptr %i.ab, i64 %i.az
  %next.gep157 = getelementptr i8, ptr %.sroa.050.095, i64 %i.az
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %wide.load158 = load <4 x i64>, ptr %next.gep157, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  store <4 x i64> %wide.load158, ptr %next.gep156, align 8, !tbaa !192, !alias.scope !540, !noalias !541
  %index.next159 = add nuw i64 %index155, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next159, %n.vec154
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !533

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n160 = icmp eq i64 %i.ai, %n.vec154
  br i1 %cmp.n160, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.050.095, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.bb = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !192, !alias.scope !541, !noalias !540
  store i64 %i.bb, ptr %.012.i.i.i.i.i, align 8, !tbaa !192, !alias.scope !540, !noalias !541
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %.sroa.10.094
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !534

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc19
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ab, %.noexc19 ], [ %i.ax, %vec.epilog.middle.block ], [ %i.am, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.050.095, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.095, i64 noundef %i.t) #41
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit: ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.k
  %.sroa.15.1 = phi ptr [ %i.be, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.15.092, %bb.k ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.10.094, %bb.k ] ; 4 uses
  %.sroa.050.1 = phi ptr [ %i.ab, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.050.095, %bb.k ] ; 24 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 8 ; 10 uses
  %i.bf = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.047.093) #45 ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.p
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !535

.loopexit67:                                      ; preds = %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit69 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp68:                             ; preds = %bb.m, %bb.o
  %.sroa.15.090 = phi ptr [ %.sroa.10.094, %bb.m ], [ %.sroa.15.1, %bb.o ]
  %.sroa.050.081 = phi ptr [ %.sroa.050.095, %bb.m ], [ %.sroa.050.1, %bb.o ]
  %lpad.loopexit.split-lp70 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

._crit_edge:                                      ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit
  %.not.i.i = icmp eq ptr %.sroa.050.1, %.sroa.10.1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bg = ptrtoint ptr %.sroa.10.1 to i64
  %i.bh = ptrtoint ptr %.sroa.050.1 to i64        ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bj, i1 true)
  %i.bl = shl nuw nsw i64 %i.bk, 1
  %i.bm = xor i64 %i.bl, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_T1_(ptr %.sroa.050.1, ptr nonnull %.sroa.10.1, i64 noundef %i.bm, ptr nonnull @_ZN4Json12_GLOBAL__N_110sort_orderERKSt23_Rb_tree_const_iteratorISt4pairIKNS_5Value8CZStringES3_EES9_)
          to label %.noexc20 unwind label %.loopexit.split-lp68

.noexc20:                                         ; preds = %bb.o
  %i.bn = icmp sgt i64 %i.bi, 128
  %scevgep.i = getelementptr i8, ptr %.sroa.050.1, i64 8 ; 2 uses
  br i1 %i.bn, label %.lr.ph.i.i, label %bb.u

.lr.ph.i.i:                                       ; preds = %.noexc20
  %.pre109 = load ptr, ptr %.sroa.050.1, align 8  ; 2 uses
  %5 = ptrtoint ptr %.pre109 to i64
  br label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %bb.t, %.lr.ph.i.i
  %6 = phi i64 [ %5, %.lr.ph.i.i ], [ %9, %bb.t ]
  %7 = phi ptr [ %.pre109, %.lr.ph.i.i ], [ %10, %bb.t ]
  %.sroa.0.023.i.idx.i = phi i64 [ 8, %.lr.ph.i.i ], [ %.sroa.0.023.i.add.i, %bb.t ] ; 4 uses
  %.pn22.i.i = phi ptr [ %.sroa.050.1, %.lr.ph.i.i ], [ %.sroa.0.023.i.ptr.i, %bb.t ] ; 3 uses
  %.sroa.0.023.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.050.1, i64 %.sroa.0.023.i.idx.i ; 4 uses
  %i.bo = load ptr, ptr %.sroa.0.023.i.ptr.i, align 8 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !195 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !195
  %i.bt = icmp ult i64 %i.bq, %i.bs
  %i.bu = ptrtoint ptr %i.bo to i64               ; 2 uses
  br i1 %i.bt, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.lr.ph.i.i.a
  %i.bv = icmp samesign ugt i64 %.sroa.0.023.i.idx.i, 8
  br i1 %i.bv, label %bb.q, label %bb.r, !prof !196

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.050.1, i64 %.sroa.0.023.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn22.i.i, i64 8
  store i64 %6, ptr %i.bw, align 8, !tbaa !192
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i: ; preds = %bb.r, %bb.q
  store ptr %i.bo, ptr %.sroa.050.1, align 8, !tbaa !192
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.i.a
  %i.bx = load ptr, ptr %.pn22.i.i, align 8       ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !195
  %i.ca = icmp ult i64 %i.bq, %i.bz
  br i1 %i.ca, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s, %.lr.ph.i.i.i
  %.in126 = phi ptr [ %i.cc, %.lr.ph.i.i.i ], [ %i.bx, %bb.s ]
  %.sroa.0.09.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn22.i.i, %bb.s ] ; 3 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.023.i.ptr.i, %bb.s ]
  %i.cb = ptrtoint ptr %.in126 to i64
  store i64 %i.cb, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !192
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -8 ; 2 uses
  %i.cc = load ptr, ptr %.sroa.0.0.i.i.i, align 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !195
  %i.cf = icmp ult i64 %i.bq, %i.ce
  br i1 %i.cf, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i, !llvm.loop !536

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.s
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.0.023.i.ptr.i, %bb.s ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ]
  store i64 %i.bu, ptr %.sroa.04.0.lcssa.i.i.i, align 8, !tbaa !192
  %.pre108 = load ptr, ptr %.sroa.050.1, align 8  ; 2 uses
  %8 = ptrtoint ptr %.pre108 to i64
  br label %bb.t

bb.t:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i
  %9 = phi i64 [ %8, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i ], [ %i.bu, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i ]
  %10 = phi ptr [ %.pre108, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i ], [ %i.bo, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i ]
  %.sroa.0.023.i.add.i = add nuw nsw i64 %.sroa.0.023.i.idx.i, 8 ; 2 uses
  %.not.i.i36 = icmp eq i64 %.sroa.0.023.i.add.i, 128
  br i1 %.not.i.i36, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i, label %.lr.ph.i.i.a, !llvm.loop !537

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i: ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.050.1, i64 128 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.cg, %.sroa.10.1
  br i1 %.not7.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i
  %.sroa.0.08.i.i = phi ptr [ %i.cu, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i ], [ %i.cg, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i ] ; 6 uses
  %i.ch = load i64, ptr %.sroa.0.08.i.i, align 8, !tbaa !192 ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr
  %.sroa.0.07.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i, i64 -8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !195 ; 2 uses
  %i.cl = load ptr, ptr %.sroa.0.07.i.i.i, align 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !195
  %i.co = icmp ult i64 %i.ck, %i.cn
  br i1 %i.co, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i10.i, %.lr.ph.i.i14.i
  %.in127 = phi ptr [ %i.cq, %.lr.ph.i.i14.i ], [ %i.cl, %.lr.ph.i10.i ]
  %.sroa.0.09.i.i15.i = phi ptr [ %.sroa.0.0.i.i17.i, %.lr.ph.i.i14.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i10.i ] ; 3 uses
  %.sroa.04.08.i.i16.i = phi ptr [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ], [ %.sroa.0.08.i.i, %.lr.ph.i10.i ]
  %i.cp = ptrtoint ptr %.in127 to i64
  store i64 %i.cp, ptr %.sroa.04.08.i.i16.i, align 8, !tbaa !192
  %.sroa.0.0.i.i17.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i15.i, i64 -8 ; 2 uses
  %i.cq = load ptr, ptr %.sroa.0.0.i.i17.i, align 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 72
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !195
  %i.ct = icmp ult i64 %i.ck, %i.cs
  br i1 %i.ct, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i, !llvm.loop !536

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i, %.lr.ph.i10.i
  %.sroa.04.0.lcssa.i.i12.i = phi ptr [ %.sroa.0.08.i.i, %.lr.ph.i10.i ], [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ]
  store i64 %i.ch, ptr %.sroa.04.0.lcssa.i.i12.i, align 8, !tbaa !192
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 8
  %.not.i13.i = icmp eq ptr %.sroa.0.08.i.i, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i13.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %.lr.ph.i10.i, !llvm.loop !538

bb.u:                                             ; preds = %.noexc20
  %.not21.i20.i = icmp eq ptr %.sroa.050.1, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not21.i20.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %bb.u
  %.pre107 = load ptr, ptr %.sroa.050.1, align 8  ; 2 uses
  %11 = ptrtoint ptr %.pre107 to i64
  br label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.preheader, %bb.aa
  %12 = phi i64 [ %15, %bb.aa ], [ %11, %.lr.ph.i21.i.preheader ]
  %13 = phi ptr [ %16, %bb.aa ], [ %.pre107, %.lr.ph.i21.i.preheader ]
  %.sroa.0.023.i22.i = phi ptr [ %.sroa.0.0.i26.i, %bb.aa ], [ %scevgep.i, %.lr.ph.i21.i.preheader ] ; 7 uses
  %.pn22.i23.i = phi ptr [ %.sroa.0.023.i22.i, %bb.aa ], [ %.sroa.050.1, %.lr.ph.i21.i.preheader ] ; 4 uses
  %i.cv = load ptr, ptr %.sroa.0.023.i22.i, align 8 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !195 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !195
  %i.da = icmp ult i64 %i.cx, %i.cz
  %i.db = ptrtoint ptr %i.cv to i64               ; 2 uses
  br i1 %i.da, label %bb.v, label %bb.z

bb.v:                                             ; preds = %.lr.ph.i21.i
  %i.dc = ptrtoint ptr %.sroa.0.023.i22.i to i64
  %i.dd = sub i64 %i.dc, %i.bh                    ; 3 uses
  %i.de = ashr exact i64 %i.dd, 3                 ; 2 uses
  %i.df = icmp sgt i64 %i.de, 1
  br i1 %i.df, label %bb.w, label %bb.x, !prof !196

bb.w:                                             ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn22.i23.i, i64 16
  %i.dh = sub nsw i64 0, %i.de
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dh
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.di, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.050.1, i64 %i.dd, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

bb.x:                                             ; preds = %bb.v
  %i.dj = icmp eq i64 %i.dd, 8
  br i1 %i.dj, label %bb.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

bb.y:                                             ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw i8, ptr %.pn22.i23.i, i64 8
  store i64 %12, ptr %i.dk, align 8, !tbaa !192
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i: ; preds = %bb.y, %bb.x, %bb.w
  store ptr %i.cv, ptr %.sroa.050.1, align 8, !tbaa !192
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i21.i
  %i.dl = load ptr, ptr %.pn22.i23.i, align 8     ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !195
  %i.do = icmp ult i64 %i.cx, %i.dn
  br i1 %i.do, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i24.i

.lr.ph.i.i28.i:                                   ; preds = %bb.z, %.lr.ph.i.i28.i
  %.in = phi ptr [ %i.dq, %.lr.ph.i.i28.i ], [ %i.dl, %bb.z ]
  %.sroa.0.09.i.i29.i = phi ptr [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i28.i ], [ %.pn22.i23.i, %bb.z ] ; 3 uses
  %.sroa.04.08.i.i30.i = phi ptr [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ], [ %.sroa.0.023.i22.i, %bb.z ]
  %i.dp = ptrtoint ptr %.in to i64
  store i64 %i.dp, ptr %.sroa.04.08.i.i30.i, align 8, !tbaa !192
  %.sroa.0.0.i.i31.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i29.i, i64 -8 ; 2 uses
  %i.dq = load ptr, ptr %.sroa.0.0.i.i31.i, align 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !195
  %i.dt = icmp ult i64 %i.cx, %i.ds
  br i1 %i.dt, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i24.i, !llvm.loop !536

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i24.i: ; preds = %.lr.ph.i.i28.i, %bb.z
  %.sroa.04.0.lcssa.i.i25.i = phi ptr [ %.sroa.0.023.i22.i, %bb.z ], [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ]
  store i64 %i.db, ptr %.sroa.04.0.lcssa.i.i25.i, align 8, !tbaa !192
  %.pre = load ptr, ptr %.sroa.050.1, align 8     ; 2 uses
  %14 = ptrtoint ptr %.pre to i64
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i24.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i
  %15 = phi i64 [ %14, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i24.i ], [ %i.db, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i ]
  %16 = phi ptr [ %.pre, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i24.i ], [ %i.cv, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i ]
  %.sroa.0.0.i26.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i22.i, i64 8
  %.not.i27.i = icmp eq ptr %.sroa.0.023.i22.i, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i27.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %.lr.ph.i21.i, !llvm.loop !537

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit: ; preds = %bb.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i, %bb.j, %._crit_edge, %bb.u, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i
  %.not.i.i137 = phi i1 [ false, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i ], [ true, %bb.j ], [ false, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i ], [ true, %._crit_edge ], [ false, %bb.u ], [ false, %bb.aa ]
  %.sroa.050.0.lcssa135 = phi ptr [ %.sroa.050.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i ], [ null, %bb.j ], [ %.sroa.050.1, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i ], [ %.sroa.050.1, %._crit_edge ], [ %.sroa.050.1, %bb.u ], [ %.sroa.050.1, %bb.aa ] ; 5 uses
  %.sroa.10.0.lcssa134 = phi ptr [ %.sroa.10.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i ], [ null, %bb.j ], [ %.sroa.10.1, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i ], [ %.sroa.10.1, %._crit_edge ], [ %.sroa.10.1, %bb.u ], [ %.sroa.10.1, %bb.aa ]
  %.sroa.15.0.lcssa132 = phi ptr [ %.sroa.15.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i ], [ null, %bb.j ], [ %.sroa.15.1, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i ], [ %.sroa.15.1, %._crit_edge ], [ %.sroa.15.1, %bb.u ], [ %.sroa.15.1, %bb.aa ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.du = load ptr, ptr %1, align 8, !tbaa !50
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !129
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.dw)
          to label %.preheader unwind label %bb.ak

.preheader:                                       ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit
  br i1 %.not.i.i137, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %.preheader
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.sroa.040.099 = phi ptr [ %.sroa.050.0.lcssa135, %.lr.ph100 ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.eb = load ptr, ptr %.sroa.040.099, align 8, !tbaa !198 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !200 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ef = load i32, ptr %i.ee, align 8            ; 2 uses
  %i.eg = lshr i32 %i.ef, 2                       ; 3 uses
  %i.eh = zext nneg i32 %i.eg to i64              ; 2 uses
  store ptr %i.dx, ptr %4, align 8, !tbaa !46
  %i.ei = icmp eq ptr %i.ed, null
  %i.ej = icmp ne i32 %i.eg, 0
  %or.cond.i = and i1 %i.ei, %i.ej
  br i1 %or.cond.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.121) #44
          to label %.noexc22 unwind label %.loopexit.split-lp

.noexc22:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.eh, ptr %i.a, align 8, !tbaa !113
  %i.ek = icmp ugt i32 %i.ef, 63
  br i1 %i.ek, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ad
  %i.el = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc23 unwind label %.loopexit ; 2 uses

.noexc23:                                         ; preds = %.noexc.i
  store ptr %i.el, ptr %4, align 8, !tbaa !78
  %i.em = load i64, ptr %i.a, align 8, !tbaa !113
  store i64 %i.em, ptr %i.dx, align 8, !tbaa !50
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc23, %bb.ad
  %i.en = phi ptr [ %i.el, %.noexc23 ], [ %i.dx, %bb.ad ] ; 2 uses
  switch i32 %i.eg, label %bb.af [
    i32 1, label %bb.ae
    i32 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i
  %i.eo = load i8, ptr %i.ed, align 1, !tbaa !50
  store i8 %i.eo, ptr %i.en, align 1, !tbaa !50
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.en, ptr align 1 %i.ed, i64 %i.eh, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i
  %i.ep = load i64, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  store i64 %i.ep, ptr %i.dy, align 8, !tbaa !49
  %i.eq = load ptr, ptr %4, align 8, !tbaa !78
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ep
  store i8 0, ptr %i.er, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.es = load ptr, ptr %i.dz, align 8, !tbaa !189 ; 6 uses
  %i.et = load ptr, ptr %i.ea, align 8, !tbaa !191
  %.not.i.i24 = icmp eq ptr %i.es, %i.et
  br i1 %.not.i.i24, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 3 uses
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !46
  %i.ev = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.dx
  br i1 %i.ew, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.ex = load i64, ptr %i.dy, align 8, !tbaa !49 ; 3 uses
  %i.ey = icmp ult i64 %i.ex, 16
  call void @llvm.assume(i1 %i.ey)
  %i.ez = add nuw nsw i64 %i.ex, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eu, ptr noundef nonnull align 8 dereferenceable(1) %i.dx, i64 %i.ez, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ah
  store ptr %i.ev, ptr %i.es, align 8, !tbaa !78
  %i.fa = load i64, ptr %i.dx, align 8, !tbaa !50
  store i64 %i.fa, ptr %i.eu, align 8, !tbaa !50
  %.pre.a = load i64, ptr %i.dy, align 8, !tbaa !49
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.fb = phi i64 [ %.pre.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ex, %bb.ai ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !49
  store ptr %i.dx, ptr %4, align 8, !tbaa !78
  store i64 0, ptr %i.dy, align 8, !tbaa !49
  %i.fd = load ptr, ptr %i.dz, align 8, !tbaa !189
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store ptr %i.fe, ptr %i.dz, align 8, !tbaa !189
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.aj:                                            ; preds = %bb.ag
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.es, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.al

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.aj
  %.pre107.a = load ptr, ptr %4, align 8, !tbaa !78 ; 2 uses
  %i.ff = icmp eq ptr %.pre107.a, %i.dx
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.fg = load i64, ptr %i.dx, align 8, !tbaa !50
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %.pre107.a, i64 noundef %i.fh) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.040.099, i64 8 ; 2 uses
  %.not65 = icmp eq ptr %i.fi, %.sroa.10.0.lcssa134
  br i1 %.not65, label %._crit_edge101, label %bb.ab, !llvm.loop !539

bb.ak:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit:                                        ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

.loopexit.split-lp:                               ; preds = %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.al:                                            ; preds = %bb.aj
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.dx
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.al
  %i.fn = load i64, ptr %i.dx, align 8, !tbaa !50
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.al, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %.pn13 = phi { ptr, i32 } [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.fk, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.an

._crit_edge101:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %.preheader
  %.not.i.i.i32 = icmp eq ptr %.sroa.050.0.lcssa135, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %._crit_edge101
  %i.fp = ptrtoint ptr %.sroa.15.0.lcssa132 to i64
  %i.fq = ptrtoint ptr %.sroa.050.0.lcssa135 to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.0.lcssa135, i64 noundef %i.fr) #41
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EED2Ev.exit

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.ak
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %i.fj, %bb.ak ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #40
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit67, %.loopexit.split-lp68, %bb.an
  %.sroa.15.086 = phi ptr [ %.sroa.15.0.lcssa132, %bb.an ], [ %.sroa.10.094, %.loopexit67 ], [ %.sroa.15.090, %.loopexit.split-lp68 ]
  %.sroa.050.077 = phi ptr [ %.sroa.050.0.lcssa135, %bb.an ], [ %.sroa.050.095, %.loopexit67 ], [ %.sroa.050.081, %.loopexit.split-lp68 ] ; 3 uses
  %.pn16 = phi { ptr, i32 } [ %.pn13.pn, %bb.an ], [ %lpad.loopexit69, %.loopexit67 ], [ %lpad.loopexit.split-lp70, %.loopexit.split-lp68 ] ; 2 uses
end_hunk_0
