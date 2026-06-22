inline.NumInlined: 2626
inline.NumDeleted: 1307
begin_hunk_0_@_ZN12_GLOBAL__N_118StringTableBuilder15packIntoStorageEPSt6vectorIhSaIhEEPS1_IDsSaIDsEEb:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %17, i8 0, i64 24, i1 false), !alias.scope !345
  %.not14.i426 = icmp eq ptr %.val10, %.val9
  br i1 %.not14.i426, label %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit, label %.lr.ph.i427

.lr.ph.i427:                                      ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit424
  %i.aym = getelementptr inbounds nuw i8, ptr %17, i64 8
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gj, %.lr.ph.i427
  %.015.i428 = phi ptr [ %.val9, %.lr.ph.i427 ], [ %i.aza, %bb.gj ] ; 4 uses
  %i.ayn = load ptr, ptr %i.aym, align 8, !tbaa !57, !alias.scope !345
  %i.ayo = load ptr, ptr %17, align 16, !tbaa !63, !alias.scope !345 ; 2 uses
  %i.ayp = ptrtoint ptr %i.ayn to i64
  %i.ayq = ptrtoint ptr %i.ayo to i64
  %i.ayr = sub i64 %i.ayp, %i.ayq                 ; 2 uses
  %i.ays = ashr exact i64 %i.ayr, 1
  %i.ayt = getelementptr inbounds nuw i8, ptr %.015.i428, i64 24
  store i64 %i.ays, ptr %i.ayt, align 8, !tbaa !348, !noalias !345
  %i.ayu = getelementptr inbounds nuw i8, ptr %.015.i428, i64 8
  %i.ayv = load ptr, ptr %i.ayu, align 8, !tbaa !239, !noalias !345 ; 2 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %.015.i428, i64 16
  %i.ayx = load i64, ptr %i.ayw, align 8, !tbaa !237, !noalias !345
  %i.ayy = getelementptr inbounds nuw [2 x i8], ptr %i.ayv, i64 %i.ayx
  %i.ayz = getelementptr inbounds i8, ptr %i.ayo, i64 %i.ayr
  call void @_ZNSt6vectorIDsSaIDsEE15_M_range_insertIPKDsEEvN9__gnu_cxx17__normal_iteratorIPDsS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr %i.ayz, ptr noundef %i.ayv, ptr noundef %i.ayy)
  %i.aza = getelementptr inbounds nuw i8, ptr %.015.i428, i64 96 ; 2 uses
  %.not.i429 = icmp eq ptr %i.aza, %.val10
  br i1 %.not.i429, label %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit, label %bb.gj

_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit: ; preds = %bb.gj
  %i.azb = load <2 x ptr>, ptr %17, align 16, !tbaa !230
  %.phi.trans.insert670 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %.pre671 = load ptr, ptr %.phi.trans.insert670, align 16, !tbaa !60
  br label %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit

_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit: ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit424
  %i.azc = phi ptr [ %.pre671, %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit ], [ null, %_ZNSt6vectorIhSaIhEED2Ev.exit424 ]
  %i.azd = phi <2 x ptr> [ %i.azb, %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit ], [ splat (ptr null), %_ZNSt6vectorIhSaIhEED2Ev.exit424 ]
  %i.aze = load ptr, ptr %2, align 8, !tbaa !63   ; 3 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.azg = load ptr, ptr %i.azf, align 8, !tbaa !60
  store <2 x ptr> %i.azd, ptr %2, align 8, !tbaa !230
  %i.azh = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.azc, ptr %i.azf, align 8, !tbaa !60
  %.not.i.i.i.i.i431 = icmp eq ptr %i.aze, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i431, label %_ZNSt6vectorIDsSaIDsEED2Ev.exit434, label %_ZNSt6vectorIDsSaIDsEEaSEOS1_.exit432

_ZNSt6vectorIDsSaIDsEEaSEOS1_.exit432:            ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit
  %i.azi = ptrtoint ptr %i.azg to i64
  %i.azj = ptrtoint ptr %i.aze to i64
  %i.azk = sub i64 %i.azi, %i.azj
  call void @_ZdlPvm(ptr noundef nonnull %i.aze, i64 noundef %i.azk) #18
  %.pr455 = load ptr, ptr %17, align 16, !tbaa !63 ; 3 uses
  %.not.i.i.i433 = icmp eq ptr %.pr455, null
  br i1 %.not.i.i.i433, label %_ZNSt6vectorIDsSaIDsEED2Ev.exit434, label %bb.gk

bb.gk:                                            ; preds = %_ZNSt6vectorIDsSaIDsEEaSEOS1_.exit432
  %i.azl = load ptr, ptr %i.azh, align 16, !tbaa !60
  %i.azm = ptrtoint ptr %i.azl to i64
  %i.azn = ptrtoint ptr %.pr455 to i64
  %i.azo = sub i64 %i.azm, %i.azn
  call void @_ZdlPvm(ptr noundef nonnull %.pr455, i64 noundef %i.azo) #18
  br label %_ZNSt6vectorIDsSaIDsEED2Ev.exit434

_ZNSt6vectorIDsSaIDsEED2Ev.exit434:               ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit, %_ZNSt6vectorIDsSaIDsEEaSEOS1_.exit432, %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %bb.gl

bb.gl:                                            ; preds = %_ZNSt6vectorIDsSaIDsEED2Ev.exit434, %_ZNSt6vectorIDsSaIDsEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i64 0, -1) i64 @_ZN12_GLOBAL__N_118StringTableBuilder16appendU16StorageEN4llvh8ArrayRefIDsEEPSt6vectorIhSaIhEE(ptr nofree readonly captures(address) %0, i64 %1, ptr noundef nonnull %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !343  ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !209    ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 8 uses
  %i.i = and i64 %i.h, 1
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  %.not.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.d, align 1, !tbaa !55
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !343
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  store ptr %i.m, ptr %i.c, align 8, !tbaa !343
  %.pre = load ptr, ptr %2, align 8, !tbaa !209
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.h, 9223372036854775807
  br i1 %i.n, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.o = shl i64 %i.h, 1
  %i.p = icmp slt i64 %i.h, 0
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  %i.r = select i1 %i.p, i64 9223372036854775807, i64 %i.q ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.h ; 2 uses
  store i8 0, ptr %i.t, align 1, !tbaa !55
  %i.u = icmp sgt i64 %i.h, 0
  br i1 %i.u, label %bb.g, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.h) #18
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.s, ptr %2, align 8, !tbaa !209
  store ptr %i.v, ptr %i.c, align 8, !tbaa !343
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store ptr %i.w, ptr %i.j, align 8, !tbaa !71
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, %bb.d, %bb.b
  %i.x = phi ptr [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %.pre, %bb.d ], [ %i.e, %bb.b ]
  %i.y = phi ptr [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %i.m, %bb.d ], [ %i.d, %bb.b ]
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 7 uses
  %i.ac = shl i64 %1, 1                           ; 3 uses
  %i.ad = add i64 %i.ab, %i.ac
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ad)
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !343
  %i.af = load ptr, ptr %2, align 8, !tbaa !209   ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %.not.i.i20 = icmp ult i64 %i.ab, %i.ai
  br i1 %.not.i.i20, label %iter.check, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ab, i64 noundef %i.ai) #17
  unreachable

iter.check:                                       ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ab ; 6 uses
  %i.al = add i64 %i.ac, -2                       ; 3 uses
  %i.am = lshr exact i64 %i.al, 1
  %i.an = add nuw i64 %i.am, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.al, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ao = add i64 %i.z, %i.ah
  %i.ap = add i64 %i.aa, %i.a
  %i.aq = sub i64 %i.ao, %i.ap
  %diff.check = icmp ult i64 %i.aq, 32
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check34 = icmp ult i64 %i.al, 30
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.an, 12
  %n.vec = and i64 %i.an, -16                     ; 4 uses
  %i.ar = shl i64 %n.vec, 1                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.ak, i64 %i.ar
  %i.at = getelementptr i8, ptr %0, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.au ; 3 uses
  %next.gep50 = getelementptr i8, ptr %0, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep50, align 2, !tbaa !61
  %wide.load51.a = load <8 x i16>, ptr %i.av, align 2, !tbaa !61
  call void @llvm.assume(i1 true) [ "align"(ptr %next.gep, i64 2) ]
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2
  store <8 x i16> %wide.load51.a, ptr %i.aw, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !349

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !350

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.an, -4                    ; 3 uses
  %i.ay = shl i64 %n.vec54, 1                     ; 2 uses
  %i.az = getelementptr i8, ptr %i.ak, i64 %i.ay
  %i.ba = getelementptr i8, ptr %0, i64 %i.ay
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 2 uses
  %i.bb = shl i64 %index55, 1                     ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.ak, i64 %i.bb ; 2 uses
  %next.gep60 = getelementptr i8, ptr %0, i64 %i.bb
  %wide.load61 = load <4 x i16>, ptr %next.gep60, align 2, !tbaa !61
  call void @llvm.assume(i1 true) [ "align"(ptr %next.gep56, i64 2) ]
  store <4 x i16> %wide.load61, ptr %next.gep56, align 2
  %index.next62 = add nuw i64 %index55, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next62, %n.vec54
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !351

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n63 = icmp eq i64 %i.an, %n.vec54
  br i1 %cmp.n63, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01727.ph = phi ptr [ %i.ak, %iter.check ], [ %i.ak, %vector.memcheck ], [ %i.as, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  %.01826.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01727 = phi ptr [ %i.bd, %.lr.ph ], [ %.01727.ph, %.lr.ph.preheader ] ; 3 uses
  %.01826 = phi ptr [ %i.be, %.lr.ph ], [ %.01826.ph, %.lr.ph.preheader ] ; 2 uses
  %3 = load i16, ptr %.01826, align 2, !tbaa !61
  call void @llvm.assume(i1 true) [ "align"(ptr %.01727, i64 2) ]
  store i16 %3, ptr %.01727, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %.01727, i64 2
  %i.be = getelementptr inbounds nuw i8, ptr %.01826, i64 2 ; 2 uses
  %.not19 = icmp eq ptr %i.be, %i.aj
  br i1 %.not19, label %.loopexit, label %.lr.ph, !llvm.loop !352

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ab, %middle.block ], [ %i.ab, %vec.epilog.middle.block ], [ %i.ab, %.lr.ph ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_118StringTableBuilder19generateStringTableEN4llvh8ArrayRefIhEEm(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.val12 = load ptr, ptr %i.a, align 8, !tbaa !72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.val13 = load ptr, ptr %i.b, align 8, !tbaa !75 ; 2 uses
  %i.c = ptrtoint ptr %.val13 to i64
  %i.d = ptrtoint ptr %.val12 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 96
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.val17 = load ptr, ptr %i.g, align 8, !tbaa !210
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %.val18 = load ptr, ptr %i.h, align 8, !tbaa !213
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
  %.val14.pre = load ptr, ptr %i.a, align 8, !tbaa !128
  %.val.pre = load ptr, ptr %i.b, align 8, !tbaa !128
  br label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE6resizeEm.exit: ; preds = %bb.a, %bb.b
  %.val = phi ptr [ %.val.pre, %bb.b ], [ %.val13, %bb.a ] ; 2 uses
  %.val14 = phi ptr [ %.val14.pre, %bb.b ], [ %.val12, %bb.a ] ; 2 uses
  %.not11 = icmp eq ptr %.val14, %.val
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE6resizeEm.exit
  %.val19 = load ptr, ptr %i.g, align 8, !tbaa !261 ; 2 uses
  %.val16 = load ptr, ptr %i.h, align 8, !tbaa !261 ; 2 uses
  %.not713 = icmp eq ptr %.val19, %.val16
  br i1 %.not713, label %._crit_edge17, label %.lr.ph16

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE6resizeEm.exit, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit
  %.sroa.06.012 = phi ptr [ %i.ab, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit ], [ %.val14, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE6resizeEm.exit ] ; 4 uses
  %i.o = load i32, ptr %.sroa.06.012, align 8, !tbaa !176
  %i.p = zext i32 %i.o to i64                     ; 3 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !353
  %i.r = load ptr, ptr %0, align 8, !tbaa !68     ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3                   ; 2 uses
  %.not.i.i25 = icmp ugt i64 %i.v, %i.p
  br i1 %.not.i.i25, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.p, i64 noundef %i.v) #17
  unreachable

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit: ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !344
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  %.sroa.44.0.insert.ext = shl i64 %i.x, 32
  %.sroa.03.0.insert.ext = and i64 %i.z, 4294967295
  %.sroa.03.0.insert.insert = or disjoint i64 %.sroa.03.0.insert.ext, %.sroa.44.0.insert.ext
  store i64 %.sroa.03.0.insert.insert, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 96 ; 2 uses
  %.not = icmp eq ptr %i.ab, %.val
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge17:                                    ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit27, %._crit_edge
  ret void

.lr.ph16:                                         ; preds = %._crit_edge, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit27
  %.sroa.02.014 = phi ptr [ %i.as, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit27 ], [ %.val19, %._crit_edge ] ; 4 uses
  %i.ac = load i32, ptr %.sroa.02.014, align 8, !tbaa !309
  %i.ad = zext i32 %i.ac to i64                   ; 3 uses
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !353
  %i.af = load ptr, ptr %0, align 8, !tbaa !68    ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %.not.i.i26 = icmp ugt i64 %i.aj, %i.ad
  br i1 %.not.i.i26, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit27, label %bb.d

bb.d:                                             ; preds = %.lr.ph16
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ad, i64 noundef %i.aj) #17
  unreachable

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit27: ; preds = %.lr.ph16
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !237
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !348
  %i.ao = shl i64 %i.an, 1
  %i.ap = add i64 %i.ao, %2
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  %i.ar = shl i64 %i.al, 32
  %.sroa.0.0.insert.ext = and i64 %i.ap, 4294967295
  %.sroa.4.0.insert.shift = or disjoint i64 %.sroa.0.0.insert.ext, %i.ar
  %.sroa.0.0.insert.insert = or i64 %.sroa.4.0.insert.shift, -9223372036854775808
  store i64 %.sroa.0.0.insert.insert, ptr %i.aq, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 96 ; 2 uses
  %.not7 = icmp eq ptr %i.as, %.val16
  br i1 %.not7, label %._crit_edge17, label %.lr.ph16
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_118StringTableBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator.8", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator.8", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !213  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not5.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr i8, ptr %.06.i.i.i, i64 72
  %.0.val.i.i.i = load ptr, ptr %i.e, align 8
  tail call void @_ZdlPv(ptr noundef %.0.val.i.i.i) #15
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !354

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.val.pr.i = load ptr, ptr %i.a, align 8, !tbaa !210
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exitthread-pre-split.i, %bb.a
  %.val.i = phi ptr [ %.val.pr.i, %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i2.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val1.i = load ptr, ptr %i.g, align 8, !tbaa !355
  %i.h = ptrtoint ptr %.val1.i to i64
  %i.i = ptrtoint ptr %.val.i to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.j) #18
  br label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEvT_S5_.exit.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75   ; 2 uses
  %.not5.i.i.i1 = icmp eq ptr %i.l, %i.n
  br i1 %.not5.i.i.i1, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EED2Ev.exit, %.lr.ph.i.i.i2
  %.06.i.i.i3 = phi ptr [ %i.p, %.lr.ph.i.i.i2 ], [ %i.l, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EED2Ev.exit ] ; 2 uses
  %i.o = getelementptr i8, ptr %.06.i.i.i3, i64 72
  %.0.val.i.i.i4 = load ptr, ptr %i.o, align 8
  tail call void @_ZdlPv(ptr noundef %.0.val.i.i.i4) #15
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i.i.i3, i64 96 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !356

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i2
  %.val.pr.i6 = load ptr, ptr %i.k, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exitthread-pre-split.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EED2Ev.exit
  %.val.i7 = phi ptr [ %.val.pr.i6, %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exitthread-pre-split.i ], [ %i.l, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i2.i8 = icmp eq ptr %.val.i7, null
  br i1 %.not.i.i2.i8, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i9 = load ptr, ptr %i.q, align 8, !tbaa !357
  %i.r = ptrtoint ptr %.val1.i9 to i64
  %i.s = ptrtoint ptr %.val.i7 to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i7, i64 noundef %i.t) #18
  br label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS3_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEvT_S5_.exit.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_0
