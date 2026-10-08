Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.08?download=true
inline.NumInlined: 1575
inline.NumDeleted: 823
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtB20_7ArgSort5asortNtNtCsdsILkMb8ZHY_4half8binary163f16Es_0s_0E0EB22_:bb.a
  br i1 %or.cond.i46, label %.thread40, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not.i.i.i47 = icmp sgt i16 %.val.i.i44, -1
  %.not1.i.i.i48 = icmp sgt i16 %.val6.i.i45.fr, -1 ; 2 uses
  br i1 %.not.i.i.i47, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortNtNtCsdsILkMb8ZHY_4half8binary163f16Es_0s_0E0BR_.exit50, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %.not1.i.i.i48, label %.split35, label %.split37

.split35:                                         ; preds = %bb.am
  %i.di = or i16 %.val6.i.i45.fr, %i.de
  %.not46 = icmp eq i16 %i.di, 0
  br i1 %.not46, label %.thread40, label %.split42

.split37:                                         ; preds = %bb.am
  %i.dj = icmp samesign ult i16 %.val6.i.i45.fr, %.val.i.i44
  br i1 %i.dj, label %.split42, label %.thread40

bb.an:                                            ; preds = %bb.ai
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.da, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortNtNtCsdsILkMb8ZHY_4half8binary163f16Es_0s_0E0BR_.exit50: ; preds = %bb.al
  %i.dk = icmp ult i16 %.val.i.i44, %.val6.i.i45.fr
  %spec.select.i49 = and i1 %.not1.i.i.i48, %i.dk
  br i1 %spec.select.i49, label %.split42, label %.thread40

.split42:                                         ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortNtNtCsdsILkMb8ZHY_4half8binary163f16Es_0s_0E0BR_.exit50, %.split35, %.split37
  br label %.thread40

.thread40:                                        ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortNtNtCsdsILkMb8ZHY_4half8binary163f16Es_0s_0E0BR_.exit50, %.split35, %.split37, %bb.ak, %.split42
  %i.dl = phi ptr [ %i.cx, %.split42 ], [ %i.cu, %bb.ak ], [ %i.cu, %.split37 ], [ %i.cu, %.split35 ], [ %i.cu, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortNtNtCsdsILkMb8ZHY_4half8binary163f16Es_0s_0E0BR_.exit50 ]
  %i.dm = phi ptr [ %i.cu, %.split42 ], [ %i.cx, %bb.ak ], [ %i.cx, %.split37 ], [ %i.cx, %.split35 ], [ %i.cx, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortNtNtCsdsILkMb8ZHY_4half8binary163f16Es_0s_0E0BR_.exit50 ]
  %i.dn = load i32, ptr %i.cv, align 4
  store i32 %i.dn, ptr %1, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dp = load i32, ptr %i.dl, align 4
  store i32 %i.dp, ptr %i.do, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dr = load i32, ptr %i.dm, align 4
  store i32 %i.dr, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dt = load i32, ptr %i.cw, align 4
  store i32 %i.dt, ptr %i.ds, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtB20_7ArgSort5asortdE0s_0E0EB22_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val13 = load i32, ptr %i.a, align 4, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8        ; 11 uses
  %i.b = getelementptr i8, ptr %.0.val, i64 8
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !10 ; 20 uses
  %i.c = zext i32 %.val13 to i64                  ; 3 uses
  %i.d = icmp ugt i64 %.val1.i, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val14 = load i32, ptr %0, align 4
  %i.e = zext i32 %.val14 to i64                  ; 3 uses
  %i.f = icmp ugt i64 %.val1.i, %i.e
  br i1 %i.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.c
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.e
  %.val.i.i = load double, ptr %i.g, align 8, !noundef !10
  %.val6.i.i = load double, ptr %i.h, align 8, !noundef !10
  %i.i = fcmp olt double %.val.i.i, %.val6.i.i    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.j, align 4, !noundef !10
  %i.k = zext i32 %.val10 to i64                  ; 3 uses
  %i.l = icmp ugt i64 %.val1.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load i32, ptr %i.m, align 4
  %i.n = zext i32 %.val11 to i64                  ; 3 uses
  %i.o = icmp ugt i64 %.val1.i, %i.n
  br i1 %i.o, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit19, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit19: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.k
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.n
  %.val.i.i17 = load double, ptr %i.p, align 8, !noundef !10
  %.val6.i.i18 = load double, ptr %i.q, align 8, !noundef !10
  %i.r = fcmp olt double %.val.i.i17, %.val6.i.i18 ; 2 uses
  %i.s = zext i1 %i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = xor i1 %i.i, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %.val7 = load i32, ptr %i.y, align 4, !noundef !10 ; 2 uses
  %i.ab = zext i32 %.val7 to i64                  ; 3 uses
  %i.ac = icmp ugt i64 %.val1.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit19
  %.val8 = load i32, ptr %i.t, align 4            ; 2 uses
  %i.ad = zext i32 %.val8 to i64                  ; 3 uses
  %i.ae = icmp ugt i64 %.val1.i, %i.ad
  br i1 %i.ae, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit24, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit19
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit24: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ab
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ad
  %.val.i.i22 = load double, ptr %i.af, align 8, !noundef !10
  %.val6.i.i23 = load double, ptr %i.ag, align 8, !noundef !10
  %i.ah = fcmp olt double %.val.i.i22, %.val6.i.i23 ; 3 uses
  %.val4 = load i32, ptr %i.aa, align 4, !noundef !10
  %i.ai = zext i32 %.val4 to i64                  ; 3 uses
  %i.aj = icmp ugt i64 %.val1.i, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit24
  %.val5 = load i32, ptr %i.w, align 4
  %i.ak = zext i32 %.val5 to i64                  ; 3 uses
  %i.al = icmp ugt i64 %.val1.i, %i.ak
  br i1 %i.al, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit29, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit24
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit29: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ai
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ak
  %.val.i.i27 = load double, ptr %i.am, align 8, !noundef !10
  %.val6.i.i28 = load double, ptr %i.an, align 8, !noundef !10
  %i.ao = fcmp olt double %.val.i.i27, %.val6.i.i28 ; 3 uses
  %i.ap = select i1 %i.ao, ptr %i.y, ptr %i.w, !unpredictable !10
  %i.aq = select i1 %i.ah, ptr %i.t, ptr %i.ap, !unpredictable !10 ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.y, !unpredictable !10
  %i.as = select i1 %i.ao, ptr %i.aa, ptr %i.ar, !unpredictable !10 ; 3 uses
  %.val1 = load i32, ptr %i.as, align 4, !noundef !10
  %i.at = zext i32 %.val1 to i64                  ; 3 uses
  %i.au = icmp ugt i64 %.val1.i, %i.at
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit29
  %.val2 = load i32, ptr %i.aq, align 4
  %i.av = zext i32 %.val2 to i64                  ; 3 uses
  %i.aw = icmp ugt i64 %.val1.i, %i.av
  br i1 %i.aw, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit34, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit29
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdE0s_0E0BR_.exit34: ; preds = %bb.n
  %i.ax = select i1 %i.ao, ptr %i.w, ptr %i.aa, !unpredictable !10
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.at
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.av
  %.val.i.i32 = load double, ptr %i.ay, align 8, !noundef !10
  %.val6.i.i33 = load double, ptr %i.az, align 8, !noundef !10
  %i.ba = fcmp olt double %.val.i.i32, %.val6.i.i33 ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.as, ptr %i.aq, !unpredictable !10
  %i.bc = select i1 %i.ba, ptr %i.aq, ptr %i.as, !unpredictable !10
  %i.bd = select i1 %i.ah, i32 %.val7, i32 %.val8
  store i32 %i.bd, ptr %1, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.bb, align 4
  store i32 %i.bf, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bc, align 4
  store i32 %i.bh, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.ax, align 4
  store i32 %i.bj, ptr %i.bi, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtB20_7ArgSort5asortdEs_0s_0E0EB22_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val14 = load i32, ptr %0, align 4, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8        ; 11 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !noundef !10 ; 20 uses
  %i.b = zext i32 %.val14 to i64                  ; 3 uses
  %i.c = icmp ugt i64 %.val1.i, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val13 = load i32, ptr %i.d, align 4
  %i.e = zext i32 %.val13 to i64                  ; 3 uses
  %i.f = icmp ugt i64 %.val1.i, %i.e
  br i1 %i.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.b
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.e
  %.val.i.i = load double, ptr %i.g, align 8, !noundef !10
  %.val6.i.i = load double, ptr %i.h, align 8, !noundef !10
  %i.i = fcmp olt double %.val.i.i, %.val6.i.i    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load i32, ptr %i.j, align 4, !noundef !10
  %i.k = zext i32 %.val11 to i64                  ; 3 uses
  %i.l = icmp ugt i64 %.val1.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.m, align 4
  %i.n = zext i32 %.val10 to i64                  ; 3 uses
  %i.o = icmp ugt i64 %.val1.i, %i.n
  br i1 %i.o, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit19, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit19: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.k
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.n
  %.val.i.i17 = load double, ptr %i.p, align 8, !noundef !10
  %.val6.i.i18 = load double, ptr %i.q, align 8, !noundef !10
  %i.r = fcmp olt double %.val.i.i17, %.val6.i.i18 ; 2 uses
  %i.s = zext i1 %i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = xor i1 %i.i, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %.val8 = load i32, ptr %i.t, align 4, !noundef !10 ; 2 uses
  %i.ab = zext i32 %.val8 to i64                  ; 3 uses
  %i.ac = icmp ugt i64 %.val1.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit19
  %.val7 = load i32, ptr %i.y, align 4            ; 2 uses
  %i.ad = zext i32 %.val7 to i64                  ; 3 uses
  %i.ae = icmp ugt i64 %.val1.i, %i.ad
  br i1 %i.ae, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit24, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit19
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit24: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ab
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ad
  %.val.i.i22 = load double, ptr %i.af, align 8, !noundef !10
  %.val6.i.i23 = load double, ptr %i.ag, align 8, !noundef !10
  %i.ah = fcmp olt double %.val.i.i22, %.val6.i.i23 ; 3 uses
  %.val5 = load i32, ptr %i.w, align 4, !noundef !10
  %i.ai = zext i32 %.val5 to i64                  ; 3 uses
  %i.aj = icmp ugt i64 %.val1.i, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit24
  %.val4 = load i32, ptr %i.aa, align 4
  %i.ak = zext i32 %.val4 to i64                  ; 3 uses
  %i.al = icmp ugt i64 %.val1.i, %i.ak
  br i1 %i.al, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit29, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit24
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit29: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ai
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ak
  %.val.i.i27 = load double, ptr %i.am, align 8, !noundef !10
  %.val6.i.i28 = load double, ptr %i.an, align 8, !noundef !10
  %i.ao = fcmp olt double %.val.i.i27, %.val6.i.i28 ; 3 uses
  %i.ap = select i1 %i.ao, ptr %i.y, ptr %i.w, !unpredictable !10
  %i.aq = select i1 %i.ah, ptr %i.t, ptr %i.ap, !unpredictable !10 ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.y, !unpredictable !10
  %i.as = select i1 %i.ao, ptr %i.aa, ptr %i.ar, !unpredictable !10 ; 3 uses
  %.val2 = load i32, ptr %i.aq, align 4, !noundef !10
  %i.at = zext i32 %.val2 to i64                  ; 3 uses
  %i.au = icmp ugt i64 %.val1.i, %i.at
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit29
  %.val1 = load i32, ptr %i.as, align 4
  %i.av = zext i32 %.val1 to i64                  ; 3 uses
  %i.aw = icmp ugt i64 %.val1.i, %i.av
  br i1 %i.aw, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit34, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit29
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortdEs_0s_0E0BR_.exit34: ; preds = %bb.n
  %i.ax = select i1 %i.ao, ptr %i.w, ptr %i.aa, !unpredictable !10
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.at
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.av
  %.val.i.i32 = load double, ptr %i.ay, align 8, !noundef !10
  %.val6.i.i33 = load double, ptr %i.az, align 8, !noundef !10
  %i.ba = fcmp olt double %.val.i.i32, %.val6.i.i33 ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.as, ptr %i.aq, !unpredictable !10
  %i.bc = select i1 %i.ba, ptr %i.aq, ptr %i.as, !unpredictable !10
  %i.bd = select i1 %i.ah, i32 %.val7, i32 %.val8
  store i32 %i.bd, ptr %1, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.bb, align 4
  store i32 %i.bf, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bc, align 4
  store i32 %i.bh, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.ax, align 4
  store i32 %i.bj, ptr %i.bi, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtB20_7ArgSort5asortfE0s_0E0EB22_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val13 = load i32, ptr %i.a, align 4, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8        ; 11 uses
  %i.b = getelementptr i8, ptr %.0.val, i64 8
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !10 ; 20 uses
  %i.c = zext i32 %.val13 to i64                  ; 3 uses
  %i.d = icmp ugt i64 %.val1.i, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val14 = load i32, ptr %0, align 4
  %i.e = zext i32 %.val14 to i64                  ; 3 uses
  %i.f = icmp ugt i64 %.val1.i, %i.e
  br i1 %i.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.c
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.e
  %.val.i.i = load float, ptr %i.g, align 4, !noundef !10
  %.val6.i.i = load float, ptr %i.h, align 4, !noundef !10
  %i.i = fcmp olt float %.val.i.i, %.val6.i.i     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.j, align 4, !noundef !10
  %i.k = zext i32 %.val10 to i64                  ; 3 uses
  %i.l = icmp ugt i64 %.val1.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load i32, ptr %i.m, align 4
  %i.n = zext i32 %.val11 to i64                  ; 3 uses
  %i.o = icmp ugt i64 %.val1.i, %i.n
  br i1 %i.o, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit19, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit19: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.k
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.n
  %.val.i.i17 = load float, ptr %i.p, align 4, !noundef !10
  %.val6.i.i18 = load float, ptr %i.q, align 4, !noundef !10
  %i.r = fcmp olt float %.val.i.i17, %.val6.i.i18 ; 2 uses
  %i.s = zext i1 %i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = xor i1 %i.i, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %.val7 = load i32, ptr %i.y, align 4, !noundef !10 ; 2 uses
  %i.ab = zext i32 %.val7 to i64                  ; 3 uses
  %i.ac = icmp ugt i64 %.val1.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit19
  %.val8 = load i32, ptr %i.t, align 4            ; 2 uses
  %i.ad = zext i32 %.val8 to i64                  ; 3 uses
  %i.ae = icmp ugt i64 %.val1.i, %i.ad
  br i1 %i.ae, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit24, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit19
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit24: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ab
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ad
  %.val.i.i22 = load float, ptr %i.af, align 4, !noundef !10
  %.val6.i.i23 = load float, ptr %i.ag, align 4, !noundef !10
  %i.ah = fcmp olt float %.val.i.i22, %.val6.i.i23 ; 3 uses
  %.val4 = load i32, ptr %i.aa, align 4, !noundef !10
  %i.ai = zext i32 %.val4 to i64                  ; 3 uses
  %i.aj = icmp ugt i64 %.val1.i, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit24
  %.val5 = load i32, ptr %i.w, align 4
  %i.ak = zext i32 %.val5 to i64                  ; 3 uses
  %i.al = icmp ugt i64 %.val1.i, %i.ak
  br i1 %i.al, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit29, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit24
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit29: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ai
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ak
  %.val.i.i27 = load float, ptr %i.am, align 4, !noundef !10
  %.val6.i.i28 = load float, ptr %i.an, align 4, !noundef !10
  %i.ao = fcmp olt float %.val.i.i27, %.val6.i.i28 ; 3 uses
  %i.ap = select i1 %i.ao, ptr %i.y, ptr %i.w, !unpredictable !10
  %i.aq = select i1 %i.ah, ptr %i.t, ptr %i.ap, !unpredictable !10 ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.y, !unpredictable !10
  %i.as = select i1 %i.ao, ptr %i.aa, ptr %i.ar, !unpredictable !10 ; 3 uses
  %.val1 = load i32, ptr %i.as, align 4, !noundef !10
  %i.at = zext i32 %.val1 to i64                  ; 3 uses
  %i.au = icmp ugt i64 %.val1.i, %i.at
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit29
  %.val2 = load i32, ptr %i.aq, align 4
  %i.av = zext i32 %.val2 to i64                  ; 3 uses
  %i.aw = icmp ugt i64 %.val1.i, %i.av
  br i1 %i.aw, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit34, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit29
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfE0s_0E0BR_.exit34: ; preds = %bb.n
  %i.ax = select i1 %i.ao, ptr %i.w, ptr %i.aa, !unpredictable !10
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.at
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.av
  %.val.i.i32 = load float, ptr %i.ay, align 4, !noundef !10
  %.val6.i.i33 = load float, ptr %i.az, align 4, !noundef !10
  %i.ba = fcmp olt float %.val.i.i32, %.val6.i.i33 ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.as, ptr %i.aq, !unpredictable !10
  %i.bc = select i1 %i.ba, ptr %i.aq, ptr %i.as, !unpredictable !10
  %i.bd = select i1 %i.ah, i32 %.val7, i32 %.val8
  store i32 %i.bd, ptr %1, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.bb, align 4
  store i32 %i.bf, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bc, align 4
  store i32 %i.bh, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.ax, align 4
  store i32 %i.bj, ptr %i.bi, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtB20_7ArgSort5asortfEs_0s_0E0EB22_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val14 = load i32, ptr %0, align 4, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8        ; 11 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !noundef !10 ; 20 uses
  %i.b = zext i32 %.val14 to i64                  ; 3 uses
  %i.c = icmp ugt i64 %.val1.i, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val13 = load i32, ptr %i.d, align 4
  %i.e = zext i32 %.val13 to i64                  ; 3 uses
  %i.f = icmp ugt i64 %.val1.i, %i.e
  br i1 %i.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.e
  %.val.i.i = load float, ptr %i.g, align 4, !noundef !10
  %.val6.i.i = load float, ptr %i.h, align 4, !noundef !10
  %i.i = fcmp olt float %.val.i.i, %.val6.i.i     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load i32, ptr %i.j, align 4, !noundef !10
  %i.k = zext i32 %.val11 to i64                  ; 3 uses
  %i.l = icmp ugt i64 %.val1.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.m, align 4
  %i.n = zext i32 %.val10 to i64                  ; 3 uses
  %i.o = icmp ugt i64 %.val1.i, %i.n
  br i1 %i.o, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit19, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit19: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.k
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.n
  %.val.i.i17 = load float, ptr %i.p, align 4, !noundef !10
  %.val6.i.i18 = load float, ptr %i.q, align 4, !noundef !10
  %i.r = fcmp olt float %.val.i.i17, %.val6.i.i18 ; 2 uses
  %i.s = zext i1 %i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = xor i1 %i.i, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %.val8 = load i32, ptr %i.t, align 4, !noundef !10 ; 2 uses
  %i.ab = zext i32 %.val8 to i64                  ; 3 uses
  %i.ac = icmp ugt i64 %.val1.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit19
  %.val7 = load i32, ptr %i.y, align 4            ; 2 uses
  %i.ad = zext i32 %.val7 to i64                  ; 3 uses
  %i.ae = icmp ugt i64 %.val1.i, %i.ad
  br i1 %i.ae, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit24, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit19
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit24: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ab
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ad
  %.val.i.i22 = load float, ptr %i.af, align 4, !noundef !10
  %.val6.i.i23 = load float, ptr %i.ag, align 4, !noundef !10
  %i.ah = fcmp olt float %.val.i.i22, %.val6.i.i23 ; 3 uses
  %.val5 = load i32, ptr %i.w, align 4, !noundef !10
  %i.ai = zext i32 %.val5 to i64                  ; 3 uses
  %i.aj = icmp ugt i64 %.val1.i, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit24
  %.val4 = load i32, ptr %i.aa, align 4
  %i.ak = zext i32 %.val4 to i64                  ; 3 uses
  %i.al = icmp ugt i64 %.val1.i, %i.ak
  br i1 %i.al, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit29, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit24
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit29: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ai
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ak
  %.val.i.i27 = load float, ptr %i.am, align 4, !noundef !10
  %.val6.i.i28 = load float, ptr %i.an, align 4, !noundef !10
  %i.ao = fcmp olt float %.val.i.i27, %.val6.i.i28 ; 3 uses
  %i.ap = select i1 %i.ao, ptr %i.y, ptr %i.w, !unpredictable !10
  %i.aq = select i1 %i.ah, ptr %i.t, ptr %i.ap, !unpredictable !10 ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.y, !unpredictable !10
  %i.as = select i1 %i.ao, ptr %i.aa, ptr %i.ar, !unpredictable !10 ; 3 uses
  %.val2 = load i32, ptr %i.aq, align 4, !noundef !10
  %i.at = zext i32 %.val2 to i64                  ; 3 uses
  %i.au = icmp ugt i64 %.val1.i, %i.at
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit29
  %.val1 = load i32, ptr %i.as, align 4
  %i.av = zext i32 %.val1 to i64                  ; 3 uses
  %i.aw = icmp ugt i64 %.val1.i, %i.av
  br i1 %i.aw, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit34, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit29
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortfEs_0s_0E0BR_.exit34: ; preds = %bb.n
  %i.ax = select i1 %i.ao, ptr %i.w, ptr %i.aa, !unpredictable !10
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.at
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.av
  %.val.i.i32 = load float, ptr %i.ay, align 4, !noundef !10
  %.val6.i.i33 = load float, ptr %i.az, align 4, !noundef !10
  %i.ba = fcmp olt float %.val.i.i32, %.val6.i.i33 ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.as, ptr %i.aq, !unpredictable !10
  %i.bc = select i1 %i.ba, ptr %i.aq, ptr %i.as, !unpredictable !10
  %i.bd = select i1 %i.ah, i32 %.val7, i32 %.val8
  store i32 %i.bd, ptr %1, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.bb, align 4
  store i32 %i.bf, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bc, align 4
  store i32 %i.bh, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.ax, align 4
  store i32 %i.bj, ptr %i.bi, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtB20_7ArgSort5asorthE0s_0E0EB22_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val13 = load i32, ptr %i.a, align 4, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8        ; 11 uses
  %i.b = getelementptr i8, ptr %.0.val, i64 8
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !10 ; 20 uses
  %i.c = zext i32 %.val13 to i64                  ; 3 uses
  %i.d = icmp ugt i64 %.val1.i, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val14 = load i32, ptr %0, align 4
  %i.e = zext i32 %.val14 to i64                  ; 3 uses
  %i.f = icmp ugt i64 %.val1.i, %i.e
  br i1 %i.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.e
  %.val.i.i = load i8, ptr %i.g, align 1, !noundef !10
  %.val6.i.i = load i8, ptr %i.h, align 1, !noundef !10
  %i.i = icmp ult i8 %.val.i.i, %.val6.i.i        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.j, align 4, !noundef !10
  %i.k = zext i32 %.val10 to i64                  ; 3 uses
  %i.l = icmp ugt i64 %.val1.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load i32, ptr %i.m, align 4
  %i.n = zext i32 %.val11 to i64                  ; 3 uses
  %i.o = icmp ugt i64 %.val1.i, %i.n
  br i1 %i.o, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit19, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit19: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.n
  %.val.i.i17 = load i8, ptr %i.p, align 1, !noundef !10
  %.val6.i.i18 = load i8, ptr %i.q, align 1, !noundef !10
  %i.r = icmp ult i8 %.val.i.i17, %.val6.i.i18    ; 2 uses
  %i.s = zext i1 %i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = xor i1 %i.i, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %.val7 = load i32, ptr %i.y, align 4, !noundef !10 ; 2 uses
  %i.ab = zext i32 %.val7 to i64                  ; 3 uses
  %i.ac = icmp ugt i64 %.val1.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit19
  %.val8 = load i32, ptr %i.t, align 4            ; 2 uses
  %i.ad = zext i32 %.val8 to i64                  ; 3 uses
  %i.ae = icmp ugt i64 %.val1.i, %i.ad
  br i1 %i.ae, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit24, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit19
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit24: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ad
  %.val.i.i22 = load i8, ptr %i.af, align 1, !noundef !10
  %.val6.i.i23 = load i8, ptr %i.ag, align 1, !noundef !10
  %i.ah = icmp ult i8 %.val.i.i22, %.val6.i.i23   ; 3 uses
  %.val4 = load i32, ptr %i.aa, align 4, !noundef !10
  %i.ai = zext i32 %.val4 to i64                  ; 3 uses
  %i.aj = icmp ugt i64 %.val1.i, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit24
  %.val5 = load i32, ptr %i.w, align 4
  %i.ak = zext i32 %.val5 to i64                  ; 3 uses
  %i.al = icmp ugt i64 %.val1.i, %i.ak
  br i1 %i.al, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit29, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit24
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit29: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ak
  %.val.i.i27 = load i8, ptr %i.am, align 1, !noundef !10
  %.val6.i.i28 = load i8, ptr %i.an, align 1, !noundef !10
  %i.ao = icmp ult i8 %.val.i.i27, %.val6.i.i28   ; 3 uses
  %i.ap = select i1 %i.ao, ptr %i.y, ptr %i.w, !unpredictable !10
  %i.aq = select i1 %i.ah, ptr %i.t, ptr %i.ap, !unpredictable !10 ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.y, !unpredictable !10
  %i.as = select i1 %i.ao, ptr %i.aa, ptr %i.ar, !unpredictable !10 ; 3 uses
  %.val1 = load i32, ptr %i.as, align 4, !noundef !10
  %i.at = zext i32 %.val1 to i64                  ; 3 uses
  %i.au = icmp ugt i64 %.val1.i, %i.at
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit29
  %.val2 = load i32, ptr %i.aq, align 4
  %i.av = zext i32 %.val2 to i64                  ; 3 uses
  %i.aw = icmp ugt i64 %.val1.i, %i.av
  br i1 %i.aw, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit34, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit29
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthE0s_0E0BR_.exit34: ; preds = %bb.n
  %i.ax = select i1 %i.ao, ptr %i.w, ptr %i.aa, !unpredictable !10
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.av
  %.val.i.i32 = load i8, ptr %i.ay, align 1, !noundef !10
  %.val6.i.i33 = load i8, ptr %i.az, align 1, !noundef !10
  %i.ba = icmp ult i8 %.val.i.i32, %.val6.i.i33   ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.as, ptr %i.aq, !unpredictable !10
  %i.bc = select i1 %i.ba, ptr %i.aq, ptr %i.as, !unpredictable !10
  %i.bd = select i1 %i.ah, i32 %.val7, i32 %.val8
  store i32 %i.bd, ptr %1, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.bb, align 4
  store i32 %i.bf, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bc, align 4
  store i32 %i.bh, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.ax, align 4
  store i32 %i.bj, ptr %i.bi, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtB20_7ArgSort5asorthEs_0s_0E0EB22_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val14 = load i32, ptr %0, align 4, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8        ; 11 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !noundef !10 ; 20 uses
  %i.b = zext i32 %.val14 to i64                  ; 3 uses
  %i.c = icmp ugt i64 %.val1.i, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val13 = load i32, ptr %i.d, align 4
  %i.e = zext i32 %.val13 to i64                  ; 3 uses
  %i.f = icmp ugt i64 %.val1.i, %i.e
  br i1 %i.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.e
  %.val.i.i = load i8, ptr %i.g, align 1, !noundef !10
  %.val6.i.i = load i8, ptr %i.h, align 1, !noundef !10
  %i.i = icmp ult i8 %.val.i.i, %.val6.i.i        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load i32, ptr %i.j, align 4, !noundef !10
  %i.k = zext i32 %.val11 to i64                  ; 3 uses
  %i.l = icmp ugt i64 %.val1.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.m, align 4
  %i.n = zext i32 %.val10 to i64                  ; 3 uses
  %i.o = icmp ugt i64 %.val1.i, %i.n
  br i1 %i.o, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit19, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit19: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.n
  %.val.i.i17 = load i8, ptr %i.p, align 1, !noundef !10
  %.val6.i.i18 = load i8, ptr %i.q, align 1, !noundef !10
  %i.r = icmp ult i8 %.val.i.i17, %.val6.i.i18    ; 2 uses
  %i.s = zext i1 %i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = xor i1 %i.i, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %.val8 = load i32, ptr %i.t, align 4, !noundef !10 ; 2 uses
  %i.ab = zext i32 %.val8 to i64                  ; 3 uses
  %i.ac = icmp ugt i64 %.val1.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit19
  %.val7 = load i32, ptr %i.y, align 4            ; 2 uses
  %i.ad = zext i32 %.val7 to i64                  ; 3 uses
  %i.ae = icmp ugt i64 %.val1.i, %i.ad
  br i1 %i.ae, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit24, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit19
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit24: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ad
  %.val.i.i22 = load i8, ptr %i.af, align 1, !noundef !10
  %.val6.i.i23 = load i8, ptr %i.ag, align 1, !noundef !10
  %i.ah = icmp ult i8 %.val.i.i22, %.val6.i.i23   ; 3 uses
  %.val5 = load i32, ptr %i.w, align 4, !noundef !10
  %i.ai = zext i32 %.val5 to i64                  ; 3 uses
  %i.aj = icmp ugt i64 %.val1.i, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit24
  %.val4 = load i32, ptr %i.aa, align 4
  %i.ak = zext i32 %.val4 to i64                  ; 3 uses
  %i.al = icmp ugt i64 %.val1.i, %i.ak
  br i1 %i.al, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit29, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit24
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit29: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ak
  %.val.i.i27 = load i8, ptr %i.am, align 1, !noundef !10
  %.val6.i.i28 = load i8, ptr %i.an, align 1, !noundef !10
  %i.ao = icmp ult i8 %.val.i.i27, %.val6.i.i28   ; 3 uses
  %i.ap = select i1 %i.ao, ptr %i.y, ptr %i.w, !unpredictable !10
  %i.aq = select i1 %i.ah, ptr %i.t, ptr %i.ap, !unpredictable !10 ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.y, !unpredictable !10
  %i.as = select i1 %i.ao, ptr %i.aa, ptr %i.ar, !unpredictable !10 ; 3 uses
  %.val2 = load i32, ptr %i.aq, align 4, !noundef !10
  %i.at = zext i32 %.val2 to i64                  ; 3 uses
  %i.au = icmp ugt i64 %.val1.i, %i.at
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit29
  %.val1 = load i32, ptr %i.as, align 4
  %i.av = zext i32 %.val1 to i64                  ; 3 uses
  %i.aw = icmp ugt i64 %.val1.i, %i.av
  br i1 %i.aw, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit34, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit29
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asorthEs_0s_0E0BR_.exit34: ; preds = %bb.n
  %i.ax = select i1 %i.ao, ptr %i.w, ptr %i.aa, !unpredictable !10
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.av
  %.val.i.i32 = load i8, ptr %i.ay, align 1, !noundef !10
  %.val6.i.i33 = load i8, ptr %i.az, align 1, !noundef !10
  %i.ba = icmp ult i8 %.val.i.i32, %.val6.i.i33   ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.as, ptr %i.aq, !unpredictable !10
  %i.bc = select i1 %i.ba, ptr %i.aq, ptr %i.as, !unpredictable !10
  %i.bd = select i1 %i.ah, i32 %.val7, i32 %.val8
  store i32 %i.bd, ptr %1, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.bb, align 4
  store i32 %i.bf, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bc, align 4
  store i32 %i.bh, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.ax, align 4
  store i32 %i.bj, ptr %i.bi, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtB20_7ArgSort5asortlE0s_0E0EB22_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val13 = load i32, ptr %i.a, align 4, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8        ; 11 uses
  %i.b = getelementptr i8, ptr %.0.val, i64 8
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !10 ; 20 uses
  %i.c = zext i32 %.val13 to i64                  ; 3 uses
  %i.d = icmp ugt i64 %.val1.i, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val14 = load i32, ptr %0, align 4
  %i.e = zext i32 %.val14 to i64                  ; 3 uses
  %i.f = icmp ugt i64 %.val1.i, %i.e
  br i1 %i.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.c
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.e
  %.val.i.i = load i32, ptr %i.g, align 4, !noundef !10
  %.val6.i.i = load i32, ptr %i.h, align 4, !noundef !10
  %i.i = icmp slt i32 %.val.i.i, %.val6.i.i       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.j, align 4, !noundef !10
  %i.k = zext i32 %.val10 to i64                  ; 3 uses
  %i.l = icmp ugt i64 %.val1.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load i32, ptr %i.m, align 4
  %i.n = zext i32 %.val11 to i64                  ; 3 uses
  %i.o = icmp ugt i64 %.val1.i, %i.n
  br i1 %i.o, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit19, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit19: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.k
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.n
  %.val.i.i17 = load i32, ptr %i.p, align 4, !noundef !10
  %.val6.i.i18 = load i32, ptr %i.q, align 4, !noundef !10
  %i.r = icmp slt i32 %.val.i.i17, %.val6.i.i18   ; 2 uses
  %i.s = zext i1 %i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = xor i1 %i.i, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %.val7 = load i32, ptr %i.y, align 4, !noundef !10 ; 2 uses
  %i.ab = zext i32 %.val7 to i64                  ; 3 uses
  %i.ac = icmp ugt i64 %.val1.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit19
  %.val8 = load i32, ptr %i.t, align 4            ; 2 uses
  %i.ad = zext i32 %.val8 to i64                  ; 3 uses
  %i.ae = icmp ugt i64 %.val1.i, %i.ad
  br i1 %i.ae, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit24, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit19
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit24: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ab
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ad
  %.val.i.i22 = load i32, ptr %i.af, align 4, !noundef !10
  %.val6.i.i23 = load i32, ptr %i.ag, align 4, !noundef !10
  %i.ah = icmp slt i32 %.val.i.i22, %.val6.i.i23  ; 3 uses
  %.val4 = load i32, ptr %i.aa, align 4, !noundef !10
  %i.ai = zext i32 %.val4 to i64                  ; 3 uses
  %i.aj = icmp ugt i64 %.val1.i, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit24
  %.val5 = load i32, ptr %i.w, align 4
  %i.ak = zext i32 %.val5 to i64                  ; 3 uses
  %i.al = icmp ugt i64 %.val1.i, %i.ak
  br i1 %i.al, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit29, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit24
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit29: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ai
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ak
  %.val.i.i27 = load i32, ptr %i.am, align 4, !noundef !10
  %.val6.i.i28 = load i32, ptr %i.an, align 4, !noundef !10
  %i.ao = icmp slt i32 %.val.i.i27, %.val6.i.i28  ; 3 uses
  %i.ap = select i1 %i.ao, ptr %i.y, ptr %i.w, !unpredictable !10
  %i.aq = select i1 %i.ah, ptr %i.t, ptr %i.ap, !unpredictable !10 ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.y, !unpredictable !10
  %i.as = select i1 %i.ao, ptr %i.aa, ptr %i.ar, !unpredictable !10 ; 3 uses
  %.val1 = load i32, ptr %i.as, align 4, !noundef !10
  %i.at = zext i32 %.val1 to i64                  ; 3 uses
  %i.au = icmp ugt i64 %.val1.i, %i.at
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit29
  %.val2 = load i32, ptr %i.aq, align 4
  %i.av = zext i32 %.val2 to i64                  ; 3 uses
  %i.aw = icmp ugt i64 %.val1.i, %i.av
  br i1 %i.aw, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit34, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit29
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlE0s_0E0BR_.exit34: ; preds = %bb.n
  %i.ax = select i1 %i.ao, ptr %i.w, ptr %i.aa, !unpredictable !10
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.at
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.av
  %.val.i.i32 = load i32, ptr %i.ay, align 4, !noundef !10
  %.val6.i.i33 = load i32, ptr %i.az, align 4, !noundef !10
  %i.ba = icmp slt i32 %.val.i.i32, %.val6.i.i33  ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.as, ptr %i.aq, !unpredictable !10
  %i.bc = select i1 %i.ba, ptr %i.aq, ptr %i.as, !unpredictable !10
  %i.bd = select i1 %i.ah, i32 %.val7, i32 %.val8
  store i32 %i.bd, ptr %1, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.bb, align 4
  store i32 %i.bf, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bc, align 4
  store i32 %i.bh, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.ax, align 4
  store i32 %i.bj, ptr %i.bi, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtB20_7ArgSort5asortlEs_0s_0E0EB22_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val14 = load i32, ptr %0, align 4, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8        ; 11 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !noundef !10 ; 20 uses
  %i.b = zext i32 %.val14 to i64                  ; 3 uses
  %i.c = icmp ugt i64 %.val1.i, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val13 = load i32, ptr %i.d, align 4
  %i.e = zext i32 %.val13 to i64                  ; 3 uses
  %i.f = icmp ugt i64 %.val1.i, %i.e
  br i1 %i.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.e
  %.val.i.i = load i32, ptr %i.g, align 4, !noundef !10
  %.val6.i.i = load i32, ptr %i.h, align 4, !noundef !10
  %i.i = icmp slt i32 %.val.i.i, %.val6.i.i       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load i32, ptr %i.j, align 4, !noundef !10
  %i.k = zext i32 %.val11 to i64                  ; 3 uses
  %i.l = icmp ugt i64 %.val1.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.m, align 4
  %i.n = zext i32 %.val10 to i64                  ; 3 uses
  %i.o = icmp ugt i64 %.val1.i, %i.n
  br i1 %i.o, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit19, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit19: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.k
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.n
  %.val.i.i17 = load i32, ptr %i.p, align 4, !noundef !10
  %.val6.i.i18 = load i32, ptr %i.q, align 4, !noundef !10
  %i.r = icmp slt i32 %.val.i.i17, %.val6.i.i18   ; 2 uses
  %i.s = zext i1 %i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = xor i1 %i.i, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %.val8 = load i32, ptr %i.t, align 4, !noundef !10 ; 2 uses
  %i.ab = zext i32 %.val8 to i64                  ; 3 uses
  %i.ac = icmp ugt i64 %.val1.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit19
  %.val7 = load i32, ptr %i.y, align 4            ; 2 uses
  %i.ad = zext i32 %.val7 to i64                  ; 3 uses
  %i.ae = icmp ugt i64 %.val1.i, %i.ad
  br i1 %i.ae, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit24, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit19
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit24: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ab
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ad
  %.val.i.i22 = load i32, ptr %i.af, align 4, !noundef !10
  %.val6.i.i23 = load i32, ptr %i.ag, align 4, !noundef !10
  %i.ah = icmp slt i32 %.val.i.i22, %.val6.i.i23  ; 3 uses
  %.val5 = load i32, ptr %i.w, align 4, !noundef !10
  %i.ai = zext i32 %.val5 to i64                  ; 3 uses
  %i.aj = icmp ugt i64 %.val1.i, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit24
  %.val4 = load i32, ptr %i.aa, align 4
  %i.ak = zext i32 %.val4 to i64                  ; 3 uses
  %i.al = icmp ugt i64 %.val1.i, %i.ak
  br i1 %i.al, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit29, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit24
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit29: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ai
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ak
  %.val.i.i27 = load i32, ptr %i.am, align 4, !noundef !10
  %.val6.i.i28 = load i32, ptr %i.an, align 4, !noundef !10
  %i.ao = icmp slt i32 %.val.i.i27, %.val6.i.i28  ; 3 uses
  %i.ap = select i1 %i.ao, ptr %i.y, ptr %i.w, !unpredictable !10
  %i.aq = select i1 %i.ah, ptr %i.t, ptr %i.ap, !unpredictable !10 ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.y, !unpredictable !10
  %i.as = select i1 %i.ao, ptr %i.aa, ptr %i.ar, !unpredictable !10 ; 3 uses
  %.val2 = load i32, ptr %i.aq, align 4, !noundef !10
  %i.at = zext i32 %.val2 to i64                  ; 3 uses
  %i.au = icmp ugt i64 %.val1.i, %i.at
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit29
  %.val1 = load i32, ptr %i.as, align 4
  %i.av = zext i32 %.val1 to i64                  ; 3 uses
  %i.aw = icmp ugt i64 %.val1.i, %i.av
  br i1 %i.aw, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit34, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit29
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortlEs_0s_0E0BR_.exit34: ; preds = %bb.n
  %i.ax = select i1 %i.ao, ptr %i.w, ptr %i.aa, !unpredictable !10
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.at
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.av
  %.val.i.i32 = load i32, ptr %i.ay, align 4, !noundef !10
  %.val6.i.i33 = load i32, ptr %i.az, align 4, !noundef !10
  %i.ba = icmp slt i32 %.val.i.i32, %.val6.i.i33  ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.as, ptr %i.aq, !unpredictable !10
  %i.bc = select i1 %i.ba, ptr %i.aq, ptr %i.as, !unpredictable !10
  %i.bd = select i1 %i.ah, i32 %.val7, i32 %.val8
  store i32 %i.bd, ptr %1, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.bb, align 4
  store i32 %i.bf, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bc, align 4
  store i32 %i.bh, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.ax, align 4
  store i32 %i.bj, ptr %i.bi, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtB20_7ArgSort5asortmE0s_0E0EB22_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val13 = load i32, ptr %i.a, align 4, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8        ; 11 uses
  %i.b = getelementptr i8, ptr %.0.val, i64 8
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !10 ; 20 uses
  %i.c = zext i32 %.val13 to i64                  ; 3 uses
  %i.d = icmp ugt i64 %.val1.i, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val14 = load i32, ptr %0, align 4
  %i.e = zext i32 %.val14 to i64                  ; 3 uses
  %i.f = icmp ugt i64 %.val1.i, %i.e
  br i1 %i.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.c
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.e
  %.val.i.i = load i32, ptr %i.g, align 4, !noundef !10
  %.val6.i.i = load i32, ptr %i.h, align 4, !noundef !10
  %i.i = icmp ult i32 %.val.i.i, %.val6.i.i       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.j, align 4, !noundef !10
  %i.k = zext i32 %.val10 to i64                  ; 3 uses
  %i.l = icmp ugt i64 %.val1.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load i32, ptr %i.m, align 4
  %i.n = zext i32 %.val11 to i64                  ; 3 uses
  %i.o = icmp ugt i64 %.val1.i, %i.n
  br i1 %i.o, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit19, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit19: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.k
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.n
  %.val.i.i17 = load i32, ptr %i.p, align 4, !noundef !10
  %.val6.i.i18 = load i32, ptr %i.q, align 4, !noundef !10
  %i.r = icmp ult i32 %.val.i.i17, %.val6.i.i18   ; 2 uses
  %i.s = zext i1 %i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = xor i1 %i.i, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %.val7 = load i32, ptr %i.y, align 4, !noundef !10 ; 2 uses
  %i.ab = zext i32 %.val7 to i64                  ; 3 uses
  %i.ac = icmp ugt i64 %.val1.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit19
  %.val8 = load i32, ptr %i.t, align 4            ; 2 uses
  %i.ad = zext i32 %.val8 to i64                  ; 3 uses
  %i.ae = icmp ugt i64 %.val1.i, %i.ad
  br i1 %i.ae, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit24, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit19
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit24: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ab
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ad
  %.val.i.i22 = load i32, ptr %i.af, align 4, !noundef !10
  %.val6.i.i23 = load i32, ptr %i.ag, align 4, !noundef !10
  %i.ah = icmp ult i32 %.val.i.i22, %.val6.i.i23  ; 3 uses
  %.val4 = load i32, ptr %i.aa, align 4, !noundef !10
  %i.ai = zext i32 %.val4 to i64                  ; 3 uses
  %i.aj = icmp ugt i64 %.val1.i, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit24
  %.val5 = load i32, ptr %i.w, align 4
  %i.ak = zext i32 %.val5 to i64                  ; 3 uses
  %i.al = icmp ugt i64 %.val1.i, %i.ak
  br i1 %i.al, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit29, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit24
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit29: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ai
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ak
  %.val.i.i27 = load i32, ptr %i.am, align 4, !noundef !10
  %.val6.i.i28 = load i32, ptr %i.an, align 4, !noundef !10
  %i.ao = icmp ult i32 %.val.i.i27, %.val6.i.i28  ; 3 uses
  %i.ap = select i1 %i.ao, ptr %i.y, ptr %i.w, !unpredictable !10
  %i.aq = select i1 %i.ah, ptr %i.t, ptr %i.ap, !unpredictable !10 ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.y, !unpredictable !10
  %i.as = select i1 %i.ao, ptr %i.aa, ptr %i.ar, !unpredictable !10 ; 3 uses
  %.val1 = load i32, ptr %i.as, align 4, !noundef !10
  %i.at = zext i32 %.val1 to i64                  ; 3 uses
  %i.au = icmp ugt i64 %.val1.i, %i.at
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit29
  %.val2 = load i32, ptr %i.aq, align 4
  %i.av = zext i32 %.val2 to i64                  ; 3 uses
  %i.aw = icmp ugt i64 %.val1.i, %i.av
  br i1 %i.aw, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit34, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit29
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmE0s_0E0BR_.exit34: ; preds = %bb.n
  %i.ax = select i1 %i.ao, ptr %i.w, ptr %i.aa, !unpredictable !10
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.at
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.av
  %.val.i.i32 = load i32, ptr %i.ay, align 4, !noundef !10
  %.val6.i.i33 = load i32, ptr %i.az, align 4, !noundef !10
  %i.ba = icmp ult i32 %.val.i.i32, %.val6.i.i33  ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.as, ptr %i.aq, !unpredictable !10
  %i.bc = select i1 %i.ba, ptr %i.aq, ptr %i.as, !unpredictable !10
  %i.bd = select i1 %i.ah, i32 %.val7, i32 %.val8
  store i32 %i.bd, ptr %1, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.bb, align 4
  store i32 %i.bf, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bc, align 4
  store i32 %i.bh, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.ax, align 4
  store i32 %i.bj, ptr %i.bi, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtB20_7ArgSort5asortmEs_0s_0E0EB22_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val14 = load i32, ptr %0, align 4, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8        ; 11 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !noundef !10 ; 20 uses
  %i.b = zext i32 %.val14 to i64                  ; 3 uses
  %i.c = icmp ugt i64 %.val1.i, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val13 = load i32, ptr %i.d, align 4
  %i.e = zext i32 %.val13 to i64                  ; 3 uses
  %i.f = icmp ugt i64 %.val1.i, %i.e
  br i1 %i.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.e
  %.val.i.i = load i32, ptr %i.g, align 4, !noundef !10
  %.val6.i.i = load i32, ptr %i.h, align 4, !noundef !10
  %i.i = icmp ult i32 %.val.i.i, %.val6.i.i       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load i32, ptr %i.j, align 4, !noundef !10
  %i.k = zext i32 %.val11 to i64                  ; 3 uses
  %i.l = icmp ugt i64 %.val1.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.m, align 4
  %i.n = zext i32 %.val10 to i64                  ; 3 uses
  %i.o = icmp ugt i64 %.val1.i, %i.n
  br i1 %i.o, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit19, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit19: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.k
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.n
  %.val.i.i17 = load i32, ptr %i.p, align 4, !noundef !10
  %.val6.i.i18 = load i32, ptr %i.q, align 4, !noundef !10
  %i.r = icmp ult i32 %.val.i.i17, %.val6.i.i18   ; 2 uses
  %i.s = zext i1 %i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = xor i1 %i.i, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %.val8 = load i32, ptr %i.t, align 4, !noundef !10 ; 2 uses
  %i.ab = zext i32 %.val8 to i64                  ; 3 uses
  %i.ac = icmp ugt i64 %.val1.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit19
  %.val7 = load i32, ptr %i.y, align 4            ; 2 uses
  %i.ad = zext i32 %.val7 to i64                  ; 3 uses
  %i.ae = icmp ugt i64 %.val1.i, %i.ad
  br i1 %i.ae, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit24, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit19
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit24: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ab
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ad
  %.val.i.i22 = load i32, ptr %i.af, align 4, !noundef !10
  %.val6.i.i23 = load i32, ptr %i.ag, align 4, !noundef !10
  %i.ah = icmp ult i32 %.val.i.i22, %.val6.i.i23  ; 3 uses
  %.val5 = load i32, ptr %i.w, align 4, !noundef !10
  %i.ai = zext i32 %.val5 to i64                  ; 3 uses
  %i.aj = icmp ugt i64 %.val1.i, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit24
  %.val4 = load i32, ptr %i.aa, align 4
  %i.ak = zext i32 %.val4 to i64                  ; 3 uses
  %i.al = icmp ugt i64 %.val1.i, %i.ak
  br i1 %i.al, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit29, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit24
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit29: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ai
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ak
  %.val.i.i27 = load i32, ptr %i.am, align 4, !noundef !10
  %.val6.i.i28 = load i32, ptr %i.an, align 4, !noundef !10
  %i.ao = icmp ult i32 %.val.i.i27, %.val6.i.i28  ; 3 uses
  %i.ap = select i1 %i.ao, ptr %i.y, ptr %i.w, !unpredictable !10
  %i.aq = select i1 %i.ah, ptr %i.t, ptr %i.ap, !unpredictable !10 ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.y, !unpredictable !10
  %i.as = select i1 %i.ao, ptr %i.aa, ptr %i.ar, !unpredictable !10 ; 3 uses
  %.val2 = load i32, ptr %i.aq, align 4, !noundef !10
  %i.at = zext i32 %.val2 to i64                  ; 3 uses
  %i.au = icmp ugt i64 %.val1.i, %i.at
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit29
  %.val1 = load i32, ptr %i.as, align 4
  %i.av = zext i32 %.val1 to i64                  ; 3 uses
  %i.aw = icmp ugt i64 %.val1.i, %i.av
  br i1 %i.aw, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit34, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit29
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortmEs_0s_0E0BR_.exit34: ; preds = %bb.n
  %i.ax = select i1 %i.ao, ptr %i.w, ptr %i.aa, !unpredictable !10
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.at
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.av
  %.val.i.i32 = load i32, ptr %i.ay, align 4, !noundef !10
  %.val6.i.i33 = load i32, ptr %i.az, align 4, !noundef !10
  %i.ba = icmp ult i32 %.val.i.i32, %.val6.i.i33  ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.as, ptr %i.aq, !unpredictable !10
  %i.bc = select i1 %i.ba, ptr %i.aq, ptr %i.as, !unpredictable !10
  %i.bd = select i1 %i.ah, i32 %.val7, i32 %.val8
  store i32 %i.bd, ptr %1, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.bb, align 4
  store i32 %i.bf, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bc, align 4
  store i32 %i.bh, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.ax, align 4
  store i32 %i.bj, ptr %i.bi, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtB20_7ArgSort5asortsE0s_0E0EB22_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val13 = load i32, ptr %i.a, align 4, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8        ; 11 uses
  %i.b = getelementptr i8, ptr %.0.val, i64 8
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !10 ; 20 uses
  %i.c = zext i32 %.val13 to i64                  ; 3 uses
  %i.d = icmp ugt i64 %.val1.i, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val14 = load i32, ptr %0, align 4
  %i.e = zext i32 %.val14 to i64                  ; 3 uses
  %i.f = icmp ugt i64 %.val1.i, %i.e
  br i1 %i.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.c
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.e
  %.val.i.i = load i16, ptr %i.g, align 2, !noundef !10
  %.val6.i.i = load i16, ptr %i.h, align 2, !noundef !10
  %i.i = icmp slt i16 %.val.i.i, %.val6.i.i       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.j, align 4, !noundef !10
  %i.k = zext i32 %.val10 to i64                  ; 3 uses
  %i.l = icmp ugt i64 %.val1.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load i32, ptr %i.m, align 4
  %i.n = zext i32 %.val11 to i64                  ; 3 uses
  %i.o = icmp ugt i64 %.val1.i, %i.n
  br i1 %i.o, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit19, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit19: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.k
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.n
  %.val.i.i17 = load i16, ptr %i.p, align 2, !noundef !10
  %.val6.i.i18 = load i16, ptr %i.q, align 2, !noundef !10
  %i.r = icmp slt i16 %.val.i.i17, %.val6.i.i18   ; 2 uses
  %i.s = zext i1 %i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = xor i1 %i.i, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %.val7 = load i32, ptr %i.y, align 4, !noundef !10 ; 2 uses
  %i.ab = zext i32 %.val7 to i64                  ; 3 uses
  %i.ac = icmp ugt i64 %.val1.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit19
  %.val8 = load i32, ptr %i.t, align 4            ; 2 uses
  %i.ad = zext i32 %.val8 to i64                  ; 3 uses
  %i.ae = icmp ugt i64 %.val1.i, %i.ad
  br i1 %i.ae, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit24, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit19
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit24: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.ab
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.ad
  %.val.i.i22 = load i16, ptr %i.af, align 2, !noundef !10
  %.val6.i.i23 = load i16, ptr %i.ag, align 2, !noundef !10
  %i.ah = icmp slt i16 %.val.i.i22, %.val6.i.i23  ; 3 uses
  %.val4 = load i32, ptr %i.aa, align 4, !noundef !10
  %i.ai = zext i32 %.val4 to i64                  ; 3 uses
  %i.aj = icmp ugt i64 %.val1.i, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit24
  %.val5 = load i32, ptr %i.w, align 4
  %i.ak = zext i32 %.val5 to i64                  ; 3 uses
  %i.al = icmp ugt i64 %.val1.i, %i.ak
  br i1 %i.al, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit29, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit24
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit29: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.ai
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.ak
  %.val.i.i27 = load i16, ptr %i.am, align 2, !noundef !10
  %.val6.i.i28 = load i16, ptr %i.an, align 2, !noundef !10
  %i.ao = icmp slt i16 %.val.i.i27, %.val6.i.i28  ; 3 uses
  %i.ap = select i1 %i.ao, ptr %i.y, ptr %i.w, !unpredictable !10
  %i.aq = select i1 %i.ah, ptr %i.t, ptr %i.ap, !unpredictable !10 ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.y, !unpredictable !10
  %i.as = select i1 %i.ao, ptr %i.aa, ptr %i.ar, !unpredictable !10 ; 3 uses
  %.val1 = load i32, ptr %i.as, align 4, !noundef !10
  %i.at = zext i32 %.val1 to i64                  ; 3 uses
  %i.au = icmp ugt i64 %.val1.i, %i.at
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit29
  %.val2 = load i32, ptr %i.aq, align 4
  %i.av = zext i32 %.val2 to i64                  ; 3 uses
  %i.aw = icmp ugt i64 %.val1.i, %i.av
  br i1 %i.aw, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit34, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit29
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsE0s_0E0BR_.exit34: ; preds = %bb.n
  %i.ax = select i1 %i.ao, ptr %i.w, ptr %i.aa, !unpredictable !10
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.at
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.av
  %.val.i.i32 = load i16, ptr %i.ay, align 2, !noundef !10
  %.val6.i.i33 = load i16, ptr %i.az, align 2, !noundef !10
  %i.ba = icmp slt i16 %.val.i.i32, %.val6.i.i33  ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.as, ptr %i.aq, !unpredictable !10
  %i.bc = select i1 %i.ba, ptr %i.aq, ptr %i.as, !unpredictable !10
  %i.bd = select i1 %i.ah, i32 %.val7, i32 %.val8
  store i32 %i.bd, ptr %1, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.bb, align 4
  store i32 %i.bf, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bc, align 4
  store i32 %i.bh, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.ax, align 4
  store i32 %i.bj, ptr %i.bi, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtB20_7ArgSort5asortsEs_0s_0E0EB22_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val14 = load i32, ptr %0, align 4, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8        ; 11 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !noundef !10 ; 20 uses
  %i.b = zext i32 %.val14 to i64                  ; 3 uses
  %i.c = icmp ugt i64 %.val1.i, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val13 = load i32, ptr %i.d, align 4
  %i.e = zext i32 %.val13 to i64                  ; 3 uses
  %i.f = icmp ugt i64 %.val1.i, %i.e
  br i1 %i.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.b
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.e
  %.val.i.i = load i16, ptr %i.g, align 2, !noundef !10
  %.val6.i.i = load i16, ptr %i.h, align 2, !noundef !10
  %i.i = icmp slt i16 %.val.i.i, %.val6.i.i       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load i32, ptr %i.j, align 4, !noundef !10
  %i.k = zext i32 %.val11 to i64                  ; 3 uses
  %i.l = icmp ugt i64 %.val1.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.m, align 4
  %i.n = zext i32 %.val10 to i64                  ; 3 uses
  %i.o = icmp ugt i64 %.val1.i, %i.n
  br i1 %i.o, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit19, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit19: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.k
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.n
  %.val.i.i17 = load i16, ptr %i.p, align 2, !noundef !10
  %.val6.i.i18 = load i16, ptr %i.q, align 2, !noundef !10
  %i.r = icmp slt i16 %.val.i.i17, %.val6.i.i18   ; 2 uses
  %i.s = zext i1 %i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = xor i1 %i.i, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %.val8 = load i32, ptr %i.t, align 4, !noundef !10 ; 2 uses
  %i.ab = zext i32 %.val8 to i64                  ; 3 uses
  %i.ac = icmp ugt i64 %.val1.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit19
  %.val7 = load i32, ptr %i.y, align 4            ; 2 uses
  %i.ad = zext i32 %.val7 to i64                  ; 3 uses
  %i.ae = icmp ugt i64 %.val1.i, %i.ad
  br i1 %i.ae, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit24, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit19
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit24: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.ab
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.ad
  %.val.i.i22 = load i16, ptr %i.af, align 2, !noundef !10
  %.val6.i.i23 = load i16, ptr %i.ag, align 2, !noundef !10
  %i.ah = icmp slt i16 %.val.i.i22, %.val6.i.i23  ; 3 uses
  %.val5 = load i32, ptr %i.w, align 4, !noundef !10
  %i.ai = zext i32 %.val5 to i64                  ; 3 uses
  %i.aj = icmp ugt i64 %.val1.i, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit24
  %.val4 = load i32, ptr %i.aa, align 4
  %i.ak = zext i32 %.val4 to i64                  ; 3 uses
  %i.al = icmp ugt i64 %.val1.i, %i.ak
  br i1 %i.al, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit29, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit24
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit29: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.ai
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.ak
  %.val.i.i27 = load i16, ptr %i.am, align 2, !noundef !10
  %.val6.i.i28 = load i16, ptr %i.an, align 2, !noundef !10
  %i.ao = icmp slt i16 %.val.i.i27, %.val6.i.i28  ; 3 uses
  %i.ap = select i1 %i.ao, ptr %i.y, ptr %i.w, !unpredictable !10
  %i.aq = select i1 %i.ah, ptr %i.t, ptr %i.ap, !unpredictable !10 ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.y, !unpredictable !10
  %i.as = select i1 %i.ao, ptr %i.aa, ptr %i.ar, !unpredictable !10 ; 3 uses
  %.val2 = load i32, ptr %i.aq, align 4, !noundef !10
  %i.at = zext i32 %.val2 to i64                  ; 3 uses
  %i.au = icmp ugt i64 %.val1.i, %i.at
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit29
  %.val1 = load i32, ptr %i.as, align 4
  %i.av = zext i32 %.val1 to i64                  ; 3 uses
  %i.aw = icmp ugt i64 %.val1.i, %i.av
  br i1 %i.aw, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit34, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit29
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortsEs_0s_0E0BR_.exit34: ; preds = %bb.n
  %i.ax = select i1 %i.ao, ptr %i.w, ptr %i.aa, !unpredictable !10
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.at
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.av
  %.val.i.i32 = load i16, ptr %i.ay, align 2, !noundef !10
  %.val6.i.i33 = load i16, ptr %i.az, align 2, !noundef !10
  %i.ba = icmp slt i16 %.val.i.i32, %.val6.i.i33  ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.as, ptr %i.aq, !unpredictable !10
  %i.bc = select i1 %i.ba, ptr %i.aq, ptr %i.as, !unpredictable !10
  %i.bd = select i1 %i.ah, i32 %.val7, i32 %.val8
  store i32 %i.bd, ptr %1, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.bb, align 4
  store i32 %i.bf, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bc, align 4
  store i32 %i.bh, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.ax, align 4
  store i32 %i.bj, ptr %i.bi, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtB20_7ArgSort5asortxE0s_0E0EB22_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val13 = load i32, ptr %i.a, align 4, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8        ; 11 uses
  %i.b = getelementptr i8, ptr %.0.val, i64 8
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !10 ; 20 uses
  %i.c = zext i32 %.val13 to i64                  ; 3 uses
  %i.d = icmp ugt i64 %.val1.i, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val14 = load i32, ptr %0, align 4
  %i.e = zext i32 %.val14 to i64                  ; 3 uses
  %i.f = icmp ugt i64 %.val1.i, %i.e
  br i1 %i.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.c
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.e
  %.val.i.i = load i64, ptr %i.g, align 8, !noundef !10
  %.val6.i.i = load i64, ptr %i.h, align 8, !noundef !10
  %i.i = icmp slt i64 %.val.i.i, %.val6.i.i       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.j, align 4, !noundef !10
  %i.k = zext i32 %.val10 to i64                  ; 3 uses
  %i.l = icmp ugt i64 %.val1.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load i32, ptr %i.m, align 4
  %i.n = zext i32 %.val11 to i64                  ; 3 uses
  %i.o = icmp ugt i64 %.val1.i, %i.n
  br i1 %i.o, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit19, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit19: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.k
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.n
  %.val.i.i17 = load i64, ptr %i.p, align 8, !noundef !10
  %.val6.i.i18 = load i64, ptr %i.q, align 8, !noundef !10
  %i.r = icmp slt i64 %.val.i.i17, %.val6.i.i18   ; 2 uses
  %i.s = zext i1 %i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = xor i1 %i.i, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %.val7 = load i32, ptr %i.y, align 4, !noundef !10 ; 2 uses
  %i.ab = zext i32 %.val7 to i64                  ; 3 uses
  %i.ac = icmp ugt i64 %.val1.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit19
  %.val8 = load i32, ptr %i.t, align 4            ; 2 uses
  %i.ad = zext i32 %.val8 to i64                  ; 3 uses
  %i.ae = icmp ugt i64 %.val1.i, %i.ad
  br i1 %i.ae, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit24, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit19
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit24: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ab
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ad
  %.val.i.i22 = load i64, ptr %i.af, align 8, !noundef !10
  %.val6.i.i23 = load i64, ptr %i.ag, align 8, !noundef !10
  %i.ah = icmp slt i64 %.val.i.i22, %.val6.i.i23  ; 3 uses
  %.val4 = load i32, ptr %i.aa, align 4, !noundef !10
  %i.ai = zext i32 %.val4 to i64                  ; 3 uses
  %i.aj = icmp ugt i64 %.val1.i, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit24
  %.val5 = load i32, ptr %i.w, align 4
  %i.ak = zext i32 %.val5 to i64                  ; 3 uses
  %i.al = icmp ugt i64 %.val1.i, %i.ak
  br i1 %i.al, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit29, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit24
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit29: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ai
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ak
  %.val.i.i27 = load i64, ptr %i.am, align 8, !noundef !10
  %.val6.i.i28 = load i64, ptr %i.an, align 8, !noundef !10
  %i.ao = icmp slt i64 %.val.i.i27, %.val6.i.i28  ; 3 uses
  %i.ap = select i1 %i.ao, ptr %i.y, ptr %i.w, !unpredictable !10
  %i.aq = select i1 %i.ah, ptr %i.t, ptr %i.ap, !unpredictable !10 ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.y, !unpredictable !10
  %i.as = select i1 %i.ao, ptr %i.aa, ptr %i.ar, !unpredictable !10 ; 3 uses
  %.val1 = load i32, ptr %i.as, align 4, !noundef !10
  %i.at = zext i32 %.val1 to i64                  ; 3 uses
  %i.au = icmp ugt i64 %.val1.i, %i.at
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit29
  %.val2 = load i32, ptr %i.aq, align 4
  %i.av = zext i32 %.val2 to i64                  ; 3 uses
  %i.aw = icmp ugt i64 %.val1.i, %i.av
  br i1 %i.aw, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit34, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit29
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxE0s_0E0BR_.exit34: ; preds = %bb.n
  %i.ax = select i1 %i.ao, ptr %i.w, ptr %i.aa, !unpredictable !10
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.at
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.av
  %.val.i.i32 = load i64, ptr %i.ay, align 8, !noundef !10
  %.val6.i.i33 = load i64, ptr %i.az, align 8, !noundef !10
  %i.ba = icmp slt i64 %.val.i.i32, %.val6.i.i33  ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.as, ptr %i.aq, !unpredictable !10
  %i.bc = select i1 %i.ba, ptr %i.aq, ptr %i.as, !unpredictable !10
  %i.bd = select i1 %i.ah, i32 %.val7, i32 %.val8
  store i32 %i.bd, ptr %1, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.bb, align 4
  store i32 %i.bf, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bc, align 4
  store i32 %i.bh, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.ax, align 4
  store i32 %i.bj, ptr %i.bi, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablemNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtB20_7ArgSort5asortxEs_0s_0E0EB22_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val14 = load i32, ptr %0, align 4, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8        ; 11 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !noundef !10 ; 20 uses
  %i.b = zext i32 %.val14 to i64                  ; 3 uses
  %i.c = icmp ugt i64 %.val1.i, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val13 = load i32, ptr %i.d, align 4
  %i.e = zext i32 %.val13 to i64                  ; 3 uses
  %i.f = icmp ugt i64 %.val1.i, %i.e
  br i1 %i.f, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.b
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.e
  %.val.i.i = load i64, ptr %i.g, align 8, !noundef !10
  %.val6.i.i = load i64, ptr %i.h, align 8, !noundef !10
  %i.i = icmp slt i64 %.val.i.i, %.val6.i.i       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load i32, ptr %i.j, align 4, !noundef !10
  %i.k = zext i32 %.val11 to i64                  ; 3 uses
  %i.l = icmp ugt i64 %.val1.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.m, align 4
  %i.n = zext i32 %.val10 to i64                  ; 3 uses
  %i.o = icmp ugt i64 %.val1.i, %i.n
  br i1 %i.o, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit19, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit19: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.k
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.n
  %.val.i.i17 = load i64, ptr %i.p, align 8, !noundef !10
  %.val6.i.i18 = load i64, ptr %i.q, align 8, !noundef !10
  %i.r = icmp slt i64 %.val.i.i17, %.val6.i.i18   ; 2 uses
  %i.s = zext i1 %i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = xor i1 %i.i, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %.val8 = load i32, ptr %i.t, align 4, !noundef !10 ; 2 uses
  %i.ab = zext i32 %.val8 to i64                  ; 3 uses
  %i.ac = icmp ugt i64 %.val1.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit19
  %.val7 = load i32, ptr %i.y, align 4            ; 2 uses
  %i.ad = zext i32 %.val7 to i64                  ; 3 uses
  %i.ae = icmp ugt i64 %.val1.i, %i.ad
  br i1 %i.ae, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit24, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit19
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit24: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ab
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ad
  %.val.i.i22 = load i64, ptr %i.af, align 8, !noundef !10
  %.val6.i.i23 = load i64, ptr %i.ag, align 8, !noundef !10
  %i.ah = icmp slt i64 %.val.i.i22, %.val6.i.i23  ; 3 uses
  %.val5 = load i32, ptr %i.w, align 4, !noundef !10
  %i.ai = zext i32 %.val5 to i64                  ; 3 uses
  %i.aj = icmp ugt i64 %.val1.i, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit24
  %.val4 = load i32, ptr %i.aa, align 4
  %i.ak = zext i32 %.val4 to i64                  ; 3 uses
  %i.al = icmp ugt i64 %.val1.i, %i.ak
  br i1 %i.al, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit29, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit24
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit29: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ai
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ak
  %.val.i.i27 = load i64, ptr %i.am, align 8, !noundef !10
  %.val6.i.i28 = load i64, ptr %i.an, align 8, !noundef !10
  %i.ao = icmp slt i64 %.val.i.i27, %.val6.i.i28  ; 3 uses
  %i.ap = select i1 %i.ao, ptr %i.y, ptr %i.w, !unpredictable !10
  %i.aq = select i1 %i.ah, ptr %i.t, ptr %i.ap, !unpredictable !10 ; 3 uses
  %i.ar = select i1 %i.ah, ptr %i.w, ptr %i.y, !unpredictable !10
  %i.as = select i1 %i.ao, ptr %i.aa, ptr %i.ar, !unpredictable !10 ; 3 uses
  %.val2 = load i32, ptr %i.aq, align 4, !noundef !10
  %i.at = zext i32 %.val2 to i64                  ; 3 uses
  %i.au = icmp ugt i64 %.val1.i, %i.at
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit29
  %.val1 = load i32, ptr %i.as, align 4
  %i.av = zext i32 %.val1 to i64                  ; 3 uses
  %i.aw = icmp ugt i64 %.val1.i, %i.av
  br i1 %i.aw, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit34, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit29
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSm7sort_byNCNCINvMNtCsltEA4u8Pgfu_11candle_core4sortNtBP_7ArgSort5asortxEs_0s_0E0BR_.exit34: ; preds = %bb.n
  %i.ax = select i1 %i.ao, ptr %i.w, ptr %i.aa, !unpredictable !10
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.at
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.av
  %.val.i.i32 = load i64, ptr %i.ay, align 8, !noundef !10
  %.val6.i.i33 = load i64, ptr %i.az, align 8, !noundef !10
  %i.ba = icmp slt i64 %.val.i.i32, %.val6.i.i33  ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.as, ptr %i.aq, !unpredictable !10
  %i.bc = select i1 %i.ba, ptr %i.aq, ptr %i.as, !unpredictable !10
  %i.bd = select i1 %i.ah, i32 %.val7, i32 %.val8
  store i32 %i.bd, ptr %1, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.bb, align 4
  store i32 %i.bf, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bc, align 4
  store i32 %i.bh, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.ax, align 4
  store i32 %i.bj, ptr %i.bi, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stablejNvYjNtNtBa_3cmp10PartialOrd2ltECsltEA4u8Pgfu_11candle_core(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %1, ptr nofree noundef nonnull captures(address) initializes((0, 64)) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i = load i64, ptr %i.a, align 8, !alias.scope !1022, !noalias !1023, !noundef !10
  %.val9.i = load i64, ptr %0, align 8, !alias.scope !1023, !noalias !1022, !noundef !10
  %i.b = icmp ult i64 %.val8.i, %.val9.i          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6.i = load i64, ptr %i.c, align 8, !alias.scope !1022, !noalias !1023, !noundef !10
  %.val7.i = load i64, ptr %i.d, align 8, !alias.scope !1023, !noalias !1022, !noundef !10
  %i.e = icmp ult i64 %.val6.i, %.val7.i          ; 2 uses
  %i.f = zext i1 %i.b to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = xor i1 %i.b, true
  %i.i = zext i1 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i ; 4 uses
  %i.k = select i1 %i.e, i64 3, i64 2
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 3 uses
  %i.m = select i1 %i.e, i64 2, i64 3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 3 uses
  %.val4.i = load i64, ptr %i.l, align 8, !alias.scope !1022, !noalias !1023, !noundef !10 ; 2 uses
  %.val5.i = load i64, ptr %i.g, align 8, !alias.scope !1023, !noalias !1022, !noundef !10 ; 2 uses
  %i.o = icmp ult i64 %.val4.i, %.val5.i          ; 2 uses
  %.val2.i = load i64, ptr %i.n, align 8, !alias.scope !1022, !noalias !1023, !noundef !10
  %.val3.i = load i64, ptr %i.j, align 8, !alias.scope !1023, !noalias !1022, !noundef !10
  %i.p = icmp ult i64 %.val2.i, %.val3.i          ; 3 uses
  %i.q = select i1 %i.p, ptr %i.l, ptr %i.j, !unpredictable !10
  %i.r = select i1 %i.o, ptr %i.g, ptr %i.q, !unpredictable !10 ; 3 uses
  %i.s = select i1 %i.o, ptr %i.j, ptr %i.l, !unpredictable !10
  %i.t = select i1 %i.p, ptr %i.n, ptr %i.s, !unpredictable !10 ; 3 uses
  %.val.i = load i64, ptr %i.t, align 8, !alias.scope !1022, !noalias !1023, !noundef !10
  %.val1.i = load i64, ptr %i.r, align 8, !alias.scope !1023, !noalias !1022, !noundef !10
  %i.u = icmp ult i64 %.val.i, %.val1.i           ; 2 uses
  %i.v = tail call i64 @llvm.umin.i64(i64 %.val4.i, i64 %.val5.i) ; 3 uses
  store i64 %i.v, ptr %2, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val12.i = load i64, ptr %i.t, align 8
  %.val13.i = load i64, ptr %i.r, align 8
  %i.x = select i1 %i.u, i64 %.val12.i, i64 %.val13.i, !unpredictable !10
  store i64 %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val14.i = load i64, ptr %i.r, align 8
  %.val15.i = load i64, ptr %i.t, align 8
  %i.z = select i1 %i.u, i64 %.val14.i, i64 %.val15.i, !unpredictable !10
  store i64 %i.z, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %.val16.i = load i64, ptr %i.j, align 8
  %.val17.i = load i64, ptr %i.n, align 8
  %i.ab = select i1 %i.p, i64 %.val16.i, i64 %.val17.i, !unpredictable !10 ; 3 uses
  store i64 %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ad = getelementptr i8, ptr %2, i64 32        ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8.i1 = load i64, ptr %i.ae, align 8, !alias.scope !1024, !noalias !1025, !noundef !10
  %.val9.i2 = load i64, ptr %i.ac, align 8, !alias.scope !1025, !noalias !1024, !noundef !10
  %i.af = icmp ult i64 %.val8.i1, %.val9.i2       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val6.i3 = load i64, ptr %i.ag, align 8, !alias.scope !1024, !noalias !1025, !noundef !10
  %.val7.i4 = load i64, ptr %i.ah, align 8, !alias.scope !1025, !noalias !1024, !noundef !10
  %i.ai = icmp ult i64 %.val6.i3, %.val7.i4       ; 2 uses
  %i.aj = zext i1 %i.af to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aj ; 2 uses
  %i.al = xor i1 %i.af, true
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.am ; 4 uses
  %i.ao = select i1 %i.ai, i64 3, i64 2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ao ; 3 uses
  %i.aq = select i1 %i.ai, i64 2, i64 3
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aq ; 3 uses
  %.val4.i5 = load i64, ptr %i.ap, align 8, !alias.scope !1024, !noalias !1025, !noundef !10 ; 2 uses
  %.val5.i6 = load i64, ptr %i.ak, align 8, !alias.scope !1025, !noalias !1024, !noundef !10 ; 2 uses
  %i.as = icmp ult i64 %.val4.i5, %.val5.i6       ; 2 uses
  %.val2.i7 = load i64, ptr %i.ar, align 8, !alias.scope !1024, !noalias !1025, !noundef !10
  %.val3.i8 = load i64, ptr %i.an, align 8, !alias.scope !1025, !noalias !1024, !noundef !10
  %i.at = icmp ult i64 %.val2.i7, %.val3.i8       ; 3 uses
  %i.au = select i1 %i.at, ptr %i.ap, ptr %i.an, !unpredictable !10
  %i.av = select i1 %i.as, ptr %i.ak, ptr %i.au, !unpredictable !10 ; 3 uses
  %i.aw = select i1 %i.as, ptr %i.an, ptr %i.ap, !unpredictable !10
  %i.ax = select i1 %i.at, ptr %i.ar, ptr %i.aw, !unpredictable !10 ; 3 uses
  %.val.i9 = load i64, ptr %i.ax, align 8, !alias.scope !1024, !noalias !1025, !noundef !10
  %.val1.i10 = load i64, ptr %i.av, align 8, !alias.scope !1025, !noalias !1024, !noundef !10
  %i.ay = icmp ult i64 %.val.i9, %.val1.i10       ; 2 uses
  %i.az = tail call i64 @llvm.umin.i64(i64 %.val4.i5, i64 %.val5.i6) ; 3 uses
  store i64 %i.az, ptr %i.ad, align 8
  %i.ba = getelementptr i8, ptr %2, i64 40
  %.val12.i11 = load i64, ptr %i.ax, align 8
  %.val13.i12 = load i64, ptr %i.av, align 8
  %i.bb = select i1 %i.ay, i64 %.val12.i11, i64 %.val13.i12, !unpredictable !10
  store i64 %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %2, i64 48
  %.val14.i13 = load i64, ptr %i.av, align 8
  %.val15.i14 = load i64, ptr %i.ax, align 8
  %i.bd = select i1 %i.ay, i64 %.val14.i13, i64 %.val15.i14, !unpredictable !10
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr i8, ptr %2, i64 56        ; 2 uses
  %.val16.i15 = load i64, ptr %i.an, align 8
  %.val17.i16 = load i64, ptr %i.ar, align 8
  %i.bf = select i1 %i.at, i64 %.val16.i15, i64 %.val17.i16, !unpredictable !10 ; 3 uses
  store i64 %i.bf, ptr %i.be, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bh = icmp ult i64 %i.az, %i.v                ; 2 uses
  %i.bi = xor i1 %i.bh, true
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.v)
  store i64 %i.bj, ptr %1, align 8, !noalias !1027
  %i.bk = zext i1 %i.bh to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bk ; 2 uses
  %i.bm = zext i1 %i.bi to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = icmp ult i64 %i.bf, %i.ab               ; 2 uses
  %i.bq = xor i1 %i.bp, true
  %i.br = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.ab)
  store i64 %i.br, ptr %i.bg, align 8, !noalias !1028
  %.neg.i.i = sext i1 %i.bq to i64
  %i.bs = getelementptr [8 x i8], ptr %i.be, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.bp to i64
  %i.bt = getelementptr [8 x i8], ptr %i.aa, i64 %.neg13.i.i ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.011.0.val.i.1 = load i64, ptr %i.bl, align 8, !alias.scope !1029, !noalias !1030, !noundef !10 ; 2 uses
  %.sroa.06.0.val.i.1 = load i64, ptr %i.bn, align 8, !alias.scope !1031, !noalias !1032, !noundef !10 ; 2 uses
  %i.bv = icmp ult i64 %.sroa.011.0.val.i.1, %.sroa.06.0.val.i.1 ; 2 uses
  %i.bw = xor i1 %i.bv, true
  %i.bx = tail call i64 @llvm.umin.i64(i64 %.sroa.011.0.val.i.1, i64 %.sroa.06.0.val.i.1)
  store i64 %i.bx, ptr %i.bo, align 8, !noalias !1027
  %i.by = zext i1 %i.bv to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.by ; 2 uses
  %i.ca = zext i1 %i.bw to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.017.0.val.i.1 = load i64, ptr %i.bs, align 8, !alias.scope !1029, !noalias !1030, !noundef !10 ; 2 uses
  %.sroa.015.0.val.i.1 = load i64, ptr %i.bt, align 8, !alias.scope !1031, !noalias !1032, !noundef !10 ; 2 uses
  %i.cd = icmp ult i64 %.sroa.017.0.val.i.1, %.sroa.015.0.val.i.1 ; 2 uses
  %i.ce = xor i1 %i.cd, true
  %i.cf = tail call i64 @llvm.umax.i64(i64 %.sroa.017.0.val.i.1, i64 %.sroa.015.0.val.i.1)
  store i64 %i.cf, ptr %i.bu, align 8, !noalias !1028
  %.neg.i.i.1 = sext i1 %i.ce to i64
  %i.cg = getelementptr [8 x i8], ptr %i.bs, i64 %.neg.i.i.1 ; 2 uses
  %.neg13.i.i.1 = sext i1 %i.cd to i64
  %i.ch = getelementptr [8 x i8], ptr %i.bt, i64 %.neg13.i.i.1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.011.0.val.i.2 = load i64, ptr %i.bz, align 8, !alias.scope !1029, !noalias !1030, !noundef !10 ; 2 uses
  %.sroa.06.0.val.i.2 = load i64, ptr %i.cb, align 8, !alias.scope !1031, !noalias !1032, !noundef !10 ; 2 uses
  %i.cj = icmp ult i64 %.sroa.011.0.val.i.2, %.sroa.06.0.val.i.2 ; 2 uses
  %i.ck = xor i1 %i.cj, true
  %i.cl = tail call i64 @llvm.umin.i64(i64 %.sroa.011.0.val.i.2, i64 %.sroa.06.0.val.i.2)
  store i64 %i.cl, ptr %i.cc, align 8, !noalias !1027
  %i.cm = zext i1 %i.cj to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cm ; 2 uses
  %i.co = zext i1 %i.ck to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.017.0.val.i.2 = load i64, ptr %i.cg, align 8, !alias.scope !1029, !noalias !1030, !noundef !10 ; 2 uses
  %.sroa.015.0.val.i.2 = load i64, ptr %i.ch, align 8, !alias.scope !1031, !noalias !1032, !noundef !10 ; 2 uses
  %i.cr = icmp ult i64 %.sroa.017.0.val.i.2, %.sroa.015.0.val.i.2 ; 2 uses
  %i.cs = xor i1 %i.cr, true
  %i.ct = tail call i64 @llvm.umax.i64(i64 %.sroa.017.0.val.i.2, i64 %.sroa.015.0.val.i.2)
  store i64 %i.ct, ptr %i.ci, align 8, !noalias !1028
  %.neg.i.i.2 = sext i1 %i.cs to i64
  %i.cu = getelementptr [8 x i8], ptr %i.cg, i64 %.neg.i.i.2 ; 2 uses
  %.neg13.i.i.2 = sext i1 %i.cr to i64
  %i.cv = getelementptr [8 x i8], ptr %i.ch, i64 %.neg13.i.i.2 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.011.0.val.i.3 = load i64, ptr %i.cn, align 8, !alias.scope !1029, !noalias !1030, !noundef !10 ; 2 uses
  %.sroa.06.0.val.i.3 = load i64, ptr %i.cp, align 8, !alias.scope !1031, !noalias !1032, !noundef !10 ; 2 uses
  %i.cx = icmp ult i64 %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3 ; 2 uses
  %i.cy = xor i1 %i.cx, true
  %i.cz = tail call i64 @llvm.umin.i64(i64 %.sroa.011.0.val.i.3, i64 %.sroa.06.0.val.i.3)
  store i64 %i.cz, ptr %i.cq, align 8, !noalias !1027
  %i.da = zext i1 %i.cx to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.da
  %i.dc = zext i1 %i.cy to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dc
  %.sroa.017.0.val.i.3 = load i64, ptr %i.cu, align 8, !alias.scope !1029, !noalias !1030, !noundef !10 ; 2 uses
  %.sroa.015.0.val.i.3 = load i64, ptr %i.cv, align 8, !alias.scope !1031, !noalias !1032, !noundef !10 ; 2 uses
  %i.de = icmp ult i64 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3 ; 2 uses
  %i.df = xor i1 %i.de, true
  %i.dg = tail call i64 @llvm.umax.i64(i64 %.sroa.017.0.val.i.3, i64 %.sroa.015.0.val.i.3)
  store i64 %i.dg, ptr %i.cw, align 8, !noalias !1028
  %.neg.i.i.3 = sext i1 %i.df to i64
  %i.dh = getelementptr [8 x i8], ptr %i.cu, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %i.de to i64
  %i.di = getelementptr [8 x i8], ptr %i.cv, i64 %.neg13.i.i.3
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %i.dk = getelementptr i8, ptr %i.dh, i64 8
end_hunk_0
