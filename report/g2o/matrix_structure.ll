Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/matrix_structure?download=true
inline.NumInlined: 316
inline.NumDeleted: 149
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3g2o15MatrixStructure4freeEv:bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.g, align 8, !tbaa !18
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o15MatrixStructure5allocEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !13
  %i.b = icmp eq i32 %i.a, 0
  store i32 %1, ptr %0, align 8, !tbaa !13
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 %2, ptr %i.d, align 4, !tbaa !16
  %i.e = add nsw i32 %1, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = icmp slt i32 %1, -1
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = load i32, ptr %i.d, align 4, !tbaa !16   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i32 %i.l, 0
  %i.o = shl nsw i64 %i.m, 2
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #14
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !17
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16
  %i.u = icmp slt i32 %i.t, %2
  br i1 %i.u, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.v = shl nsw i32 %2, 1                        ; 2 uses
  store i32 %i.v, ptr %i.s, align 4, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #13
  %.pre = load i32, ptr %i.s, align 4, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi i32 [ %.pre, %bb.e ], [ %i.v, %bb.d ] ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i32 %i.z, 0
  %i.ac = shl nsw i64 %i.aa, 2
  %i.ad = select i1 %i.ab, i64 -1, i64 %i.ac
  %i.ae = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #14
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !17
  %.pre8 = load i32, ptr %0, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.af = phi i32 [ %.pre8, %bb.f ], [ %1, %bb.c ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !15
  %i.ai = icmp slt i32 %i.ah, %i.af
  br i1 %i.ai, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aj = shl nsw i32 %i.af, 1                    ; 2 uses
  store i32 %i.aj, ptr %i.ag, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.al) #13
  %.pre9 = load i32, ptr %i.ag, align 8, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = phi i32 [ %.pre9, %bb.i ], [ %i.aj, %bb.h ] ; 2 uses
  %i.ao = add nsw i32 %i.an, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i32 %i.an, -1
  %i.ar = shl nsw i64 %i.ap, 2
  %i.as = select i1 %i.aq, i64 -1, i64 %i.ar
  %i.at = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #14
  store ptr %i.at, ptr %i.ak, align 8, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.b
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3g2o15MatrixStructure5writeESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 %1, ptr %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::basic_ofstream", align 8 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not.i.i.i = icmp ne i64 %1, 0                 ; 2 uses
  br i1 %.not.i.i.i, label %.preheader.preheader, label %"_ZZNK3g2o15MatrixStructure5writeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit"

.preheader:                                       ; preds = %.preheader.preheader
  %.not13.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not13.i.i.i, label %"_ZZNK3g2o15MatrixStructure5writeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit", label %.preheader.preheader, !llvm.loop !25

.preheader.preheader:                             ; preds = %bb.a, %.preheader
  %.1.i.i.i317 = phi i64 [ %i.c, %.preheader ], [ %1, %bb.a ]
  %i.c = add i64 %.1.i.i.i317, -1                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !62
  %i.f = icmp eq i8 %i.e, 46
  br i1 %i.f, label %"_ZZNK3g2o15MatrixStructure5writeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit", label %.preheader, !llvm.loop !25

"_ZZNK3g2o15MatrixStructure5writeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit": ; preds = %.preheader, %.preheader.preheader, %bb.a
  %.sroa.speculated.i.pn.i = phi i64 [ 0, %bb.a ], [ %1, %.preheader ], [ %i.c, %.preheader.preheader ]
  %i.g = load i32, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph236, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEN3g2o7ColSortEEvT_SB_T0_.exit

.lr.ph236:                                        ; preds = %"_ZZNK3g2o15MatrixStructure5writeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.c

._crit_edge237:                                   ; preds = %._crit_edge
  %.not.i.i = icmp eq ptr %.sroa.0161.1.lcssa, %.sroa.13.1.lcssa
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEN3g2o7ColSortEEvT_SB_T0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge237
  %i.k = ptrtoint ptr %.sroa.13.1.lcssa to i64
  %i.l = ptrtoint ptr %.sroa.0161.1.lcssa to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = xor i64 %i.p, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIN3g2o7ColSortEEEEvT_SE_T0_T1_(ptr %.sroa.0161.1.lcssa, ptr %.sroa.13.1.lcssa, i64 noundef %i.q)
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.b
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN3g2o7ColSortEEEEvT_SE_T0_(ptr %.sroa.0161.1.lcssa, ptr %.sroa.13.1.lcssa)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEN3g2o7ColSortEEvT_SB_T0_.exit unwind label %bb.ag

bb.c:                                             ; preds = %.lr.ph236, %._crit_edge
  %i.r = phi i32 [ %i.g, %.lr.ph236 ], [ %i.z, %._crit_edge ]
  %indvars.iv259 = phi i64 [ 0, %.lr.ph236 ], [ %indvars.iv.next260, %._crit_edge ] ; 5 uses
  %.sroa.0161.0234 = phi ptr [ null, %.lr.ph236 ], [ %.sroa.0161.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.13.0233 = phi ptr [ null, %.lr.ph236 ], [ %.sroa.13.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.24.0232 = phi ptr [ null, %.lr.ph236 ], [ %.sroa.24.1.lcssa, %._crit_edge ] ; 2 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv259 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 4        ; 2 uses
  %i.v = load i32, ptr %i.t, align 4, !tbaa !20   ; 2 uses
  %i.w = load i32, ptr %i.u, align 4, !tbaa !20
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %indvars.iv259, 32
  %i.y = sext i32 %i.v to i64
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit53
  %.pre = load i32, ptr %0, align 8, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.z = phi i32 [ %i.r, %bb.c ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.24.1.lcssa = phi ptr [ %.sroa.24.0232, %bb.c ], [ %.sroa.24.2, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.13.1.lcssa = phi ptr [ %.sroa.13.0233, %bb.c ], [ %.sroa.13.2, %._crit_edge.loopexit ] ; 7 uses
  %.sroa.0161.1.lcssa = phi ptr [ %.sroa.0161.0234, %bb.c ], [ %.sroa.0161.2, %._crit_edge.loopexit ] ; 8 uses
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next260, %i.aa
  br i1 %i.ab, label %bb.c, label %._crit_edge237, !llvm.loop !26

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit53
  %indvars.iv = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit53 ] ; 3 uses
  %.sroa.0161.1228 = phi ptr [ %.sroa.0161.0234, %.lr.ph ], [ %.sroa.0161.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit53 ] ; 9 uses
  %.sroa.13.1227 = phi ptr [ %.sroa.13.0233, %.lr.ph ], [ %.sroa.13.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit53 ] ; 6 uses
  %.sroa.24.1226 = phi ptr [ %.sroa.24.0232, %.lr.ph ], [ %.sroa.24.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit53 ] ; 4 uses
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !20
  %.sroa.0.0.insert.ext.i = zext i32 %i.ae to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %.not.i.i31 = icmp eq ptr %.sroa.13.1227, %.sroa.24.1226
  br i1 %.not.i.i31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.insert.insert.i, ptr %.sroa.13.1227, align 4
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.d
  %i.af = ptrtoint ptr %.sroa.13.1227 to i64      ; 2 uses
  %i.ag = ptrtoint ptr %.sroa.0161.1228 to i64    ; 4 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.g, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #15
          to label %.noexc32 unwind label %.loopexit.split-lp183.loopexit.split-lp

.noexc32:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #14
          to label %.noexc33 unwind label %.loopexit.split-lp183.loopexit.split-lp ; 8 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.aq, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0161.1228, %.sroa.13.1227
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc33
  %i.ar = ptrtoaddr ptr %i.ap to i64
  %i.as = add i64 %i.af, -8
  %i.at = sub i64 %i.as, %i.ag                    ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check325 = icmp ult i64 %i.at, 24
  %i.aw = sub i64 %i.ag, %i.ar
  %diff.check327 = icmp ugt i64 %i.aw, -32
  %or.cond = or i1 %min.iters.check325, %diff.check327
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader344, label %vector.ph328

vector.ph328:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec329 = and i64 %i.av, 4611686018427387900  ; 3 uses
  %i.ax = shl i64 %n.vec329, 3                    ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ap, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %.sroa.0161.1228, i64 %i.ax
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph328
  %index331 = phi i64 [ 0, %vector.ph328 ], [ %index.next336, %vector.body330 ] ; 2 uses
  %i.ba = shl i64 %index331, 3                    ; 2 uses
  %next.gep332 = getelementptr i8, ptr %i.ap, i64 %i.ba ; 2 uses
  %next.gep333 = getelementptr i8, ptr %.sroa.0161.1228, i64 %i.ba ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.bb = getelementptr i8, ptr %next.gep333, i64 16
  %wide.load334 = load <2 x i64>, ptr %next.gep333, align 4, !alias.scope !64
  %wide.load335 = load <2 x i64>, ptr %i.bb, align 4, !alias.scope !64
  %i.bc = getelementptr i8, ptr %next.gep332, i64 16
  store <2 x i64> %wide.load334, ptr %next.gep332, align 4, !alias.scope !63
  store <2 x i64> %wide.load335, ptr %i.bc, align 4, !alias.scope !63
  %index.next336 = add nuw i64 %index331, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next336, %n.vec329
  br i1 %i.bd, label %middle.block337, label %vector.body330, !llvm.loop !30

middle.block337:                                  ; preds = %vector.body330
  %cmp.n338 = icmp eq i64 %i.av, %n.vec329
  br i1 %cmp.n338, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader344

.lr.ph.i.i.i.i.i.i.preheader344:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block337
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ay, %middle.block337 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0161.1228, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.az, %middle.block337 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader344, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader344 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader344 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.be = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !64
  store i64 %i.be, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !63
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, %.sroa.13.1227
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !31

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block337, %.noexc33
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ap, %.noexc33 ], [ %i.ay, %middle.block337 ], [ %i.bg, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0161.1228, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %5 = ptrtoint ptr %.sroa.24.1226 to i64
  %6 = sub i64 %5, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0161.1228, i64 noundef %6) #13
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.e
  %.sroa.24.5 = phi ptr [ %i.bh, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.24.1226, %bb.e ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.13.1227, %bb.e ] ; 4 uses
  %.sroa.0161.5 = phi ptr [ %i.ap, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0161.1228, %bb.e ] ; 10 uses
  %.0.lcssa.i.i.i.i.i.i.pn318 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i.pn to i64 ; 2 uses
  %.sroa.13.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !20
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %.not = icmp eq i64 %indvars.iv259, %i.bl
  br i1 %.not, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit53, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit
  %.sroa.2.0.insert.shift.i35 = shl nuw i64 %i.bl, 32
  %.sroa.0.0.insert.insert.i37 = or disjoint i64 %.sroa.2.0.insert.shift.i35, %indvars.iv259 ; 2 uses
  %.not.i.i38 = icmp eq ptr %.sroa.13.3, %.sroa.24.5
  br i1 %.not.i.i38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %.sroa.0.0.insert.insert.i37, ptr %.sroa.13.3, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit53

bb.k:                                             ; preds = %bb.i
  %i.bn = ptrtoint ptr %.sroa.13.3 to i64
  %i.bo = ptrtoint ptr %.sroa.0161.5 to i64       ; 4 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.l, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i39

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #15
          to label %.noexc51 unwind label %.loopexit.split-lp188.loopexit.split-lp

.noexc51:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i39: ; preds = %bb.k
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i40 = tail call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i40, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i41 = icmp ne i64 %i.bv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i41)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #14
          to label %.noexc52 unwind label %.loopexit.split-lp188.loopexit.split-lp ; 8 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i39
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 %.sroa.0.0.insert.insert.i37, ptr %i.by, align 4
  %.not10.i.i.i.i.i.i42 = icmp eq ptr %.sroa.0161.5, %.sroa.24.5
  br i1 %.not10.i.i.i.i.i.i42, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i47, label %.lr.ph.i.i.i.i.i.i43.preheader

.lr.ph.i.i.i.i.i.i43.preheader:                   ; preds = %.noexc52
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = sub i64 %.0.lcssa.i.i.i.i.i.i.pn318, %i.bo ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ca, 24
  %i.cd = sub i64 %i.bo, %i.bz
  %diff.check = icmp ugt i64 %i.cd, -32
  %or.cond341 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond341, label %.lr.ph.i.i.i.i.i.i43.preheader343, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i43.preheader
  %n.vec = and i64 %i.cc, 4611686018427387900     ; 3 uses
  %i.ce = shl i64 %n.vec, 3                       ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bx, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %.sroa.0161.5, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bx, i64 %i.ch ; 2 uses
  %next.gep319 = getelementptr i8, ptr %.sroa.0161.5, i64 %i.ch ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.ci = getelementptr i8, ptr %next.gep319, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep319, align 4, !alias.scope !68
  %wide.load320 = load <2 x i64>, ptr %i.ci, align 4, !alias.scope !68
  %i.cj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !67
  store <2 x i64> %wide.load320, ptr %i.cj, align 4, !alias.scope !67
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i47, label %.lr.ph.i.i.i.i.i.i43.preheader343

.lr.ph.i.i.i.i.i.i43.preheader343:                ; preds = %.lr.ph.i.i.i.i.i.i43.preheader, %middle.block
  %.012.i.i.i.i.i.i44.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i43.preheader ], [ %i.cf, %middle.block ] ; 2 uses
  %.0911.i.i.i.i.i.i45.ph = phi ptr [ %.sroa.0161.5, %.lr.ph.i.i.i.i.i.i43.preheader ], [ %i.cg, %middle.block ] ; 3 uses
  %.0911.i.i.i.i.i.i45.ph367 = ptrtoaddr ptr %.0911.i.i.i.i.i.i45.ph to i64
  %i.cl = sub i64 %.0.lcssa.i.i.i.i.i.i.pn318, %.0911.i.i.i.i.i.i45.ph367 ; 2 uses
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = add nuw nsw i64 %i.cm, 1
  %xtraiter = and i64 %i.cn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i43.prol.loopexit, label %.lr.ph.i.i.i.i.i.i43.prol

.lr.ph.i.i.i.i.i.i43.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i43.preheader343, %.lr.ph.i.i.i.i.i.i43.prol
  %.012.i.i.i.i.i.i44.prol = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i43.prol ], [ %.012.i.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i.i43.preheader343 ] ; 2 uses
  %.0911.i.i.i.i.i.i45.prol = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i43.prol ], [ %.0911.i.i.i.i.i.i45.ph, %.lr.ph.i.i.i.i.i.i43.preheader343 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i43.prol ], [ 0, %.lr.ph.i.i.i.i.i.i43.preheader343 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.co = load i64, ptr %.0911.i.i.i.i.i.i45.prol, align 4, !alias.scope !68
  store i64 %i.co, ptr %.012.i.i.i.i.i.i44.prol, align 4, !alias.scope !67
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i45.prol, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i44.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i43.prol.loopexit, label %.lr.ph.i.i.i.i.i.i43.prol, !llvm.loop !36

.lr.ph.i.i.i.i.i.i43.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i43.prol, %.lr.ph.i.i.i.i.i.i43.preheader343
  %.lcssa350.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i43.preheader343 ], [ %i.cq, %.lr.ph.i.i.i.i.i.i43.prol ]
  %.012.i.i.i.i.i.i44.unr = phi ptr [ %.012.i.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i.i43.preheader343 ], [ %i.cq, %.lr.ph.i.i.i.i.i.i43.prol ]
  %.0911.i.i.i.i.i.i45.unr = phi ptr [ %.0911.i.i.i.i.i.i45.ph, %.lr.ph.i.i.i.i.i.i43.preheader343 ], [ %i.cp, %.lr.ph.i.i.i.i.i.i43.prol ]
  %i.cr = icmp ult i64 %i.cl, 56
  br i1 %i.cr, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i47, label %.lr.ph.i.i.i.i.i.i43

.lr.ph.i.i.i.i.i.i43:                             ; preds = %.lr.ph.i.i.i.i.i.i43.prol.loopexit, %.lr.ph.i.i.i.i.i.i43
  %.012.i.i.i.i.i.i44 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i43 ], [ %.012.i.i.i.i.i.i44.unr, %.lr.ph.i.i.i.i.i.i43.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i45 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i43 ], [ %.0911.i.i.i.i.i.i45.unr, %.lr.ph.i.i.i.i.i.i43.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.cs = load i64, ptr %.0911.i.i.i.i.i.i45, align 4, !alias.scope !68
  store i64 %i.cs, ptr %.012.i.i.i.i.i.i44, align 4, !alias.scope !67
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i45, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i44, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.cv = load i64, ptr %i.ct, align 4, !alias.scope !70
  store i64 %i.cv, ptr %i.cu, align 4, !alias.scope !69
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i45, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i44, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.cy = load i64, ptr %i.cw, align 4, !alias.scope !72
  store i64 %i.cy, ptr %i.cx, align 4, !alias.scope !71
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i45, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i44, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.db = load i64, ptr %i.cz, align 4, !alias.scope !74
  store i64 %i.db, ptr %i.da, align 4, !alias.scope !73
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i45, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i44, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.de = load i64, ptr %i.dc, align 4, !alias.scope !76
  store i64 %i.de, ptr %i.dd, align 4, !alias.scope !75
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i45, i64 40
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i44, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.dh = load i64, ptr %i.df, align 4, !alias.scope !78
  store i64 %i.dh, ptr %i.dg, align 4, !alias.scope !77
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i45, i64 48
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i44, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.dk = load i64, ptr %i.di, align 4, !alias.scope !80
  store i64 %i.dk, ptr %i.dj, align 4, !alias.scope !79
  %i.dl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i45, i64 56 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i44, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.dn = load i64, ptr %i.dl, align 4, !alias.scope !82
  store i64 %i.dn, ptr %i.dm, align 4, !alias.scope !81
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i45, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i44, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i46.7 = icmp eq ptr %i.dl, %.0.lcssa.i.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i.i.i46.7, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i47, label %.lr.ph.i.i.i.i.i.i43, !llvm.loop !58

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i47: ; preds = %.lr.ph.i.i.i.i.i.i43.prol.loopexit, %.lr.ph.i.i.i.i.i.i43, %middle.block, %.noexc52
  %.0.lcssa.i.i.i.i.i.i48 = phi ptr [ %i.bx, %.noexc52 ], [ %i.cf, %middle.block ], [ %.lcssa350.unr, %.lr.ph.i.i.i.i.i.i43.prol.loopexit ], [ %i.dp, %.lr.ph.i.i.i.i.i.i43 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i48, i64 8
  %.not.i23.i.i.i49 = icmp eq ptr %.sroa.0161.5, null
  br i1 %.not.i23.i.i.i49, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i47
  %7 = ptrtoint ptr %.sroa.24.5 to i64
  %8 = sub i64 %7, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0161.5, i64 noundef %8) #13
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50: ; preds = %bb.m, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i47
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit53

.loopexit.split-lp183.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp188.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i39, %bb.l
  %lpad.loopexit.split-lp348 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit53: ; preds = %bb.j, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit
  %.sroa.24.2 = phi ptr [ %.sroa.24.5, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ], [ %i.dr, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50 ], [ %.sroa.24.5, %bb.j ] ; 2 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.3, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ], [ %i.dq, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50 ], [ %i.bm, %bb.j ] ; 2 uses
  %.sroa.0161.2 = phi ptr [ %.sroa.0161.5, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ], [ %i.bx, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50 ], [ %.sroa.0161.5, %bb.j ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ds = load i32, ptr %i.u, align 4, !tbaa !20
  %i.dt = sext i32 %i.ds to i64
  %i.du = icmp slt i64 %indvars.iv.next, %i.dt
  br i1 %i.du, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !59

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEN3g2o7ColSortEEvT_SB_T0_.exit: ; preds = %"_ZZNK3g2o15MatrixStructure5writeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit", %._crit_edge237, %.noexc
  %.not.i.i290 = phi i1 [ false, %.noexc ], [ true, %._crit_edge237 ], [ true, %"_ZZNK3g2o15MatrixStructure5writeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit" ]
  %.sroa.0161.0.lcssa286 = phi ptr [ %.sroa.0161.1.lcssa, %.noexc ], [ %.sroa.0161.1.lcssa, %._crit_edge237 ], [ null, %"_ZZNK3g2o15MatrixStructure5writeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit" ] ; 5 uses
  %.sroa.13.0.lcssa285 = phi ptr [ %.sroa.13.1.lcssa, %.noexc ], [ %.sroa.13.1.lcssa, %._crit_edge237 ], [ null, %"_ZZNK3g2o15MatrixStructure5writeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit" ] ; 2 uses
  %.sroa.24.0.lcssa281 = phi ptr [ %.sroa.24.1.lcssa, %.noexc ], [ %.sroa.24.1.lcssa, %._crit_edge237 ], [ null, %"_ZZNK3g2o15MatrixStructure5writeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.dv, ptr %3, align 8, !tbaa !85
  %i.dw = icmp eq ptr %2, null
  %or.cond.i.i.i = and i1 %.not.i.i.i, %i.dw
  br i1 %or.cond.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEN3g2o7ColSortEEvT_SB_T0_.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #15
          to label %.noexc54 unwind label %bb.ah

.noexc54:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEN3g2o7ColSortEEvT_SB_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %1, ptr %i.a, align 8, !tbaa !87
  %i.dx = icmp ugt i64 %1, 15
  br i1 %i.dx, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.o
  %i.dy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc55 unwind label %bb.ah  ; 2 uses

.noexc55:                                         ; preds = %.noexc.i.i.i
  store ptr %i.dy, ptr %3, align 8, !tbaa !89
  %i.dz = load i64, ptr %i.a, align 8, !tbaa !87
  store i64 %i.dz, ptr %i.dv, align 8, !tbaa !62
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc55, %bb.o
  %i.ea = phi ptr [ %i.dy, %.noexc55 ], [ %i.dv, %bb.o ] ; 2 uses
  switch i64 %1, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  %i.eb = load i8, ptr %2, align 1, !tbaa !62
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !62
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ea, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i
  %i.ec = load i64, ptr %i.a, align 8, !tbaa !87  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !90
  %i.ee = load ptr, ptr %3, align 8, !tbaa !89
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ec
  store i8 0, ptr %i.ef, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 16)
          to label %bb.s unwind label %bb.ai

bb.s:                                             ; preds = %bb.r
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.s
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %2, i64 noundef %.sroa.speculated.i.pn.i)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !92
  %i.ej = getelementptr i8, ptr %i.ei, i64 -24
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = getelementptr inbounds i8, ptr %i.eh, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 240
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !108 ; 6 uses
  %.not.i.i.i88 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i88, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80, %bb.ac, %bb.z, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit
  invoke void @_ZSt16__throw_bad_castv() #15
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !113
  %.not.i1.i.i = icmp eq i8 %i.ep, 0
  br i1 %.not.i1.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 67
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !62
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.en)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc90:                                         ; preds = %bb.u
  %i.es = load ptr, ptr %i.en, align 8, !tbaa !92
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = invoke noundef signext i8 %i.eu(ptr noundef nonnull align 8 dereferenceable(570) %i.en, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !60

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc90, %bb.t
  %.0.i.i.i = phi i8 [ %i.er, %bb.t ], [ %i.ev, %.noexc90 ]
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, i8 noundef signext %.0.i.i.i)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ew)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc92
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.1, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ez = load ptr, ptr %4, align 8, !tbaa !92
  %i.fa = getelementptr i8, ptr %i.ez, i64 -24
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds i8, ptr %4, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 240
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !108 ; 6 uses
  %.not.i.i.i94 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i94, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  %i.fg = load i8, ptr %i.ff, align 8, !tbaa !113
  %.not.i1.i.i96 = icmp eq i8 %i.fg, 0
  br i1 %.not.i1.i.i96, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 67
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !62
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fe)
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %bb.w
  %i.fj = load ptr, ptr %i.fe, align 8, !tbaa !92
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = invoke noundef signext i8 %i.fl(ptr noundef nonnull align 8 dereferenceable(570) %i.fe, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !60

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97: ; preds = %.noexc100, %bb.v
  %.0.i.i.i98 = phi i8 [ %i.fi, %bb.v ], [ %i.fm, %.noexc100 ]
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %.0.i.i.i98)
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc102:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fn)
          to label %_ZNSolsEPFRSoS_E.exit62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit62:                          ; preds = %.noexc102
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.2, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %_ZNSolsEPFRSoS_E.exit62
  %i.fq = ptrtoint ptr %.sroa.13.0.lcssa285 to i64
  %i.fr = ptrtoint ptr %.sroa.0161.0.lcssa286 to i64 ; 2 uses
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = ashr exact i64 %i.fs, 3
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.ft)
end_hunk_0
begin_hunk_1_@_ZNK3g2o15MatrixStructure5writeESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.hc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, i8 noundef signext %.0.i.i.i120)
          to label %.noexc124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc124:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i119
  %i.hd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hc)
          to label %_ZNSolsEPFRSoS_E.exit71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit71:                          ; preds = %.noexc124
  %i.he = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.4, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %_ZNSolsEPFRSoS_E.exit71
  %i.hf = load i32, ptr %0, align 8, !tbaa !20
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.hf)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !92
  %i.hi = getelementptr i8, ptr %i.hh, i64 -24
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = getelementptr inbounds i8, ptr %i.hg, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 240
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !108 ; 6 uses
  %.not.i.i.i127 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i127, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i128

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i128: ; preds = %bb.ac
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  %i.ho = load i8, ptr %i.hn, align 8, !tbaa !113
  %.not.i1.i.i129 = icmp eq i8 %i.ho, 0
  br i1 %.not.i1.i.i129, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i128
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 67
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !62
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i130

bb.ae:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i128
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hm)
          to label %.noexc133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc133:                                        ; preds = %bb.ae
  %i.hr = load ptr, ptr %i.hm, align 8, !tbaa !92
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 48
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = invoke noundef signext i8 %i.ht(ptr noundef nonnull align 8 dereferenceable(570) %i.hm, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !60

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i130: ; preds = %.noexc133, %bb.ad
  %.0.i.i.i131 = phi i8 [ %i.hq, %bb.ad ], [ %i.hu, %.noexc133 ]
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, i8 noundef signext %.0.i.i.i131)
          to label %.noexc135 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc135:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i130
  %i.hw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hv)
          to label %_ZNSolsEPFRSoS_E.exit75.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit75.preheader:                ; preds = %.noexc135
  br i1 %.not.i.i290, label %_ZNSolsEPFRSoS_E.exit75._crit_edge, label %.lr.ph243

_ZNSolsEPFRSoS_E.exit75._crit_edge:               ; preds = %_ZNSolsEPFRSoS_E.exit82, %_ZNSolsEPFRSoS_E.exit75.preheader
  %i.hx = load ptr, ptr %4, align 8, !tbaa !92
  %i.hy = getelementptr i8, ptr %i.hx, i64 -24
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds i8, ptr %4, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !114
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.id = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.dv
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit75._crit_edge
  %i.if = load i64, ptr %i.dv, align 8, !tbaa !62
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit75._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %.not.i.i.i76 = icmp eq ptr %.sroa.0161.0.lcssa286, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ih = ptrtoint ptr %.sroa.24.0.lcssa281 to i64
  %i.ii = sub i64 %i.ih, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0161.0.lcssa286, i64 noundef %i.ii) #13
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.af
  %i.ij = icmp eq i32 %i.ic, 0
  ret i1 %i.ij

bb.ag:                                            ; preds = %.noexc, %bb.b
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ah:                                            ; preds = %.noexc.i.i.i, %bb.n
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.ai:                                            ; preds = %bb.r
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.lr.ph243:                                        ; preds = %_ZNSolsEPFRSoS_E.exit75.preheader, %_ZNSolsEPFRSoS_E.exit82
  %.sroa.0150.0242 = phi ptr [ %i.jk, %_ZNSolsEPFRSoS_E.exit82 ], [ %.sroa.0161.0.lcssa286, %_ZNSolsEPFRSoS_E.exit75.preheader ] ; 3 uses
  %i.in = load i32, ptr %.sroa.0150.0242, align 4, !tbaa !23
  %i.io = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.in)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aj:                                            ; preds = %.lr.ph243
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.io, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78: ; preds = %bb.aj
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0150.0242, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !24
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.io, i32 noundef %i.ir)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.is, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80: ; preds = %bb.ak
  %i.iu = load ptr, ptr %i.is, align 8, !tbaa !92
  %i.iv = getelementptr i8, ptr %i.iu, i64 -24
  %i.iw = load i64, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds i8, ptr %i.is, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 240
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !108 ; 6 uses
  %.not.i.i.i138 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i138, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i139

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i139: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 56
  %i.jb = load i8, ptr %i.ja, align 8, !tbaa !113
  %.not.i1.i.i140 = icmp eq i8 %i.jb, 0
  br i1 %.not.i1.i.i140, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i139
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 67
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !62
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i141

bb.am:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i139
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.iz)
          to label %.noexc144 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc144:                                        ; preds = %bb.am
  %i.je = load ptr, ptr %i.iz, align 8, !tbaa !92
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 48
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = invoke noundef signext i8 %i.jg(ptr noundef nonnull align 8 dereferenceable(570) %i.iz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i141 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !60

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i141: ; preds = %.noexc144, %bb.al
  %.0.i.i.i142 = phi i8 [ %i.jd, %bb.al ], [ %i.jh, %.noexc144 ]
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.is, i8 noundef signext %.0.i.i.i142)
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc146:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i141
  %i.jj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ji)
          to label %_ZNSolsEPFRSoS_E.exit82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit82:                          ; preds = %.noexc146
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0150.0242, i64 8 ; 2 uses
  %.not181 = icmp eq ptr %i.jk, %.sroa.13.0.lcssa285
  br i1 %.not181, label %_ZNSolsEPFRSoS_E.exit75._crit_edge, label %.lr.ph243, !llvm.loop !61

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc146, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i141, %.noexc144, %bb.am, %bb.ak, %bb.aj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78, %.lr.ph243, %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %bb.s, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEPFRSoS_E.exit, %_ZNSolsEPFRSoS_E.exit62, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64, %_ZNSolsEPFRSoS_E.exit67, %_ZNSolsEPFRSoS_E.exit71, %bb.u, %.noexc90, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc92, %bb.w, %.noexc100, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97, %.noexc102, %bb.y, %.noexc111, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i108, %.noexc113, %bb.ab, %.noexc122, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i119, %.noexc124, %bb.ae, %.noexc133, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i130, %.noexc135
  %lpad.loopexit.split-lp342 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #16
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp342, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.im, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.jl = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.dv
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.an
  %i.jn = load i64, ptr %i.dv, align 8, !tbaa !62
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.ah
  %.pn.pn.pn = phi { ptr, i32 } [ %i.il, %bb.ah ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.pn.pn, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp188.loopexit.split-lp, %.loopexit.split-lp183.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.ag
  %.sroa.24.4 = phi ptr [ %.sroa.24.1.lcssa, %bb.ag ], [ %.sroa.24.0.lcssa281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %.sroa.24.1226, %.loopexit.split-lp183.loopexit.split-lp ], [ %.sroa.24.5, %.loopexit.split-lp188.loopexit.split-lp ]
  %.sroa.0161.4 = phi ptr [ %.sroa.0161.1.lcssa, %bb.ag ], [ %.sroa.0161.0.lcssa286, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %.sroa.0161.1228, %.loopexit.split-lp183.loopexit.split-lp ], [ %.sroa.0161.5, %.loopexit.split-lp188.loopexit.split-lp ] ; 3 uses
  %.pn27.pn = phi { ptr, i32 } [ %i.ik, %bb.ag ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp183.loopexit.split-lp ], [ %lpad.loopexit.split-lp348, %.loopexit.split-lp188.loopexit.split-lp ]
  %.not.i.i.i86 = icmp eq ptr %.sroa.0161.4, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit87, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jp = ptrtoint ptr %.sroa.24.4 to i64
  %i.jq = ptrtoint ptr %.sroa.0161.4 to i64
  %i.jr = sub i64 %i.jp, %i.jq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0161.4, i64 noundef %i.jr) #13
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit87

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit87:      ; preds = %bb.ao, %bb.ap
  resume { ptr, i32 } %.pn27.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #2 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #1 align 2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIN3g2o7ColSortEEEEvT_SE_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph33

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN3g2o7ColSortEEEET_SE_SE_T0_.exit
  %i.i = icmp eq i64 %i.al, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph33, !llvm.loop !115

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.011.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN3g2o7ColSortEEEEvT_SE_RT0_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN3g2o7ColSortEEEEvT_SE_RT0_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph33:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2032 = phi ptr [ %.sroa.011.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02131 = phi i64 [ %i.al, %bb.b ], [ %2, %.lr.ph ]
  %i.j = phi i64 [ %i.ao, %bb.b ], [ %i.d, %.lr.ph ]
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge2032, i64 -8
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN3g2o7ColSortEEEEvT_SE_SE_SE_T0_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m)
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph33
  %.sroa.011.0.i.i = phi ptr [ %i.f, %.lr.ph33 ], [ %i.ak, %bb.g ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge2032, %.lr.ph33 ], [ %.sroa.0.1.i.i, %bb.g ]
  %i.n = load i32, ptr %i.g, align 4, !tbaa !24   ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i, %bb.c
  %.sroa.011.1.i.i = phi ptr [ %.sroa.011.0.i.i, %bb.c ], [ %i.v, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i ] ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !24   ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.n
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i32 %i.p, %i.n
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread14.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i: ; preds = %bb.e
  %i.s = load i32, ptr %.sroa.011.1.i.i, align 4, !tbaa !23
  %i.t = load i32, ptr %0, align 4, !tbaa !23
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread14.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 8
  br label %bb.d, !llvm.loop !116

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread14.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 4 ; 2 uses
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.thread.i.i.backedge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread14.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread14.i.i ], [ %.sroa.0.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.thread.i.i.backedge ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 6 uses
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !24   ; 2 uses
  %i.z = icmp slt i32 %i.n, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.thread.i.i.backedge, label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.thread.i.i
  %i.aa = icmp eq i32 %i.n, %i.y
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.thread15.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.i.i: ; preds = %bb.f
  %i.ab = load i32, ptr %0, align 4, !tbaa !23
  %i.ac = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !23
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.thread.i.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.thread15.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.thread.i.i.backedge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.thread.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.thread.i.i, !llvm.loop !117

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.thread15.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.i.i, %bb.f
  %i.ae = icmp ult ptr %.sroa.011.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ae, label %bb.g, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN3g2o7ColSortEEEET_SE_SE_T0_.exit

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.thread15.i.i
  %i.af = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 2 uses
  %i.ag = load i32, ptr %.sroa.011.1.i.i, align 4, !tbaa !20
  %i.ah = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !20
  store i32 %i.ah, ptr %.sroa.011.1.i.i, align 4, !tbaa !20
  store i32 %i.ag, ptr %.sroa.0.1.i.i, align 4, !tbaa !20
  %i.ai = load i32, ptr %i.w, align 4, !tbaa !20
  %i.aj = load i32, ptr %i.af, align 4, !tbaa !20
  store i32 %i.aj, ptr %i.w, align 4, !tbaa !20
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 8
  br label %bb.c, !llvm.loop !118

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN3g2o7ColSortEEEET_SE_SE_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit8.thread15.i.i
  %i.al = add nsw i64 %.02131, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIN3g2o7ColSortEEEEvT_SE_T0_T1_(ptr %.sroa.011.1.i.i, ptr %storemerge2032, i64 noundef %i.al)
  %i.am = ptrtoint ptr %.sroa.011.1.i.i to i64
  %i.an = sub i64 %i.am, %i.a
  %i.ao = ashr exact i64 %i.an, 3                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 16
  br i1 %i.ap, label %bb.b, label %.loopexit, !llvm.loop !115

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN3g2o7ColSortEEEET_SE_SE_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN3g2o7ColSortEEEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.pre23.i = load i32, ptr %i.e, align 4, !tbaa !24
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.f = phi i32 [ %i.bk, %bb.f ], [ %.pre23.i, %.lr.ph.i ] ; 2 uses
  %.sroa.08.021.i.idx = phi i64 [ %.sroa.08.021.i.add, %bb.f ], [ 8, %.lr.ph.i ] ; 3 uses
  %.pn20.i = phi ptr [ %.sroa.08.021.i.ptr, %bb.f ], [ %0, %.lr.ph.i ] ; 2 uses
  %i.g = add i64 %indvar, 1
  %.sroa.08.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.08.021.i.idx ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = icmp slt i32 %i.i, %i.f
  br i1 %i.j, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %i.i, %i.f
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread17.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o7ColSortEEclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i: ; preds = %bb.c
  %i.l = load i32, ptr %.sroa.08.021.i.ptr, align 4, !tbaa !23
  %i.m = load i32, ptr %0, align 4, !tbaa !23
  %i.n = icmp slt i32 %i.l, %i.m
end_hunk_1
