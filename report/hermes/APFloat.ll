inline.NumInlined: 1817
inline.NumDeleted: 298
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvh7APFloatC2ERKNS_12fltSemanticsENS_9StringRefE:bb.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !7
  %i.d = add i32 %i.c, 64                         ; 2 uses
  %i.e = icmp ugt i32 %i.d, 127
  br i1 %i.e, label %bb.c, label %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %i.d, 3
  %i.g = and i32 %i.f, 536870904
  %i.h = zext nneg i32 %i.g to i64
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #23, !inline_history !210
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !18
  br label %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit.i

_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit.i: ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.l = load i8, ptr %i.k, align 2
  %i.m = and i8 %i.l, -16
  %i.n = or disjoint i8 %i.m, 3
  store i8 %i.n, ptr %i.k, align 2
  br label %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsE.exit

bb.d:                                             ; preds = %bb.a
  store ptr @_ZN4llvhL18semPPCDoubleDoubleE, ptr %i.a, align 8, !tbaa !136
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23, !inline_history !245 ; 6 uses
  store i64 2, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.r, align 16, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 34
  store i8 3, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.t, align 16, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 66
  store i8 3, ptr %i.u, align 2
  store ptr %i.q, ptr %i.o, align 8, !tbaa !147
  br label %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsE.exit

_ZN4llvh7APFloatC2ERKNS_12fltSemanticsE.exit:     ; preds = %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit.i, %bb.d
  %i.v = tail call noundef i32 @_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %2, i64 %3, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh7APFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.llvh::APFloat", align 8     ; 4 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %6 = alloca %"class.llvh::APFloat", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !35
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not27 = icmp eq ptr %1, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not27, label %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i32 noundef %2, ptr noundef %3)
  br label %bb.p

_ZN4llvh7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit: ; preds = %bb.d
  %i.e = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL24semPPCDoubleDoubleLegacyE, i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %5), !inline_history !241
  %i.g = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f) ; 0 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.h, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %i.k = add i32 %i.j, -64
  %i.l = icmp ult i32 %i.k, -128
  br i1 %i.l, label %bb.g, label %_ZN4llvh7APFloatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.n) #24, !inline_history !148
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.i:                                             ; preds = %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25, !inline_history !149
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20
  %i.r = icmp ugt i32 %i.q, 64
  br i1 %i.r, label %bb.j, label %_ZN4llvh5APIntD2Ev.exit

bb.j:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.s = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN4llvh5APIntD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.s) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh7APFloatD2Ev.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.p

_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit: ; preds = %bb.c
  %i.u = icmp ne ptr %1, @_ZN4llvhL18semPPCDoubleDoubleE
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %1, i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not.i20 = icmp eq ptr %i.z, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.0.i21 = select i1 %.not.i20, ptr %i.ab, ptr %i.a ; 5 uses
  %i.ac = load ptr, ptr %.0.i21, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i21, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i21, i64 16
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i21, i64 18
  %i.ai = load i8, ptr %i.ah, align 2
  %i.aj = and i8 %i.ai, 15
  store ptr @_ZN4llvhL8semBogusE, ptr %.0.i21, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr %i.ac, ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %i.ae, ptr %i.al, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %i.ag, ptr %i.am, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i8 %i.aj, ptr %i.an, align 2
  %i.ao = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ak) ; 0 uses
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %.not.i23 = icmp eq ptr %i.ap, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = add i32 %i.ar, -64
  %i.at = icmp ult i32 %i.as, -128
  br i1 %i.at, label %bb.m, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.au) #24, !inline_history !148
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

bb.o:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ak) #25, !inline_history !149
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

_ZN4llvh6detail9IEEEFloatD2Ev.exit:               ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvh6detail9IEEEFloatD2Ev.exit, %_ZN4llvh5APIntD2Ev.exit, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.d, %bb.e ], [ %i.e, %_ZN4llvh5APIntD2Ev.exit ], [ %i.y, %_ZN4llvh6detail9IEEEFloatD2Ev.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh7APFloat15getAllOnesValueEjb(ptr dead_on_unwind noalias nofree writable sret(%"class.llvh::APFloat") align 8 captures(none) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  %4 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  %8 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  br i1 %2, label %bb.b, label %bb.bb

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 28)
  %i.b = icmp ult i32 %1, 65                      ; 5 uses
  switch i32 %i.a, label %bb.ba [
    i32 1, label %bb.c
    i32 2, label %bb.n
    i32 4, label %bb.y
    i32 5, label %bb.aj
    i32 8, label %bb.aw
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %1, ptr %i.c, align 8, !tbaa !20, !alias.scope !246
  br i1 %i.b, label %_ZN4llvh5APInt15getAllOnesValueEj.exit.thread, label %_ZN4llvh5APInt15getAllOnesValueEj.exit

_ZN4llvh5APInt15getAllOnesValueEj.exit.thread:    ; preds = %bb.c
  %i.d = sub nsw i32 0, %1
  %i.e = and i32 %i.d, 63
  %i.f = zext nneg i32 %i.e to i64
  %i.g = lshr i64 -1, %i.f                        ; 2 uses
  store i64 %i.g, ptr %3, align 8, !tbaa !18, !alias.scope !246
  %i.h = inttoptr i64 %i.g to ptr
  br label %bb.d

_ZN4llvh5APInt15getAllOnesValueEj.exit:           ; preds = %bb.c
  call void @_ZN4llvh5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef -1, i1 noundef zeroext true) #25
  %.pr = load ptr, ptr %3, align 8                ; 2 uses
  %.pre35 = load i32, ptr %i.c, align 8, !tbaa !20
  %.pre35.fr = freeze i32 %.pre35
  %i.i = icmp ult i32 %.pre35.fr, 65              ; 2 uses
  %spec.select = select i1 %i.i, ptr %3, ptr %.pr
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvh5APInt15getAllOnesValueEj.exit, %_ZN4llvh5APInt15getAllOnesValueEj.exit.thread
  %i.j = phi ptr [ %.pr, %_ZN4llvh5APInt15getAllOnesValueEj.exit ], [ %i.h, %_ZN4llvh5APInt15getAllOnesValueEj.exit.thread ] ; 2 uses
  %i.k = phi i1 [ %i.i, %_ZN4llvh5APInt15getAllOnesValueEj.exit ], [ true, %_ZN4llvh5APInt15getAllOnesValueEj.exit.thread ]
  %i.l = phi ptr [ %spec.select, %_ZN4llvh5APInt15getAllOnesValueEj.exit ], [ %3, %_ZN4llvh5APInt15getAllOnesValueEj.exit.thread ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.l, align 8, !tbaa !22   ; 4 uses
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = lshr i32 %i.o, 10
  %i.q = and i32 %i.p, 31                         ; 4 uses
  %i.r = and i32 %i.o, 1023                       ; 3 uses
  store ptr @_ZN4llvhL11semIEEEhalfE, ptr %i.m, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 5 uses
  %i.t = load i8, ptr %i.s, align 2
  %sh.diff.i.i = lshr i64 %i.n, 12
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i8
  %i.u = and i8 %tr.sh.diff.i.i, 8
  %i.v = and i8 %i.t, -9
  %i.w = or disjoint i8 %i.v, %i.u                ; 3 uses
  %i.x = icmp eq i32 %i.q, 0
  %i.y = or i32 %i.q, %i.r
  %or.cond.i.i = icmp eq i32 %i.y, 0
  br i1 %or.cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = and i8 %i.w, -8
  %i.aa = or disjoint i8 %i.z, 3
  store i8 %i.aa, ptr %i.s, align 2
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = icmp eq i32 %i.r, 0
  %i.ac = icmp eq i32 %i.q, 31                    ; 2 uses
  %or.cond3.i.i = and i1 %i.ab, %i.ac
  br i1 %or.cond3.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = and i8 %i.w, -8
  store i8 %i.ad, ptr %i.s, align 2
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp ne i32 %i.r, 0
  %or.cond5.i.i = and i1 %i.ae, %i.ac
  %i.af = and i8 %i.w, -8                         ; 2 uses
  br i1 %or.cond5.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = or disjoint i8 %i.af, 1
  store i8 %i.ag, ptr %i.s, align 2
  %i.ah = and i64 %i.n, 1023
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !22
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = or disjoint i8 %i.af, 2
  store i8 %i.aj, ptr %i.s, align 2
  %i.ak = trunc nuw nsw i32 %i.q to i16
  %i.al = add nsw i16 %i.ak, -15
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i16 %i.al, ptr %i.am, align 8, !tbaa !19
  %i.an = and i64 %i.n, 1023                      ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !22
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i16 -14, ptr %i.am, align 8, !tbaa !19
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit

bb.l:                                             ; preds = %bb.j
  %i.ap = or disjoint i64 %i.an, 1024
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !22
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit

_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %bb.l
  %i.aq = icmp eq ptr %i.j, null
  %or.cond = select i1 %i.k, i1 true, i1 %i.aq
  br i1 %or.cond, label %_ZN4llvh5APIntD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.j) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.bf

bb.n:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %1, ptr %i.ar, align 8, !tbaa !20, !alias.scope !249
  br i1 %i.b, label %_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread, label %_ZN4llvh5APInt15getAllOnesValueEj.exit9

_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread:   ; preds = %bb.n
  %i.as = sub nsw i32 0, %1
  %i.at = and i32 %i.as, 63
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 -1, %i.au                      ; 2 uses
  store i64 %i.av, ptr %4, align 8, !tbaa !18, !alias.scope !249
  %i.aw = inttoptr i64 %i.av to ptr
  br label %bb.o

_ZN4llvh5APInt15getAllOnesValueEj.exit9:          ; preds = %bb.n
  call void @_ZN4llvh5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %4, i64 noundef -1, i1 noundef zeroext true) #25
  %.pr27 = load ptr, ptr %4, align 8              ; 2 uses
  %.pre34 = load i32, ptr %i.ar, align 8, !tbaa !20
  %.pre34.fr = freeze i32 %.pre34
  %i.ax = icmp ult i32 %.pre34.fr, 65             ; 2 uses
  %spec.select59 = select i1 %i.ax, ptr %4, ptr %.pr27
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvh5APInt15getAllOnesValueEj.exit9, %_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread
  %i.ay = phi ptr [ %.pr27, %_ZN4llvh5APInt15getAllOnesValueEj.exit9 ], [ %i.aw, %_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread ] ; 2 uses
  %i.az = phi i1 [ %i.ax, %_ZN4llvh5APInt15getAllOnesValueEj.exit9 ], [ true, %_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread ]
  %i.ba = phi ptr [ %spec.select59, %_ZN4llvh5APInt15getAllOnesValueEj.exit9 ], [ %4, %_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !22 ; 3 uses
  %i.bd = trunc i64 %i.bc to i32                  ; 3 uses
  %i.be = lshr i32 %i.bd, 23
  %i.bf = and i32 %i.be, 255                      ; 4 uses
  %i.bg = and i32 %i.bd, 8388607                  ; 3 uses
  store ptr @_ZN4llvhL13semIEEEsingleE, ptr %i.bb, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 5 uses
  %i.bi = load i8, ptr %i.bh, align 2
  %sh.diff.i14.i = lshr i32 %i.bd, 28
  %tr.sh.diff.i15.i = trunc nuw nsw i32 %sh.diff.i14.i to i8
  %i.bj = and i8 %tr.sh.diff.i15.i, 8
  %i.bk = and i8 %i.bi, -9
  %i.bl = or disjoint i8 %i.bj, %i.bk             ; 3 uses
  %i.bm = icmp eq i32 %i.bf, 0
  %i.bn = or i32 %i.bf, %i.bg
  %or.cond.i16.i = icmp eq i32 %i.bn, 0
  br i1 %or.cond.i16.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bo = and i8 %i.bl, -8
  %i.bp = or disjoint i8 %i.bo, 3
  store i8 %i.bp, ptr %i.bh, align 2
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit23

bb.q:                                             ; preds = %bb.o
  %i.bq = icmp eq i32 %i.bg, 0
  %i.br = icmp eq i32 %i.bf, 255                  ; 2 uses
  %or.cond3.i17.i = and i1 %i.bq, %i.br
  br i1 %or.cond3.i17.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bs = and i8 %i.bl, -8
  store i8 %i.bs, ptr %i.bh, align 2
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit23

bb.s:                                             ; preds = %bb.q
  %i.bt = icmp ne i32 %i.bg, 0
  %or.cond5.i18.i = and i1 %i.bt, %i.br
  %i.bu = and i8 %i.bl, -8                        ; 2 uses
  br i1 %or.cond5.i18.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = or disjoint i8 %i.bu, 1
  store i8 %i.bv, ptr %i.bh, align 2
  %i.bw = and i64 %i.bc, 8388607
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !22
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit23

bb.u:                                             ; preds = %bb.s
  %i.by = or disjoint i8 %i.bu, 2
  store i8 %i.by, ptr %i.bh, align 2
  %i.bz = trunc nuw nsw i32 %i.bf to i16
  %i.ca = add nsw i16 %i.bz, -127
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i16 %i.ca, ptr %i.cb, align 8, !tbaa !19
  %i.cc = and i64 %i.bc, 8388607                  ; 2 uses
end_hunk_0
