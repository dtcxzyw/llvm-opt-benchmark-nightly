Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ConsecutiveStringStorage?download=true
inline.NumInlined: 2626
inline.NumDeleted: 1307
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN12_GLOBAL__N_118StringTableBuilder15packIntoStorageEPSt6vectorIhSaIhEEPS1_IDsSaIDsEEb:bb.a
  br i1 %.not.i409, label %_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit, label %bb.fx

_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit: ; preds = %bb.fx
  %i.awk = load <2 x ptr>, ptr %16, align 16, !tbaa !66
  %.phi.trans.insert656 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.pre657 = load ptr, ptr %.phi.trans.insert656, align 16, !tbaa !81
  br label %_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit

_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit: ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit, %bb.fw
  %i.awl = phi ptr [ %.pre657, %_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit ], [ null, %bb.fw ]
  %i.awm = phi <2 x ptr> [ %i.awk, %_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit ], [ splat (ptr null), %bb.fw ]
  %i.awn = load ptr, ptr %1, align 8, !tbaa !121  ; 3 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.awp = load ptr, ptr %i.awo, align 8, !tbaa !81
  store <2 x ptr> %i.awm, ptr %1, align 8, !tbaa !66
  %i.awq = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.awl, ptr %i.awo, align 8, !tbaa !81
  %.not.i.i.i.i.i411 = icmp eq ptr %i.awn, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i411, label %_ZNSt6vectorIhSaIhEED2Ev.exit414, label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit412

_ZNSt6vectorIhSaIhEEaSEOS1_.exit412:              ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit
  %i.awr = ptrtoint ptr %i.awp to i64
  %i.aws = ptrtoint ptr %i.awn to i64
  %i.awt = sub i64 %i.awr, %i.aws
  call void @_ZdlPvm(ptr noundef nonnull %i.awn, i64 noundef %i.awt) #18
  %.pr444 = load ptr, ptr %16, align 16, !tbaa !121 ; 3 uses
  %.not.i.i.i413 = icmp eq ptr %.pr444, null
  br i1 %.not.i.i.i413, label %_ZNSt6vectorIhSaIhEED2Ev.exit414, label %bb.fy

bb.fy:                                            ; preds = %_ZNSt6vectorIhSaIhEEaSEOS1_.exit412
  %i.awu = load ptr, ptr %i.awq, align 16, !tbaa !81
  %i.awv = ptrtoint ptr %i.awu to i64
  %i.aww = ptrtoint ptr %.pr444 to i64
  %i.awx = sub i64 %i.awv, %i.aww
  call void @_ZdlPvm(ptr noundef nonnull %.pr444, i64 noundef %i.awx) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit414

_ZNSt6vectorIhSaIhEED2Ev.exit414:                 ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit, %_ZNSt6vectorIhSaIhEEaSEOS1_.exit412, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.awy = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val9 = load ptr, ptr %i.awy, align 8, !tbaa !124 ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val10 = load ptr, ptr %i.awz, align 8, !tbaa !125 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %17, i8 0, i64 24, i1 false), !alias.scope !361
  %.not14.i416 = icmp eq ptr %.val10, %.val9
  br i1 %.not14.i416, label %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit, label %.lr.ph.i417

.lr.ph.i417:                                      ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit414
  %i.axa = getelementptr inbounds nuw i8, ptr %17, i64 8
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fz, %.lr.ph.i417
  %.015.i418 = phi ptr [ %.val9, %.lr.ph.i417 ], [ %i.axo, %bb.fz ] ; 4 uses
  %i.axb = load ptr, ptr %i.axa, align 8, !tbaa !71, !alias.scope !361
  %i.axc = load ptr, ptr %17, align 16, !tbaa !75, !alias.scope !361 ; 2 uses
  %i.axd = ptrtoint ptr %i.axb to i64
  %i.axe = ptrtoint ptr %i.axc to i64
  %i.axf = sub i64 %i.axd, %i.axe                 ; 2 uses
  %i.axg = ashr exact i64 %i.axf, 1
  %i.axh = getelementptr inbounds nuw i8, ptr %.015.i418, i64 24
  store i64 %i.axg, ptr %i.axh, align 8, !tbaa !161, !noalias !361
  %i.axi = getelementptr inbounds nuw i8, ptr %.015.i418, i64 8
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !135, !noalias !361 ; 2 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %.015.i418, i64 16
  %i.axl = load i64, ptr %i.axk, align 8, !tbaa !134, !noalias !361
  %i.axm = getelementptr inbounds nuw [2 x i8], ptr %i.axj, i64 %i.axl
  %i.axn = getelementptr inbounds i8, ptr %i.axc, i64 %i.axf
  call void @_ZNSt6vectorIDsSaIDsEE15_M_range_insertIPKDsEEvN9__gnu_cxx17__normal_iteratorIPDsS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr %i.axn, ptr noundef %i.axj, ptr noundef %i.axm)
  %i.axo = getelementptr inbounds nuw i8, ptr %.015.i418, i64 96 ; 2 uses
  %.not.i419 = icmp eq ptr %i.axo, %.val10
  br i1 %.not.i419, label %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit, label %bb.fz

_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit: ; preds = %bb.fz
  %i.axp = load <2 x ptr>, ptr %17, align 16, !tbaa !132
  %.phi.trans.insert661 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %.pre662 = load ptr, ptr %.phi.trans.insert661, align 16, !tbaa !72
  br label %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit

_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit: ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit414
  %i.axq = phi ptr [ %.pre662, %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit ], [ null, %_ZNSt6vectorIhSaIhEED2Ev.exit414 ]
  %i.axr = phi <2 x ptr> [ %i.axp, %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit ], [ splat (ptr null), %_ZNSt6vectorIhSaIhEED2Ev.exit414 ]
  %i.axs = load ptr, ptr %2, align 8, !tbaa !75   ; 3 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.axu = load ptr, ptr %i.axt, align 8, !tbaa !72
  store <2 x ptr> %i.axr, ptr %2, align 8, !tbaa !132
  %i.axv = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.axq, ptr %i.axt, align 8, !tbaa !72
  %.not.i.i.i.i.i421 = icmp eq ptr %i.axs, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i421, label %_ZNSt6vectorIDsSaIDsEED2Ev.exit424, label %_ZNSt6vectorIDsSaIDsEEaSEOS1_.exit422

_ZNSt6vectorIDsSaIDsEEaSEOS1_.exit422:            ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit
  %i.axw = ptrtoint ptr %i.axu to i64
  %i.axx = ptrtoint ptr %i.axs to i64
  %i.axy = sub i64 %i.axw, %i.axx
  call void @_ZdlPvm(ptr noundef nonnull %i.axs, i64 noundef %i.axy) #18
  %.pr445 = load ptr, ptr %17, align 16, !tbaa !75 ; 3 uses
  %.not.i.i.i423 = icmp eq ptr %.pr445, null
  br i1 %.not.i.i.i423, label %_ZNSt6vectorIDsSaIDsEED2Ev.exit424, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt6vectorIDsSaIDsEEaSEOS1_.exit422
  %i.axz = load ptr, ptr %i.axv, align 16, !tbaa !72
  %i.aya = ptrtoint ptr %i.axz to i64
  %i.ayb = ptrtoint ptr %.pr445 to i64
  %i.ayc = sub i64 %i.aya, %i.ayb
  call void @_ZdlPvm(ptr noundef nonnull %.pr445, i64 noundef %i.ayc) #18
  br label %_ZNSt6vectorIDsSaIDsEED2Ev.exit424

_ZNSt6vectorIDsSaIDsEED2Ev.exit424:               ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit, %_ZNSt6vectorIDsSaIDsEEaSEOS1_.exit422, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %bb.gb

bb.gb:                                            ; preds = %_ZNSt6vectorIDsSaIDsEED2Ev.exit424, %_ZNSt6vectorIDsSaIDsEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i64 0, -1) i64 @_ZN12_GLOBAL__N_118StringTableBuilder16appendU16StorageEN4llvh8ArrayRefIDsEEPSt6vectorIhSaIhEE(ptr nofree readonly captures(address) %0, i64 %1, ptr noundef nonnull %2) unnamed_addr #0 align 2 !guid !365 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159  ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !121    ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 7 uses
  %i.i = and i64 %i.h, 1
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %.not.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.d, align 1, !tbaa !67
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !159
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  store ptr %i.m, ptr %i.c, align 8, !tbaa !159
  %.pre = load ptr, ptr %2, align 8, !tbaa !121
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
  store i8 0, ptr %i.t, align 1, !tbaa !67
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
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !81
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.y) #18
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.s, ptr %2, align 8, !tbaa !121
  store ptr %i.v, ptr %i.c, align 8, !tbaa !159
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store ptr %i.z, ptr %i.j, align 8, !tbaa !81
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
  %.pre29 = load ptr, ptr %i.c, align 8, !tbaa !159
  %.pre30 = load ptr, ptr %2, align 8, !tbaa !121 ; 2 uses
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
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !159
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %.pre-phi = phi i64 [ %.pre31, %bb.i ], [ %i.ad, %bb.j ], [ %i.ad, %bb.k ], [ %i.ad, %bb.l ]
  %i.ak = phi ptr [ %.pre30, %bb.i ], [ %i.aa, %bb.j ], [ %i.aa, %bb.k ], [ %i.aa, %bb.l ] ; 2 uses
  %i.al = phi ptr [ %.pre29, %bb.i ], [ %i.ab, %bb.j ], [ %i.ab, %bb.k ], [ %i.aj, %bb.l ]
  %3 = ptrtoaddr ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %.pre-phi                ; 2 uses
  %.not.i.i21 = icmp ult i64 %i.ae, %i.an
  br i1 %.not.i.i21, label %iter.check, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ae, i64 noundef %i.an) #17
  unreachable

iter.check:                                       ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ae ; 6 uses
  %i.aq = add i64 %i.af, -2                       ; 3 uses
  %i.ar = lshr exact i64 %i.aq, 1
  %i.as = add nuw i64 %i.ar, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.aq, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.at = add i64 %3, %i.ac
  %i.au = add i64 %i.ad, %i.a
  %i.av = sub i64 %i.au, %i.at
  %diff.check = icmp ugt i64 %i.av, -32
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check41 = icmp ult i64 %i.aq, 30
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %i.as, 12
  %n.vec = and i64 %i.as, -16                     ; 4 uses
  %i.ax = shl i64 %n.vec, 1                       ; 2 uses
  %i.ay = getelementptr i8, ptr %0, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ap, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.ba ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.ap, i64 %i.ba ; 3 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !74
  %wide.load58 = load <8 x i16>, ptr %i.bb, align 2, !tbaa !74
  call void @llvm.assume(i1 true) [ "align"(ptr %next.gep42, i64 2) ]
  %i.bc = getelementptr i8, ptr %next.gep42, i64 16
  store <8 x i16> %wide.load, ptr %next.gep42, align 2
  store <8 x i16> %wide.load58, ptr %i.bc, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !362

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !366

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec59 = and i64 %i.as, -4                    ; 3 uses
  %i.be = shl i64 %n.vec59, 1                     ; 2 uses
  %i.bf = getelementptr i8, ptr %0, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.ap, i64 %i.be
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next67, %vec.epilog.vector.body ] ; 2 uses
  %i.bh = shl i64 %index60, 1                     ; 2 uses
  %next.gep61 = getelementptr i8, ptr %0, i64 %i.bh
  %next.gep62 = getelementptr i8, ptr %i.ap, i64 %i.bh ; 2 uses
  %wide.load66 = load <4 x i16>, ptr %next.gep61, align 2, !tbaa !74
  call void @llvm.assume(i1 true) [ "align"(ptr %next.gep62, i64 2) ]
  store <4 x i16> %wide.load66, ptr %next.gep62, align 2
  %index.next67 = add nuw i64 %index60, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next67, %n.vec59
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !363

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n68 = icmp eq i64 %i.as, %n.vec59
  br i1 %cmp.n68, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01728.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.ay, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  %.01827.ph = phi ptr [ %i.ap, %iter.check ], [ %i.ap, %vector.memcheck ], [ %i.az, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01728 = phi ptr [ %i.bl, %.lr.ph ], [ %.01728.ph, %.lr.ph.preheader ] ; 2 uses
  %.01827 = phi ptr [ %i.bk, %.lr.ph ], [ %.01827.ph, %.lr.ph.preheader ] ; 3 uses
  %i.bj = load i16, ptr %.01728, align 2, !tbaa !74
  call void @llvm.assume(i1 true) [ "align"(ptr %.01827, i64 2) ]
  store i16 %i.bj, ptr %.01827, align 2
  %i.bk = getelementptr inbounds nuw i8, ptr %.01827, i64 2
  %i.bl = getelementptr inbounds nuw i8, ptr %.01728, i64 2 ; 2 uses
  %.not19 = icmp eq ptr %i.bl, %i.ao
  br i1 %.not19, label %.loopexit, label %.lr.ph, !llvm.loop !364

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ae, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %i.ae, %.lr.ph ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_118StringTableBuilder19generateStringTableEN4llvh8ArrayRefIhEEm(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, i64 noundef %2) unnamed_addr #0 align 2 !guid !367 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.val12 = load ptr, ptr %i.a, align 8, !tbaa !84 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.val13 = load ptr, ptr %i.b, align 8, !tbaa !85 ; 2 uses
  %i.c = ptrtoint ptr %.val13 to i64
  %i.d = ptrtoint ptr %.val12 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 96
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.val17 = load ptr, ptr %i.g, align 8, !tbaa !124
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %.val18 = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.i = ptrtoint ptr %.val18 to i64
  %i.j = ptrtoint ptr %.val17 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 96
  %i.m = add nsw i64 %i.l, %i.f                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not32 = icmp eq i64 %i.m, 0
  br i1 %.not32, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.m)
  %.val14.pre = load ptr, ptr %i.a, align 8, !tbaa !106
  %.val.pre = load ptr, ptr %i.b, align 8, !tbaa !106
  br label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE6resizeEm.exit: ; preds = %bb.a, %bb.b
  %.val = phi ptr [ %.val.pre, %bb.b ], [ %.val13, %bb.a ] ; 2 uses
  %.val14 = phi ptr [ %.val14.pre, %bb.b ], [ %.val12, %bb.a ] ; 2 uses
  %.not11 = icmp eq ptr %.val14, %.val
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE6resizeEm.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !164
  %i.p = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE6resizeEm.exit
  %.val19 = load ptr, ptr %i.g, align 8, !tbaa !144 ; 2 uses
  %.val16 = load ptr, ptr %i.h, align 8, !tbaa !144 ; 2 uses
  %.not713 = icmp eq ptr %.val19, %.val16
  br i1 %.not713, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %._crit_edge
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !164
  %i.v = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit
  %.sroa.06.012 = phi ptr [ %.val14, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit ] ; 4 uses
  %i.aa = load i32, ptr %.sroa.06.012, align 8, !tbaa !114
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %.not.i.i25 = icmp ugt i64 %i.t, %i.ab
  br i1 %.not.i.i25, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ab, i64 noundef %i.t) #17
  unreachable

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit: ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !160
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ab
  %.sroa.44.0.insert.ext = shl i64 %i.ad, 32
  %.sroa.03.0.insert.ext = and i64 %i.af, 4294967295
  %.sroa.03.0.insert.insert = or disjoint i64 %.sroa.03.0.insert.ext, %.sroa.44.0.insert.ext
  store i64 %.sroa.03.0.insert.insert, ptr %i.ag, align 4, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 96 ; 2 uses
  %.not = icmp eq ptr %i.ah, %.val
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge17:                                    ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit27, %._crit_edge
  ret void

bb.e:                                             ; preds = %.lr.ph16, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit27
  %.sroa.02.014 = phi ptr [ %.val19, %.lr.ph16 ], [ %i.as, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit27 ] ; 4 uses
  %i.ai = load i32, ptr %.sroa.02.014, align 8, !tbaa !152
  %i.aj = zext i32 %i.ai to i64                   ; 3 uses
  %.not.i.i26 = icmp ugt i64 %i.z, %i.aj
  br i1 %.not.i.i26, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit27, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aj, i64 noundef %i.z) #17
  unreachable

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EE2atEm.exit27: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !134
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !161
  %i.ao = shl i64 %i.an, 1
  %i.ap = add i64 %i.ao, %2
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.aj
  %i.ar = shl i64 %i.al, 32
  %.sroa.0.0.insert.ext = and i64 %i.ap, 4294967295
  %.sroa.4.0.insert.shift = or disjoint i64 %.sroa.0.0.insert.ext, %i.ar
  %.sroa.0.0.insert.insert = or i64 %.sroa.4.0.insert.shift, -9223372036854775808
  store i64 %.sroa.0.0.insert.insert, ptr %i.aq, align 4, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 96 ; 2 uses
end_hunk_0
