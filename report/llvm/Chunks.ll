Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Chunks?download=true
inline.NumInlined: 2172
inline.NumDeleted: 1003
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3lld4coff11applyMOV32TEPhj:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.t, align 8, !tbaa !358, !alias.scope !610
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.u, align 1, !tbaa !359, !alias.scope !610
  call void @_ZN3lld5errorERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %.0.copyload.i.i.i.i.i.i7.i20.pre = load i16, ptr %i.q, align 1
  br label %_ZN3lld4coffL7readMOVEPhb.exit17

_ZN3lld4coffL7readMOVEPhb.exit17:                 ; preds = %bb.f, %bb.g
  %.0.copyload.i.i.i.i.i.i7.i20 = phi i16 [ %.0.copyload.i.i.i.i.i.i28.i13, %bb.f ], [ %.0.copyload.i.i.i.i.i.i7.i20.pre, %bb.g ]
  %i.v = shl i16 %.0.copyload.i.i.i.i.i.i.i, 1
  %i.w = and i16 %i.v, 2048
  %i.x = shl i16 %.0.copyload.i.i.i.i.i.i.i, 12
  %i.y = or disjoint i16 %i.w, %i.x
  %i.z = and i16 %.0.copyload.i.i.i.i.i.i28.i, 255
  %i.aa = or disjoint i16 %i.z, %i.y
  %i.ab = lshr i16 %.0.copyload.i.i.i.i.i.i28.i, 4
  %i.ac = and i16 %i.ab, 1792
  %i.ad = or disjoint i16 %i.aa, %i.ac
  %i.ae = and i16 %.0.copyload.i.i.i.i.i.i28.i13, 255
  %i.af = lshr i16 %.0.copyload.i.i.i.i.i.i28.i13, 4
  %i.ag = and i16 %i.af, 1792
  %i.ah = shl i16 %.0.copyload.i.i.i.i.i.i.i9, 1
  %i.ai = and i16 %i.ah, 2048
  %i.aj = shl i16 %.0.copyload.i.i.i.i.i.i.i9, 12
  %i.ak = or disjoint i16 %i.ai, %i.aj
  %i.al = or disjoint i16 %i.ae, %i.ak
  %i.am = or disjoint i16 %i.al, %i.ag
  %i.an = zext i16 %i.ad to i32
  %i.ao = add i32 %1, %i.an                       ; 2 uses
  %i.ap = trunc i32 %i.ao to i16                  ; 4 uses
  %i.aq = lshr i32 %i.ao, 16
  %.tr = trunc nuw i32 %i.aq to i16
  %.narrow = add i16 %i.am, %.tr                  ; 4 uses
  %.0.copyload.i.i.i.i.i.i.i18 = load i16, ptr %0, align 1
  %i.ar = lshr i16 %i.ap, 1
  %i.as = and i16 %i.ar, 1024
  %i.at = lshr i16 %i.ap, 12
  %i.au = or disjoint i16 %i.as, %i.at
  %i.av = load <2 x i16>, ptr %i.f, align 1
  %i.aw = shl i16 %i.ap, 4
  %i.ax = and i16 %i.aw, 28672
  %i.ay = and i16 %i.ap, 255
  %i.az = or disjoint i16 %i.ax, %i.ay
  %i.ba = lshr i16 %.narrow, 1
  %i.bb = and i16 %i.ba, 1024
  %i.bc = lshr i16 %.narrow, 12
  %i.bd = or disjoint i16 %i.bb, %i.bc
  %i.be = insertelement <4 x i16> poison, i16 %.0.copyload.i.i.i.i.i.i.i18, i64 0
  %i.bf = shufflevector <2 x i16> %i.av, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x i16> %i.be, <4 x i16> %i.bf, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bh = insertelement <4 x i16> %i.bg, i16 %.0.copyload.i.i.i.i.i.i7.i20, i64 3
  %i.bi = and <4 x i16> %i.bh, <i16 -1040, i16 -28928, i16 -1040, i16 -28928>
  %i.bj = shl i16 %.narrow, 4
  %i.bk = and i16 %i.bj, 28672
  %i.bl = and i16 %.narrow, 255
  %i.bm = or disjoint i16 %i.bk, %i.bl
  %i.bn = insertelement <4 x i16> poison, i16 %i.au, i64 0
  %i.bo = insertelement <4 x i16> %i.bn, i16 %i.az, i64 1
  %i.bp = insertelement <4 x i16> %i.bo, i16 %i.bd, i64 2
  %i.bq = insertelement <4 x i16> %i.bp, i16 %i.bm, i64 3
  %i.br = or disjoint <4 x i16> %i.bq, %i.bi
  store <4 x i16> %i.br, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3lld4coff14applyBranch24TEPhi(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = sext i32 %1 to i64
  %i.b = add nsw i64 %i.a, 16777216
  %i.c = icmp ult i64 %i.b, 33554432
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !359
  store ptr @.str.2, ptr %2, align 8, !tbaa !361
  store i8 3, ptr %i.d, align 8, !tbaa !358
  call void @_ZN3lld5errorERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.lobit = lshr i32 %1, 31                       ; 3 uses
  %i.f = xor i32 %1, -1                           ; 2 uses
  %i.g = lshr i32 %i.f, 23
  %i.h = and i32 %i.g, 1
  %i.i = xor i32 %i.h, %.lobit
  %i.j = lshr i32 %i.f, 22
  %i.k = and i32 %i.j, 1
  %i.l = xor i32 %i.k, %.lobit
  %i.m = shl nuw nsw i32 %.lobit, 10
  %i.n = lshr i32 %1, 12
  %i.o = and i32 %i.n, 1023
  %i.p = or disjoint i32 %i.m, %i.o
  %i.q = trunc nuw nsw i32 %i.p to i16
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %0, align 1
  %i.r = or i16 %.0.copyload.i.i.i.i.i.i.i, %i.q
  store i16 %i.r, ptr %0, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.s, align 1
  %i.t = and i16 %.0.copyload.i.i.i.i.i.i, -12288
  %i.u = zext i16 %i.t to i32
  %i.v = shl nuw nsw i32 %i.i, 13
  %i.w = or disjoint i32 %i.v, %i.u
  %i.x = shl nuw nsw i32 %i.l, 11
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = lshr i32 %1, 1
  %i.aa = and i32 %i.z, 2047
  %i.ab = or disjoint i32 %i.y, %i.aa
  %i.ac = trunc nuw i32 %i.ab to i16
  store i16 %i.ac, ptr %i.s, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK3lld4coff12SectionChunk11applyRelARMEPhtPNS0_13OutputSectionEmmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef captures(none) %1, i16 noundef zeroext %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 60
  %.0.copyload.i.i.i = load i32, ptr %i.a, align 1
  %i.b = lshr i32 %.0.copyload.i.i.i, 29
  %i.c = and i32 %i.b, 1
  %i.d = zext nneg i32 %i.c to i64
  %spec.select = or i64 %4, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %4, %bb.a ], [ %spec.select, %bb.b ] ; 7 uses
  switch i16 %2, label %_ZN4llvmplERKNS_5TwineES2_.exit72 [
    i16 1, label %bb.d
    i16 2, label %bb.e
    i16 17, label %bb.f
    i16 18, label %bb.g
    i16 20, label %bb.i
    i16 21, label %bb.k
    i16 14, label %bb.m
    i16 15, label %bb.p
    i16 10, label %bb.q
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = add i64 %.0, %6
  %i.f = trunc i64 %i.e to i32
  %.0.copyload.i.i.i.i.i.i.i = load i32, ptr %1, align 1
  %i.g = add i32 %.0.copyload.i.i.i.i.i.i.i, %i.f
  store i32 %i.g, ptr %1, align 1
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.h = trunc i64 %.0 to i32
  %.0.copyload.i.i.i.i.i.i.i33 = load i32, ptr %1, align 1
  %i.i = add i32 %.0.copyload.i.i.i.i.i.i.i33, %i.h
  store i32 %i.i, ptr %1, align 1
  br label %bb.r

bb.f:                                             ; preds = %bb.c
  %i.j = add i64 %.0, %6
  %i.k = trunc i64 %i.j to i32
  tail call void @_ZN3lld4coff11applyMOV32TEPhj(ptr noundef %1, i32 noundef %i.k)
  br label %bb.r

bb.g:                                             ; preds = %bb.c
  %i.l = sub i64 %.0, %5
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.m, -4                         ; 6 uses
  %i.o = sext i32 %i.n to i64
  %i.p = add nsw i64 %i.o, 1048576
  %i.q = icmp ult i64 %i.p, 2097152
  br i1 %i.q, label %_ZN3lld4coffL14applyBranch20TEPhi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.s, align 1, !tbaa !359
  store ptr @.str.2, ptr %9, align 8, !tbaa !361
  store i8 3, ptr %i.r, align 8, !tbaa !358
  call void @_ZN3lld5errorERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %_ZN3lld4coffL14applyBranch20TEPhi.exit

_ZN3lld4coffL14applyBranch20TEPhi.exit:           ; preds = %bb.g, %bb.h
  %i.t = lshr i32 %i.n, 21
  %i.u = lshr i32 %i.n, 6
  %i.v = lshr i32 %i.n, 7
  %i.w = and i32 %i.v, 2048
  %i.x = lshr i32 %i.n, 1
  %i.y = and i32 %i.t, 1024
  %14 = lshr i32 %i.n, 12
  %i.z = and i32 %14, 63
  %i.aa = or disjoint i32 %i.y, %i.z
  %i.ab = trunc nuw nsw i32 %i.aa to i16
  %i.ac = and i32 %i.u, 8192
  %i.ad = or disjoint i32 %i.ac, %i.w
  %i.ae = and i32 %i.x, 2047
  %i.af = or disjoint i32 %i.ad, %i.ae
  %i.ag = trunc nuw nsw i32 %i.af to i16
  %i.ah = load <2 x i16>, ptr %1, align 1
  %i.ai = insertelement <2 x i16> poison, i16 %i.ab, i64 0
  %i.aj = insertelement <2 x i16> %i.ai, i16 %i.ag, i64 1
  %i.ak = or <2 x i16> %i.ah, %i.aj
  store <2 x i16> %i.ak, ptr %1, align 1
  br label %bb.r

bb.i:                                             ; preds = %bb.c
  %i.al = sub i64 %.0, %5
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %i.an = add i32 %i.am, -4                       ; 4 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = add nsw i64 %i.ao, 16777216
  %i.aq = icmp ult i64 %i.ap, 33554432
  br i1 %i.aq, label %_ZN3lld4coff14applyBranch24TEPhi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.as, align 1, !tbaa !359
  store ptr @.str.2, ptr %8, align 8, !tbaa !361
  store i8 3, ptr %i.ar, align 8, !tbaa !358
  call void @_ZN3lld5errorERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %_ZN3lld4coff14applyBranch24TEPhi.exit

_ZN3lld4coff14applyBranch24TEPhi.exit:            ; preds = %bb.i, %bb.j
  %.lobit.i = lshr i32 %i.an, 31                  ; 3 uses
  %i.at = sub i32 3, %i.am                        ; 2 uses
  %i.au = lshr i32 %i.at, 23
  %i.av = and i32 %i.au, 1
  %i.aw = xor i32 %i.av, %.lobit.i
  %i.ax = lshr i32 %i.at, 22
  %i.ay = and i32 %i.ax, 1
  %i.az = xor i32 %i.ay, %.lobit.i
  %i.ba = shl nuw nsw i32 %.lobit.i, 10
  %i.bb = lshr i32 %i.an, 12
  %i.bc = and i32 %i.bb, 1023
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = trunc nuw nsw i32 %i.bd to i16
  %.0.copyload.i.i.i.i.i.i.i.i34 = load i16, ptr %1, align 1
  %i.bf = or i16 %.0.copyload.i.i.i.i.i.i.i.i34, %i.be
  store i16 %i.bf, ptr %1, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i35 = load i16, ptr %i.bg, align 1
  %i.bh = and i16 %.0.copyload.i.i.i.i.i.i.i35, -12288
  %i.bi = zext i16 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.aw, 13
  %i.bk = or disjoint i32 %i.bj, %i.bi
  %i.bl = shl nuw nsw i32 %i.az, 11
  %i.bm = or disjoint i32 %i.bk, %i.bl
  %i.bn = lshr i32 %i.an, 1
  %i.bo = and i32 %i.bn, 2047
  %i.bp = or disjoint i32 %i.bm, %i.bo
  %i.bq = trunc nuw i32 %i.bp to i16
  store i16 %i.bq, ptr %i.bg, align 1
  br label %bb.r

bb.k:                                             ; preds = %bb.c
  %i.br = sub i64 %.0, %5
  %i.bs = trunc i64 %i.br to i32                  ; 2 uses
  %i.bt = add i32 %i.bs, -4                       ; 4 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = add nsw i64 %i.bu, 16777216
  %i.bw = icmp ult i64 %i.bv, 33554432
  br i1 %i.bw, label %_ZN3lld4coff14applyBranch24TEPhi.exit39, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.by, align 1, !tbaa !359
  store ptr @.str.2, ptr %7, align 8, !tbaa !361
  store i8 3, ptr %i.bx, align 8, !tbaa !358
  call void @_ZN3lld5errorERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %_ZN3lld4coff14applyBranch24TEPhi.exit39

_ZN3lld4coff14applyBranch24TEPhi.exit39:          ; preds = %bb.k, %bb.l
  %.lobit.i36 = lshr i32 %i.bt, 31                ; 3 uses
  %i.bz = sub i32 3, %i.bs                        ; 2 uses
  %i.ca = lshr i32 %i.bz, 23
  %i.cb = and i32 %i.ca, 1
  %i.cc = xor i32 %i.cb, %.lobit.i36
  %i.cd = lshr i32 %i.bz, 22
  %i.ce = and i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, %.lobit.i36
  %i.cg = shl nuw nsw i32 %.lobit.i36, 10
  %i.ch = lshr i32 %i.bt, 12
  %i.ci = and i32 %i.ch, 1023
  %i.cj = or disjoint i32 %i.cg, %i.ci
  %i.ck = trunc nuw nsw i32 %i.cj to i16
  %.0.copyload.i.i.i.i.i.i.i.i37 = load i16, ptr %1, align 1
  %i.cl = or i16 %.0.copyload.i.i.i.i.i.i.i.i37, %i.ck
  store i16 %i.cl, ptr %1, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i38 = load i16, ptr %i.cm, align 1
  %i.cn = and i16 %.0.copyload.i.i.i.i.i.i.i38, -12288
  %i.co = zext i16 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.cc, 13
  %i.cq = or disjoint i32 %i.cp, %i.co
  %i.cr = shl nuw nsw i32 %i.cf, 11
  %i.cs = or disjoint i32 %i.cq, %i.cr
  %i.ct = lshr i32 %i.bt, 1
  %i.cu = and i32 %i.ct, 2047
  %i.cv = or disjoint i32 %i.cs, %i.cu
  %i.cw = trunc nuw i32 %i.cv to i16
  store i16 %i.cw, ptr %i.cm, align 1
  br label %bb.r

bb.m:                                             ; preds = %bb.c
  %.0.copyload.i.i.i.i.i.i.i4.i = load i16, ptr %1, align 1 ; 2 uses
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = load i32, ptr %3, align 8, !tbaa !353
  %i.cy = trunc i32 %i.cx to i16
  %i.cz = add i16 %.0.copyload.i.i.i.i.i.i.i4.i, %i.cy
  br label %_ZN3lld4coffL11applySecIdxEPhPNS0_13OutputSectionEj.exit

bb.o:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !36
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !54, !nonnull !55, !align !56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !128, !nonnull !55, !align !56 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2488
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !354
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 2480
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !355
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dh, %i.dk
  %i.dm = lshr exact i64 %i.dl, 3
  %i.dn = trunc i64 %i.dm to i16
  %i.do = add i16 %.0.copyload.i.i.i.i.i.i.i4.i, 1
  %i.dp = add i16 %i.do, %i.dn
  br label %_ZN3lld4coffL11applySecIdxEPhPNS0_13OutputSectionEj.exit

_ZN3lld4coffL11applySecIdxEPhPNS0_13OutputSectionEj.exit: ; preds = %bb.n, %bb.o
  %storemerge.i = phi i16 [ %i.cz, %bb.n ], [ %i.dp, %bb.o ]
  store i16 %storemerge.i, ptr %1, align 1
  br label %bb.r

bb.p:                                             ; preds = %bb.c
  tail call fastcc void @_ZN3lld4coffL11applySecRelEPKNS0_12SectionChunkEPhPNS0_13OutputSectionEm(ptr noundef %0, ptr noundef %1, ptr noundef %3, i64 noundef %4)
  br label %bb.r

bb.q:                                             ; preds = %bb.c
  %i.dq = sub i64 %.0, %5
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = add i32 %i.dr, -4
  %.0.copyload.i.i.i.i.i.i.i40 = load i32, ptr %1, align 1
  %i.dt = add i32 %i.ds, %.0.copyload.i.i.i.i.i.i.i40
  store i32 %i.dt, ptr %1, align 1
  br label %bb.r

_ZN4llvmplERKNS_5TwineES2_.exit72:                ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.du = zext i16 %2 to i64
  %i.dv = inttoptr i64 %i.du to ptr
  store ptr @.str, ptr %12, align 8, !alias.scope !623
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.dv, ptr %i.dw, align 8, !alias.scope !623
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 3, ptr %i.dx, align 8, !tbaa !358, !alias.scope !623
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 15, ptr %i.dy, align 1, !tbaa !359, !alias.scope !623
  store ptr %12, ptr %11, align 8, !alias.scope !624
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.1, ptr %i.dz, align 8, !alias.scope !624
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.ea, align 8, !tbaa !358, !alias.scope !624
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.eb, align 1, !tbaa !359, !alias.scope !624
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !36
  call void @_ZN3lld8toStringB5cxx11EPKNS_4coff9InputFileE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %i.ed) #29
  store ptr %11, ptr %10, align 8, !alias.scope !625
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %13, ptr %i.ee, align 8, !alias.scope !625
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 2, ptr %i.ef, align 8, !tbaa !358, !alias.scope !625
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 4, ptr %i.eg, align 1, !tbaa !359, !alias.scope !625
  call void @_ZN3lld5errorERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %10) #29
  %i.eh = load ptr, ptr %13, align 8, !tbaa !360  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
end_hunk_0
