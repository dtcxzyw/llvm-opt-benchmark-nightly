Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ConsecutiveStringStorage?download=true
inline.NumInlined: 2626
inline.NumDeleted: 1307
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN12_GLOBAL__N_118StringTableBuilder16appendU16StorageEN4llvh8ArrayRefIDsEEPSt6vectorIhSaIhEE:bb.a
bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.y) #18
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.s, ptr %2, align 8, !tbaa !113
  store ptr %i.v, ptr %i.c, align 8, !tbaa !151
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store ptr %i.z, ptr %i.j, align 8, !tbaa !73
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, %bb.d, %bb.b
  %i.aa = phi ptr [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %.pre, %bb.d ], [ %i.e, %bb.b ] ; 5 uses
  %i.ab = phi ptr [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %i.m, %bb.d ], [ %i.d, %bb.b ] ; 4 uses
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64               ; 5 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 9 uses
  %i.af = shl i64 %1, 1                           ; 4 uses
  %i.ag = add i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp ugt i64 %i.ag, %i.ae
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.af)
  %.pre29 = load ptr, ptr %i.c, align 8, !tbaa !151
  %.pre30 = load ptr, ptr %2, align 8, !tbaa !113 ; 2 uses
  %.pre31 = ptrtoint ptr %.pre30 to i64
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %i.ai = icmp ult i64 %i.ag, %i.ae
  br i1 %i.ai, label %bb.k, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ag ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.ab, %i.aj
  br i1 %.not.i.i20, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !151
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %.pre-phi = phi i64 [ %.pre31, %bb.i ], [ %i.ad, %bb.j ], [ %i.ad, %bb.k ], [ %i.ad, %bb.l ]
  %i.ak = phi ptr [ %.pre30, %bb.i ], [ %i.aa, %bb.j ], [ %i.aa, %bb.k ], [ %i.aa, %bb.l ] ; 2 uses
  %i.al = phi ptr [ %.pre29, %bb.i ], [ %i.ab, %bb.j ], [ %i.ab, %bb.k ], [ %i.aj, %bb.l ]
  %i.am = ptrtoaddr ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.an, %.pre-phi                ; 2 uses
  %.not.i.i21 = icmp ult i64 %i.ae, %i.ao
  br i1 %.not.i.i21, label %iter.check, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ae, i64 noundef %i.ao) #17
  unreachable

iter.check:                                       ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ae ; 6 uses
  %i.ar = add i64 %i.af, -2                       ; 3 uses
  %i.as = lshr exact i64 %i.ar, 1
  %i.at = add nuw i64 %i.as, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ar, 14
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.au = add i64 %i.am, %i.ac
  %i.av = add i64 %i.ad, %i.a
  %i.aw = sub i64 %i.av, %i.au
  %diff.check = icmp ugt i64 %i.aw, -32
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check41 = icmp ult i64 %i.ar, 30
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %i.at, 8
  %n.vec = and i64 %i.at, -16                     ; 4 uses
  %i.ay = shl i64 %n.vec, 1                       ; 2 uses
  %i.az = getelementptr i8, ptr %0, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.aq, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bb ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.aq, i64 %i.bb ; 3 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !66
  %wide.load58 = load <8 x i16>, ptr %i.bc, align 2, !tbaa !66
  call void @llvm.assume(i1 true) [ "align"(ptr %next.gep42, i64 2) ]
  %i.bd = getelementptr i8, ptr %next.gep42, i64 16
  store <8 x i16> %wide.load, ptr %next.gep42, align 2
  store <8 x i16> %wide.load58, ptr %i.bd, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !360

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !363

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %i.at, -8                    ; 3 uses
  %i.bf = shl i64 %n.vec60, 1                     ; 2 uses
  %i.bg = getelementptr i8, ptr %0, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.aq, i64 %i.bf
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next72, %vec.epilog.vector.body ] ; 2 uses
  %i.bi = shl i64 %index61, 1                     ; 2 uses
  %next.gep62 = getelementptr i8, ptr %0, i64 %i.bi
  %next.gep63 = getelementptr i8, ptr %i.aq, i64 %i.bi ; 2 uses
  %wide.load71 = load <8 x i16>, ptr %next.gep62, align 2, !tbaa !66
  call void @llvm.assume(i1 true) [ "align"(ptr %next.gep63, i64 2) ]
  store <8 x i16> %wide.load71, ptr %next.gep63, align 2
  %index.next72 = add nuw i64 %index61, 8         ; 2 uses
  %i.bj = icmp eq i64 %index.next72, %n.vec60
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !361

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n73 = icmp eq i64 %i.at, %n.vec60
  br i1 %cmp.n73, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01728.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.az, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  %.01827.ph = phi ptr [ %i.aq, %iter.check ], [ %i.aq, %vector.memcheck ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01728 = phi ptr [ %i.bm, %.lr.ph ], [ %.01728.ph, %.lr.ph.preheader ] ; 2 uses
  %.01827 = phi ptr [ %i.bl, %.lr.ph ], [ %.01827.ph, %.lr.ph.preheader ] ; 3 uses
  %i.bk = load i16, ptr %.01728, align 2, !tbaa !66
  call void @llvm.assume(i1 true) [ "align"(ptr %.01827, i64 2) ]
  store i16 %i.bk, ptr %.01827, align 2
  %i.bl = getelementptr inbounds nuw i8, ptr %.01827, i64 2
  %i.bm = getelementptr inbounds nuw i8, ptr %.01728, i64 2 ; 2 uses
  %.not19 = icmp eq ptr %i.bm, %i.ap
  br i1 %.not19, label %.loopexit, label %.lr.ph, !llvm.loop !362

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ae, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %i.ae, %.lr.ph ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_118StringTableBuilder19generateStringTableEN4llvh8ArrayRefIhEEm(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.val12 = load ptr, ptr %i.a, align 8, !tbaa !76 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.val13 = load ptr, ptr %i.b, align 8, !tbaa !77 ; 2 uses
  %i.c = ptrtoint ptr %.val13 to i64
  %i.d = ptrtoint ptr %.val12 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 96
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.val17 = load ptr, ptr %i.g, align 8, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %.val18 = load ptr, ptr %i.h, align 8, !tbaa !117
  %i.i = ptrtoint ptr %.val18 to i64
  %i.j = ptrtoint ptr %.val17 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 96
  %i.m = add nsw i64 %i.l, %i.f                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not36 = icmp eq i64 %i.m, 0
  br i1 %.not36, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.m)
  %.val14.pre = load ptr, ptr %i.a, align 8, !tbaa !98
  %.val.pre = load ptr, ptr %i.b, align 8, !tbaa !98
  br label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE6resizeEm.exit: ; preds = %bb.a, %bb.b
  %.val = phi ptr [ %.val.pre, %bb.b ], [ %.val13, %bb.a ] ; 2 uses
  %.val14 = phi ptr [ %.val14.pre, %bb.b ], [ %.val12, %bb.a ] ; 2 uses
  %.not11 = icmp eq ptr %.val14, %.val
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE6resizeEm.exit
  %3 = load ptr, ptr %i.n, align 8, !tbaa !156
  %4 = load ptr, ptr %0, align 8, !tbaa !70       ; 2 uses
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3                       ; 2 uses
  br label %9

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE6resizeEm.exit
  %.val19 = load ptr, ptr %i.g, align 8, !tbaa !136 ; 2 uses
  %.val16 = load ptr, ptr %i.h, align 8, !tbaa !136 ; 2 uses
  %.not713 = icmp eq ptr %.val19, %.val16
  br i1 %.not713, label %._crit_edge17, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !156
  %i.p = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  br label %.lr.ph16

9:                                                ; preds = %.lr.ph, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit
  %.sroa.06.012 = phi ptr [ %.val14, %.lr.ph ], [ %i.z, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit ] ; 4 uses
  %10 = load i32, ptr %.sroa.06.012, align 8, !tbaa !106
  %11 = zext i32 %10 to i64                       ; 3 uses
  %.not.i.i25 = icmp ugt i64 %8, %11
  br i1 %.not.i.i25, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit, label %bb.c

bb.c:                                             ; preds = %9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %11, i64 noundef %8) #17
  unreachable

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit: ; preds = %9
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !152
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %11
  %.sroa.44.0.insert.ext = shl i64 %i.v, 32
  %.sroa.03.0.insert.ext = and i64 %i.x, 4294967295
  %.sroa.03.0.insert.insert = or disjoint i64 %.sroa.03.0.insert.ext, %.sroa.44.0.insert.ext
  store i64 %.sroa.03.0.insert.insert, ptr %i.y, align 4, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 96 ; 2 uses
  %.not = icmp eq ptr %i.z, %.val
  br i1 %.not, label %._crit_edge, label %9

._crit_edge17:                                    ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit27, %._crit_edge
  ret void

.lr.ph16:                                         ; preds = %.lr.ph.a, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit27
  %.sroa.02.014 = phi ptr [ %.val19, %.lr.ph.a ], [ %i.ak, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit27 ] ; 4 uses
  %i.aa = load i32, ptr %.sroa.02.014, align 8, !tbaa !144
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %.not.i.i26 = icmp ugt i64 %i.t, %i.ab
  br i1 %.not.i.i26, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit27, label %bb.d

bb.d:                                             ; preds = %.lr.ph16
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ab, i64 noundef %i.t) #17
  unreachable

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit27: ; preds = %.lr.ph16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !126
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !153
  %i.ag = shl i64 %i.af, 1
  %i.ah = add i64 %i.ag, %2
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ab
  %i.aj = shl i64 %i.ad, 32
  %.sroa.0.0.insert.ext = and i64 %i.ah, 4294967295
  %.sroa.4.0.insert.shift = or disjoint i64 %.sroa.0.0.insert.ext, %i.aj
  %.sroa.0.0.insert.insert = or i64 %.sroa.4.0.insert.shift, -9223372036854775808
  store i64 %.sroa.0.0.insert.insert, ptr %i.ai, align 4, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 96 ; 2 uses
  %.not7 = icmp eq ptr %i.ak, %.val16
  br i1 %.not7, label %._crit_edge17, label %.lr.ph16
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_118StringTableBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator.8", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator.8", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not5.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr i8, ptr %.06.i.i.i, i64 72
  %.0.val.i.i.i = load ptr, ptr %i.e, align 8
  tail call void @_ZdlPv(ptr noundef %.0.val.i.i.i) #15
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.val.pr.i = load ptr, ptr %i.a, align 8, !tbaa !116
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exitthread-pre-split.i, %bb.a
  %.val.i = phi ptr [ %.val.pr.i, %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i2.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val1.i = load ptr, ptr %i.g, align 8, !tbaa !157
  %i.h = ptrtoint ptr %.val1.i to i64
  %i.i = ptrtoint ptr %.val.i to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.j) #18
  br label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77   ; 2 uses
  %.not5.i.i.i1 = icmp eq ptr %i.l, %i.n
  br i1 %.not5.i.i.i1, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EED2Ev.exit, %.lr.ph.i.i.i2
  %.06.i.i.i3 = phi ptr [ %i.p, %.lr.ph.i.i.i2 ], [ %i.l, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EED2Ev.exit ] ; 2 uses
  %i.o = getelementptr i8, ptr %.06.i.i.i3, i64 72
  %.0.val.i.i.i4 = load ptr, ptr %i.o, align 8
  tail call void @_ZdlPv(ptr noundef %.0.val.i.i.i4) #15
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i.i.i3, i64 96 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !6

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i2
  %.val.pr.i6 = load ptr, ptr %i.k, align 8, !tbaa !76
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exitthread-pre-split.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EED2Ev.exit
  %.val.i7 = phi ptr [ %.val.pr.i6, %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exitthread-pre-split.i ], [ %i.l, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i2.i8 = icmp eq ptr %.val.i7, null
  br i1 %.not.i.i2.i8, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i9 = load ptr, ptr %i.q, align 8, !tbaa !158
  %i.r = ptrtoint ptr %.val1.i9 to i64
  %i.s = ptrtoint ptr %.val.i7 to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i7, i64 noundef %i.t) #18
  br label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS3_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.y = load <2 x ptr>, ptr %i.u, align 8, !tbaa !43, !noalias !369
  store <2 x ptr> %i.y, ptr %1, align 16, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load <2 x ptr>, ptr %i.v, align 8, !tbaa !370, !noalias !369
  store <2 x ptr> %i.aa, ptr %i.z, align 16, !tbaa !370
  %i.ab = load <2 x ptr>, ptr %i.w, align 8, !tbaa !43, !noalias !371
  store <2 x ptr> %i.ab, ptr %2, align 16, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load <2 x ptr>, ptr %i.x, align 8, !tbaa !370, !noalias !371
  store <2 x ptr> %i.ad, ptr %i.ac, align 16, !tbaa !370
  call void @_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ae = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS3_EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !159 ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !160 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = icmp ult ptr %i.ah, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i.i10, label %_ZNSt11_Deque_baseISt6vectorIDsSaIDsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

.lr.ph.i.i.i10:                                   ; preds = %bb.d, %.lr.ph.i.i.i10
  %.06.i.i.i11 = phi ptr [ %i.am, %.lr.ph.i.i.i10 ], [ %i.ah, %bb.d ] ; 3 uses
  %i.al = load ptr, ptr %.06.i.i.i11, align 8, !tbaa !43
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef 504) #18
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i11, i64 8
  %i.an = icmp ult ptr %.06.i.i.i11, %i.ai
  br i1 %i.an, label %.lr.ph.i.i.i10, label %_ZNSt11_Deque_baseISt6vectorIDsSaIDsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, !llvm.loop !368

_ZNSt11_Deque_baseISt6vectorIDsSaIDsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i10
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !42
  br label %_ZNSt11_Deque_baseISt6vectorIDsSaIDsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

_ZNSt11_Deque_baseISt6vectorIDsSaIDsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i: ; preds = %_ZNSt11_Deque_baseISt6vectorIDsSaIDsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, %bb.d
  %i.ao = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseISt6vectorIDsSaIDsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i ], [ %i.ae, %bb.d ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !41
  %i.ar = shl i64 %i.aq, 3
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #18
  br label %_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EED2Ev.exit

_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS3_EED2Ev.exit, %_ZNSt11_Deque_baseISt6vectorIDsSaIDsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes3hbc24ConsecutiveStringStorageC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS9_PS9_ESt17integral_constantIbLb0EEEET_SF_T0_b(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2, i1 noundef zeroext %3) unnamed_addr #0 comdat($_ZN6hermes3hbc24ConsecutiveStringStorageC5ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS9_PS9_ESt17integral_constantIbLb0EEEET_SF_T0_b) align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.llvh::ArrayRef.25", align 8 ; 5 uses
  %5 = alloca %"class.(anonymous namespace)::StringTableBuilder", align 8 ; 18 uses
  %6 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %7 = alloca %"class.std::vector.19", align 8    ; 7 uses
  %8 = alloca %"class.std::vector", align 16      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 1, ptr %i.e, align 1, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.f = load ptr, ptr %1, align 8, !tbaa !378    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !379
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !380
  %i.k = load ptr, ptr %2, align 8, !tbaa !378    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.l, align 8, !tbaa !41
  %i.m = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #16 ; 2 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #16 ; 6 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.n, ptr %i.q, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.o, ptr %i.r, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 504 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.s, ptr %i.t, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store ptr %i.n, ptr %i.v, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store ptr %i.o, ptr %i.w, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store ptr %i.s, ptr %i.x, align 8, !tbaa !46
  store ptr %i.o, ptr %i.p, align 8, !tbaa !47
  store ptr %i.o, ptr %i.u, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !13
  %.not30.i = icmp eq ptr %i.f, %i.k
  br i1 %.not30.i, label %_ZN12_GLOBAL__N_118StringTableBuilderC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_PS8_ESt17integral_constantIbLb0EEEET_SE_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EppEv.exit.i, %.lr.ph.i
  %i.ab = phi i32 [ 0, %.lr.ph.i ], [ %i.ee, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EppEv.exit.i ] ; 2 uses
  %.sroa.0.033.i = phi ptr [ %i.f, %.lr.ph.i ], [ %.sroa.0.1.i, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EppEv.exit.i ] ; 3 uses
  %.sroa.10.032.i = phi ptr [ %i.h, %.lr.ph.i ], [ %.sroa.10.1.i, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EppEv.exit.i ] ; 2 uses
  %.sroa.13.031.i = phi ptr [ %i.j, %.lr.ph.i ], [ %.sroa.13.1.i, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EppEv.exit.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIDsSaIDsEE15_M_range_insertIPKDsEEvN9__gnu_cxx17__normal_iteratorIPDsS1_EET_S9_St20forward_iterator_tag:bb.a
  br label %_ZSt22__uninitialized_copy_aIPKDsPDsDsET0_T_S4_S3_RSaIT1_E.exit49

_ZSt22__uninitialized_copy_aIPKDsPDsDsET0_T_S4_S3_RSaIT1_E.exit49: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 2
  br i1 %i.bw, label %bb.af, label %bb.ag, !prof !60

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKDsPDsDsET0_T_S4_S3_RSaIT1_E.exit49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.bu, ptr align 2 %1, i64 %i.bv, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit50

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKDsPDsDsET0_T_S4_S3_RSaIT1_E.exit49
  %i.bx = icmp eq i64 %i.bv, 2
  br i1 %i.bx, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit50

bb.ah:                                            ; preds = %bb.ag
  %i.by = load i16, ptr %1, align 2, !tbaa !66
  store i16 %i.by, ptr %i.bu, align 2, !tbaa !66
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit50

_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i51 = icmp eq ptr %i.ay, null
  br i1 %.not.i51, label %_ZNSt12_Vector_baseIDsSaIDsEE13_M_deallocateEPDsm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit50
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cc) #18
  br label %_ZNSt12_Vector_baseIDsSaIDsEE13_M_deallocateEPDsm.exit

_ZNSt12_Vector_baseIDsSaIDsEE13_M_deallocateEPDsm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit50, %bb.ai
  store ptr %i.bk, ptr %0, align 8, !tbaa !67
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !63
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !64
  br label %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIDsSaIDsEE13_M_deallocateEPDsm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !113    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.d                       ; 2 uses
  %i.k = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not23 = icmp ult i64 %i.j, %1
  br i1 %.not23, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !151
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !59
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.w, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.g
  %.not28 = icmp eq ptr %i.b, %i.c
  br i1 %.not28, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26, %bb.h
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #18
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !151
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !73
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !70     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN6hermes16StringTableEntryEmS1_ET_S3_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 2305843009213693950
  %i.u = and i64 %i.t, 2305843009213693951        ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.u, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.y ; 2 uses
  %i.z = load i64, ptr %i.b, align 4, !tbaa !13
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4, !tbaa !13
  store <2 x i64> %broadcast.splat, ptr %i.aa, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !430

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt27__uninitialized_default_n_aIPN6hermes16StringTableEntryEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %bb.d ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i64, ptr %i.b, align 4, !tbaa !13
  store i64 %i.ac, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN6hermes16StringTableEntryEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !431

_ZSt27__uninitialized_default_n_aIPN6hermes16StringTableEntryEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %middle.block ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !156
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ae = icmp ult i64 %i.n, %1
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIN6hermes16StringTableEntryESaIS1_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIN6hermes16StringTableEntryESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.af = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975) ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.f ; 5 uses
  store i64 0, ptr %i.aj, align 4
  %i.ak = add nsw i64 %1, -1                      ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZSt27__uninitialized_default_n_aIPN6hermes16StringTableEntryEmS1_ET_S3_T0_RSaIT1_E.exit30, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN6hermes16StringTableEntryESaIS1_EE12_M_check_lenEmPKc.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %.idx.i.i.i.i.i25 = shl nuw nsw i64 %i.ak, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i.i25
  %i.ao = add i64 %1, 2305843009213693950
  %i.ap = and i64 %i.ao, 2305843009213693951      ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check38 = icmp samesign ult i64 %i.ap, 3
  br i1 %min.iters.check38, label %.lr.ph.i.i.i.i.i.i.i26.preheader, label %vector.ph39

vector.ph39:                                      ; preds = %bb.g
  %n.vec40 = and i64 %i.aq, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec40, 3
  %i.as = getelementptr i8, ptr %i.am, i64 %i.ar
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph39
  %index42 = phi i64 [ 0, %vector.ph39 ], [ %index.next46, %vector.body41 ] ; 2 uses
  %i.at = shl i64 %index42, 3
  %next.gep43 = getelementptr i8, ptr %i.am, i64 %i.at ; 2 uses
  %i.au = load i64, ptr %i.aj, align 4, !tbaa !13
  %broadcast.splatinsert44 = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat45 = shufflevector <2 x i64> %broadcast.splatinsert44, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep43, i64 16
  store <2 x i64> %broadcast.splat45, ptr %next.gep43, align 4, !tbaa !13
  store <2 x i64> %broadcast.splat45, ptr %i.av, align 4, !tbaa !13
  %index.next46 = add nuw i64 %index42, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next46, %n.vec40
  br i1 %i.aw, label %middle.block47, label %vector.body41, !llvm.loop !432

middle.block47:                                   ; preds = %vector.body41
  %cmp.n48 = icmp eq i64 %i.aq, %n.vec40
  br i1 %cmp.n48, label %_ZSt27__uninitialized_default_n_aIPN6hermes16StringTableEntryEmS1_ET_S3_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i.i.i.i.i26.preheader

.lr.ph.i.i.i.i.i.i.i26.preheader:                 ; preds = %bb.g, %middle.block47
  %.06.i.i.i.i.i.i.i27.ph = phi ptr [ %i.am, %bb.g ], [ %i.as, %middle.block47 ]
  br label %.lr.ph.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i26:                           ; preds = %.lr.ph.i.i.i.i.i.i.i26.preheader, %.lr.ph.i.i.i.i.i.i.i26
  %.06.i.i.i.i.i.i.i27 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i26 ], [ %.06.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i26.preheader ] ; 2 uses
  %i.ax = load i64, ptr %i.aj, align 4, !tbaa !13
  store i64 %i.ax, ptr %.06.i.i.i.i.i.i.i27, align 4, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i27, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i28 = icmp eq ptr %i.ay, %i.an
  br i1 %.not.i.i.i.i.i.i.i28, label %_ZSt27__uninitialized_default_n_aIPN6hermes16StringTableEntryEmS1_ET_S3_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i.i.i.i.i26, !llvm.loop !433

_ZSt27__uninitialized_default_n_aIPN6hermes16StringTableEntryEmS1_ET_S3_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i.i.i.i.i26, %middle.block47, %_ZNKSt6vectorIN6hermes16StringTableEntryESaIS1_EE12_M_check_lenEmPKc.exit
  %i.az = icmp sgt i64 %i.f, 0
  br i1 %i.az, label %bb.h, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6hermes16StringTableEntryEmS1_ET_S3_T0_RSaIT1_E.exit30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN6hermes16StringTableEntryEmS1_ET_S3_T0_RSaIT1_E.exit30, %bb.h
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #18
  br label %_ZNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.i
  store ptr %i.ai, ptr %0, align 8, !tbaa !70
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %1
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !156
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.be, ptr %i.h, align 8, !tbaa !71
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6hermes16StringTableEntryEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.027 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = icmp ult ptr %.027, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.20
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !44
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.f = phi ptr [ %i.b, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.ee, %._crit_edge.loopexit ]
  %.not = icmp eq ptr %i.f, %.lcssa
  %i.g = load ptr, ptr %1, align 8, !tbaa !57     ; 4 uses
  br i1 %.not, label %bb.z, label %bb.w

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.20
  %.028 = phi ptr [ %.0, %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.20 ], [ %.027, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.028, align 8, !tbaa !43  ; 42 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #18
  br label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i:  ; preds = %bb.b, %.lr.ph
  %.05.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.o = load ptr, ptr %.05.i.i.ptr.1, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.1, label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.1, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !64
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #18
  br label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.1

_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.1: ; preds = %bb.c, %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i
  %.05.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.u = load ptr, ptr %.05.i.i.ptr.2, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i.i.i.i.2 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.2, label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.2, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.1
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !64
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #18
  br label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.2

_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.2: ; preds = %bb.d, %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.1
  %.05.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.aa = load ptr, ptr %.05.i.i.ptr.3, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i.i.i.i.3 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.3, label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.3, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !64
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #18
  br label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.3

_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.3: ; preds = %bb.e, %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.2
  %.05.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.ag = load ptr, ptr %.05.i.i.ptr.4, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i.i.i.i.4 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.4, label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.4, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #18
  br label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.4

_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.4: ; preds = %bb.f, %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.3
  %.05.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.am = load ptr, ptr %.05.i.i.ptr.5, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i.i.i.i.5 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.5, label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.5, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.4
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !64
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #18
  br label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.5

_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.5: ; preds = %bb.g, %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.4
  %.05.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.as = load ptr, ptr %.05.i.i.ptr.6, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i.i.i.i.6 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.6, label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.6, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.5
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !64
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #18
  br label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.6

_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.6: ; preds = %bb.h, %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.5
  %.05.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.ay = load ptr, ptr %.05.i.i.ptr.7, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i.i.i.i.7 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.7, label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.7, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.6
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !64
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #18
  br label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.7

_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.7: ; preds = %bb.i, %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.6
  %.05.i.i.ptr.8 = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.be = load ptr, ptr %.05.i.i.ptr.8, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i.i.i.i.8 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i.8, label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.8, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !64
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #18
  br label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.8

_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.8: ; preds = %bb.j, %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.7
  %.05.i.i.ptr.9 = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.bk = load ptr, ptr %.05.i.i.ptr.9, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i.i.i.i.9 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.9, label %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.9, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyISt6vectorIDsSaIDsEEEvPT_.exit.i.i.8
end_hunk_1
