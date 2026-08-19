inline.NumInlined: 228
inline.NumDeleted: 135
begin_hunk_0_@_ZNSt6vectorIN3gmx14ExclusionBlockESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a

_ZNKSt6vectorIN3gmx14ExclusionBlockESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #15 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17   ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !20     ; 4 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZNKSt6vectorIN3gmx14ExclusionBlockESaIS1_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = getelementptr inbounds i8, ptr null, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store ptr %i.y, ptr %i.z, align 8, !tbaa !21
  br label %bb.g

bb.c:                                             ; preds = %_ZNKSt6vectorIN3gmx14ExclusionBlockESaIS1_EE12_M_check_lenEmPKc.exit
  %i.aa = icmp ugt i64 %i.w, 9223372036854775804
  br i1 %i.aa, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !27

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #14
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #15
          to label %.noexc26 unwind label %bb.j   ; 5 uses

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !21
  %i.af = icmp samesign ugt i64 %i.w, 4
  br i1 %i.af, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.t, i64 %i.w, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc26
  %i.ag = icmp eq i64 %i.w, 4
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.t, align 4, !tbaa !12
  store i32 %i.ah, ptr %i.ab, align 4, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %.thread
  %i.ai = phi ptr [ %i.ad, %bb.d ], [ %i.ad, %bb.e ], [ %i.ad, %bb.f ], [ %i.y, %.thread ]
  %i.aj = phi ptr [ %i.ac, %bb.d ], [ %i.ac, %bb.e ], [ %i.ac, %bb.f ], [ %i.x, %.thread ]
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !17
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN3gmx14ExclusionBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.p, %bb.g ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.c, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.ak = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !28, !alias.scope !37, !noalias !34
  store <2 x ptr> %i.ak, ptr %.012.i.i.i, align 8, !tbaa !28, !alias.scope !34, !noalias !37
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21, !alias.scope !37, !noalias !34
  store ptr %i.an, ptr %i.al, align 8, !tbaa !21, !alias.scope !34, !noalias !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !37, !noalias !34
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx14ExclusionBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !39

_ZNSt6vectorIN3gmx14ExclusionBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.ap, %.lr.ph.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN3gmx14ExclusionBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN3gmx14ExclusionBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.aw, %.lr.ph.i.i.i28 ], [ %i.aq, %_ZNSt6vectorIN3gmx14ExclusionBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i30 = phi ptr [ %i.av, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIN3gmx14ExclusionBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.ar = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !tbaa !28, !alias.scope !43, !noalias !40
  store <2 x ptr> %i.ar, ptr %.012.i.i.i29, align 8, !tbaa !28, !alias.scope !40, !noalias !43
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21, !alias.scope !43, !noalias !40
  store ptr %i.au, ptr %i.as, align 8, !tbaa !21, !alias.scope !40, !noalias !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i30, i8 0, i64 24, i1 false), !alias.scope !43, !noalias !40
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN3gmx14ExclusionBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !39

_ZNSt6vectorIN3gmx14ExclusionBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIN3gmx14ExclusionBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.aq, %_ZNSt6vectorIN3gmx14ExclusionBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.aw, %.lr.ph.i.i.i28 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN3gmx14ExclusionBlockESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN3gmx14ExclusionBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !26
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ba) #16
  br label %_ZNSt12_Vector_baseIN3gmx14ExclusionBlockESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN3gmx14ExclusionBlockESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN3gmx14ExclusionBlockESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !31
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !26
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  %i.bf = tail call ptr @__cxa_begin_catch(ptr %i.be) #13 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #16
  invoke void @__cxa_rethrow() #14
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bc

bb.l:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #17
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5nblib14offsetGmxBlockESt6vectorIN3gmx14ExclusionBlockESaIS2_EEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef align 8 captures(none) %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !45     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  %.not12 = icmp eq ptr %i.a, %i.c
  br i1 %.not12, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert23 = insertelement <8 x i32> poison, i32 %2, i64 0
  %broadcast.splat24 = shufflevector <8 x i32> %broadcast.splatinsert23, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.lr.ph

._crit_edge:                                      ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ZN5nblib14offsetGmxBlockES3_IN3gmx14ExclusionBlockESaIS9_EEiE3$_0ET0_T_SE_SD_T1_.exit", %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  store ptr %i.g, ptr %i.e, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ZN5nblib14offsetGmxBlockES3_IN3gmx14ExclusionBlockESaIS9_EEiE3$_0ET0_T_SE_SD_T1_.exit"
  %.sroa.09.013 = phi ptr [ %i.ai, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ZN5nblib14offsetGmxBlockES3_IN3gmx14ExclusionBlockESaIS9_EEiE3$_0ET0_T_SE_SD_T1_.exit" ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %i.h = load ptr, ptr %.sroa.09.013, align 8, !tbaa !28 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %.not7.i = icmp eq ptr %i.h, %i.j
  br i1 %.not7.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ZN5nblib14offsetGmxBlockES3_IN3gmx14ExclusionBlockESaIS9_EEiE3$_0ET0_T_SE_SD_T1_.exit", label %iter.check

iter.check:                                       ; preds = %.lr.ph
  %3 = ptrtoaddr ptr %i.j to i64
  %4 = ptrtoaddr ptr %i.h to i64
  %i.k = add i64 %3, -4
  %i.l = sub i64 %i.k, %4                         ; 3 uses
  %i.m = lshr i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.l, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check18 = icmp ult i64 %i.l, 124
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.n, 24
  %n.vec = and i64 %i.n, 9223372036854775776      ; 4 uses
  %i.p = shl i64 %n.vec, 2
  %i.q = getelementptr i8, ptr %i.h, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.r ; 5 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 32  ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 64  ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 96  ; 2 uses
  %wide.load = load <8 x i32>, ptr %next.gep, align 4, !tbaa !12
  %wide.load19 = load <8 x i32>, ptr %i.s, align 4, !tbaa !12
  %wide.load20 = load <8 x i32>, ptr %i.t, align 4, !tbaa !12
  %wide.load21 = load <8 x i32>, ptr %i.u, align 4, !tbaa !12
  %i.v = add nsw <8 x i32> %wide.load, %broadcast.splat
  %i.w = add nsw <8 x i32> %wide.load19, %broadcast.splat
  %i.x = add nsw <8 x i32> %wide.load20, %broadcast.splat
  %i.y = add nsw <8 x i32> %wide.load21, %broadcast.splat
  store <8 x i32> %i.v, ptr %next.gep, align 4, !tbaa !12
  store <8 x i32> %i.w, ptr %i.s, align 4, !tbaa !12
  store <8 x i32> %i.x, ptr %i.t, align 4, !tbaa !12
  store <8 x i32> %i.y, ptr %i.u, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ZN5nblib14offsetGmxBlockES3_IN3gmx14ExclusionBlockESaIS9_EEiE3$_0ET0_T_SE_SD_T1_.exit", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.n, 9223372036854775800    ; 3 uses
  %i.aa = shl i64 %n.vec22, 2
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.aa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index25 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next28, %vec.epilog.vector.body ] ; 2 uses
  %i.ac = shl i64 %index25, 2
  %next.gep26 = getelementptr i8, ptr %i.h, i64 %i.ac ; 2 uses
  %wide.load27 = load <8 x i32>, ptr %next.gep26, align 4, !tbaa !12
  %i.ad = add nsw <8 x i32> %wide.load27, %broadcast.splat24
  store <8 x i32> %i.ad, ptr %next.gep26, align 4, !tbaa !12
  %index.next28 = add nuw i64 %index25, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next28, %n.vec22
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !50

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n29 = icmp eq i64 %i.n, %n.vec22
  br i1 %cmp.n29, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ZN5nblib14offsetGmxBlockES3_IN3gmx14ExclusionBlockESaIS9_EEiE3$_0ET0_T_SE_SD_T1_.exit", label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.09.i.ph = phi ptr [ %i.h, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.04.09.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.sroa.04.09.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.af = load i32, ptr %.sroa.04.09.i, align 4, !tbaa !12
  %i.ag = add nsw i32 %i.af, %2
  store i32 %i.ag, ptr %.sroa.04.09.i, align 4, !tbaa !12
  %i.ah = getelementptr i8, ptr %.sroa.04.09.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, %i.j
  br i1 %.not.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ZN5nblib14offsetGmxBlockES3_IN3gmx14ExclusionBlockESaIS9_EEiE3$_0ET0_T_SE_SD_T1_.exit", label %.lr.ph.i, !llvm.loop !51

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ZN5nblib14offsetGmxBlockES3_IN3gmx14ExclusionBlockESaIS9_EEiE3$_0ET0_T_SE_SD_T1_.exit": ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ai, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTSSt5tupleIJiiEE", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!6, !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = !{!18, !19, i64 8}
!18 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p1 int", !11, i64 0}
!20 = !{!18, !19, i64 0}
!21 = !{!18, !19, i64 16}
!22 = distinct !{!22, !14}
!23 = !{!24, !25, i64 8}
!24 = !{!"_ZTSNSt12_Vector_baseIN3gmx14ExclusionBlockESaIS1_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!25 = !{!"p1 _ZTSN3gmx14ExclusionBlockE", !11, i64 0}
!26 = !{!24, !25, i64 16}
!27 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!28 = !{!19, !19, i64 0}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = distinct !{!30, !14}
!31 = !{!24, !25, i64 0}
!32 = distinct !{!32, !14}
!33 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZSt19__relocate_object_aIN3gmx14ExclusionBlockES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!36 = distinct !{!36, !"_ZSt19__relocate_object_aIN3gmx14ExclusionBlockES1_SaIS1_EEvPT_PT0_RT1_"}
!37 = !{!38}
!38 = distinct !{!38, !36, !"_ZSt19__relocate_object_aIN3gmx14ExclusionBlockES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!39 = distinct !{!39, !14}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZSt19__relocate_object_aIN3gmx14ExclusionBlockES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!42 = distinct !{!42, !"_ZSt19__relocate_object_aIN3gmx14ExclusionBlockES1_SaIS1_EEvPT_PT0_RT1_"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"_ZSt19__relocate_object_aIN3gmx14ExclusionBlockES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!45 = !{!25, !25, i64 0}
!46 = distinct !{!46, !14, !47, !48}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = !{!"branch_weights", i32 8, i32 24}
!50 = distinct !{!50, !14, !47, !48}
!51 = distinct !{!51, !14, !48, !47}
end_hunk_0
