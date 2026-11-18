Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/APFloat?download=true
inline.NumInlined: 1816
inline.NumDeleted: 298
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvh7APFloat7StorageC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE:bb.a
  %i.r = or disjoint i8 %i.q, %i.p
  store i8 %i.r, ptr %i.k, align 2
  store ptr @_ZN4llvhL8semBogusE, ptr %1, align 8, !tbaa !54
  br label %bb.d

_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit: ; preds = %bb.a
  %i.s = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i16, ptr %i.v, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.y = load i8, ptr %i.x, align 2
  store ptr @_ZN4llvhL8semBogusE, ptr %1, align 8, !tbaa !54
  store ptr @_ZN4llvhL18semPPCDoubleDoubleE, ptr %0, align 8, !tbaa !89
  %i.z = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23 ; 8 uses
  store i64 2, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.not.i.i.i = icmp eq ptr %i.s, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i.i.i, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit
  %i.ab = and i8 %i.y, 15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i16 %i.w, ptr %i.ac, align 16, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 34
  store i8 %i.ab, ptr %i.ad, align 2
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

_ZN4llvh6detail9IEEEFloatD2Ev.exit:               ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit, %bb.c
  store ptr %i.s, ptr %i.aa, align 16, !tbaa !90
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %i.u, ptr %i.ae, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 66
  store i8 3, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.ag, align 16, !tbaa !90
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !91
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvh6detail9IEEEFloatD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh7APFloatC2ERKNS_12fltSemanticsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) initializes((8, 16)) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr %2, i64 %3) unnamed_addr #2 align 2 !guid !450 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %1, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !46
  %i.d = add i32 %i.c, 64                         ; 2 uses
  %i.e = icmp ugt i32 %i.d, 127
  br i1 %i.e, label %bb.c, label %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %i.d, 3
  %i.g = and i32 %i.f, 536870904
  %i.h = zext nneg i32 %i.g to i64
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #23, !inline_history !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !55
  br label %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit.i

_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit.i: ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.l = load i8, ptr %i.k, align 2
  %i.m = and i8 %i.l, -16
  %i.n = or disjoint i8 %i.m, 3
  store i8 %i.n, ptr %i.k, align 2
  br label %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsE.exit

bb.d:                                             ; preds = %bb.a
  store ptr @_ZN4llvhL18semPPCDoubleDoubleE, ptr %i.a, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23, !inline_history !449 ; 6 uses
  store i64 2, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.r, align 16, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 34
  store i8 3, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.t, align 16, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 66
  store i8 3, ptr %i.u, align 2
  store ptr %i.q, ptr %i.o, align 8, !tbaa !91
  br label %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsE.exit

_ZN4llvh7APFloatC2ERKNS_12fltSemanticsE.exit:     ; preds = %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit.i, %bb.d
  %i.v = tail call noundef i32 @_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %2, i64 %3, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh7APFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3) local_unnamed_addr #2 align 2 !guid !451 {
bb.a:
  %4 = alloca %"class.llvh::APFloat", align 8     ; 4 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %6 = alloca %"class.llvh::APFloat", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !68
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
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %5), !inline_history !16
  %i.g = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f) ; 0 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !55   ; 2 uses
  %.not.i = icmp eq ptr %i.h, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !46
  %i.k = add i32 %i.j, -64
  %i.l = icmp ult i32 %i.k, -128
  br i1 %i.l, label %bb.g, label %_ZN4llvh7APFloatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.n) #24, !inline_history !92
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.i:                                             ; preds = %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25, !inline_history !5
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !58
  %i.r = icmp ugt i32 %i.q, 64
  br i1 %i.r, label %bb.j, label %_ZN4llvh5APIntD2Ev.exit

bb.j:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.s = load ptr, ptr %5, align 8, !tbaa !55     ; 2 uses
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
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !55
  %.not.i20 = icmp eq ptr %i.z, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.0.i21 = select i1 %.not.i20, ptr %i.ab, ptr %i.a ; 5 uses
  %i.ac = load ptr, ptr %.0.i21, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i21, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i21, i64 16
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i21, i64 18
  %i.ai = load i8, ptr %i.ah, align 2
  store ptr @_ZN4llvhL8semBogusE, ptr %.0.i21, align 8, !tbaa !54
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %8 = and i8 %i.ai, 15
  store ptr %i.ac, ptr %7, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %i.ae, ptr %i.aj, align 8, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %i.ag, ptr %i.ak, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 2 uses
  %i.am = load i8, ptr %i.al, align 2
  %i.an = and i8 %i.am, -16
  %i.ao = or disjoint i8 %i.an, %8
  store i8 %i.ao, ptr %i.al, align 2
  %i.ap = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %7) ; 0 uses
  %i.aq = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %.not.i23 = icmp eq ptr %i.aq, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !46
  %i.at = add i32 %i.as, -64
  %i.au = icmp ult i32 %i.at, -128
  br i1 %i.au, label %bb.m, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %i.aj, align 8, !tbaa !55 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.av) #24, !inline_history !92
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

bb.o:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #25, !inline_history !5
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

_ZN4llvh6detail9IEEEFloatD2Ev.exit:               ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvh6detail9IEEEFloatD2Ev.exit, %_ZN4llvh5APIntD2Ev.exit, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.d, %bb.e ], [ %i.e, %_ZN4llvh5APIntD2Ev.exit ], [ %i.y, %_ZN4llvh6detail9IEEEFloatD2Ev.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh7APFloat15getAllOnesValueEjb(ptr dead_on_unwind noalias nofree writable sret(%"class.llvh::APFloat") align 8 captures(none) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 !guid !464 {
bb.a:
  %3 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  %4 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  %8 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  br i1 %2, label %bb.b, label %bb.as

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 28)
  %i.b = icmp ult i32 %1, 65                      ; 5 uses
  switch i32 %i.a, label %bb.ar [
    i32 1, label %bb.c
    i32 2, label %bb.n
    i32 4, label %bb.y
    i32 5, label %bb.aj
    i32 8, label %bb.an
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %1, ptr %i.c, align 8, !tbaa !58, !alias.scope !465
  br i1 %i.b, label %_ZN4llvh5APInt15getAllOnesValueEj.exit.thread, label %_ZN4llvh5APInt15getAllOnesValueEj.exit

_ZN4llvh5APInt15getAllOnesValueEj.exit.thread:    ; preds = %bb.c
  %i.d = sub nsw i32 0, %1
  %i.e = and i32 %i.d, 63
  %i.f = zext nneg i32 %i.e to i64
  %i.g = lshr i64 -1, %i.f                        ; 2 uses
  store i64 %i.g, ptr %3, align 8, !tbaa !55, !alias.scope !465
  %i.h = inttoptr i64 %i.g to ptr
  br label %bb.d

_ZN4llvh5APInt15getAllOnesValueEj.exit:           ; preds = %bb.c
  call void @_ZN4llvh5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef -1, i1 noundef zeroext true) #25
  %.pr = load ptr, ptr %3, align 8                ; 2 uses
  %.pre30 = load i32, ptr %i.c, align 8, !tbaa !58
  %.pre30.fr = freeze i32 %.pre30
  %i.i = icmp ult i32 %.pre30.fr, 65              ; 2 uses
  %spec.select = select i1 %i.i, ptr %3, ptr %.pr
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvh5APInt15getAllOnesValueEj.exit, %_ZN4llvh5APInt15getAllOnesValueEj.exit.thread
  %i.j = phi ptr [ %.pr, %_ZN4llvh5APInt15getAllOnesValueEj.exit ], [ %i.h, %_ZN4llvh5APInt15getAllOnesValueEj.exit.thread ] ; 2 uses
  %i.k = phi i1 [ %i.i, %_ZN4llvh5APInt15getAllOnesValueEj.exit ], [ true, %_ZN4llvh5APInt15getAllOnesValueEj.exit.thread ]
  %i.l = phi ptr [ %spec.select, %_ZN4llvh5APInt15getAllOnesValueEj.exit ], [ %3, %_ZN4llvh5APInt15getAllOnesValueEj.exit.thread ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.l, align 8, !tbaa !60   ; 4 uses
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = lshr i32 %i.o, 10
  %i.q = and i32 %i.p, 31                         ; 4 uses
  %i.r = and i32 %i.o, 1023                       ; 2 uses
  store ptr @_ZN4llvhL11semIEEEhalfE, ptr %i.m, align 8, !tbaa !54
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
  %i.ab = icmp eq i32 %i.r, 0                     ; 2 uses
  %i.ac = icmp eq i32 %i.q, 31                    ; 2 uses
  %or.cond3.i.i = and i1 %i.ab, %i.ac
  br i1 %or.cond3.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = and i8 %i.w, -8
  store i8 %i.ad, ptr %i.s, align 2
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit

bb.h:                                             ; preds = %bb.f
  %.not.i.i = xor i1 %i.ab, true
  %or.cond5.i.i = and i1 %i.ac, %.not.i.i
  %i.ae = and i8 %i.w, -8                         ; 2 uses
  br i1 %or.cond5.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = or disjoint i8 %i.ae, 1
  store i8 %i.af, ptr %i.s, align 2
  %i.ag = and i64 %i.n, 1023
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !60
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = or disjoint i8 %i.ae, 2
  store i8 %i.ai, ptr %i.s, align 2
  %i.aj = trunc nuw nsw i32 %i.q to i16
  %i.ak = add nsw i16 %i.aj, -15
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i16 %i.ak, ptr %i.al, align 8, !tbaa !56
  %i.am = and i64 %i.n, 1023                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.am, ptr %i.an, align 8, !tbaa !60
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i16 -14, ptr %i.al, align 8, !tbaa !56
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit

bb.l:                                             ; preds = %bb.j
  %i.ao = or disjoint i64 %i.am, 1024
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !60
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit

_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %bb.l
  %i.ap = icmp eq ptr %i.j, null
  %or.cond = select i1 %i.k, i1 true, i1 %i.ap
  br i1 %or.cond, label %_ZN4llvh5APIntD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.j) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.aw

bb.n:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %1, ptr %i.aq, align 8, !tbaa !58, !alias.scope !466
  br i1 %i.b, label %_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread, label %_ZN4llvh5APInt15getAllOnesValueEj.exit9

_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread:   ; preds = %bb.n
  %i.ar = sub nsw i32 0, %1
  %i.as = and i32 %i.ar, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 -1, %i.at                      ; 2 uses
  store i64 %i.au, ptr %4, align 8, !tbaa !55, !alias.scope !466
  %i.av = inttoptr i64 %i.au to ptr
  br label %bb.o

_ZN4llvh5APInt15getAllOnesValueEj.exit9:          ; preds = %bb.n
  call void @_ZN4llvh5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %4, i64 noundef -1, i1 noundef zeroext true) #25
  %.pr25 = load ptr, ptr %4, align 8              ; 2 uses
  %.pre29 = load i32, ptr %i.aq, align 8, !tbaa !58
  %.pre29.fr = freeze i32 %.pre29
  %i.aw = icmp ult i32 %.pre29.fr, 65             ; 2 uses
  %spec.select42 = select i1 %i.aw, ptr %4, ptr %.pr25
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvh5APInt15getAllOnesValueEj.exit9, %_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread
  %i.ax = phi ptr [ %.pr25, %_ZN4llvh5APInt15getAllOnesValueEj.exit9 ], [ %i.av, %_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread ] ; 2 uses
  %i.ay = phi i1 [ %i.aw, %_ZN4llvh5APInt15getAllOnesValueEj.exit9 ], [ true, %_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread ]
  %i.az = phi ptr [ %spec.select42, %_ZN4llvh5APInt15getAllOnesValueEj.exit9 ], [ %4, %_ZN4llvh5APInt15getAllOnesValueEj.exit9.thread ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !60 ; 3 uses
  %i.bc = trunc i64 %i.bb to i32                  ; 3 uses
  %i.bd = lshr i32 %i.bc, 23
  %i.be = and i32 %i.bd, 255                      ; 4 uses
  %i.bf = and i32 %i.bc, 8388607                  ; 2 uses
  store ptr @_ZN4llvhL13semIEEEsingleE, ptr %i.ba, align 8, !tbaa !54
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 5 uses
  %i.bh = load i8, ptr %i.bg, align 2
  %sh.diff.i14.i = lshr i32 %i.bc, 28
  %tr.sh.diff.i15.i = trunc nuw nsw i32 %sh.diff.i14.i to i8
  %i.bi = and i8 %tr.sh.diff.i15.i, 8
  %i.bj = and i8 %i.bh, -9
  %i.bk = or disjoint i8 %i.bi, %i.bj             ; 3 uses
  %i.bl = icmp eq i32 %i.be, 0
  %i.bm = or i32 %i.be, %i.bf
  %or.cond.i16.i = icmp eq i32 %i.bm, 0
  br i1 %or.cond.i16.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bn = and i8 %i.bk, -8
  %i.bo = or disjoint i8 %i.bn, 3
  store i8 %i.bo, ptr %i.bg, align 2
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit23

bb.q:                                             ; preds = %bb.o
  %i.bp = icmp eq i32 %i.bf, 0                    ; 2 uses
end_hunk_0
