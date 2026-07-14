inline.NumInlined: 4997
inline.NumDeleted: 1713
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZdlPvm
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 1, 4294967298) i64 @_ZN4LIEF2PE17LoadConfiguration15parse_seh_tableERNS0_6ParserERNS_12BinaryStreamERS1_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(215) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(752) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 120
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 128
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.c = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  %i.d = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %.not31 = select i1 %i.c, i1 %i.d, i1 false
  br i1 %.not31, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.98) #24 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 592 ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i, i64 1000) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 608 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 2
  %i.n = icmp ult i64 %i.m, %.sroa.speculated
  br i1 %i.n, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 600 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.k                       ; 3 uses
  %i.s = shl nuw nsw i64 %.sroa.speculated, 2
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #25 ; 4 uses
  %i.u = icmp sgt i64 %i.r, 0
  br i1 %i.u, label %bb.c, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.t, ptr align 4 %i.i, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.c, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.i, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #26
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.d, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.t, ptr %i.f, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store ptr %i.v, ptr %i.o, align 8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.speculated
  store ptr %i.w, ptr %i.g, align 8
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %bb.b, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 600 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit, %bb.m
  %.032 = phi i64 [ 0, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ %i.bf, %bb.m ]
  %i.aa = load i64, ptr %i.x, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4
  %i.ab = load ptr, ptr %1, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, i64 noundef %i.aa, i64 noundef 4, i64 noundef 0) #24, !inline_history !4
  %i.af = and i64 %i.ae, 4294967296
  %.not.i.i = icmp eq i64 %i.af, 0
  store i64 %i.aa, ptr %i.x, align 8
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.f

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ag = load i8, ptr %i.y, align 8, !range !5, !noundef !6
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #24
  %.pre.i = load i64, ptr %i.x, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.f, %bb.g
  %i.ai = phi i64 [ %i.aa, %bb.f ], [ %.pre.i, %bb.g ]
  %i.aj = load i32, ptr %i.a, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ak = add i64 %i.ai, 4
  store i64 %i.ak, ptr %i.x, align 8
  %i.al = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.am = load ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  store i32 %i.aj, ptr %i.al, align 4
  %i.an = load ptr, ptr %i.z, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store ptr %i.ao, ptr %i.z, align 8
  br label %bb.m

bb.i:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.ap = load ptr, ptr %i.f, align 8             ; 4 uses
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775804
  br i1 %i.at, label %bb.j, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #27
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.au = ashr exact i64 %i.as, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = call i64 @llvm.umin.i64(i64 %i.av, i64 2305843009213693951)
  %i.ay = select i1 %i.aw, i64 2305843009213693951, i64 %i.ax ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ay, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #25 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store i32 %i.aj, ptr %i.bb, align 4
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.k, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ba, ptr align 4 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.as) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ba, ptr %i.f, align 8
  store ptr %i.bd, ptr %i.z, align 8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.be, ptr %i.g, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.bf = add nuw i64 %.032, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %.sroa.0.0.copyload.i
  br i1 %exitcond.not, label %.critedge, label %bb.e, !llvm.loop !24

.critedge:                                        ; preds = %bb.m, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, %bb.a
  %.sroa.2.2 = phi i64 [ 4294967297, %bb.a ], [ 1, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread ], [ 4294967297, %bb.m ]
  ret i64 %.sroa.2.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 1, 4294967298) i64 @_ZN4LIEF2PE17LoadConfiguration21parse_guard_functionsERNS0_6ParserERNS_12BinaryStreamERS1_mMS1_St6vectorINS1_16guard_function_tESaIS8_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(215) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(752) %2, i64 noundef %3, i64 %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 200
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8 ; 2 uses
  %i.e = and i64 %.sroa.0.0.copyload.i, 4294967296
  %.not69 = icmp eq i64 %i.e, 0
  %.sroa.048.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.f = lshr i32 %.sroa.048.0.extract.trunc, 28
  %i.g = select i1 %.not69, i32 0, i32 %i.f       ; 3 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.98) #24 ; 0 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 %4 ; 7 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %3, i64 1000) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.i, align 8              ; 7 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 4 uses
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ult i64 %i.p, %.sroa.speculated
  br i1 %i.q, label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 4 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.n
  %i.v = shl nuw nsw i64 %.sroa.speculated, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #25 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.l, %i.s
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i
  %i.x = ptrtoaddr ptr %i.w to i64
  %5 = ptrtoint ptr %i.s to i64
  %i.y = sub i64 %5, %i.n
  %6 = add i64 %i.y, -8                           ; 2 uses
  %i.z = lshr i64 %6, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %6, 72
  %i.ab = sub i64 %i.n, %i.x
  %diff.check = icmp ugt i64 %i.ab, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader103, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.l, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.af ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.l, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.ag = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep80, align 4, !alias.scope !28, !noalias !25
  %wide.load81 = load <2 x i64>, ptr %i.ag, align 4, !alias.scope !28, !noalias !25
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !25, !noalias !28
  store <2 x i64> %wide.load81, ptr %i.ah, align 4, !alias.scope !25, !noalias !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.preheader103

.lr.ph.i.i.i.i.preheader103:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader103, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader103 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader103 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.aj = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !28, !noalias !25
  store i64 %i.aj, ptr %.012.i.i.i.i, align 4, !alias.scope !25, !noalias !28
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.s
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.l, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #26
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.c, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.w, ptr %i.i, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store ptr %i.am, ptr %i.r, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.speculated
  store ptr %i.an, ptr %i.j, align 8
  br label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE7reserveEm.exit: ; preds = %bb.b, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aq = icmp eq i32 %i.g, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.as = icmp samesign ugt i32 %i.g, 1
  %i.at = zext nneg i32 %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE7reserveEm.exit, %bb.r
  %.01671 = phi i1 [ false, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE7reserveEm.exit ], [ %.4, %bb.r ] ; 2 uses
  %storemerge70 = phi i64 [ 0, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE7reserveEm.exit ], [ %i.dd, %bb.r ]
  %i.au = load i64, ptr %i.ao, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4
  %i.av = load ptr, ptr %1, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call i64 %i.ax(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.b, i64 noundef %i.au, i64 noundef 4, i64 noundef 0) #24, !inline_history !4
  %i.az = and i64 %i.ay, 4294967296
  %.not.i.i = icmp eq i64 %i.az, 0
  store i64 %i.au, ptr %i.ao, align 8
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.e

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.critedge.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ba = load i8, ptr %i.ap, align 8, !range !5, !noundef !6
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.f, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.f:                                             ; preds = %bb.e
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #24
  %.pre.i = load i64, ptr %i.ao, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.e, %bb.f
  %i.bc = phi i64 [ %i.au, %bb.e ], [ %.pre.i, %bb.f ]
  %i.bd = load i32, ptr %i.b, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.be = add i64 %i.bc, 4                        ; 4 uses
  store i64 %i.be, ptr %i.ao, align 8
  br i1 %i.aq, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 0, ptr %i.a, align 1
  %i.bf = load ptr, ptr %1, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, i64 noundef %i.be, i64 noundef 1, i64 noundef 0) #24, !inline_history !34
  %i.bj = and i64 %i.bi, 4294967296
  %.not.i.i22 = icmp eq i64 %i.bj, 0
  store i64 %i.be, ptr %i.ao, align 8
  br i1 %.not.i.i22, label %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread, label %bb.h

_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.critedge.sink.split

bb.h:                                             ; preds = %bb.g
  %i.bk = load i8, ptr %i.ap, align 8, !range !5, !noundef !6
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.i, label %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit

bb.i:                                             ; preds = %bb.h
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.a) #24
  %.pre.i24 = load i64, ptr %i.ao, align 8
  br label %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit: ; preds = %bb.h, %bb.i
  %i.bm = phi i64 [ %i.be, %bb.h ], [ %.pre.i24, %bb.i ]
  %i.bn = load i8, ptr %i.a, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bo = add i64 %i.bm, 1
  store i64 %i.bo, ptr %i.ao, align 8
  %i.bp = zext i8 %i.bn to i64
  %i.bq = shl nuw nsw i64 %i.bp, 32
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %.1 = phi i64 [ %i.bq, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ 0, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ] ; 2 uses
  %i.br = load ptr, ptr %i.ar, align 8            ; 5 uses
  %i.bs = load ptr, ptr %i.j, align 8
  %.not.i.i25 = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i.i25, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.027.0.insert.ext = zext i32 %i.bd to i64
  %.sroa.027.0.insert.insert = or disjoint i64 %.1, %.sroa.027.0.insert.ext
  store i64 %.sroa.027.0.insert.insert, ptr %i.br, align 4
  %i.bt = load ptr, ptr %i.ar, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bu, ptr %i.ar, align 8
  br label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE9push_backEOS3_.exit

bb.l:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.i, align 8             ; 7 uses
  %i.bw = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64               ; 3 uses
  %i.by = sub i64 %i.bw, %i.bx                    ; 4 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775800
  br i1 %i.bz, label %bb.m, label %_ZNKSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #27
  unreachable

_ZNKSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ca = ashr exact i64 %i.by, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cb, i64 1152921504606846975)
  %i.ce = select i1 %i.cc, i64 1152921504606846975, i64 %i.cd ; 3 uses
  %.not.i.i.i.i26 = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %.not.i.i.i.i26)
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #25 ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.by
  %.sroa.027.0.insert.ext29 = zext i32 %i.bd to i64
  %.sroa.027.0.insert.insert31 = or disjoint i64 %.1, %.sroa.027.0.insert.ext29
  store i64 %.sroa.027.0.insert.insert31, ptr %i.ch, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.br
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ci = ptrtoaddr ptr %i.cg to i64
  %i.cj = sub i64 %i.bw, %i.bx
  %i.ck = add i64 %i.cj, -8                       ; 2 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4LIEF2PE17LoadConfigurationC2ERKS1_:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i8 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bv = load i8, ptr %i.bu, align 8, !range !5, !noundef !6
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.br, ptr noundef nonnull align 8 dereferenceable(25) %i.bs) #24
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF2PE13CodeIntegrityE, i64 16), ptr %i.br, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bx, ptr noundef nonnull align 8 dereferenceable(12) %i.by, i64 12, i1 false)
  br label %_ZN4LIEF8optionalINS_2PE13CodeIntegrityEEC2ERKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.bz = load i32, ptr %i.bs, align 8
  store i32 %i.bz, ptr %i.br, align 8
  br label %_ZN4LIEF8optionalINS_2PE13CodeIntegrityEEC2ERKS3_.exit

_ZN4LIEF8optionalINS_2PE13CodeIntegrityEEC2ERKS3_.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i.i.i.i.i.i = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge.i.i.i.i.i.i.i, ptr %i.bt, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 16, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 304
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 320
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 336
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.cs = load i64, ptr %i.cr, align 8
  store i64 %i.cs, ptr %i.cq, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.cv = load i64, ptr %i.cu, align 8
  store i64 %i.cv, ptr %i.ct, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.cy = load i64, ptr %i.cx, align 8
  store i64 %i.cy, ptr %i.cw, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.dd = load i64, ptr %i.dc, align 8
  store i64 %i.dd, ptr %i.db, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.dg = load i64, ptr %i.df, align 8
  store i64 %i.dg, ptr %i.de, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 424
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 440
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i64 16, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 456
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i64 16, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %i.do, i64 16, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 488
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i64 16, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 504
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i64 16, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 520
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %i.du, i64 16, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i64 16, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 552
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 568
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i64 16, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  store ptr null, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.eg = load ptr, ptr %i.ed, align 8            ; 2 uses
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ef, %i.eg
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4LIEF8optionalINS_2PE13CodeIntegrityEEC2ERKS3_.exit
  %i.ek = icmp ugt i64 %i.ej, 9223372036854775804
  br i1 %i.ek, label %bb.e, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, !prof !79

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.el = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #25
  br label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, %_ZN4LIEF8optionalINS_2PE13CodeIntegrityEEC2ERKS3_.exit
  %i.em = phi ptr [ %i.el, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZN4LIEF8optionalINS_2PE13CodeIntegrityEEC2ERKS3_.exit ] ; 6 uses
  store ptr %i.em, ptr %i.ec, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  store ptr %i.em, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ej
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr %i.eo, ptr %i.ep, align 8
  %i.eq = load ptr, ptr %i.ed, align 8            ; 3 uses
  %i.er = load ptr, ptr %i.ee, align 8
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 4 uses
  %i.ev = icmp sgt i64 %i.eu, 4
  br i1 %i.ev, label %bb.f, label %bb.g, !prof !80

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.em, ptr align 4 %i.eq, i64 %i.eu, i1 false)
  br label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i
  %i.ew = icmp eq i64 %i.eu, 4
  br i1 %i.ew, label %bb.h, label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.ex = load i32, ptr %i.eq, align 4
  store i32 %i.ex, ptr %i.em, align 4
  br label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit

_ZNSt6vectorIjSaIjEEC2ERKS1_.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.ey = getelementptr inbounds i8, ptr %i.em, i64 %i.eu
  store ptr %i.ey, ptr %i.en, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8            ; 2 uses
  %i.fd = load ptr, ptr %i.fa, align 8            ; 2 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i8 0, i64 24, i1 false)
  %.not.i.i.i.i70 = icmp eq ptr %i.fc, %i.fd
  br i1 %.not.i.i.i.i70, label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit
  %i.fh = icmp ugt i64 %i.fg, 9223372036854775800
  br i1 %i.fh, label %bb.j, label %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i, !prof !79

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.i
  %i.fi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #25
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit
  %i.fj = phi ptr [ %i.fi, %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit ] ; 8 uses
  store ptr %i.fj, ptr %i.ez, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  store ptr %i.fj, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fg
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 632
  store ptr %i.fl, ptr %i.fm, align 8
  %i.fn = load ptr, ptr %i.fa, align 8            ; 6 uses
  %i.fo = load ptr, ptr %i.fb, align 8            ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.fn, %i.fo
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i
  %i.fp = ptrtoaddr ptr %i.fn to i64
  %i.fq = ptrtoaddr ptr %i.fj to i64
  %i.fr = ptrtoint ptr %i.fo to i64
  %i.fs = ptrtoint ptr %i.fn to i64
  %3 = sub i64 %i.fr, %i.fs
  %4 = add i64 %3, -8                             ; 2 uses
  %i.ft = lshr i64 %4, 3
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 72
  %i.fv = sub i64 %i.fp, %i.fq
  %diff.check = icmp ugt i64 %i.fv, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader237, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.fu, 4611686018427387900     ; 3 uses
  %i.fw = shl i64 %n.vec, 3                       ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fj, i64 %i.fw  ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fn, i64 %i.fw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fj, i64 %i.fz ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.fn, i64 %i.fz ; 2 uses
  %i.ga = getelementptr i8, ptr %next.gep172, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep172, align 4
  %wide.load173 = load <2 x i64>, ptr %i.ga, align 4
  %i.gb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load173, ptr %i.gb, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader237

.lr.ph.i.i.i.i.i.preheader237:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fx, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fy, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader237, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader237 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader237 ] ; 2 uses
  %i.gd = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.gd, ptr %.09.i.i.i.i.i, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ge, %i.fo
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !82

_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fj, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i ], [ %i.fx, %middle.block ], [ %i.gf, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.fk, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8            ; 2 uses
  %i.gk = load ptr, ptr %i.gh, align 8            ; 2 uses
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, i8 0, i64 24, i1 false)
  %.not.i.i.i.i71 = icmp eq ptr %i.gj, %i.gk
  br i1 %.not.i.i.i.i71, label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i73, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit
  %i.go = icmp ugt i64 %i.gn, 9223372036854775800
  br i1 %i.go, label %bb.l, label %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i72, !prof !79

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i72: ; preds = %bb.k
  %i.gp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gn) #25
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i73

_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i73: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i72, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit
  %i.gq = phi ptr [ %i.gp, %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i72 ], [ null, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit ] ; 8 uses
  store ptr %i.gq, ptr %i.gg, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  store ptr %i.gq, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gn
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr %i.gs, ptr %i.gt, align 8
  %i.gu = load ptr, ptr %i.gh, align 8            ; 6 uses
  %i.gv = load ptr, ptr %i.gi, align 8            ; 3 uses
  %.not7.i.i.i.i.i74 = icmp eq ptr %i.gu, %i.gv
  br i1 %.not7.i.i.i.i.i74, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit80, label %.lr.ph.i.i.i.i.i75.preheader

.lr.ph.i.i.i.i.i75.preheader:                     ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i73
  %i.gw = ptrtoaddr ptr %i.gu to i64
  %i.gx = ptrtoaddr ptr %i.gq to i64
  %i.gy = ptrtoint ptr %i.gv to i64
  %i.gz = ptrtoint ptr %i.gu to i64
  %5 = sub i64 %i.gy, %i.gz
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ha = lshr i64 %6, 3
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 2 uses
  %min.iters.check178 = icmp ult i64 %6, 72
  %i.hc = sub i64 %i.gw, %i.gx
  %diff.check176 = icmp ugt i64 %i.hc, -32
  %or.cond229 = or i1 %min.iters.check178, %diff.check176
  br i1 %or.cond229, label %.lr.ph.i.i.i.i.i75.preheader235, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph.i.i.i.i.i75.preheader
  %n.vec181 = and i64 %i.hb, 4611686018427387900  ; 3 uses
  %i.hd = shl i64 %n.vec181, 3                    ; 2 uses
  %i.he = getelementptr i8, ptr %i.gq, i64 %i.hd  ; 2 uses
  %i.hf = getelementptr i8, ptr %i.gu, i64 %i.hd
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph179
  %index183 = phi i64 [ 0, %vector.ph179 ], [ %index.next188, %vector.body182 ] ; 2 uses
  %i.hg = shl i64 %index183, 3                    ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.gq, i64 %i.hg ; 2 uses
  %next.gep185 = getelementptr i8, ptr %i.gu, i64 %i.hg ; 2 uses
  %i.hh = getelementptr i8, ptr %next.gep185, i64 16
  %wide.load186 = load <2 x i64>, ptr %next.gep185, align 4
  %wide.load187 = load <2 x i64>, ptr %i.hh, align 4
  %i.hi = getelementptr i8, ptr %next.gep184, i64 16
  store <2 x i64> %wide.load186, ptr %next.gep184, align 4
  store <2 x i64> %wide.load187, ptr %i.hi, align 4
  %index.next188 = add nuw i64 %index183, 4       ; 2 uses
  %i.hj = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.hj, label %middle.block189, label %vector.body182, !llvm.loop !83

middle.block189:                                  ; preds = %vector.body182
  %cmp.n190 = icmp eq i64 %i.hb, %n.vec181
  br i1 %cmp.n190, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit80, label %.lr.ph.i.i.i.i.i75.preheader235

.lr.ph.i.i.i.i.i75.preheader235:                  ; preds = %.lr.ph.i.i.i.i.i75.preheader, %middle.block189
  %.09.i.i.i.i.i76.ph = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i75.preheader ], [ %i.he, %middle.block189 ]
  %.sroa.04.08.i.i.i.i.i77.ph = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i75.preheader ], [ %i.hf, %middle.block189 ]
  br label %.lr.ph.i.i.i.i.i75

.lr.ph.i.i.i.i.i75:                               ; preds = %.lr.ph.i.i.i.i.i75.preheader235, %.lr.ph.i.i.i.i.i75
  %.09.i.i.i.i.i76 = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i75 ], [ %.09.i.i.i.i.i76.ph, %.lr.ph.i.i.i.i.i75.preheader235 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i77 = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i75 ], [ %.sroa.04.08.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i75.preheader235 ] ; 2 uses
  %i.hk = load i64, ptr %.sroa.04.08.i.i.i.i.i77, align 4
  store i64 %i.hk, ptr %.09.i.i.i.i.i76, align 4
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i77, i64 8 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i76, i64 8 ; 2 uses
  %.not.i.i.i.i.i78 = icmp eq ptr %i.hl, %i.gv
  br i1 %.not.i.i.i.i.i78, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit80, label %.lr.ph.i.i.i.i.i75, !llvm.loop !84

_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit80: ; preds = %.lr.ph.i.i.i.i.i75, %middle.block189, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i73
  %.0.lcssa.i.i.i.i.i79 = phi ptr [ %i.gq, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i73 ], [ %i.he, %middle.block189 ], [ %i.hm, %.lr.ph.i.i.i.i.i75 ]
  store ptr %.0.lcssa.i.i.i.i.i79, ptr %i.gr, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8            ; 2 uses
  %i.hr = load ptr, ptr %i.ho, align 8            ; 2 uses
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hn, i8 0, i64 24, i1 false)
  %.not.i.i.i.i81 = icmp eq ptr %i.hq, %i.hr
  br i1 %.not.i.i.i.i81, label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i83, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit80
  %i.hv = icmp ugt i64 %i.hu, 9223372036854775800
  br i1 %i.hv, label %bb.n, label %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i82, !prof !79

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i82: ; preds = %bb.m
  %i.hw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #25
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i83

_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i83: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i82, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit80
  %i.hx = phi ptr [ %i.hw, %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i82 ], [ null, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit80 ] ; 8 uses
  store ptr %i.hx, ptr %i.hn, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  store ptr %i.hx, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hu
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr %i.hz, ptr %i.ia, align 8
  %i.ib = load ptr, ptr %i.ho, align 8            ; 6 uses
  %i.ic = load ptr, ptr %i.hp, align 8            ; 3 uses
  %.not7.i.i.i.i.i84 = icmp eq ptr %i.ib, %i.ic
  br i1 %.not7.i.i.i.i.i84, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit90, label %.lr.ph.i.i.i.i.i85.preheader

.lr.ph.i.i.i.i.i85.preheader:                     ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i83
  %i.id = ptrtoaddr ptr %i.ib to i64
  %i.ie = ptrtoaddr ptr %i.hx to i64
  %i.if = ptrtoint ptr %i.ic to i64
  %i.ig = ptrtoint ptr %i.ib to i64
  %7 = sub i64 %i.if, %i.ig
  %8 = add i64 %7, -8                             ; 2 uses
  %i.ih = lshr i64 %8, 3
  %i.ii = add nuw nsw i64 %i.ih, 1                ; 2 uses
  %min.iters.check196 = icmp ult i64 %8, 72
  %i.ij = sub i64 %i.id, %i.ie
  %diff.check194 = icmp ugt i64 %i.ij, -32
  %or.cond230 = or i1 %min.iters.check196, %diff.check194
  br i1 %or.cond230, label %.lr.ph.i.i.i.i.i85.preheader233, label %vector.ph197

vector.ph197:                                     ; preds = %.lr.ph.i.i.i.i.i85.preheader
  %n.vec199 = and i64 %i.ii, 4611686018427387900  ; 3 uses
  %i.ik = shl i64 %n.vec199, 3                    ; 2 uses
  %i.il = getelementptr i8, ptr %i.hx, i64 %i.ik  ; 2 uses
  %i.im = getelementptr i8, ptr %i.ib, i64 %i.ik
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph197
  %index201 = phi i64 [ 0, %vector.ph197 ], [ %index.next206, %vector.body200 ] ; 2 uses
  %i.in = shl i64 %index201, 3                    ; 2 uses
  %next.gep202 = getelementptr i8, ptr %i.hx, i64 %i.in ; 2 uses
  %next.gep203 = getelementptr i8, ptr %i.ib, i64 %i.in ; 2 uses
  %i.io = getelementptr i8, ptr %next.gep203, i64 16
  %wide.load204 = load <2 x i64>, ptr %next.gep203, align 4
  %wide.load205 = load <2 x i64>, ptr %i.io, align 4
  %i.ip = getelementptr i8, ptr %next.gep202, i64 16
  store <2 x i64> %wide.load204, ptr %next.gep202, align 4
  store <2 x i64> %wide.load205, ptr %i.ip, align 4
  %index.next206 = add nuw i64 %index201, 4       ; 2 uses
  %i.iq = icmp eq i64 %index.next206, %n.vec199
  br i1 %i.iq, label %middle.block207, label %vector.body200, !llvm.loop !85

middle.block207:                                  ; preds = %vector.body200
  %cmp.n208 = icmp eq i64 %i.ii, %n.vec199
  br i1 %cmp.n208, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit90, label %.lr.ph.i.i.i.i.i85.preheader233

.lr.ph.i.i.i.i.i85.preheader233:                  ; preds = %.lr.ph.i.i.i.i.i85.preheader, %middle.block207
  %.09.i.i.i.i.i86.ph = phi ptr [ %i.hx, %.lr.ph.i.i.i.i.i85.preheader ], [ %i.il, %middle.block207 ]
  %.sroa.04.08.i.i.i.i.i87.ph = phi ptr [ %i.ib, %.lr.ph.i.i.i.i.i85.preheader ], [ %i.im, %middle.block207 ]
  br label %.lr.ph.i.i.i.i.i85

.lr.ph.i.i.i.i.i85:                               ; preds = %.lr.ph.i.i.i.i.i85.preheader233, %.lr.ph.i.i.i.i.i85
  %.09.i.i.i.i.i86 = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i85 ], [ %.09.i.i.i.i.i86.ph, %.lr.ph.i.i.i.i.i85.preheader233 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i87 = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i85 ], [ %.sroa.04.08.i.i.i.i.i87.ph, %.lr.ph.i.i.i.i.i85.preheader233 ] ; 2 uses
  %i.ir = load i64, ptr %.sroa.04.08.i.i.i.i.i87, align 4
  store i64 %i.ir, ptr %.09.i.i.i.i.i86, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i87, i64 8 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i86, i64 8 ; 2 uses
  %.not.i.i.i.i.i88 = icmp eq ptr %i.is, %i.ic
  br i1 %.not.i.i.i.i.i88, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit90, label %.lr.ph.i.i.i.i.i85, !llvm.loop !86

_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit90: ; preds = %.lr.ph.i.i.i.i.i85, %middle.block207, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i83
  %.0.lcssa.i.i.i.i.i89 = phi ptr [ %i.hx, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i83 ], [ %i.il, %middle.block207 ], [ %i.it, %.lr.ph.i.i.i.i.i85 ]
  store ptr %.0.lcssa.i.i.i.i.i89, ptr %i.hy, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8            ; 2 uses
  %i.iy = load ptr, ptr %i.iv, align 8            ; 2 uses
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, i8 0, i64 24, i1 false)
  %.not.i.i.i.i91 = icmp eq ptr %i.ix, %i.iy
  br i1 %.not.i.i.i.i91, label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i93, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit90
  %i.jc = icmp ugt i64 %i.jb, 9223372036854775800
  br i1 %i.jc, label %bb.p, label %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i92, !prof !79

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i92: ; preds = %bb.o
  %i.jd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jb) #25
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i93

_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i93: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i92, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit90
  %i.je = phi ptr [ %i.jd, %_ZNSt15__new_allocatorIN4LIEF2PE17LoadConfiguration16guard_function_tEE8allocateEmPKv.exit.i.i.i.i92 ], [ null, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit90 ] ; 8 uses
  store ptr %i.je, ptr %i.iu, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  store ptr %i.je, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jb
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.jg, ptr %i.jh, align 8
  %i.ji = load ptr, ptr %i.iv, align 8            ; 6 uses
  %i.jj = load ptr, ptr %i.iw, align 8            ; 3 uses
  %.not7.i.i.i.i.i94 = icmp eq ptr %i.ji, %i.jj
  br i1 %.not7.i.i.i.i.i94, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit100, label %.lr.ph.i.i.i.i.i95.preheader

.lr.ph.i.i.i.i.i95.preheader:                     ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i93
  %i.jk = ptrtoaddr ptr %i.ji to i64
  %i.jl = ptrtoaddr ptr %i.je to i64
  %i.jm = ptrtoint ptr %i.jj to i64
  %i.jn = ptrtoint ptr %i.ji to i64
  %9 = sub i64 %i.jm, %i.jn
  %10 = add i64 %9, -8                            ; 2 uses
  %i.jo = lshr i64 %10, 3
  %i.jp = add nuw nsw i64 %i.jo, 1                ; 2 uses
  %min.iters.check214 = icmp ult i64 %10, 72
  %i.jq = sub i64 %i.jk, %i.jl
  %diff.check212 = icmp ugt i64 %i.jq, -32
  %or.cond231 = or i1 %min.iters.check214, %diff.check212
  br i1 %or.cond231, label %.lr.ph.i.i.i.i.i95.preheader232, label %vector.ph215

vector.ph215:                                     ; preds = %.lr.ph.i.i.i.i.i95.preheader
  %n.vec217 = and i64 %i.jp, 4611686018427387900  ; 3 uses
  %i.jr = shl i64 %n.vec217, 3                    ; 2 uses
  %i.js = getelementptr i8, ptr %i.je, i64 %i.jr  ; 2 uses
  %i.jt = getelementptr i8, ptr %i.ji, i64 %i.jr
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph215
  %index219 = phi i64 [ 0, %vector.ph215 ], [ %index.next224, %vector.body218 ] ; 2 uses
  %i.ju = shl i64 %index219, 3                    ; 2 uses
  %next.gep220 = getelementptr i8, ptr %i.je, i64 %i.ju ; 2 uses
  %next.gep221 = getelementptr i8, ptr %i.ji, i64 %i.ju ; 2 uses
  %i.jv = getelementptr i8, ptr %next.gep221, i64 16
  %wide.load222 = load <2 x i64>, ptr %next.gep221, align 4
  %wide.load223 = load <2 x i64>, ptr %i.jv, align 4
  %i.jw = getelementptr i8, ptr %next.gep220, i64 16
  store <2 x i64> %wide.load222, ptr %next.gep220, align 4
  store <2 x i64> %wide.load223, ptr %i.jw, align 4
  %index.next224 = add nuw i64 %index219, 4       ; 2 uses
  %i.jx = icmp eq i64 %index.next224, %n.vec217
  br i1 %i.jx, label %middle.block225, label %vector.body218, !llvm.loop !87

middle.block225:                                  ; preds = %vector.body218
  %cmp.n226 = icmp eq i64 %i.jp, %n.vec217
  br i1 %cmp.n226, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit100, label %.lr.ph.i.i.i.i.i95.preheader232

.lr.ph.i.i.i.i.i95.preheader232:                  ; preds = %.lr.ph.i.i.i.i.i95.preheader, %middle.block225
  %.09.i.i.i.i.i96.ph = phi ptr [ %i.je, %.lr.ph.i.i.i.i.i95.preheader ], [ %i.js, %middle.block225 ]
  %.sroa.04.08.i.i.i.i.i97.ph = phi ptr [ %i.ji, %.lr.ph.i.i.i.i.i95.preheader ], [ %i.jt, %middle.block225 ]
  br label %.lr.ph.i.i.i.i.i95

.lr.ph.i.i.i.i.i95:                               ; preds = %.lr.ph.i.i.i.i.i95.preheader232, %.lr.ph.i.i.i.i.i95
  %.09.i.i.i.i.i96 = phi ptr [ %i.ka, %.lr.ph.i.i.i.i.i95 ], [ %.09.i.i.i.i.i96.ph, %.lr.ph.i.i.i.i.i95.preheader232 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i97 = phi ptr [ %i.jz, %.lr.ph.i.i.i.i.i95 ], [ %.sroa.04.08.i.i.i.i.i97.ph, %.lr.ph.i.i.i.i.i95.preheader232 ] ; 2 uses
  %i.jy = load i64, ptr %.sroa.04.08.i.i.i.i.i97, align 4
  store i64 %i.jy, ptr %.09.i.i.i.i.i96, align 4
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i97, i64 8 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i96, i64 8 ; 2 uses
  %.not.i.i.i.i.i98 = icmp eq ptr %i.jz, %i.jj
  br i1 %.not.i.i.i.i.i98, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit100, label %.lr.ph.i.i.i.i.i95, !llvm.loop !88

_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit100: ; preds = %.lr.ph.i.i.i.i.i95, %middle.block225, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i93
  %.0.lcssa.i.i.i.i.i99 = phi ptr [ %i.je, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2EmRKS4_.exit.i93 ], [ %i.js, %middle.block225 ], [ %i.ka, %.lr.ph.i.i.i.i.i95 ]
  store ptr %.0.lcssa.i.i.i.i.i99, ptr %i.jf, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 584
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kb, i8 0, i64 40, i1 false)
  %i.kf = load ptr, ptr %i.ke, align 8            ; 3 uses
  %.not = icmp eq ptr %i.kf, null
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit100
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.kg = load ptr, ptr %i.kf, align 8
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.116") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #24
  %i.ki = load ptr, ptr %2, align 8
  store ptr null, ptr %2, align 8
  %i.kj = load ptr, ptr %i.eb, align 8            ; 3 uses
  store ptr %i.ki, ptr %i.eb, align 8
  %.not.i.i.i.i101 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i.i.i101, label %_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.q
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.kj) #24, !inline_history !19
  %.pr = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF2PE12CHPEMetadataEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4LIEF2PE12CHPEMetadataEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EEaSEOS5_.exit
  %i.kn = load ptr, ptr %.pr, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.pr) #24, !inline_history !23
  br label %_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.q, %_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EEaSEOS5_.exit, %_ZNKSt14default_deleteIN4LIEF2PE12CHPEMetadataEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF2PE12CHPEMetadataESt14default_deleteIS2_EED2Ev.exit, %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEC2ERKS5_.exit100
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.kr = load ptr, ptr %i.kq, align 8            ; 3 uses
  %.not118 = icmp eq ptr %i.kr, null
  br i1 %.not118, label %_ZNSt10unique_ptrIN4LIEF2PE20EnclaveConfigurationESt14default_deleteIS2_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ks = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25, !noalias !89 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ks, ptr noundef nonnull align 8 dereferenceable(104) %i.kr, i64 80, i1 false), !noalias !89
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 80
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 80
  call void @_ZNSt6vectorIN4LIEF2PE13EnclaveImportESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.kt, ptr noundef nonnull align 8 dereferenceable(24) %i.ku), !noalias !89
  %i.kv = load ptr, ptr %i.kc, align 8            ; 5 uses
  store ptr %i.ks, ptr %i.kc, align 8
  %.not.i.i.i.i102 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i.i102, label %_ZNSt10unique_ptrIN4LIEF2PE20EnclaveConfigurationESt14default_deleteIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 80 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8            ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 88
  %i.kz = load ptr, ptr %i.ky, align 8            ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kx, %i.kz
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.t, %_ZSt8_DestroyIN4LIEF2PE13EnclaveImportEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lg, %_ZSt8_DestroyIN4LIEF2PE13EnclaveImportEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.kx, %bb.t ] ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 80
  %i.lb = load ptr, ptr %i.la, align 8            ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 96 ; 2 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %_ZSt8_DestroyIN4LIEF2PE13EnclaveImportEEvPT_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.le = load i64, ptr %i.lc, align 8
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.lf) #26
  br label %_ZSt8_DestroyIN4LIEF2PE13EnclaveImportEEvPT_.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN4LIEF2PE13EnclaveImportEEvPT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lg, %i.kz
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !16

_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN4LIEF2PE13EnclaveImportEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %i.kw, align 8
  br label %_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i.i, %bb.t
  %i.lh = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.kx, %bb.t ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.lh, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF2PE20EnclaveConfigurationEEclEPS2_.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exit.i.i.i.i.i.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.kv, i64 96
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.lh to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %i.lh, i64 noundef %i.lm) #26
  br label %_ZNKSt14default_deleteIN4LIEF2PE20EnclaveConfigurationEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4LIEF2PE20EnclaveConfigurationEEclEPS2_.exit.i.i.i.i: ; preds = %bb.u, %_ZSt8_DestroyIPN4LIEF2PE13EnclaveImportEEvT_S4_.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef 104) #26
  br label %_ZNSt10unique_ptrIN4LIEF2PE20EnclaveConfigurationESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF2PE20EnclaveConfigurationESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.s, %_ZNKSt14default_deleteIN4LIEF2PE20EnclaveConfigurationEEclEPS2_.exit.i.i.i.i, %bb.r
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.lo = load ptr, ptr %i.ln, align 8            ; 2 uses
  %.not119 = icmp eq ptr %i.lo, null
  br i1 %.not119, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE17DynamicRelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISD_EZNS4_17LoadConfigurationC1ERKSH_E3$_0ET0_T_SM_SL_T1_.exit", label %bb.v

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF2PE20EnclaveConfigurationESt14default_deleteIS2_EED2Ev.exit
  %i.lp = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25, !noalias !92 ; 2 uses
  call void @_ZN4LIEF2PE16VolatileMetadataC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.lp, ptr noundef nonnull align 8 dereferenceable(64) %i.lo), !noalias !92
  %i.lq = load ptr, ptr %i.kd, align 8            ; 6 uses
  store ptr %i.lp, ptr %i.kd, align 8
  %.not.i.i.i.i104 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i.i104, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE17DynamicRelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISD_EZNS4_17LoadConfigurationC1ERKSH_E3$_0ET0_T_SM_SL_T1_.exit", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 40
  %i.ls = load ptr, ptr %i.lr, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i105 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i.i.i.i.i.i.i105, label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 56
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = ptrtoint ptr %i.ls to i64
  %i.lx = sub i64 %i.lv, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.lx) #26
  br label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8            ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF2PE16VolatileMetadataEEclEPS2_.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EED2Ev.exit.i.i.i.i.i.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = ptrtoint ptr %i.lz to i64
  %i.me = sub i64 %i.mc, %i.md
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIjSaIjEEaSERKS1_:bb.a
  store ptr %i.s, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 4
  br i1 %i.x, label %bb.k, label %bb.l, !prof !80

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 4
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i32, ptr %i.c, align 4
  store i32 %i.z, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 4
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !80

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.w, i1 false)
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 4
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load i32, ptr %i.c, align 4
  store i32 %i.ac, ptr %i.i, align 4
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %i.ad = load ptr, ptr %1, align 8
  %i.ae = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.af = load ptr, ptr %0, align 8
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai ; 3 uses
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.r, label %bb.s, !prof !80

bb.r:                                             ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ae, ptr align 4 %i.aj, i64 %i.an, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.aq = load i32, ptr %i.aj, align 4
  store i32 %i.aq, ptr %i.ae, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit
  %i.ar = load ptr, ptr %0, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i, !prof !79

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #26
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 8
  br i1 %i.y, label %bb.h, label %bb.i, !prof !80

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 8
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.c, align 4
  store i64 %i.aa, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 8
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !80

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %i.c, align 4
  store i64 %i.ad, ptr %i.i, align 4
  br label %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit

_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8               ; 3 uses
  %i.af = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 4 uses
  %i.al = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit
  %i.am = ptrtoaddr ptr %i.ae to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.ae to i64
  %i.ap = add i64 %i.ai, %i.an
  %i.aq = add i64 %i.ao, %i.ah
  %2 = sub i64 %i.ap, %i.aq
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ar = lshr i64 %3, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.at = sub i64 %i.am, %i.ai
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.af, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ax ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep33, align 4
  %wide.load34 = load <2 x i64>, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load34, ptr %i.az, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i.preheader36

.lr.ph.i.i.i.i.preheader36:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader36, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %i.bb = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.bb, ptr %.011.i.i.i.i, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !103

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPN4LIEF2PE17LoadConfiguration16guard_function_tES4_ET0_T_S6_S5_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4LIEF2PE17LoadConfiguration16guard_function_tESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.be = load ptr, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE17LoadConfiguration16guard_function_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF2PE17LoadConfiguration6acceptERNS_7VisitorE(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(752) %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF2PE17LoadConfiguration9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 dereferenceable(752) %1) local_unnamed_addr #1 align 2 {
_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit:
  %2 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %5 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %6 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %7 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %8 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %9 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %10 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %11 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %12 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %13 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %14 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %15 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %16 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %17 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %18 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %19 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %20 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %21 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %22 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %23 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %24 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %25 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %26 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %27 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %28 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %29 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %30 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %31 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %32 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %33 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %34 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %35 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %36 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %37 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %38 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %39 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %40 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %41 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %42 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %43 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %44 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %45 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %46 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %47 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %48 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %49 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %50 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %51 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %52 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %53 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %54 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %55 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %56 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %57 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %58 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %59 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %60 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %61 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %62 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %63 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %65 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %66 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %67 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %68 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %69 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %70 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %71 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %72 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %73 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %74 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %75 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %76 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  %77 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.o = alloca i64, align 8                      ; 6 uses
  %78 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %79 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.q = alloca i64, align 8                      ; 6 uses
  %80 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.r = alloca i64, align 8                      ; 6 uses
  %81 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.s = alloca i64, align 8                      ; 6 uses
  %82 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.t = alloca i64, align 8                      ; 6 uses
  %83 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.u = alloca i64, align 8                      ; 6 uses
  %84 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.v = alloca i64, align 8                      ; 6 uses
  %85 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.w = alloca i64, align 8                      ; 6 uses
  %86 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.x = alloca i64, align 8                      ; 6 uses
  %87 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.y = alloca i64, align 8                      ; 6 uses
  %88 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.z = alloca i64, align 8                      ; 6 uses
  %89 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.aa = alloca i64, align 8                     ; 6 uses
  %90 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.ab = alloca i64, align 8                     ; 6 uses
  %91 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.ac = alloca i64, align 8                     ; 6 uses
  %92 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.ad = alloca i64, align 8                     ; 6 uses
  %93 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.ae = alloca i64, align 8                     ; 6 uses
  %94 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.af = alloca i64, align 8                     ; 6 uses
  %95 = alloca %"class.fmt::v11::basic_memory_buffer.876", align 8 ; 10 uses
  %i.ag = alloca i64, align 8                     ; 6 uses
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN4LIEF2PE13EnclaveImportESaIS2_EEC2ERKS4_:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN4LIEF2PE13EnclaveImportESaIS2_EEC2EmRKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv exact i64 %i.g, 112
  %i.i = icmp ugt i64 %i.h, 82351536043346212
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorIN4LIEF2PE13EnclaveImportEE8allocateEmPKv.exit.i.i.i, !prof !79

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE13EnclaveImportEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25
  br label %_ZNSt12_Vector_baseIN4LIEF2PE13EnclaveImportESaIS2_EEC2EmRKS3_.exit

_ZNSt12_Vector_baseIN4LIEF2PE13EnclaveImportESaIS2_EEC2EmRKS3_.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN4LIEF2PE13EnclaveImportEE8allocateEmPKv.exit.i.i.i
  %i.k = phi ptr [ %i.j, %_ZNSt15__new_allocatorIN4LIEF2PE13EnclaveImportEE8allocateEmPKv.exit.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE13EnclaveImportESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE13EnclaveImportESaIS2_EEC2EmRKS3_.exit, %_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ag, %_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseIN4LIEF2PE13EnclaveImportESaIS2_EEC2EmRKS3_.exit ] ; 5 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.af, %_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN4LIEF2PE13EnclaveImportESaIS2_EEC2EmRKS3_.exit ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.04.08.i.i.i.i, i64 80, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 80 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96 ; 3 uses
  store ptr %i.s, ptr %i.q, align 8
  %i.t = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 88
  %i.v = load i64, ptr %i.u, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.v, ptr %i.a, align 8
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %bb.d, label %._crit_edge.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.x, ptr %i.q, align 8
  %i.y = load i64, ptr %i.a, align 8
  store i64 %i.y, ptr %i.s, align 8
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.z = phi ptr [ %i.x, %bb.d ], [ %i.s, %.lr.ph.i.i.i.i ] ; 2 uses
  switch i64 %i.v, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.aa = load i8, ptr %i.t, align 1
  store i8 %i.aa, ptr %i.z, align 1
  br label %_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i.i
  %i.ab = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 88
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %i.q, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 112 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.p
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE13EnclaveImportESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !745

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE13EnclaveImportESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN4LIEF2PE13EnclaveImportESaIS2_EEC2EmRKS3_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.k, %_ZNSt12_Vector_baseIN4LIEF2PE13EnclaveImportESaIS2_EEC2EmRKS3_.exit ], [ %i.ag, %_ZSt10_ConstructIN4LIEF2PE13EnclaveImportEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.l, align 8
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF2PE16VolatileMetadataC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775804
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, !prof !79

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25
  br label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  store ptr %i.k, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 4
  br i1 %i.t, label %bb.d, label %bb.e, !prof !80

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i
  %i.u = icmp eq i64 %i.s, 4
  br i1 %i.u, label %bb.f, label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.o, align 4
  store i32 %i.v, ptr %i.k, align 4
  br label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit

_ZNSt6vectorIjSaIjEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i4, label %_ZNSt12_Vector_baseIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2EmRKS4_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit
  %i.af = icmp ugt i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.h, label %_ZNSt15__new_allocatorIN4LIEF2PE16VolatileMetadata7range_tEE8allocateEmPKv.exit.i.i.i.i, !prof !79

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE16VolatileMetadata7range_tEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #25
  br label %_ZNSt12_Vector_baseIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE16VolatileMetadata7range_tEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit
  %i.ah = phi ptr [ %i.ag, %_ZNSt15__new_allocatorIN4LIEF2PE16VolatileMetadata7range_tEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit ] ; 8 uses
  store ptr %i.ah, ptr %i.x, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.y, align 8             ; 6 uses
  %i.am = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2EmRKS4_.exit.i
  %i.an = ptrtoaddr ptr %i.al to i64
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.al to i64
  %2 = sub i64 %i.ap, %i.aq
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ar = lshr i64 %3, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.at = sub i64 %i.an, %i.ao
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.ah, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.ax ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.al, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 4
  %wide.load10 = load <2 x i64>, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load10, ptr %i.az, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !746

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %i.bb = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.bb, ptr %.09.i.i.i.i.i, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.am
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !747

_ZNSt6vectorIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2EmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ah, %_ZNSt12_Vector_baseIN4LIEF2PE16VolatileMetadata7range_tESaIS3_EEC2EmRKS4_.exit.i ], [ %i.av, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail11assert_failEPKciS3_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.104, ptr noundef %0, i32 noundef %1, ptr noundef %2) #28 ; 0 uses
  tail call void @abort() #27
  unreachable
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"class.fmt::v11::parse_context", align 8 ; 4 uses
  %4 = alloca %"class.fmt::v11::context", align 8 ; 5 uses
  %5 = alloca %class.anon.926, align 8            ; 5 uses
  %6 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %7 = alloca %"struct.fmt::v11::format_specs", align 8 ; 5 uses
  %8 = alloca %class.anon.901, align 8            ; 5 uses
  %9 = alloca %"struct.fmt::v11::format_specs", align 4 ; 4 uses
  %10 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp.907", align 8 ; 5 uses
  %11 = alloca %"struct.fmt::v11::format_specs", align 8 ; 5 uses
  %12 = alloca %class.anon.901, align 8           ; 5 uses
  %13 = alloca %"struct.fmt::v11::format_specs", align 4 ; 4 uses
  %14 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp", align 8 ; 4 uses
  %15 = alloca %class.anon.900, align 8           ; 5 uses
  %16 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %17 = alloca %"class.fmt::v11::parse_context", align 8 ; 4 uses
  %18 = alloca %"class.fmt::v11::context", align 8 ; 5 uses
  %19 = alloca %class.anon.926, align 8           ; 5 uses
  %20 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %21 = alloca %"struct.fmt::v11::format_specs", align 8 ; 5 uses
  %22 = alloca %class.anon.901, align 8           ; 5 uses
  %23 = alloca %"struct.fmt::v11::format_specs", align 4 ; 4 uses
  %24 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp.907", align 8 ; 5 uses
  %25 = alloca %"struct.fmt::v11::format_specs", align 8 ; 5 uses
  %26 = alloca %class.anon.901, align 8           ; 5 uses
  %27 = alloca %"struct.fmt::v11::format_specs", align 4 ; 4 uses
  %28 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp", align 8 ; 4 uses
  %29 = alloca %class.anon.900, align 8           ; 5 uses
  %30 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %31 = alloca %struct.id_adapter, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 8 uses
  %.not233 = icmp samesign eq i64 %1, 0
  br i1 %.not233, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %20, i64 4
  %scevgep.i.i.i67 = getelementptr inbounds nuw i8, ptr %20, i64 5
  %i.g = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %30, i64 4
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %30, i64 5
  %i.o = getelementptr inbounds nuw i8, ptr %30, i64 12
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 4
  %scevgep.i.i.i141 = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 4
  %scevgep.i.i.i112 = getelementptr inbounds nuw i8, ptr %16, i64 5
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 12
  %.sroa.2.0..sroa_idx.i.i.i113 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN3fmt3v116detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit
  %.0235 = phi ptr [ %0, %.lr.ph ], [ %.1, %_ZN3fmt3v116detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit ] ; 3 uses
  %.024234 = phi ptr [ %0, %.lr.ph ], [ %.125, %_ZN3fmt3v116detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.024234, i64 1 ; 9 uses
  %i.ad = load i8, ptr %.024234, align 1
  switch i8 %i.ad, label %_ZN3fmt3v116detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit [
    i8 123, label %bb.c
    i8 125, label %bb.cc
  ]

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i35 = load ptr, ptr %i.b, align 8
  %i.ae = call ptr @_ZN3fmt3v116detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.0235, ptr noundef nonnull %.024234, ptr %.sroa.0.0.copyload.i.i35) ; 0 uses
  %i.af = icmp eq ptr %i.ac, %i.a
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.129) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ag = load i8, ptr %i.ac, align 1
  switch i8 %i.ag, label %bb.ap [
    i8 125, label %bb.f
    i8 123, label %bb.am
    i8 58, label %bb.an
  ]

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.c, align 8             ; 7 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %_ZN3fmt3v116detail14format_handlerIcE9on_arg_idEv.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.132) #29
  unreachable

_ZN3fmt3v116detail14format_handlerIcE9on_arg_idEv.exit: ; preds = %bb.f
end_hunk_3
begin_hunk_4_@_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104: ; preds = %bb.k, %bb.j
  %.pre-phi.i.i105 = phi i64 [ %i.cg, %bb.j ], [ %.pre2.i.i107, %bb.k ]
  %i.ck = phi i64 [ %i.cf, %bb.j ], [ %.pre.i.i106, %bb.k ]
  %i.cl = load ptr, ptr %8, align 8
  store i64 %.pre-phi.i.i105, ptr %i.m, align 8
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ck
  store i32 %i.cd, ptr %i.cm, align 4
  br label %_ZN3fmt3v116detail6bigintlSEi.exit108

_ZN3fmt3v116detail6bigintlSEi.exit108:            ; preds = %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit, %.lr.ph.i98, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit108
  %i.cn = load ptr, ptr %9, align 8
  store i32 1, ptr %i.cn, align 4
  %i.co = load i64, ptr %i.p, align 8
  %.not8.i.i112.not = icmp eq i64 %i.co, 0
  br i1 %.not8.i.i112.not, label %bb.m, label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114

bb.m:                                             ; preds = %bb.l
  %i.cp = load ptr, ptr %i.q, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef 1) #24, !inline_history !890
  %.pre.i.i.i.i113 = load i64, ptr %i.p, align 8
  %i.cq = icmp ne i64 %.pre.i.i.i.i113, 0
  %i.cr = zext i1 %i.cq to i64
  br label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114

_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114:       ; preds = %bb.l, %bb.m
  %i.cs = phi i64 [ 1, %bb.l ], [ %i.cr, %bb.m ]  ; 2 uses
  store i64 %i.cs, ptr %i.r, align 8
  %i.ct = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.cu = lshr i32 %i.ct, 5
  store i32 %i.cu, ptr %i.t, align 8
  %i.cv = and i32 %i.ct, 31                       ; 3 uses
  %i.cw = icmp eq i32 %i.cv, 0
  %.not19.i115 = icmp eq i64 %i.cs, 0
  %or.cond488 = or i1 %i.cw, %.not19.i115
  br i1 %or.cond488, label %bb.p, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114
  %i.cx = sub nuw nsw i32 32, %i.cv
  %i.cy = load ptr, ptr %9, align 8               ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.da = lshr i32 %i.cz, %i.cx                   ; 2 uses
  %i.db = shl i32 %i.cz, %i.cv
  store i32 %i.db, ptr %i.cy, align 4
  %.not.i121 = icmp eq i32 %i.da, 0
  br i1 %.not.i121, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i116
  %i.dc = load i64, ptr %i.r, align 8             ; 2 uses
  %i.dd = add i64 %i.dc, 1                        ; 3 uses
  %i.de = load i64, ptr %i.p, align 8
  %i.df = icmp ugt i64 %i.dd, %i.de
  br i1 %i.df, label %bb.o, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122

bb.o:                                             ; preds = %bb.n
  %i.dg = load ptr, ptr %i.q, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.dd) #24, !inline_history !889
  %.pre.i.i124 = load i64, ptr %i.r, align 8      ; 2 uses
  %.pre2.i.i125 = add i64 %.pre.i.i124, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122: ; preds = %bb.o, %bb.n
  %.pre-phi.i.i123 = phi i64 [ %i.dd, %bb.n ], [ %.pre2.i.i125, %bb.o ]
  %i.dh = phi i64 [ %i.dc, %bb.n ], [ %.pre.i.i124, %bb.o ]
  %i.di = load ptr, ptr %9, align 8
  store i64 %.pre-phi.i.i123, ptr %i.r, align 8
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dh
  store i32 %i.da, ptr %i.dj, align 4
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit108, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114, %.lr.ph.i116, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122
  %.074 = phi ptr [ null, %_ZN3fmt3v116detail6bigintlSEi.exit108 ], [ %9, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114 ], [ %9, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122 ], [ %9, %.lr.ph.i116 ] ; 3 uses
  %i.dk = load i32, ptr %4, align 4
  call void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %7, i32 noundef %i.dk)
  %i.dl = load i64, ptr %i.h, align 8             ; 5 uses
  %.not19.i127 = icmp eq i64 %i.dl, 0
  %extract.t725 = trunc i128 %i.z to i32
  br i1 %.not19.i127, label %_ZN3fmt3v116detail6bigintlSEi.exit138, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %bb.p
  %i.dm = xor i32 %i.u, 31                        ; 3 uses
  %xtraiter977 = and i64 %i.dl, 1
  %i.dn = icmp eq i64 %i.dl, 1
  br i1 %i.dn, label %.epil.preheader976, label %.lr.ph.i128.new

.lr.ph.i128.new:                                  ; preds = %.lr.ph.i128
  %unroll_iter981 = and i64 %i.dl, -2
  br label %bb.q

._crit_edge.i132.unr-lcssa:                       ; preds = %bb.q
  %lcmp.mod978.not = icmp eq i64 %xtraiter977, 0
  br i1 %lcmp.mod978.not, label %._crit_edge.i132, label %.epil.preheader976

.epil.preheader976:                               ; preds = %._crit_edge.i132.unr-lcssa, %.lr.ph.i128
  %.01418.i129.epil.init = phi i64 [ 0, %.lr.ph.i128 ], [ %i.eh, %._crit_edge.i132.unr-lcssa ]
  %.017.i130.epil.init = phi i32 [ 0, %.lr.ph.i128 ], [ %i.ee, %._crit_edge.i132.unr-lcssa ]
  %lcmp.mod980 = trunc i64 %i.dl to i1
  call void @llvm.assume(i1 %lcmp.mod980)
  %i.do = load ptr, ptr %7, align 8
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.01418.i129.epil.init ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.dr = lshr i32 %i.dq, %i.dm
  %i.ds = shl i32 %i.dq, %i.v
  %i.dt = add i32 %i.ds, %.017.i130.epil.init
  store i32 %i.dt, ptr %i.dp, align 4
  br label %._crit_edge.i132

._crit_edge.i132:                                 ; preds = %._crit_edge.i132.unr-lcssa, %.epil.preheader976
  %.lcssa936 = phi i32 [ %i.ee, %._crit_edge.i132.unr-lcssa ], [ %i.dr, %.epil.preheader976 ] ; 2 uses
  %.not.i133 = icmp eq i32 %.lcssa936, 0
  %extract.t726 = trunc i128 %i.z to i32
  br i1 %.not.i133, label %_ZN3fmt3v116detail6bigintlSEi.exit138, label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph.i128.new
  %.01418.i129 = phi i64 [ 0, %.lr.ph.i128.new ], [ %i.eh, %bb.q ] ; 3 uses
  %.017.i130 = phi i32 [ 0, %.lr.ph.i128.new ], [ %i.ee, %bb.q ]
  %niter982 = phi i64 [ 0, %.lr.ph.i128.new ], [ %niter982.next.1, %bb.q ]
  %i.du = load ptr, ptr %7, align 8
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.01418.i129 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = lshr i32 %i.dw, %i.dm
  %i.dy = shl i32 %i.dw, %i.v
  %i.dz = add i32 %i.dy, %.017.i130
  store i32 %i.dz, ptr %i.dv, align 4
  %i.ea = load ptr, ptr %7, align 8
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.01418.i129
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4            ; 2 uses
  %i.ee = lshr i32 %i.ed, %i.dm                   ; 3 uses
  %i.ef = shl i32 %i.ed, %i.v
  %i.eg = add i32 %i.ef, %i.dx
  store i32 %i.eg, ptr %i.ec, align 4
  %i.eh = add nuw i64 %.01418.i129, 2             ; 2 uses
  %niter982.next.1 = add i64 %niter982, 2         ; 2 uses
  %niter982.ncmp.1 = icmp eq i64 %niter982.next.1, %unroll_iter981
  br i1 %niter982.ncmp.1, label %._crit_edge.i132.unr-lcssa, label %bb.q, !llvm.loop !888

bb.r:                                             ; preds = %._crit_edge.i132
  %i.ei = load i64, ptr %i.h, align 8             ; 2 uses
  %i.ej = add i64 %i.ei, 1                        ; 3 uses
  %i.ek = load i64, ptr %i.f, align 8
  %i.el = icmp ugt i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.s, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134

bb.s:                                             ; preds = %bb.r
  %i.em = load ptr, ptr %i.g, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.ej) #24, !inline_history !889
  %.pre.i.i136 = load i64, ptr %i.h, align 8      ; 2 uses
  %.pre2.i.i137 = add i64 %.pre.i.i136, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134: ; preds = %bb.s, %bb.r
  %.pre-phi.i.i135 = phi i64 [ %i.ej, %bb.r ], [ %.pre2.i.i137, %bb.s ]
  %i.en = phi i64 [ %i.ei, %bb.r ], [ %.pre.i.i136, %bb.s ]
  %i.eo = load ptr, ptr %7, align 8
  store i64 %.pre-phi.i.i135, ptr %i.h, align 8
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.en
  store i32 %.lcssa936, ptr %i.ep, align 4
  %extract.t723 = trunc i128 %i.z to i32
  br label %_ZN3fmt3v116detail6bigintlSEi.exit138

bb.t:                                             ; preds = %bb.a
  %i.eq = load i32, ptr %4, align 4               ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %bb.u, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.es = sub nsw i32 0, %i.eq
  call void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.es)
  %i.et = load i64, ptr %i.c, align 8             ; 7 uses
  %i.eu = load i64, ptr %i.k, align 8
  %i.ev = icmp ugt i64 %i.et, %i.eu
  br i1 %i.ev, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.u
  %i.ew = load ptr, ptr %i.l, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.et) #24, !inline_history !891
  %.pre.i.i.i = load i64, ptr %i.k, align 8
  %i.ex = call noundef i64 @llvm.umin.i64(i64 %i.et, i64 %.pre.i.i.i)
  store i64 %i.ex, ptr %i.m, align 8
  %i.ey = load ptr, ptr %6, align 8               ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.et, 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.u
  store i64 %i.et, ptr %i.m, align 8
  %i.fa = load ptr, ptr %6, align 8               ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.et, 2
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.et, 0
  br i1 %.not6.i.i, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %i.fc = phi ptr [ %i.ez, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i ], [ %i.fb, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.fd = phi ptr [ %i.ey, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i ], [ %i.fa, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 5 uses
  %10 = load ptr, ptr %8, align 8                 ; 4 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %11 = ptrtoint ptr %i.fd to i64
  %12 = sub i64 %i.fe, %11
  %13 = add i64 %12, -4                           ; 2 uses
  %i.ff = lshr i64 %13, 2
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 44
  %i.fh = ptrtoaddr ptr %10 to i64
  %i.fi = ptrtoaddr ptr %i.fd to i64
  %i.fj = sub i64 %i.fi, %i.fh
  %diff.check = icmp ugt i64 %i.fj, -32
  %or.cond884 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond884, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.fg, 9223372036854775800     ; 3 uses
  %i.fk = shl i64 %n.vec, 2                       ; 2 uses
  %i.fl = getelementptr i8, ptr %10, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fd, i64 %i.fk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %10, i64 %i.fn ; 2 uses
  %next.gep861 = getelementptr i8, ptr %i.fd, i64 %i.fn ; 2 uses
  %i.fo = getelementptr i8, ptr %next.gep861, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep861, align 4
  %wide.load862 = load <4 x i32>, ptr %i.fo, align 4
  %i.fp = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load862, ptr %i.fp, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !892

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fg, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.08.i.i.ph = phi ptr [ %10, %.lr.ph.i.preheader.i ], [ %i.fl, %middle.block ]
  %.057.i.i.ph = phi ptr [ %i.fd, %.lr.ph.i.preheader.i ], [ %i.fm, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ft, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.fr, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.fs = load i32, ptr %.057.i.i, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.fs, ptr %.08.i.i, align 4
  %.not.i.i139 = icmp eq ptr %i.fr, %i.fc
  br i1 %.not.i.i139, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.i, !llvm.loop !893

_ZN3fmt3v116detail6bigint6assignERKS2_.exit:      ; preds = %.lr.ph.i.i, %middle.block, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.fu = load i32, ptr %i.e, align 8             ; 2 uses
  store i32 %i.fu, ptr %i.o, align 8
  br i1 %.not, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %bb.v

bb.v:                                             ; preds = %_ZN3fmt3v116detail6bigint6assignERKS2_.exit
  %i.fv = load i64, ptr %i.c, align 8             ; 7 uses
  %i.fw = load i64, ptr %i.p, align 8
  %i.fx = icmp ugt i64 %i.fv, %i.fw
  br i1 %i.fx, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148: ; preds = %bb.v
  %i.fy = load ptr, ptr %i.q, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.fv) #24, !inline_history !891
  %.pre.i.i.i149 = load i64, ptr %i.p, align 8
  %i.fz = call noundef i64 @llvm.umin.i64(i64 %i.fv, i64 %.pre.i.i.i149)
  store i64 %i.fz, ptr %i.r, align 8
  %i.ga = load ptr, ptr %6, align 8               ; 2 uses
  %.idx8.i150 = shl nuw nsw i64 %i.fv, 2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.idx8.i150
  br label %.lr.ph.i.preheader.i143

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140: ; preds = %bb.v
  store i64 %i.fv, ptr %i.r, align 8
  %i.gc = load ptr, ptr %6, align 8               ; 2 uses
  %.idx.i141 = shl nuw nsw i64 %i.fv, 2
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx.i141
  %.not6.i.i142 = icmp eq i64 %i.fv, 0
  br i1 %.not6.i.i142, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread, label %.lr.ph.i.preheader.i143

_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread: ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140
  store i32 %i.fu, ptr %i.t, align 8
  br label %_ZN3fmt3v116detail6bigintlSEi.exit163

.lr.ph.i.preheader.i143:                          ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148
  %i.ge = phi ptr [ %i.gb, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148 ], [ %i.gd, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140 ] ; 2 uses
  %i.gf = phi ptr [ %i.ga, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148 ], [ %i.gc, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140 ] ; 5 uses
  %14 = load ptr, ptr %9, align 8                 ; 4 uses
  %i.gg = ptrtoint ptr %i.ge to i64
  %15 = ptrtoint ptr %i.gf to i64
  %16 = sub i64 %i.gg, %15
  %17 = add i64 %16, -4                           ; 2 uses
  %i.gh = lshr i64 %17, 2
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check867 = icmp ult i64 %17, 44
  %i.gj = ptrtoaddr ptr %14 to i64
  %i.gk = ptrtoaddr ptr %i.gf to i64
  %i.gl = sub i64 %i.gk, %i.gj
  %diff.check865 = icmp ugt i64 %i.gl, -32
  %or.cond887 = select i1 %min.iters.check867, i1 true, i1 %diff.check865
  br i1 %or.cond887, label %.lr.ph.i.i144.preheader, label %vector.ph868

vector.ph868:                                     ; preds = %.lr.ph.i.preheader.i143
  %n.vec870 = and i64 %i.gi, 9223372036854775800  ; 3 uses
  %i.gm = shl i64 %n.vec870, 2                    ; 2 uses
  %i.gn = getelementptr i8, ptr %14, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gf, i64 %i.gm
  br label %vector.body871

vector.body871:                                   ; preds = %vector.body871, %vector.ph868
  %index872 = phi i64 [ 0, %vector.ph868 ], [ %index.next877, %vector.body871 ] ; 2 uses
  %i.gp = shl i64 %index872, 2                    ; 2 uses
  %next.gep873 = getelementptr i8, ptr %14, i64 %i.gp ; 2 uses
  %next.gep874 = getelementptr i8, ptr %i.gf, i64 %i.gp ; 2 uses
  %i.gq = getelementptr i8, ptr %next.gep874, i64 16
  %wide.load875 = load <4 x i32>, ptr %next.gep874, align 4
  %wide.load876 = load <4 x i32>, ptr %i.gq, align 4
  %i.gr = getelementptr i8, ptr %next.gep873, i64 16
  store <4 x i32> %wide.load875, ptr %next.gep873, align 4
  store <4 x i32> %wide.load876, ptr %i.gr, align 4
  %index.next877 = add nuw i64 %index872, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next877, %n.vec870
  br i1 %i.gs, label %middle.block878, label %vector.body871, !llvm.loop !894

middle.block878:                                  ; preds = %vector.body871
  %cmp.n879 = icmp eq i64 %i.gi, %n.vec870
  br i1 %cmp.n879, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, label %.lr.ph.i.i144.preheader

.lr.ph.i.i144.preheader:                          ; preds = %.lr.ph.i.preheader.i143, %middle.block878
  %.08.i.i145.ph = phi ptr [ %14, %.lr.ph.i.preheader.i143 ], [ %i.gn, %middle.block878 ]
  %.057.i.i146.ph = phi ptr [ %i.gf, %.lr.ph.i.preheader.i143 ], [ %i.go, %middle.block878 ]
  br label %.lr.ph.i.i144

.lr.ph.i.i144:                                    ; preds = %.lr.ph.i.i144.preheader, %.lr.ph.i.i144
  %.08.i.i145 = phi ptr [ %i.gv, %.lr.ph.i.i144 ], [ %.08.i.i145.ph, %.lr.ph.i.i144.preheader ] ; 2 uses
  %.057.i.i146 = phi ptr [ %i.gt, %.lr.ph.i.i144 ], [ %.057.i.i146.ph, %.lr.ph.i.i144.preheader ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.057.i.i146, i64 4 ; 2 uses
  %i.gu = load i32, ptr %.057.i.i146, align 4
  %i.gv = getelementptr inbounds nuw i8, ptr %.08.i.i145, i64 4
  store i32 %i.gu, ptr %.08.i.i145, align 4
  %.not.i.i147 = icmp eq ptr %i.gt, %i.ge
  br i1 %.not.i.i147, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, label %.lr.ph.i.i144, !llvm.loop !895

_ZN3fmt3v116detail6bigint6assignERKS2_.exit151:   ; preds = %.lr.ph.i.i144, %middle.block878
  %.pr = load i64, ptr %i.r, align 8              ; 5 uses
  %i.gw = load i32, ptr %i.e, align 8
  store i32 %i.gw, ptr %i.t, align 8
  %.not19.i152 = icmp eq i64 %.pr, 0
  br i1 %.not19.i152, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %.lr.ph.i153.preheader

.lr.ph.i153.preheader:                            ; preds = %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151
  %xtraiter955 = and i64 %.pr, 1
  %i.gx = icmp eq i64 %.pr, 1
  br i1 %i.gx, label %.lr.ph.i153.epil.preheader, label %.lr.ph.i153.preheader.new

.lr.ph.i153.preheader.new:                        ; preds = %.lr.ph.i153.preheader
  %unroll_iter960 = and i64 %.pr, -2
  br label %.lr.ph.i153

._crit_edge.i157.unr-lcssa:                       ; preds = %.lr.ph.i153
  %lcmp.mod956.not = icmp eq i64 %xtraiter955, 0
  br i1 %lcmp.mod956.not, label %._crit_edge.i157, label %.lr.ph.i153.epil.preheader

.lr.ph.i153.epil.preheader:                       ; preds = %._crit_edge.i157.unr-lcssa, %.lr.ph.i153.preheader
  %.01418.i154.epil.init = phi i64 [ 0, %.lr.ph.i153.preheader ], [ %i.hp, %._crit_edge.i157.unr-lcssa ]
  %.017.i155.epil.init = phi i32 [ 0, %.lr.ph.i153.preheader ], [ %i.hn, %._crit_edge.i157.unr-lcssa ]
  %lcmp.mod959 = trunc i64 %.pr to i1
  call void @llvm.assume(i1 %lcmp.mod959)
  %i.gy = load ptr, ptr %9, align 8
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.01418.i154.epil.init ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4            ; 3 uses
  %i.hb = lshr i32 %i.ha, 31
  %i.hc = shl i32 %i.ha, 1
  %i.hd = or disjoint i32 %i.hc, %.017.i155.epil.init
  store i32 %i.hd, ptr %i.gz, align 4
  br label %._crit_edge.i157

._crit_edge.i157:                                 ; preds = %._crit_edge.i157.unr-lcssa, %.lr.ph.i153.epil.preheader
  %.lcssa942 = phi i32 [ %i.hm, %._crit_edge.i157.unr-lcssa ], [ %i.ha, %.lr.ph.i153.epil.preheader ]
  %.lcssa941 = phi i32 [ %i.hn, %._crit_edge.i157.unr-lcssa ], [ %i.hb, %.lr.ph.i153.epil.preheader ]
  %.not.i158 = icmp sgt i32 %.lcssa942, -1
  br i1 %.not.i158, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %bb.w

.lr.ph.i153:                                      ; preds = %.lr.ph.i153, %.lr.ph.i153.preheader.new
  %.01418.i154 = phi i64 [ 0, %.lr.ph.i153.preheader.new ], [ %i.hp, %.lr.ph.i153 ] ; 3 uses
  %.017.i155 = phi i32 [ 0, %.lr.ph.i153.preheader.new ], [ %i.hn, %.lr.ph.i153 ]
  %niter961 = phi i64 [ 0, %.lr.ph.i153.preheader.new ], [ %niter961.next.1, %.lr.ph.i153 ]
  %i.he = load ptr, ptr %9, align 8
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.01418.i154 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4            ; 2 uses
  %i.hh = shl i32 %i.hg, 1
  %i.hi = or disjoint i32 %i.hh, %.017.i155
  store i32 %i.hi, ptr %i.hf, align 4
  %i.hj = load ptr, ptr %9, align 8
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %.01418.i154
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4            ; 3 uses
  %i.hn = lshr i32 %i.hm, 31                      ; 3 uses
  %i.ho = call i32 @llvm.fshl.i32(i32 %i.hm, i32 %i.hg, i32 1)
  store i32 %i.ho, ptr %i.hl, align 4
  %i.hp = add nuw i64 %.01418.i154, 2             ; 2 uses
  %niter961.next.1 = add i64 %niter961, 2         ; 2 uses
  %niter961.ncmp.1 = icmp eq i64 %niter961.next.1, %unroll_iter960
  br i1 %niter961.ncmp.1, label %._crit_edge.i157.unr-lcssa, label %.lr.ph.i153, !llvm.loop !888

bb.w:                                             ; preds = %._crit_edge.i157
  %i.hq = load i64, ptr %i.r, align 8             ; 2 uses
  %i.hr = add i64 %i.hq, 1                        ; 3 uses
  %i.hs = load i64, ptr %i.p, align 8
  %i.ht = icmp ugt i64 %i.hr, %i.hs
  br i1 %i.ht, label %bb.x, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159

bb.x:                                             ; preds = %bb.w
  %i.hu = load ptr, ptr %i.q, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.hr) #24, !inline_history !889
  %.pre.i.i161 = load i64, ptr %i.r, align 8      ; 2 uses
  %.pre2.i.i162 = add i64 %.pre.i.i161, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159: ; preds = %bb.x, %bb.w
  %.pre-phi.i.i160 = phi i64 [ %i.hr, %bb.w ], [ %.pre2.i.i162, %bb.x ]
  %i.hv = phi i64 [ %i.hq, %bb.w ], [ %.pre.i.i161, %bb.x ]
  %i.hw = load ptr, ptr %9, align 8
  store i64 %.pre-phi.i.i160, ptr %i.r, align 8
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hv
  store i32 %.lcssa941, ptr %i.hx, align 4
  br label %_ZN3fmt3v116detail6bigintlSEi.exit163

_ZN3fmt3v116detail6bigintlSEi.exit163:            ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159, %._crit_edge.i157, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit
  %.1 = phi ptr [ null, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit ], [ %9, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread ], [ %9, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151 ], [ %9, %._crit_edge.i157 ], [ %9, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159 ] ; 3 uses
  %i.hy = load i128, ptr %0, align 16             ; 5 uses
  %i.hz = and i128 %i.hy, 18446744073709551615
  %i.ia = load i64, ptr %i.c, align 8             ; 2 uses
  %.not23.i.i = icmp eq i64 %i.ia, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v116detail6bigintlSEi.exit178, label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit163
  %i.ib = lshr i128 %i.hy, 32
  %i.ic = and i128 %i.ib, 79228162514264337589248983040
  br label %bb.y

.preheader.i.i:                                   ; preds = %bb.y
  %.not20.i.i = icmp eq i128 %i.io, 0
  br i1 %.not20.i.i, label %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i164
  %.019.i.i = phi i128 [ 0, %.lr.ph.i.i164 ], [ %i.io, %bb.y ] ; 2 uses
  %.01718.i.i = phi i64 [ 0, %.lr.ph.i.i164 ], [ %i.iq, %bb.y ] ; 2 uses
  %i.id = load ptr, ptr %6, align 8
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %.01718.i.i ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4
  %i.ig = zext i32 %i.if to i128                  ; 2 uses
  %i.ih = mul nuw nsw i128 %i.hz, %i.ig
  %i.ii = and i128 %.019.i.i, 4294967295
  %i.ij = add nuw nsw i128 %i.ih, %i.ii           ; 2 uses
  %i.ik = mul nuw i128 %i.ic, %i.ig
  %i.il = lshr i128 %i.ij, 32
  %i.im = lshr i128 %.019.i.i, 32
  %i.in = add nuw i128 %i.ik, %i.im
  %i.io = add nuw i128 %i.in, %i.il               ; 3 uses
  %i.ip = trunc i128 %i.ij to i32
  store i32 %i.ip, ptr %i.ie, align 4
  %i.iq = add nuw i64 %.01718.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.iq, %i.ia
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.y, !llvm.loop !896

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i
  %.121.i.i = phi i128 [ %i.ja, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.io, %.preheader.i.i ] ; 2 uses
  %i.ir = trunc i128 %.121.i.i to i32
  %i.is = load i64, ptr %i.c, align 8             ; 2 uses
  %i.it = add i64 %i.is, 1                        ; 3 uses
  %i.iu = load i64, ptr %i.a, align 8
  %i.iv = icmp ugt i64 %i.it, %i.iu
  br i1 %i.iv, label %bb.z, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

bb.z:                                             ; preds = %.lr.ph22.i.i
  %i.iw = load ptr, ptr %i.b, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.it) #24, !inline_history !897
  %.pre.i.i.i166 = load i64, ptr %i.c, align 8    ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i166, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %bb.z, %.lr.ph22.i.i
  %.pre-phi.i.i.i = phi i64 [ %i.it, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %bb.z ]
  %i.ix = phi i64 [ %i.is, %.lr.ph22.i.i ], [ %.pre.i.i.i166, %bb.z ]
  %i.iy = load ptr, ptr %6, align 8
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.ix
  store i32 %i.ir, ptr %i.iz, align 4
  %i.ja = lshr i128 %.121.i.i, 32                 ; 2 uses
  %.not.i.i165 = icmp eq i128 %i.ja, 0
  br i1 %.not.i.i165, label %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !898

_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit:       ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i, %.preheader.i.i
  %.pr731 = load i64, ptr %i.c, align 8           ; 5 uses
  %.not19.i167 = icmp eq i64 %.pr731, 0
  br i1 %.not19.i167, label %_ZN3fmt3v116detail6bigintlSEi.exit178, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit
  %i.jb = xor i32 %i.u, 31                        ; 3 uses
  %xtraiter963 = and i64 %.pr731, 1
  %i.jc = icmp eq i64 %.pr731, 1
  br i1 %i.jc, label %.epil.preheader962, label %.lr.ph.i168.new

.lr.ph.i168.new:                                  ; preds = %.lr.ph.i168
  %unroll_iter967 = and i64 %.pr731, -2
  br label %bb.aa

._crit_edge.i172.unr-lcssa:                       ; preds = %bb.aa
  %lcmp.mod964.not = icmp eq i64 %xtraiter963, 0
  br i1 %lcmp.mod964.not, label %._crit_edge.i172, label %.epil.preheader962

.epil.preheader962:                               ; preds = %._crit_edge.i172.unr-lcssa, %.lr.ph.i168
  %.01418.i169.epil.init = phi i64 [ 0, %.lr.ph.i168 ], [ %i.jw, %._crit_edge.i172.unr-lcssa ]
  %.017.i170.epil.init = phi i32 [ 0, %.lr.ph.i168 ], [ %i.jt, %._crit_edge.i172.unr-lcssa ]
  %lcmp.mod966 = trunc i64 %.pr731 to i1
  call void @llvm.assume(i1 %lcmp.mod966)
  %i.jd = load ptr, ptr %6, align 8
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %.01418.i169.epil.init ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4            ; 2 uses
  %i.jg = lshr i32 %i.jf, %i.jb
  %i.jh = shl i32 %i.jf, %i.v
  %i.ji = add i32 %i.jh, %.017.i170.epil.init
  store i32 %i.ji, ptr %i.je, align 4
  br label %._crit_edge.i172

._crit_edge.i172:                                 ; preds = %._crit_edge.i172.unr-lcssa, %.epil.preheader962
  %.lcssa939 = phi i32 [ %i.jt, %._crit_edge.i172.unr-lcssa ], [ %i.jg, %.epil.preheader962 ] ; 2 uses
  %.not.i173 = icmp eq i32 %.lcssa939, 0
  br i1 %.not.i173, label %_ZN3fmt3v116detail6bigintlSEi.exit178, label %bb.ab
end_hunk_4
