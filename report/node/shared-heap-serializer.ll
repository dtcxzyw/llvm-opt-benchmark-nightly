inline.NumInlined: 398
inline.NumDeleted: 287
begin_hunk_0_@_ZN2v88internal20SharedHeapSerializer35SerializeUsingSharedHeapObjectCacheEPNS0_16SnapshotByteSinkENS0_6HandleINS0_10HeapObjectEEE:bb.a
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 55448
  %i.ao = load i8, ptr %i.an, align 8, !range !5
  %i.ap = trunc nuw i8 %i.ao to i1
  %not..i.i = xor i1 %i.am, true
  %i.aq = select i1 %not..i.i, i1 true, i1 %i.ap
  br i1 %i.aq, label %_ZN2v88internal7Isolate24shared_heap_object_cacheEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 64088
  %i.as = load i8, ptr %i.ar, align 8, !range !5, !noundef !6
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt27__throw_bad_optional_accessv() #19
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 64080
  %i.av = load ptr, ptr %i.au, align 8
  br label %_ZN2v88internal7Isolate24shared_heap_object_cacheEv.exit

_ZN2v88internal7Isolate24shared_heap_object_cacheEv.exit: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i
  %.pn.i = phi ptr [ %i.av, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i ], [ %i.ak, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit ] ; 3 uses
  %.0.i14 = getelementptr inbounds nuw i8, ptr %.pn.i, i64 63744 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn.i, i64 63752 ; 5 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = icmp sgt i32 %i.aa, -1
  br i1 %i.ay, label %_ZN2v84base8internal12checked_castImNS1_14CheckOnFailureEiQaaaa9IsNumericIT1_Esr3stdE15is_arithmetic_vIT_Eltclsr3std14numeric_limitsIS5_EE6lowestEclsr3std14numeric_limitsIS5_EE3maxEEES5_S4_.exit, label %bb.i, !prof !13

bb.i:                                             ; preds = %_ZN2v88internal7Isolate24shared_heap_object_cacheEv.exit
  tail call void @llvm.trap()
  unreachable

_ZN2v84base8internal12checked_castImNS1_14CheckOnFailureEiQaaaa9IsNumericIT1_Esr3stdE15is_arithmetic_vIT_Eltclsr3std14numeric_limitsIS5_EE6lowestEclsr3std14numeric_limitsIS5_EE3maxEEES5_S4_.exit: ; preds = %_ZN2v88internal7Isolate24shared_heap_object_cacheEv.exit
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = load ptr, ptr %.0.i14, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.az, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = zext nneg i32 %i.aa to i64
  %i.bf = add nsw i64 %i.bd, -1
  %i.bg = icmp eq i64 %i.bf, %i.be
  br i1 %i.bg, label %bb.j, label %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE9push_backEOS4_.exit

bb.j:                                             ; preds = %_ZN2v84base8internal12checked_castImNS1_14CheckOnFailureEiQaaaa9IsNumericIT1_Esr3stdE15is_arithmetic_vIT_Eltclsr3std14numeric_limitsIS5_EE6lowestEclsr3std14numeric_limitsIS5_EE3maxEEES5_S4_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 648
  %i.bi = load i64, ptr %2, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.ax, i64 -8
  store i64 %i.bi, ptr %i.bj, align 8
  %i.bk = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bl = load ptr, ptr %i.aw, align 8            ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn.i, i64 63760 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %.not.i.i = icmp eq ptr %i.bl, %i.bn
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %i.bk, ptr %i.bl, align 8
  %i.bo = load ptr, ptr %i.aw, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bp, ptr %i.aw, align 8
  br label %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE9push_backEOS4_.exit

bb.l:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr %.0.i14, align 8          ; 7 uses
  %i.br = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 4 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.m, label %_ZNKSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
  unreachable

_ZNKSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #22 ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  store i64 %i.bk, ptr %i.cc, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.bl
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cd = ptrtoaddr ptr %i.cb to i64
  %i.ce = add i64 %i.br, -8
  %i.cf = sub i64 %i.ce, %i.bs                    ; 2 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cf, 56
  %i.ci = sub i64 %i.cd, %i.bs
  %diff.check = icmp ult i64 %i.ci, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ch, 4611686018427387900     ; 3 uses
  %i.cj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cb, i64 %i.cj  ; 2 uses
  %i.cl = getelementptr i8, ptr %i.bq, i64 %i.cj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cb, i64 %i.cm ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.bq, i64 %i.cm ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.cn = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep41, align 8, !alias.scope !17, !noalias !14
  %wide.load42 = load <2 x i64>, ptr %i.cn, align 8, !alias.scope !17, !noalias !14
  %i.co = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !14, !noalias !17
  store <2 x i64> %wide.load42, ptr %i.co, align 8, !alias.scope !14, !noalias !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader44

.lr.ph.i.i.i.i.i.i.preheader44:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ck, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader44, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader44 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader44 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.cq = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !17, !noalias !14
  store i64 %i.cq, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !14, !noalias !17
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.bl
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !22

_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cb, %_ZNKSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ck, %middle.block ], [ %i.cs, %.lr.ph.i.i.i.i.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bt) #21
  br label %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.cb, ptr %.0.i14, align 8
  store ptr %i.ct, ptr %i.aw, align 8
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.cu, ptr %i.bm, align 8
  br label %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.d, %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.k, %_ZN2v84base8internal12checked_castImNS1_14CheckOnFailureEiQaaaa9IsNumericIT1_Esr3stdE15is_arithmetic_vIT_Eltclsr3std14numeric_limitsIS5_EE6lowestEclsr3std14numeric_limitsIS5_EE3maxEEES5_S4_.exit, %_ZNK2v88internal20SharedHeapSerializer48ShouldReconstructSharedHeapObjectCacheForTestingEv.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cw = load ptr, ptr %i.cv, align 8            ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8
  %.not.i.i15 = icmp eq ptr %i.cw, %i.cy
  br i1 %.not.i.i15, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE9push_backEOS4_.exit
  store i8 9, ptr %i.cw, align 1
  %i.cz = load ptr, ptr %i.cv, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  store ptr %i.da, ptr %i.cv, align 8
  br label %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit

bb.p:                                             ; preds = %_ZNSt6vectorIN2v88internal6TaggedINS1_6ObjectEEESaIS4_EE9push_backEOS4_.exit
  %i.db = load ptr, ptr %1, align 8               ; 4 uses
  %i.dc = ptrtoint ptr %i.cw to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 8 uses
  %i.df = icmp eq i64 %i.de, 9223372036854775807
  br i1 %i.df, label %bb.q, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %.sroa.speculated.i.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.dg = add i64 %.sroa.speculated.i.i.i.i16, %i.de ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.de
  %i.di = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 9223372036854775807)
  %i.dj = select i1 %i.dh, i64 9223372036854775807, i64 %i.di ; 3 uses
  %.not.i.i.i.i17 = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i.i.i17, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i, label %3

3:                                                ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #22
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i: ; preds = %3, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %5 = phi ptr [ %4, %3 ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i ] ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 %i.de ; 2 uses
  store i8 9, ptr %6, align 1
  %7 = icmp sgt i64 %i.de, 0
  br i1 %7, label %bb.r, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %5, ptr align 1 %i.db, i64 %i.de, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.r, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.de) #21
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %5, ptr %1, align 8
  store ptr %i.dk, ptr %i.cv, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 %i.dj
  store ptr %i.dl, ptr %i.cx, align 8
  br label %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit

_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit:  ; preds = %bb.o, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  tail call void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.aa, ptr noundef nonnull @.str.2) #18
  br label %_ZN2v88internal20SharedHeapSerializer31ShouldBeInSharedHeapObjectCacheENS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal20SharedHeapSerializer31ShouldBeInSharedHeapObjectCacheENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal20SharedHeapSerializer21CanBeInSharedOldSpaceENS0_6TaggedINS0_10HeapObjectEEE.exit.thread12.i, %_ZN2v88internal20SharedHeapSerializer21CanBeInSharedOldSpaceENS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.b, %bb.a, %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit
  %.0.i30 = phi i1 [ true, %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %_ZN2v88internal20SharedHeapSerializer21CanBeInSharedOldSpaceENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ false, %_ZN2v88internal20SharedHeapSerializer21CanBeInSharedOldSpaceENS0_6TaggedINS0_10HeapObjectEEE.exit.thread12.i ]
  ret i1 %.0.i30
}

declare noundef i32 @_ZN2v88internal15RootsSerializer22SerializeInObjectCacheENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(833), ptr) local_unnamed_addr #1

declare void @_ZN2v88internal16SnapshotByteSink9PutUint30EjPKc(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK2v88internal11StringTable16NumberOfElementsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN2v88internal11StringTable15IterateElementsEPNS0_11RootVisitorE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20SharedHeapSerializer19SerializeObjectImplENS0_6HandleINS0_10HeapObjectEEENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(833) %0, ptr %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Serializer::ObjectSerializer", align 8 ; 9 uses
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  %i.b = tail call noundef zeroext i1 @_ZN2v88internal10Serializer18SerializeHotObjectENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 %i.a) #18
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = trunc i64 %i.a to i32
  %i.f = and i32 %i.e, 2147483647
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add i32 %i.h, -1                         ; 2 uses
  %i.j = and i32 %i.f, %i.i
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %_ZNK2v88internal15RootsSerializer26IsRootAndHasBeenSerializedENS0_6TaggedINS0_10HeapObjectEEE.exit.thread

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = zext i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.r = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %.014.i.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.d ]
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %i.a, %i.s
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = add nsw i64 %.014.i.i.i.i.i, 1
  %i.v = and i64 %i.u, %i.q                       ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.c, label %_ZNK2v88internal15RootsSerializer26IsRootAndHasBeenSerializedENS0_6TaggedINS0_10HeapObjectEEE.exit.thread, !llvm.loop !23

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = trunc i32 %i.ab to i16
  %.mask.i = and i32 %i.ab, 65535
  %i.ad = zext nneg i32 %.mask.i to i64           ; 3 uses
  %i.ae = icmp ugt i16 %i.ac, 1149
  br i1 %i.ae, label %bb.f, label %_ZNK2v88internal15RootsSerializer26IsRootAndHasBeenSerializedENS0_6TaggedINS0_10HeapObjectEEE.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i64 noundef %i.ad, i64 noundef 1150) #20
  unreachable

_ZNK2v88internal15RootsSerializer26IsRootAndHasBeenSerializedENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ag = lshr i64 %i.ad, 6
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = and i64 %i.ad, 63
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = and i64 %i.ai, %i.ak
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %_ZNK2v88internal15RootsSerializer26IsRootAndHasBeenSerializedENS0_6TaggedINS0_10HeapObjectEEE.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal15RootsSerializer26IsRootAndHasBeenSerializedENS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.am = tail call noundef zeroext i1 @_ZN2v88internal10Serializer13SerializeRootENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 %i.a) #18
  br i1 %i.am, label %.thread, label %_ZNK2v88internal15RootsSerializer26IsRootAndHasBeenSerializedENS0_6TaggedINS0_10HeapObjectEEE.exit.thread

_ZNK2v88internal15RootsSerializer26IsRootAndHasBeenSerializedENS0_6TaggedINS0_10HeapObjectEEE.exit.thread: ; preds = %bb.d, %bb.b, %bb.g, %_ZNK2v88internal15RootsSerializer26IsRootAndHasBeenSerializedENS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.an = load i64, ptr %1, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ap = tail call noundef zeroext i1 @_ZN2v88internal10Serializer32SerializeReadOnlyObjectReferenceENS0_6TaggedINS0_10HeapObjectEEEPNS0_16SnapshotByteSinkE(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 %i.an, ptr noundef nonnull %i.ao) #18
  br i1 %i.ap, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal15RootsSerializer26IsRootAndHasBeenSerializedENS0_6TaggedINS0_10HeapObjectEEE.exit.thread
  %i.aq = load i64, ptr %1, align 8               ; 2 uses
  %i.ar = tail call noundef zeroext i1 @_ZN2v88internal10Serializer22SerializeBackReferenceENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 %i.aq) #18
  br i1 %i.ar, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal15RootsSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(833) %0, i64 %i.aq) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN2v88internal10Serializer16ObjectSerializerE, i64 16), ptr %3, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  store ptr %i.au, ptr %i.as, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %1, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ao, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 0, ptr %i.ay, align 8
  call void @_ZN2v88internal10Serializer16ObjectSerializer9SerializeENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(44) %3, i32 noundef %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.a, %bb.h, %_ZNK2v88internal15RootsSerializer26IsRootAndHasBeenSerializedENS0_6TaggedINS0_10HeapObjectEEE.exit.thread, %bb.i
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal10Serializer18SerializeHotObjectENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600), i64) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN2v88internal10Serializer13SerializeRootENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600), i64) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN2v88internal10Serializer32SerializeReadOnlyObjectReferenceENS0_6TaggedINS0_10HeapObjectEEEPNS0_16SnapshotByteSinkE(ptr noundef nonnull align 8 dereferenceable(600), i64, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN2v88internal10Serializer22SerializeBackReferenceENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600), i64) local_unnamed_addr #1

declare void @_ZN2v88internal15RootsSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(833), i64) local_unnamed_addr #1

declare void @_ZN2v88internal10Serializer16ObjectSerializer9SerializeENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal15RootsSerializer17VisitRootPointersENS0_4RootEPKcNS0_14FullObjectSlotES5_(ptr noundef nonnull align 8 dereferenceable(833), i32 noundef, ptr noundef, i64, i64) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11RootVisitor16VisitRootPointerENS0_4RootEPKcNS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add i64 %3, 8
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i64 %3, i64 %i.a) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11RootVisitor17VisitRootPointersENS0_4RootEPKcNS0_21OffHeapFullObjectSlotES5_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i64 %3, i64 %4) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #20
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11RootVisitor16VisitRunningCodeENS0_14FullObjectSlotES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 18, ptr noundef null, i64 %2) #18
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 18, ptr noundef null, i64 %1) #18
  ret void
}

declare void @_ZN2v88internal15RootsSerializer11SynchronizeENS0_22VisitorSynchronization7SyncTagE(ptr noundef nonnull align 8 dereferenceable(833), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2v88internal11RootVisitor9collectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 1
}

declare noundef zeroext i1 @_ZN2v88internal10Serializer14MustBeDeferredENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600), i64) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10SerializerD2Ev(ptr noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN2v88internal10SerializerE, i64 16), ptr %0, align 8
  %.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.a = load ptr, ptr %.ptr1, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #21
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit

end_hunk_0
