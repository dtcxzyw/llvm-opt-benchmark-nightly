Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/output-chunks.cc.X86_64?download=true
inline.NumInlined: 10657
inline.NumDeleted: 4361
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 86
begin_hunk_0_@_ZZN4mold13OutputSectionINS_6X86_64EE16get_relr_offsetsERNS_7ContextIS1_EEENKUlllRSt6vectorImSaImEEE_clEllS9_:bb.a

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.sroa.014.020 = phi ptr [ %i.m, %.lr.ph ], [ %i.bo, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 32 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !460
  %.not = icmp eq i32 %i.s, 1
  br i1 %.not, label %bb.c, label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %.sroa.014.020, align 8, !tbaa !461 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !467
  %i.w = sext i32 %i.v to i64                     ; 3 uses
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !468, !nonnull !351, !align !469 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !470  ; 2 uses
  %i.aa = icmp ugt i64 %i.z, %i.w
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !471
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 480
  %i.af = sub nuw i64 %i.w, %i.z
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !473
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %i.af
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit: ; preds = %bb.d, %bb.e
  %.0.i12 = phi ptr [ %i.ad, %bb.d ], [ %i.ah, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i12, i64 48
  %.0.copyload.i = load i64, ptr %i.ai, align 1
  %i.aj = and i64 %.0.copyload.i, 7
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.f:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !474 ; 2 uses
  %i.an = and i64 %i.am, 7
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.g, label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.r, align 8, !tbaa !460
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !475
  %i.ar = add i64 %i.aq, %i.am                    ; 2 uses
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !434 ; 4 uses
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !435
  %.not.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !71
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.au, ptr %i.p, align 8, !tbaa !434
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.i:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %3, align 8, !tbaa !433   ; 4 uses
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 5 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.j, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #34 ; 4 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  store i64 %i.ar, ptr %i.bh, align 8, !tbaa !71
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %bb.k, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 8 %i.av, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !435
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bm) #31
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bg, ptr %3, align 8, !tbaa !433
  store ptr %i.bj, ptr %i.p, align 8, !tbaa !434
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bn, ptr %i.q, align 8, !tbaa !435
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.h, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit, %bb.f, %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 40 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.n
  br i1 %i.bp, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZNK4mold13OutputSectionINS_6X86_64EE13write_dynrelsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 6 uses
  %4 = alloca %"class.tbb::detail::d1::parallel_for_body_wrapper.732", align 8 ; 6 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %6 = alloca %"class.std::vector.21", align 8    ; 7 uses
  %7 = alloca %class.anon.303, align 8            ; 7 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !477
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !430  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !431  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 9 uses
  %i.j = add nsw i64 %i.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.k, label %bb.c, label %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i, !prof !401

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #34
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !429 ; 2 uses
  %.pre11 = load ptr, ptr %i.c, align 8, !tbaa !429
  %.pre13 = ptrtoint ptr %.pre11 to i64
  %.pre14 = ptrtoint ptr %.pre to i64
  br label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi15 = phi i64 [ %.pre14, %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.a ]
  %.pre-phi = phi i64 [ %.pre13, %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %i.m = phi ptr [ %.pre, %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.n = phi ptr [ %i.l, %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 14 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !431
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !478
  %i.r = sub i64 %.pre-phi, %.pre-phi15           ; 4 uses
  %i.s = icmp sgt i64 %i.r, 8
  br i1 %i.s, label %bb.d, label %bb.e, !prof !400

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.n, ptr align 8 %i.m, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.i
  %i.t = icmp eq i64 %i.r, 8
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.m, align 8, !tbaa !71
  store i64 %i.u, ptr %i.n, align 8, !tbaa !71
  br label %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit

_ZNSt6vectorIlSaIlEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.v = getelementptr inbounds i8, ptr %i.n, i64 %i.r
  store ptr %i.v, ptr %i.o, align 8, !tbaa !430
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2683
  %i.x = load i8, ptr %i.w, align 1, !tbaa !479, !range !350, !noundef !351
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !480
  %.not = icmp eq i64 %i.aa, 0
  %.not89 = icmp slt i64 %i.i, 1
  %or.cond = select i1 %.not, i1 true, i1 %.not89
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !431 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ad = getelementptr i8, ptr %i.n, i64 %i.h
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.h
  %bound0 = icmp ult ptr %i.n, %i.ae
  %bound1 = icmp ult ptr %i.ac, %i.ad
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x i64>, ptr %i.af, align 8, !tbaa !71, !alias.scope !1253
  %wide.load22 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !71, !alias.scope !1253
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %wide.load23 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !71, !alias.scope !1254, !noalias !1253
  %wide.load24 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !71, !alias.scope !1254, !noalias !1253
  %i.aj = sub nsw <2 x i64> %wide.load23, %wide.load
  %i.ak = sub nsw <2 x i64> %wide.load24, %wide.load22
  store <2 x i64> %i.aj, ptr %i.ah, align 8, !tbaa !71, !alias.scope !1254, !noalias !1253
  store <2 x i64> %i.ak, ptr %i.ai, align 8, !tbaa !71, !alias.scope !1254, !noalias !1253
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !1250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.010.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.010.prol = phi i64 [ %i.ar, %scalar.ph.prol ], [ %.010.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.010.prol
  %i.an = load i64, ptr %i.am, align 8, !tbaa !71
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.010.prol ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !71
  %i.aq = sub nsw i64 %i.ap, %i.an
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !71
  %i.ar = add nuw nsw i64 %.010.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1251

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.010.unr = phi i64 [ %.010.ph, %scalar.ph.preheader ], [ %i.ar, %scalar.ph.prol ]
  %i.as = sub nsw i64 %.010.ph, %i.i
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.010 = phi i64 [ %i.br, %scalar.ph ], [ %.010.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.010
  %i.av = load i64, ptr %i.au, align 8, !tbaa !71
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.010 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !71
  %i.ay = sub nsw i64 %i.ax, %i.av
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !71
  %i.az = add nuw nsw i64 %.010, 1                ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !71
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.az ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !71
  %i.be = sub nsw i64 %i.bd, %i.bb
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !71
  %i.bf = add nuw nsw i64 %.010, 2                ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !71
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bf ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !71
  %i.bk = sub nsw i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !71
  %i.bl = add nuw nsw i64 %.010, 3                ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !71
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bl ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !71
  %i.bq = sub nsw i64 %i.bp, %i.bn
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !71
  %i.br = add nuw nsw i64 %.010, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.br, %i.i
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1252

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.g, %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr %0, ptr %7, align 8, !tbaa !488
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.bs, align 8, !tbaa !1255
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %6, ptr %i.bt, align 8, !tbaa !489
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %1, ptr %i.bu, align 8, !tbaa !490
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.bv = icmp sgt i64 %i.i, 1
  br i1 %i.bv, label %bb.h, label %_ZN3tbb6detail2d112parallel_forIlZNK4mold13OutputSectionINS3_6X86_64EE13write_dynrelsERNS3_7ContextIS5_EEPNS3_6ElfRelIS5_EEEUllE_EEvT_SE_RKT0_.exit

bb.h:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store i64 %i.j, ptr %3, align 8, !tbaa !451
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !452
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 1, ptr %i.bx, align 8, !tbaa !453
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %7, ptr %4, align 8, !tbaa !449
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.by, align 8, !tbaa !492
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 1, ptr %i.bz, align 8, !tbaa !493
  call void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZNK4mold13OutputSectionINS6_6X86_64EE13write_dynrelsERNS6_7ContextIS8_EEPNS6_6ElfRelIS8_EEEUllE_lEEKNS1_16auto_partitionerEE3runERKS4_RKSH_RSJ_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.pre12 = load ptr, ptr %6, align 8, !tbaa !431
  br label %_ZN3tbb6detail2d112parallel_forIlZNK4mold13OutputSectionINS3_6X86_64EE13write_dynrelsERNS3_7ContextIS5_EEPNS3_6ElfRelIS5_EEEUllE_EEvT_SE_RKT0_.exit

_ZN3tbb6detail2d112parallel_forIlZNK4mold13OutputSectionINS3_6X86_64EE13write_dynrelsERNS3_7ContextIS5_EEPNS3_6ElfRelIS5_EEEUllE_EEvT_SE_RKT0_.exit: ; preds = %.loopexit, %bb.h
  %i.ca = phi ptr [ %i.n, %.loopexit ], [ %.pre12, %bb.h ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %.not.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3tbb6detail2d112parallel_forIlZNK4mold13OutputSectionINS3_6X86_64EE13write_dynrelsERNS3_7ContextIS5_EEPNS3_6ElfRelIS5_EEEUllE_EEvT_SE_RKT0_.exit
  %i.cb = load ptr, ptr %i.q, align 8, !tbaa !478
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.ce) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZN3tbb6detail2d112parallel_forIlZNK4mold13OutputSectionINS3_6X86_64EE13write_dynrelsERNS3_7ContextIS5_EEPNS3_6ElfRelIS5_EEEUllE_EEvT_SE_RKT0_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold13OutputSectionINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.0.copyload.i = load i32, ptr %i.a, align 4
  %i.b = icmp eq i32 %.0.copyload.i, 8
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 13176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !347
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i32 = load i64, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.copyload.i32 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef %i.f) #15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !494  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !494  ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2654 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2683
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.035.039 = phi ptr [ %i.k, %.lr.ph ], [ %i.az, %bb.j ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.035.039, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !495  ; 2 uses
  %i.t = load ptr, ptr %.sroa.035.039, align 8, !tbaa !461
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !475
  %i.w = getelementptr inbounds i8, ptr %i.f, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.035.039, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !474
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = tail call noundef i64 @_ZNK4mold6SymbolINS_6X86_64EE8get_addrERNS_7ContextIS1_EEl(ptr noundef nonnull align 8 dereferenceable(36) %i.s, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef 0) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.035.039, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !496 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.035.039, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !460
  switch i32 %i.ae, label %bb.j [
end_hunk_0
begin_hunk_1_@_ZN4mold13RelDynSectionINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE:bb.a

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i8.i.i.i.i.i, %bb.z
  %.sroa.012.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.021.i.ptr.i.i.i.i.i, %bb.z ], [ %.sroa.0.019.i.i.i.i.i.i.i, %.lr.ph.i.i8.i.i.i.i.i ] ; 4 uses
  store i64 %i.db, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i.i, i64 8
  store i32 %i.dd, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i.i, i64 12
  store i32 %i.dc, ptr %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.7.0..sroa_idx9.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx9.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i
  %.sroa.0.021.i.add.i.i.i.i.i = add nuw nsw i64 %.sroa.0.021.i.idx.i.i.i.i.i, 24 ; 2 uses
  %i.ei = icmp eq i64 %.sroa.0.021.i.add.i.i.i.i.i, 384
  br i1 %i.ei, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SR_.exit.i.i.i.i.i, label %bb.v, !llvm.loop !1379

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SR_.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bb, i64 384
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SR_.exit.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.i = phi ptr [ %i.fe, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i.i ], [ %i.ej, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SR_.exit.i.i.i.i.i ] ; 10 uses
  %.sroa.03.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.09.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408 ; 5 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 12
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408 ; 5 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 16
  %.sroa.7.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.0.015.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 -16
  %i.el = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 -12
  %i.em = load i64, ptr %.sroa.0.015.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1412
  %i.en = load i32, ptr %i.el, align 1, !tbaa !348, !noalias !1412 ; 2 uses
  %i.eo = load i32, ptr %i.ek, align 1, !tbaa !348, !noalias !1412 ; 2 uses
  %i.ep = icmp eq i32 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, %i.eo
  %i.eq = icmp ult i32 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, %i.eo
  %i.er = icmp eq i32 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, %i.en
  %i.es = icmp ult i32 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, %i.en
  %i.et = icmp ult i64 %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, %i.em
  %spec.select.i.i16.i.i.i.i.i.i.i.i = select i1 %i.er, i1 %i.et, i1 %i.es
  %.sroa.06.0.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i = select i1 %i.ep, i1 %spec.select.i.i16.i.i.i.i.i.i.i.i, i1 %i.eq
  br i1 %.sroa.06.0.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.019.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.015.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.012.018.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.09.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.012.018.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.019.i.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !586, !noalias !1408
  %.sroa.0.0.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.019.i.i.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %.sroa.0.019.i.i.i.i.i.i.i.i, i64 -16
  %i.ev = getelementptr inbounds i8, ptr %.sroa.0.019.i.i.i.i.i.i.i.i, i64 -12
  %i.ew = load i64, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1412
  %i.ex = load i32, ptr %i.ev, align 1, !tbaa !348, !noalias !1412 ; 2 uses
  %i.ey = load i32, ptr %i.eu, align 1, !tbaa !348, !noalias !1412 ; 2 uses
  %i.ez = icmp eq i32 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, %i.ey
  %i.fa = icmp ult i32 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, %i.ey
  %i.fb = icmp eq i32 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, %i.ex
  %i.fc = icmp ult i32 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, %i.ex
  %i.fd = icmp ult i64 %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, %i.ew
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.fb, i1 %i.fd, i1 %i.fc
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ez, i1 %spec.select.i.i.i.i.i.i.i.i.i.i, i1 %i.fa
  br i1 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i.i, !llvm.loop !1378

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.012.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.09.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.019.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 4 uses
  store i64 %.sroa.03.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i.i.i, i64 12
  store i32 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.7.0..sroa_idx9.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx9.i.i.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.bc
  br i1 %i.ff, label %_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold6ElfRelINS3_6X86_64EEELm18446744073709551615EENS_4lessEZNS3_L14encode_androidIS5_EESt6vectorIhSaIhEES2_INS4_IT_EELm18446744073709551615EEEUlRKS6_E0_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISL_NS_8danglingEEEOSE_SM_SN_.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1386

.preheader.i.i.i.i.i:                             ; preds = %bb.t
  %i.fg = icmp eq i64 %i.bf, 24
  br i1 %i.fg, label %.lr.ph68.i.preheader, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i
  %.sroa.0.019.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ah, %.lr.ph.i.i.i.i.i
  %.sroa.0.021.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.ah ] ; 7 uses
  %.pn20.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.021.i.i.i.i.i, %bb.ah ] ; 9 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 32
  %i.fk = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 36
  %i.fl = load i64, ptr %.sroa.0.021.i.i.i.i.i, align 1, !tbaa !348, !noalias !1413 ; 4 uses
  %i.fm = load i32, ptr %i.fk, align 1, !tbaa !348, !noalias !1413 ; 7 uses
  %i.fn = load i32, ptr %i.fj, align 1, !tbaa !348, !noalias !1413 ; 7 uses
  %i.fo = load i64, ptr %i.bb, align 1, !tbaa !348, !noalias !1414
  %i.fp = load i32, ptr %i.fi, align 1, !tbaa !348, !noalias !1414 ; 2 uses
  %i.fq = load i32, ptr %i.fh, align 1, !tbaa !348, !noalias !1414 ; 2 uses
  %i.fr = icmp eq i32 %i.fn, %i.fq
  %i.fs = icmp ult i32 %i.fn, %i.fq
  %i.ft = icmp eq i32 %i.fm, %i.fp
  %i.fu = icmp ult i32 %i.fm, %i.fp
  %i.fv = icmp ult i64 %i.fl, %i.fo
  %spec.select.i.i.i.i.i.i.i = select i1 %i.ft, i1 %i.fv, i1 %i.fu
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.fr, i1 %spec.select.i.i.i.i.i.i.i, i1 %i.fs
  br i1 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.021.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !586, !noalias !1408
  %i.fw = ptrtoint ptr %.sroa.0.021.i.i.i.i.i to i64
  %i.fx = sub i64 %i.fw, %i.be                    ; 4 uses
  %i.fy = icmp sgt i64 %i.fx, 24
  br i1 %i.fy, label %bb.ad, label %bb.ae, !prof !400

bb.ad:                                            ; preds = %bb.ac
  %i.fz = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 48
  %.neg25.i.i.i.i.i = udiv exact i64 %i.fx, 24
  %.neg25.neg.i.i.i.i.i = sub nsw i64 0, %.neg25.i.i.i.i.i
  %i.ga = getelementptr inbounds [24 x i8], ptr %i.fz, i64 %.neg25.neg.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ga, ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i64 %i.fx, i1 false), !noalias !1408
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.gb = icmp eq i64 %i.fx, 24
  br i1 %i.gb, label %bb.af, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.gc = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gc, ptr noundef nonnull align 1 dereferenceable(24) %i.bb, i64 24, i1 false), !tbaa.struct !586, !noalias !1408
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ae, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bb, ptr noundef nonnull align 1 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !586, !noalias !1408
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ab
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 40
  %.sroa.7.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %i.gd = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 12
  %i.gf = load i64, ptr %.pn20.i.i.i.i.i, align 1, !tbaa !348, !noalias !1415
  %i.gg = load i32, ptr %i.ge, align 1, !tbaa !348, !noalias !1415 ; 2 uses
  %i.gh = load i32, ptr %i.gd, align 1, !tbaa !348, !noalias !1415 ; 2 uses
  %i.gi = icmp eq i32 %i.fn, %i.gh
  %i.gj = icmp ult i32 %i.fn, %i.gh
  %i.gk = icmp eq i32 %i.fm, %i.gg
  %i.gl = icmp ult i32 %i.fm, %i.gg
  %i.gm = icmp ult i64 %i.fl, %i.gf
  %spec.select.i.i16.i.i.i.i.i.i = select i1 %i.gk, i1 %i.gm, i1 %i.gl
  %.sroa.06.0.i.i.i.i.i.i.i17.i.i.i.i.i.i = select i1 %i.gi, i1 %spec.select.i.i16.i.i.i.i.i.i, i1 %i.gj
  br i1 %.sroa.06.0.i.i.i.i.i.i.i17.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ag, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.019.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.pn20.i.i.i.i.i, %bb.ag ] ; 6 uses
  %.sroa.012.018.i.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.021.i.i.i.i.i, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.012.018.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.019.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !586, !noalias !1408
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.019.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %.sroa.0.019.i.i.i.i.i.i, i64 -16
  %i.go = getelementptr inbounds i8, ptr %.sroa.0.019.i.i.i.i.i.i, i64 -12
  %i.gp = load i64, ptr %.sroa.0.0.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1415
  %i.gq = load i32, ptr %i.go, align 1, !tbaa !348, !noalias !1415 ; 2 uses
  %i.gr = load i32, ptr %i.gn, align 1, !tbaa !348, !noalias !1415 ; 2 uses
  %i.gs = icmp eq i32 %i.fn, %i.gr
  %i.gt = icmp ult i32 %i.fn, %i.gr
  %i.gu = icmp eq i32 %i.fm, %i.gq
  %i.gv = icmp ult i32 %i.fm, %i.gq
  %i.gw = icmp ult i64 %i.fl, %i.gp
  %spec.select.i.i.i.i9.i.i.i.i = select i1 %i.gu, i1 %i.gw, i1 %i.gv
  %.sroa.06.0.i.i.i.i.i.i.i.i.i10.i.i.i.i = select i1 %i.gs, i1 %spec.select.i.i.i.i9.i.i.i.i, i1 %i.gt
  br i1 %.sroa.06.0.i.i.i.i.i.i.i.i.i10.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i, !llvm.loop !1378

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ag
  %.sroa.012.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.021.i.i.i.i.i, %bb.ag ], [ %.sroa.0.019.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  store i64 %i.fl, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.5.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i, i64 8
  store i32 %i.fn, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.6.0..sroa_idx7.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i, i64 12
  store i32 %i.fm, ptr %.sroa.6.0..sroa_idx7.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  %.sroa.7.0..sroa_idx9.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i, i64 16
  store i64 %.sroa.7.0.copyload.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx9.i.i.i.i.i.i, align 1, !tbaa !348, !noalias !1408
  br label %bb.ah

bb.ah:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i.i.i, i64 24 ; 2 uses
  %i.gx = icmp eq ptr %.sroa.0.0.i.i.i.i.i, %i.bc
  br i1 %i.gx, label %_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold6ElfRelINS3_6X86_64EEELm18446744073709551615EENS_4lessEZNS3_L14encode_androidIS5_EESt6vectorIhSaIhEES2_INS4_IT_EELm18446744073709551615EEEUlRKS6_E0_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISL_NS_8danglingEEEOSE_SM_SN_.exit.i, label %bb.ab, !llvm.loop !1379

_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold6ElfRelINS3_6X86_64EEELm18446744073709551615EENS_4lessEZNS3_L14encode_androidIS5_EESt6vectorIhSaIhEES2_INS4_IT_EELm18446744073709551615EEEUlRKS6_E0_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISL_NS_8danglingEEEOSE_SM_SN_.exit.i: ; preds = %bb.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_.exit.i.i.i.i.i.i.i
  %i.gy = icmp sgt i64 %i.bf, 0
  br i1 %i.gy, label %.lr.ph68.i.preheader, label %_ZN4moldL14encode_androidINS_6X86_64EEESt6vectorIhSaIhEESt4spanINS_6ElfRelIT_EELm18446744073709551615EE.exit

.lr.ph68.i.preheader:                             ; preds = %_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold6ElfRelINS3_6X86_64EEELm18446744073709551615EENS_4lessEZNS3_L14encode_androidIS5_EESt6vectorIhSaIhEES2_INS4_IT_EELm18446744073709551615EEEUlRKS6_E0_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISL_NS_8danglingEEEOSE_SM_SN_.exit.i, %.preheader.i.i.i.i.i
  br label %.lr.ph68.i

.lr.ph68.i:                                       ; preds = %.lr.ph68.i.preheader, %._crit_edge.i
  %.sroa.0102.0 = phi ptr [ %.sroa.0102.4.a, %._crit_edge.i ], [ %.sroa.0102.15, %.lr.ph68.i.preheader ]
  %.sroa.20.0 = phi ptr [ %.sroa.20.4.a, %._crit_edge.i ], [ %.sroa.20.15, %.lr.ph68.i.preheader ]
  %.sroa.50.0 = phi ptr [ %.sroa.50.4.a, %._crit_edge.i ], [ %.sroa.50.15, %.lr.ph68.i.preheader ]
  %.03267.i = phi i64 [ %.031.lcssa.i, %._crit_edge.i ], [ 0, %.lr.ph68.i.preheader ] ; 8 uses
  %.03366.i = phi i64 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %.lr.ph68.i.preheader ] ; 2 uses
  %.03465.i = phi i64 [ %.0.copyload.i43.i, %._crit_edge.i ], [ 0, %.lr.ph68.i.preheader ]
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.03267.i ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.gz, align 1, !noalias !1408 ; 2 uses
  %i.ha = sub nsw i64 %.0.copyload.i.i, %.03465.i ; 2 uses
  %i.hb = getelementptr i8, ptr %i.gz, i64 8
  %.val38.i = load i64, ptr %i.hb, align 1, !tbaa !348, !noalias !1408 ; 2 uses
  %i.hc = add nuw nsw i64 %.03267.i, 1
  %smax.i = call i64 @llvm.smax.i64(i64 %i.bg, i64 %i.hc) ; 3 uses
  %i.hd = add nsw i64 %smax.i, -1                 ; 4 uses
  %exitcond.not.i203 = icmp eq i64 %.03267.i, %i.hd
  br i1 %exitcond.not.i203, label %.critedge.i, label %.lr.ph207

bb.ai:                                            ; preds = %bb.aj
  %exitcond.not.i = icmp eq i64 %.031.i206, %i.hd
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph207, !llvm.loop !1405

.lr.ph207:                                        ; preds = %.lr.ph68.i, %bb.ai
  %.031.in.i205 = phi i64 [ %.031.i206, %bb.ai ], [ %.03267.i, %.lr.ph68.i ] ; 3 uses
  %.0.copyload.i42.i204 = phi i64 [ %.0.copyload.i41.i, %bb.ai ], [ %.0.copyload.i.i, %.lr.ph68.i ]
  %.031.i206 = add nuw nsw i64 %.031.in.i205, 1   ; 5 uses
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.031.i206 ; 2 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 8
  %.val37.i = load i64, ptr %i.hf, align 1, !tbaa !348, !noalias !1408
  %i.hg = icmp eq i64 %.val37.i, %.val38.i
  br i1 %i.hg, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %.lr.ph207
  %.0.copyload.i41.i = load i64, ptr %i.he, align 1, !noalias !1408 ; 2 uses
  %i.hh = sub nsw i64 %.0.copyload.i41.i, %.0.copyload.i42.i204
  %i.hi = icmp eq i64 %i.hh, %i.ha
  br i1 %i.hi, label %bb.ai, label %..critedge.i_crit_edge, !llvm.loop !1405

..critedge.i_crit_edge:                           ; preds = %bb.aj
  br label %.critedge.i, !llvm.loop !1405

.critedge.i:                                      ; preds = %bb.ai, %.lr.ph207, %..critedge.i_crit_edge, %.lr.ph68.i
  %.031.in.lcssa.i = phi i64 [ %i.hd, %.lr.ph68.i ], [ %.031.in.i205, %..critedge.i_crit_edge ], [ %i.hd, %bb.ai ], [ %.031.in.i205, %.lr.ph207 ] ; 2 uses
  %.031.lcssa.i = phi i64 [ %smax.i, %.lr.ph68.i ], [ %.031.i206, %..critedge.i_crit_edge ], [ %smax.i, %bb.ai ], [ %.031.i206, %.lr.ph207 ] ; 4 uses
  %i.hj = sub nsw i64 %.031.lcssa.i, %.03267.i    ; 2 uses
  %i.hk = icmp sgt i64 %i.hj, 1
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62, %.critedge.i
  %.sroa.0102.12 = phi ptr [ %.sroa.0102.0, %.critedge.i ], [ %.sroa.0102.13, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62 ] ; 4 uses
  %i.hl = phi ptr [ %.sroa.50.0, %.critedge.i ], [ %.sroa.50.13, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62 ] ; 3 uses
  %i.hm = phi ptr [ %.sroa.20.0, %.critedge.i ], [ %.sroa.20.13, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62 ] ; 3 uses
  %.0.i59 = phi i64 [ %i.hj, %.critedge.i ], [ %i.ic, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62 ] ; 3 uses
  %i.hn = trunc i64 %.0.i59 to i8
  %i.ho = or i8 %i.hn, -128                       ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.hm, %i.hl
  br i1 %.not.i.i.i60, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i8 %i.ho, ptr %i.hm, align 1, !tbaa !348
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62

bb.am:                                            ; preds = %bb.ak
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = ptrtoint ptr %.sroa.0102.12 to i64
  %i.hr = sub i64 %i.hp, %i.hq                    ; 8 uses
  %i.hs = icmp eq i64 %i.hr, 9223372036854775807
  br i1 %i.hs, label %bb.an, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i65

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i65: ; preds = %bb.am
  %.sroa.speculated.i.i.i.i.i66 = call i64 @llvm.umax.i64(i64 %i.hr, i64 1)
  %i.ht = add i64 %.sroa.speculated.i.i.i.i.i66, %i.hr ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.hr
  %i.hv = call i64 @llvm.umin.i64(i64 %i.ht, i64 9223372036854775807)
  %i.hw = select i1 %i.hu, i64 9223372036854775807, i64 %i.hv ; 3 uses
  %.not.i.i.i.i.i67 = icmp ne i64 %i.hw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i67)
  %i.hx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hw) #34 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hr ; 2 uses
  store i8 %i.ho, ptr %i.hy, align 1, !tbaa !348
  %i.hz = icmp sgt i64 %i.hr, 0
  br i1 %i.hz, label %bb.ao, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i70

bb.ao:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i65
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hx, ptr align 1 %.sroa.0102.12, i64 %i.hr, i1 false)
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i70

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i70: ; preds = %bb.ao, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i65
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.12, i64 noundef %i.hr) #31
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hw
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62:       ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i70, %bb.al
  %.sroa.0102.13 = phi ptr [ %i.hx, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i70 ], [ %.sroa.0102.12, %bb.al ] ; 5 uses
  %.pn130 = phi ptr [ %i.hy, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i70 ], [ %i.hm, %bb.al ] ; 3 uses
  %.sroa.50.13 = phi ptr [ %i.ia, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i70 ], [ %i.hl, %bb.al ] ; 4 uses
  %.sroa.20.13 = getelementptr inbounds nuw i8, ptr %.pn130, i64 1 ; 4 uses
  %i.ib = ashr i64 %.0.i59, 6
  %.off.i63 = add nsw i64 %i.ib, -1
  %switch.i64 = icmp ult i64 %.off.i63, -2
  %i.ic = ashr i64 %.0.i59, 7
  br i1 %switch.i64, label %bb.ak, label %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit71, !llvm.loop !1359

_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit71: ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i62
  %i.id = load i8, ptr %.pn130, align 1, !tbaa !348
  %i.ie = and i8 %i.id, 127
  store i8 %i.ie, ptr %.pn130, align 1, !tbaa !348
  %i.if = select i1 %i.hk, i8 -117, i8 -120       ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %.sroa.20.13, %.sroa.50.13
  br i1 %.not.i.i.i45, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit71
  store i8 %i.if, ptr %.sroa.20.13, align 1, !tbaa !348
  br label %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit56

bb.aq:                                            ; preds = %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit71
  %i.ig = ptrtoint ptr %.sroa.50.13 to i64
  %i.ih = ptrtoint ptr %.sroa.0102.13 to i64
  %i.ii = sub i64 %i.ig, %i.ih                    ; 8 uses
  %i.ij = icmp eq i64 %i.ii, 9223372036854775807
  br i1 %i.ij, label %bb.ar, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i50

bb.ar:                                            ; preds = %bb.aq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i50: ; preds = %bb.aq
  %.sroa.speculated.i.i.i.i.i51 = call i64 @llvm.umax.i64(i64 %i.ii, i64 1)
  %i.ik = add i64 %.sroa.speculated.i.i.i.i.i51, %i.ii ; 2 uses
  %i.il = icmp ult i64 %i.ik, %i.ii
  %i.im = call i64 @llvm.umin.i64(i64 %i.ik, i64 9223372036854775807)
  %i.in = select i1 %i.il, i64 9223372036854775807, i64 %i.im ; 3 uses
  %.not.i.i.i.i.i52 = icmp ne i64 %i.in, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i52)
  %i.io = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.in) #34 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ii ; 3 uses
  store i8 %i.if, ptr %i.ip, align 1, !tbaa !348
  %i.iq = icmp sgt i64 %i.ii, 0
  br i1 %i.iq, label %bb.as, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i55

bb.as:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i50
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.io, ptr align 1 %.sroa.0102.13, i64 %i.ii, i1 false)
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i55

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i55: ; preds = %bb.as, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i50
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.13, i64 noundef %i.ii) #31
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.in
  %.pre148 = load i8, ptr %i.ip, align 1, !tbaa !348
  br label %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit56

_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit56: ; preds = %bb.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i55
  %i.is = phi i8 [ %.pre148, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i55 ], [ %i.if, %bb.ap ]
  %.sroa.0102.11 = phi ptr [ %i.io, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i55 ], [ %.sroa.0102.13, %bb.ap ]
  %.pn131 = phi ptr [ %i.ip, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i55 ], [ %.sroa.20.13, %bb.ap ] ; 2 uses
  %.sroa.50.11 = phi ptr [ %i.ir, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i55 ], [ %.sroa.50.13, %bb.ap ]
  %.sroa.20.11 = getelementptr inbounds nuw i8, ptr %.pn131, i64 1
  %i.it = and i8 %i.is, 127
  store i8 %i.it, ptr %.pn131, align 1, !tbaa !348
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit56
  %.sroa.0102.8 = phi ptr [ %.sroa.0102.11, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit56 ], [ %.sroa.0102.9, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32 ] ; 4 uses
  %i.iu = phi ptr [ %.sroa.50.11, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit56 ], [ %.sroa.50.9, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32 ] ; 3 uses
  %i.iv = phi ptr [ %.sroa.20.11, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit56 ], [ %.sroa.20.9, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32 ] ; 3 uses
  %.0.i29 = phi i64 [ %i.ha, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit56 ], [ %i.jl, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32 ] ; 3 uses
  %i.iw = trunc i64 %.0.i29 to i8
  %i.ix = or i8 %i.iw, -128                       ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.iv, %i.iu
  br i1 %.not.i.i.i30, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i8 %i.ix, ptr %i.iv, align 1, !tbaa !348
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32

bb.av:                                            ; preds = %bb.at
  %i.iy = ptrtoint ptr %i.iu to i64
  %i.iz = ptrtoint ptr %.sroa.0102.8 to i64
  %i.ja = sub i64 %i.iy, %i.iz                    ; 8 uses
  %i.jb = icmp eq i64 %i.ja, 9223372036854775807
  br i1 %i.jb, label %bb.aw, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i35

bb.aw:                                            ; preds = %bb.av
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i35: ; preds = %bb.av
  %.sroa.speculated.i.i.i.i.i36 = call i64 @llvm.umax.i64(i64 %i.ja, i64 1)
  %i.jc = add i64 %.sroa.speculated.i.i.i.i.i36, %i.ja ; 2 uses
  %i.jd = icmp ult i64 %i.jc, %i.ja
  %i.je = call i64 @llvm.umin.i64(i64 %i.jc, i64 9223372036854775807)
  %i.jf = select i1 %i.jd, i64 9223372036854775807, i64 %i.je ; 3 uses
  %.not.i.i.i.i.i37 = icmp ne i64 %i.jf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i37)
  %i.jg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jf) #34 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.ja ; 2 uses
  store i8 %i.ix, ptr %i.jh, align 1, !tbaa !348
  %i.ji = icmp sgt i64 %i.ja, 0
  br i1 %i.ji, label %bb.ax, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i40

bb.ax:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i35
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.jg, ptr align 1 %.sroa.0102.8, i64 %i.ja, i1 false)
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i40

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i40: ; preds = %bb.ax, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i35
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.8, i64 noundef %i.ja) #31
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jf
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32:       ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i40, %bb.au
  %.sroa.0102.9 = phi ptr [ %i.jg, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i40 ], [ %.sroa.0102.8, %bb.au ] ; 2 uses
  %.pn132 = phi ptr [ %i.jh, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i40 ], [ %i.iv, %bb.au ] ; 3 uses
  %.sroa.50.9 = phi ptr [ %i.jj, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i40 ], [ %i.iu, %bb.au ] ; 2 uses
  %.sroa.20.9 = getelementptr inbounds nuw i8, ptr %.pn132, i64 1 ; 2 uses
  %i.jk = ashr i64 %.0.i29, 6
  %.off.i33 = add nsw i64 %i.jk, -1
  %switch.i34 = icmp ult i64 %.off.i33, -2
  %i.jl = ashr i64 %.0.i29, 7
  br i1 %switch.i34, label %bb.at, label %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit41, !llvm.loop !1359

_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit41: ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i32
  %i.jm = load i8, ptr %.pn132, align 1, !tbaa !348
  %i.jn = and i8 %i.jm, 127
  store i8 %i.jn, ptr %.pn132, align 1, !tbaa !348
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit41
  %.sroa.0102.6 = phi ptr [ %.sroa.0102.9, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit41 ], [ %.sroa.0102.7, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ] ; 4 uses
  %i.jo = phi ptr [ %.sroa.50.9, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit41 ], [ %.sroa.50.7, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ] ; 3 uses
  %i.jp = phi ptr [ %.sroa.20.9, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit41 ], [ %.sroa.20.7, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ] ; 3 uses
  %.0.i = phi i64 [ %.val38.i, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit41 ], [ %i.kf, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ] ; 3 uses
  %i.jq = trunc i64 %.0.i to i8
  %i.jr = or i8 %i.jq, -128                       ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.jp, %i.jo
  br i1 %.not.i.i.i25, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i8 %i.jr, ptr %i.jp, align 1, !tbaa !348
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.js = ptrtoint ptr %i.jo to i64
  %i.jt = ptrtoint ptr %.sroa.0102.6 to i64
  %i.ju = sub i64 %i.js, %i.jt                    ; 8 uses
  %i.jv = icmp eq i64 %i.ju, 9223372036854775807
  br i1 %i.jv, label %bb.bb, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ba
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ju, i64 1)
  %i.jw = add i64 %.sroa.speculated.i.i.i.i.i, %i.ju ; 2 uses
  %i.jx = icmp ult i64 %i.jw, %i.ju
  %i.jy = call i64 @llvm.umin.i64(i64 %i.jw, i64 9223372036854775807)
  %i.jz = select i1 %i.jx, i64 9223372036854775807, i64 %i.jy ; 3 uses
  %.not.i.i.i.i.i26 = icmp ne i64 %i.jz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i26)
  %i.ka = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jz) #34 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.ju ; 2 uses
  store i8 %i.jr, ptr %i.kb, align 1, !tbaa !348
  %i.kc = icmp sgt i64 %i.ju, 0
  br i1 %i.kc, label %bb.bc, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

bb.bc:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ka, ptr align 1 %.sroa.0102.6, i64 %i.ju, i1 false)
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i: ; preds = %bb.bc, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.6, i64 noundef %i.ju) #31
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.jz
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i:         ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i, %bb.az
  %.sroa.0102.7 = phi ptr [ %i.ka, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0102.6, %bb.az ] ; 3 uses
  %.pn133 = phi ptr [ %i.kb, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %i.jp, %bb.az ] ; 3 uses
  %.sroa.50.7 = phi ptr [ %i.kd, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %i.jo, %bb.az ] ; 3 uses
  %.sroa.20.7 = getelementptr inbounds nuw i8, ptr %.pn133, i64 1 ; 3 uses
  %i.ke = ashr i64 %.0.i, 6
  %.off.i = add nsw i64 %i.ke, -1
  %switch.i = icmp ult i64 %.off.i, -2
  %i.kf = ashr i64 %.0.i, 7
  br i1 %switch.i, label %bb.ay, label %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit, !llvm.loop !1359

_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit: ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i
  %i.kg = load i8, ptr %.pn133, align 1, !tbaa !348
  %i.kh = and i8 %i.kg, 127
  store i8 %i.kh, ptr %.pn133, align 1, !tbaa !348
  %5 = icmp slt i64 %.03267.i, %.031.lcssa.i
  br i1 %5, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit
  %smax70.i = call i64 @llvm.smax.i64(i64 %.031.in.lcssa.i, i64 %.03267.i)
  br label %.lr.ph.i23

._crit_edge.i:                                    ; preds = %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit
  %.sroa.0102.4.a = phi ptr [ %.sroa.0102.7, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit ], [ %.sroa.0102.3, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ] ; 2 uses
  %.sroa.20.4.a = phi ptr [ %.sroa.20.7, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit ], [ %.sroa.20.3, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ] ; 2 uses
  %.sroa.50.4.a = phi ptr [ %.sroa.50.7, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit ], [ %.sroa.50.3, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ] ; 2 uses
  %.1.lcssa.i = phi i64 [ %.03366.i, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit ], [ %.0.copyload.i44.i, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ]
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.031.in.lcssa.i
  %.0.copyload.i43.i = load i64, ptr %i.ki, align 1, !noalias !1408
  %i.kj = icmp slt i64 %.031.lcssa.i, %i.bg
  br i1 %i.kj, label %.lr.ph68.i, label %_ZN4moldL14encode_androidINS_6X86_64EEESt6vectorIhSaIhEESt4spanINS_6ElfRelIT_EELm18446744073709551615EE.exit, !llvm.loop !1406

.lr.ph.i23:                                       ; preds = %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i, %.lr.ph.preheader.i
  %.sroa.0102.1 = phi ptr [ %.sroa.0102.7, %.lr.ph.preheader.i ], [ %.sroa.0102.3, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ]
  %.sroa.50.1 = phi ptr [ %.sroa.50.7, %.lr.ph.preheader.i ], [ %.sroa.50.3, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ]
  %.pre.i.i = phi ptr [ %.sroa.20.7, %.lr.ph.preheader.i ], [ %.sroa.20.3, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ]
  %.064.i = phi i64 [ %.03267.i, %.lr.ph.preheader.i ], [ %i.lg, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ] ; 3 uses
  %.163.i = phi i64 [ %.03366.i, %.lr.ph.preheader.i ], [ %.0.copyload.i44.i, %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i ]
  %i.kk = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.064.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %.0.copyload.i44.i = load i64, ptr %i.kl, align 1, !noalias !1408 ; 3 uses
  %i.km = sub nsw i64 %.0.copyload.i44.i, %.163.i
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i, %.lr.ph.i23
  %.sroa.0102.2 = phi ptr [ %.sroa.0102.1, %.lr.ph.i23 ], [ %.sroa.0102.3, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i ] ; 4 uses
  %.sroa.50.2 = phi ptr [ %.sroa.50.1, %.lr.ph.i23 ], [ %.sroa.50.3, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i ] ; 3 uses
  %i.kn = phi ptr [ %.pre.i.i, %.lr.ph.i23 ], [ %.sroa.20.3, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i ] ; 3 uses
  %.0.i.i = phi i64 [ %i.km, %.lr.ph.i23 ], [ %i.ld, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i ] ; 3 uses
  %i.ko = trunc i64 %.0.i.i to i8
  %i.kp = or i8 %i.ko, -128                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.kn, %.sroa.50.2
  br i1 %.not.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i8 %i.kp, ptr %i.kn, align 1, !tbaa !348, !noalias !1408
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.kq = ptrtoint ptr %.sroa.50.2 to i64
  %i.kr = ptrtoint ptr %.sroa.0102.2 to i64
  %i.ks = sub i64 %i.kq, %i.kr                    ; 8 uses
  %i.kt = icmp eq i64 %i.ks, 9223372036854775807
  br i1 %i.kt, label %bb.bg, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33, !noalias !1408
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.bf
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ks, i64 1)
  %i.ku = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.ks ; 2 uses
  %i.kv = icmp ult i64 %i.ku, %i.ks
  %i.kw = call i64 @llvm.umin.i64(i64 %i.ku, i64 9223372036854775807)
  %i.kx = select i1 %i.kv, i64 9223372036854775807, i64 %i.kw ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.kx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ky = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kx) #34, !noalias !1408 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.ks ; 2 uses
  store i8 %i.kp, ptr %i.kz, align 1, !tbaa !348, !noalias !1408
  %i.la = icmp sgt i64 %i.ks, 0
  br i1 %i.la, label %bb.bh, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

bb.bh:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ky, ptr align 1 %.sroa.0102.2, i64 %i.ks, i1 false), !noalias !1408
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.bh, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.2, i64 noundef %i.ks) #31, !noalias !1408
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kx
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i:       ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, %bb.be
  %.sroa.0102.3 = phi ptr [ %i.ky, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0102.2, %bb.be ] ; 3 uses
  %.pn134 = phi ptr [ %i.kz, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ], [ %i.kn, %bb.be ] ; 3 uses
  %.sroa.50.3 = phi ptr [ %i.lb, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.50.2, %bb.be ] ; 3 uses
  %.sroa.20.3 = getelementptr inbounds nuw i8, ptr %.pn134, i64 1 ; 3 uses
  %i.lc = ashr i64 %.0.i.i, 6
  %.off.i.i = add nsw i64 %i.lc, -1
  %switch.i.i = icmp ult i64 %.off.i.i, -2
  %i.ld = ashr i64 %.0.i.i, 7
  br i1 %switch.i.i, label %bb.bd, label %_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i, !llvm.loop !1359

_ZN4moldL13write_sleb128ERSt6vectorIhSaIhEEl.exit.i: ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i
  %i.le = load i8, ptr %.pn134, align 1, !tbaa !348, !noalias !1408
  %i.lf = and i8 %i.le, 127
  store i8 %i.lf, ptr %.pn134, align 1, !tbaa !348, !noalias !1408
  %i.lg = add i64 %.064.i, 1
  %exitcond71.not.i = icmp eq i64 %.064.i, %smax70.i
  br i1 %exitcond71.not.i, label %._crit_edge.i, label %.lr.ph.i23, !llvm.loop !1407

_ZN4moldL14encode_androidINS_6X86_64EEESt6vectorIhSaIhEESt4spanINS_6ElfRelIT_EELm18446744073709551615EE.exit: ; preds = %._crit_edge.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i77, %_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold6ElfRelINS3_6X86_64EEELm18446744073709551615EENS_4lessEZNS3_L14encode_androidIS5_EESt6vectorIhSaIhEES2_INS4_IT_EELm18446744073709551615EEEUlRKS6_E0_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISL_NS_8danglingEEEOSE_SM_SN_.exit.i
  %.sroa.0102.5 = phi ptr [ %.sroa.0102.15, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i77 ], [ %.sroa.0102.15, %_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold6ElfRelINS3_6X86_64EEELm18446744073709551615EENS_4lessEZNS3_L14encode_androidIS5_EESt6vectorIhSaIhEES2_INS4_IT_EELm18446744073709551615EEEUlRKS6_E0_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISL_NS_8danglingEEEOSE_SM_SN_.exit.i ], [ %.sroa.0102.4.a, %._crit_edge.i ] ; 2 uses
  %.sroa.20.5 = phi ptr [ %.sroa.20.15, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i77 ], [ %.sroa.20.15, %_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold6ElfRelINS3_6X86_64EEELm18446744073709551615EENS_4lessEZNS3_L14encode_androidIS5_EESt6vectorIhSaIhEES2_INS4_IT_EELm18446744073709551615EEEUlRKS6_E0_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISL_NS_8danglingEEEOSE_SM_SN_.exit.i ], [ %.sroa.20.4.a, %._crit_edge.i ] ; 2 uses
  %.sroa.50.5 = phi ptr [ %.sroa.50.15, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i77 ], [ %.sroa.50.15, %_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold6ElfRelINS3_6X86_64EEELm18446744073709551615EENS_4lessEZNS3_L14encode_androidIS5_EESt6vectorIhSaIhEES2_INS4_IT_EELm18446744073709551615EEEUlRKS6_E0_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISL_NS_8danglingEEEOSE_SM_SN_.exit.i ], [ %.sroa.50.4.a, %._crit_edge.i ]
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !587 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !588
  store ptr %.sroa.0102.5, ptr %i.lh, align 8, !tbaa !587
  store ptr %.sroa.20.5, ptr %i.lj, align 8, !tbaa !589
  store ptr %.sroa.50.5, ptr %i.lk, align 8, !tbaa !588
  %.not.i.i.i.i.i = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZN4moldL14encode_androidINS_6X86_64EEESt6vectorIhSaIhEESt4spanINS_6ElfRelIT_EELm18446744073709551615EE.exit
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.li to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.lo) #31
  %.pre150.pre.pre = load ptr, ptr %i.lj, align 8, !tbaa !589
  %.pre152.pre.pre = load ptr, ptr %i.lh, align 8, !tbaa !587
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.bi, %_ZN4moldL14encode_androidINS_6X86_64EEESt6vectorIhSaIhEESt4spanINS_6ElfRelIT_EELm18446744073709551615EE.exit
  %.pre152.pre = phi ptr [ %.pre152.pre.pre, %bb.bi ], [ %.sroa.0102.5, %_ZN4moldL14encode_androidINS_6X86_64EEESt6vectorIhSaIhEESt4spanINS_6ElfRelIT_EELm18446744073709551615EE.exit ] ; 4 uses
  %.pre150.pre = phi ptr [ %.pre150.pre.pre, %bb.bi ], [ %.sroa.20.5, %_ZN4moldL14encode_androidINS_6X86_64EEESt6vectorIhSaIhEESt4spanINS_6ElfRelIT_EELm18446744073709551615EE.exit ] ; 4 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.lp, align 8   ; 4 uses
  %.not = icmp ne i64 %.0.copyload.i, 0
  %i.lq = ptrtoint ptr %.pre150.pre to i64
  %i.lr = ptrtoint ptr %.pre152.pre to i64
  %i.ls = sub i64 %i.lq, %i.lr
  %i.lt = icmp slt i64 %.0.copyload.i, %i.ls
  %or.cond = select i1 %.not, i1 %i.lt, i1 false
  br i1 %or.cond, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.lu, align 8, !tbaa !1420
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.lw = load i8, ptr %i.lv, align 8, !tbaa !1420, !range !350, !noundef !351
  %i.lx = trunc nuw i8 %i.lw to i1
  br i1 %i.lx, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ly = ptrtoint ptr %.pre150.pre to i64
  %i.lz = ptrtoint ptr %.pre152.pre to i64
  %i.ma = sub i64 %i.ly, %i.lz                    ; 2 uses
  %i.mb = icmp ult i64 %i.ma, %.0.copyload.i
  br i1 %i.mb, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.bm

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.bl
  %i.mc = sub nuw i64 %.0.copyload.i, %i.ma
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.lh, i64 noundef %i.mc)
  %.pre149 = load ptr, ptr %i.lj, align 8, !tbaa !589
  %.pre151 = load ptr, ptr %i.lh, align 8, !tbaa !587
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %bb.bl, %bb.bk
  %i.md = phi ptr [ %.pre151, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ %.pre152.pre, %bb.bl ], [ %.pre152.pre, %bb.bk ]
  %i.me = phi ptr [ %.pre149, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ %.pre150.pre, %bb.bl ], [ %.pre150.pre, %bb.bk ]
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = ptrtoint ptr %i.md to i64
  %i.mh = sub i64 %i.mf, %i.mg
  store i64 %i.mh, ptr %i.lp, align 8
  br label %bb.bo

bb.bn:                                            ; preds = %._crit_edge
  %i.mi = sub nsw i64 %.0.lcssa, %.021.lcssa
  %i.mj = mul i64 %i.mi, 24
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.mj, ptr %i.mk, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 13984
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !579
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 88
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !389
  %i.mp = trunc i64 %i.mo to i32
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.mp, ptr %i.mq, align 8
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold13RelDynSectionINS_6X86_64EE12write_relocsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 13192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !395  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 13200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !395  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.015 = phi ptr [ %.1, %bb.c ], [ %2, %bb.a ]   ; 3 uses
  %.sroa.011.014 = phi ptr [ %i.p, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.011.014, align 8, !tbaa !397 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load i64, ptr %i.g, align 8, !tbaa !432  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.j = load i64, ptr %i.i, align 8, !tbaa !480  ; 2 uses
  %.not = icmp eq i64 %i.h, %i.j
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = sub nsw i64 %i.h, %i.j
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(184) %i.f, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef %.015) #15
  %i.o = getelementptr inbounds [24 x i8], ptr %.015, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi ptr [ %i.o, %bb.b ], [ %.015, %.lr.ph ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.011.014, i64 8 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold13RelDynSectionINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2682
  %i.b = load i8, ptr %i.a, align 2, !tbaa !581, !range !350, !noundef !351
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73   ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZN4mold12write_vectorIhEEvPvRKSt6vectorIT_SaIS3_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 13176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !347
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i = load i64, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %.0.copyload.i
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.e, i64 %i.o, i1 false)
  br label %_ZN4mold12write_vectorIhEEvPvRKSt6vectorIT_SaIS3_EE.exit

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 13192
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !395  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 13200
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !395  ; 2 uses
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %_ZN4mold12write_vectorIhEEvPvRKSt6vectorIT_SaIS3_EE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 13176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !347
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i5 = load i64, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.copyload.i5
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %.015.i = phi ptr [ %.1.i, %bb.f ], [ %i.x, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.011.014.i = phi ptr [ %i.ai, %bb.f ], [ %i.q, %.lr.ph.i.preheader ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.011.014.i, align 8, !tbaa !397 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !432 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !480 ; 2 uses
  %.not.i = icmp eq i64 %i.aa, %i.ac
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ad = sub nsw i64 %i.aa, %i.ac
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !69
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(184) %i.y, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef %.015.i) #15, !inline_history !585
  %i.ah = getelementptr inbounds [24 x i8], ptr %.015.i, i64 %i.ad
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.1.i = phi ptr [ %i.ah, %bb.e ], [ %.015.i, %.lr.ph.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.011.014.i, i64 8 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.s
  br i1 %i.aj, label %_ZN4mold12write_vectorIhEEvPvRKSt6vectorIT_SaIS3_EE.exit, label %.lr.ph.i
end_hunk_1
