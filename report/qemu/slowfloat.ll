Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/slowfloat?download=true
inline.NumInlined: 295
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@slow_f128M_mulAdd:bb.a
bb.f:                                             ; preds = %f128MToFloatX256.exit
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = icmp ne i64 %.val5, 0
  %or.cond.i.i21 = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond.i.i21, label %f128MToFloatX256.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  br label %f128MToFloatX256.exit22

bb.h:                                             ; preds = %f128MToFloatX256.exit
  %i.ak = icmp ne i64 %i.ah, 0
  %i.al = icmp ne i64 %.val5, 0
  %or.cond5.i.i9 = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond5.i.i9, label %.preheader.i.i17, label %f128MToFloatX256.exit22

.preheader.i.i17:                                 ; preds = %bb.h, %.preheader.i.i17
  %.sroa.08.0.i.i18 = phi i64 [ %i.ao, %.preheader.i.i17 ], [ %.val5, %bb.h ]
  %.sroa.8.0.i.i19 = phi i64 [ %i.ap, %.preheader.i.i17 ], [ %i.ah, %bb.h ]
  %.0.i.i20 = phi i64 [ %i.am, %.preheader.i.i17 ], [ -16382, %bb.h ]
  %i.am = add nsw i64 %.0.i.i20, -1               ; 2 uses
  %i.an = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i.i18, i64 %.sroa.8.0.i.i19, i32 noundef 1) #10 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0      ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.an, 1      ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 281474976710656
  br i1 %i.aq, label %.preheader.i.i17, label %f128MToFloatX256.exit22

bb.i:                                             ; preds = %f128MToFloatX256.exit
  %i.ar = add nsw i64 %i.ag, -16383
  %i.as = or disjoint i64 %i.ah, 281474976710656
  br label %f128MToFloatX256.exit22

f128MToFloatX256.exit22:                          ; preds = %.preheader.i.i17, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.131.0.i10 = phi i64 [ %i.ar, %bb.i ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.am, %.preheader.i.i17 ]
  %.sroa.8.0.i11 = phi i8 [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.g ], [ 1, %bb.h ], [ 0, %.preheader.i.i17 ] ; 2 uses
  %.sroa.5.0.i12 = phi i1 [ false, %bb.i ], [ false, %bb.f ], [ true, %bb.g ], [ false, %bb.h ], [ false, %.preheader.i.i17 ]
  %.sroa.0.0.i13 = phi i1 [ false, %bb.i ], [ true, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %.preheader.i.i17 ]
  %.sroa.08.1.i.i14 = phi i64 [ %.val5, %bb.i ], [ %.val5, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ %i.ao, %.preheader.i.i17 ]
  %.sroa.8.1.i.i15 = phi i64 [ %i.as, %bb.i ], [ %i.ah, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ %i.ap, %.preheader.i.i17 ]
  %.lobit.i.i16 = lshr i64 %.val6, 63
  %i.at = trunc nuw nsw i64 %.lobit.i.i16 to i8   ; 2 uses
  %i.au = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i.i14, i64 %.sroa.8.1.i.i15, i32 noundef 7) #10 ; 2 uses
  %i.av = extractvalue { i64, i64 } %i.au, 0
  %i.aw = extractvalue { i64, i64 } %i.au, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 3
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.be = trunc nuw i8 %i.s to i1
  br i1 %i.be, label %floatX256Mul.exit, label %bb.j

bb.j:                                             ; preds = %f128MToFloatX256.exit22
  br i1 %.sroa.0.0.i13, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %6, align 8, !tbaa !41
  store i8 0, ptr %i.x, align 1, !tbaa !42
  store i8 0, ptr %i.y, align 2, !tbaa !43
  store i8 %i.at, ptr %i.z, align 1, !tbaa !44
  br label %floatX256Mul.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = icmp slt i64 %.val6, 0
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bg = xor i8 %i.t, 1                          ; 2 uses
  store i8 %i.bg, ptr %i.z, align 1, !tbaa !44
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bh = phi i8 [ %i.bg, %bb.m ], [ %i.t, %bb.l ] ; 4 uses
  %i.bi = trunc nuw i8 %i.r to i1
  br i1 %i.bi, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bj = trunc nuw i8 %.sroa.8.0.i11 to i1
  br i1 %i.bj, label %bb.p, label %floatX256Mul.exit

bb.p:                                             ; preds = %bb.o
  %i.bk = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.bl = or i8 %i.bk, 16
  store i8 %i.bl, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @floatX256NaN, i64 48, i1 false), !tbaa.struct !48
  br label %floatX256Mul.exit

bb.q:                                             ; preds = %bb.n
  br i1 %.sroa.5.0.i12, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bm = trunc nuw i8 %i.q to i1
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.bo = or i8 %i.bn, 16
  store i8 %i.bo, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @floatX256NaN, i64 48, i1 false), !tbaa.struct !48
  br label %floatX256Mul.exit

bb.t:                                             ; preds = %bb.r
  store i8 1, ptr %i.x, align 1, !tbaa !42
  br label %floatX256Mul.exit

bb.u:                                             ; preds = %bb.q
  %i.bp = or i8 %i.q, %.sroa.8.0.i11
  %or.cond.not = icmp eq i8 %i.bp, 0
  br i1 %or.cond.not, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = trunc nuw i8 %i.bh to i1
  br i1 %i.bq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @floatX256NegativeZero, i64 48, i1 false), !tbaa.struct !48
  br label %floatX256Mul.exit

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @floatX256PositiveZero, i64 48, i1 false), !tbaa.struct !48
  br label %floatX256Mul.exit

bb.y:                                             ; preds = %bb.u
  %i.br = add nsw i64 %i.p, %.sroa.131.0.i10      ; 3 uses
  store i64 %i.br, ptr %i.aa, align 8, !tbaa !45
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %.046.i = phi i32 [ 0, %bb.y ], [ %i.cn, %bb.ab ]
  %.sroa.0.045.i = phi i64 [ 0, %bb.y ], [ %i.cc, %bb.ab ] ; 2 uses
  %.sroa.10.044.i = phi i64 [ 0, %bb.y ], [ %i.bz, %bb.ab ] ; 2 uses
  %.sroa.17.043.i = phi i64 [ 0, %bb.y ], [ %.sroa.17.1.i, %bb.ab ] ; 2 uses
  %.sroa.24.042.i = phi i64 [ 0, %bb.y ], [ %.sroa.24.1.i, %bb.ab ] ; 2 uses
  %i.bt = phi i64 [ 0, %bb.y ], [ %i.cj, %bb.ab ] ; 2 uses
  %i.bu = phi i64 [ 0, %bb.y ], [ %i.ck, %bb.ab ] ; 2 uses
  %i.bv = phi i64 [ %i.v, %bb.y ], [ %i.cl, %bb.ab ] ; 2 uses
  %i.bw = phi i64 [ %i.w, %bb.y ], [ %i.cm, %bb.ab ] ; 2 uses
  %i.bx = and i64 %.sroa.0.045.i, 1
  %i.by = tail call i64 @llvm.fshl.i64(i64 %.sroa.10.044.i, i64 %.sroa.0.045.i, i64 63) ; 2 uses
  %i.bz = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.043.i, i64 %.sroa.10.044.i, i64 63) ; 4 uses
  %i.ca = tail call i64 @llvm.fshl.i64(i64 %.sroa.24.042.i, i64 %.sroa.17.043.i, i64 63) ; 3 uses
  %i.cb = lshr i64 %.sroa.24.042.i, 1             ; 2 uses
  %i.cc = or i64 %i.by, %i.bx                     ; 3 uses
  %i.cd = and i64 %i.bt, 1
  %.not.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = add i64 %i.ca, %i.av                    ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.ca
  %i.cg = zext i1 %i.cf to i64
  %i.ch = add i64 %i.cb, %i.aw
  %i.ci = add i64 %i.ch, %i.cg
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.24.1.i = phi i64 [ %i.cb, %bb.z ], [ %i.ci, %bb.aa ] ; 5 uses
  %.sroa.17.1.i = phi i64 [ %i.ca, %bb.z ], [ %i.ce, %bb.aa ] ; 4 uses
  %i.cj = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bt, i64 63)
  %i.ck = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bu, i64 63)
  %i.cl = tail call i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bv, i64 63)
  %i.cm = lshr i64 %i.bw, 1
  %i.cn = add nuw nsw i32 %.046.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cn, 248
  br i1 %exitcond.not.i, label %bb.ac, label %bb.z

bb.ac:                                            ; preds = %bb.ab
  %i.co = icmp ugt i64 %.sroa.24.1.i, 72057594037927935
  br i1 %i.co, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cp = add nsw i64 %i.br, 1                    ; 2 uses
  store i64 %i.cp, ptr %i.aa, align 8, !tbaa !45
  %i.cq = and i64 %i.cc, 1
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.by, i64 63)
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.1.i, i64 %i.bz, i64 63)
  %i.ct = tail call i64 @llvm.fshl.i64(i64 %.sroa.24.1.i, i64 %.sroa.17.1.i, i64 63)
  %i.cu = lshr i64 %.sroa.24.1.i, 1
  %i.cv = or i64 %i.cr, %i.cq
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cw = phi i64 [ %i.cp, %bb.ad ], [ %i.br, %bb.ac ]
  %.sroa.24.2.i = phi i64 [ %i.cu, %bb.ad ], [ %.sroa.24.1.i, %bb.ac ] ; 2 uses
  %.sroa.17.2.i = phi i64 [ %i.ct, %bb.ad ], [ %.sroa.17.1.i, %bb.ac ] ; 2 uses
  %.sroa.10.2.i = phi i64 [ %i.cs, %bb.ad ], [ %i.bz, %bb.ac ] ; 2 uses
  %.sroa.0.2.i = phi i64 [ %i.cv, %bb.ad ], [ %i.cc, %bb.ac ] ; 2 uses
  store i64 %.sroa.0.2.i, ptr %i.ab, align 8, !tbaa !26
  store i64 %.sroa.10.2.i, ptr %i.bs, align 8, !tbaa !26
  store i64 %.sroa.17.2.i, ptr %i.ad, align 8, !tbaa !26
  store i64 %.sroa.24.2.i, ptr %i.ac, align 8, !tbaa !26
  br label %floatX256Mul.exit

floatX256Mul.exit:                                ; preds = %f128MToFloatX256.exit22, %bb.k, %bb.o, %bb.p, %bb.s, %bb.t, %bb.w, %bb.x, %bb.ae
  %.promoted72.i = phi i64 [ 0, %f128MToFloatX256.exit22 ], [ 0, %bb.k ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ %.sroa.0.2.i, %bb.ae ] ; 4 uses
  %.promoted74.i = phi i64 [ 0, %f128MToFloatX256.exit22 ], [ 0, %bb.k ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ %.sroa.10.2.i, %bb.ae ] ; 4 uses
  %.promoted76.i = phi i64 [ %i.v, %f128MToFloatX256.exit22 ], [ %i.v, %bb.k ], [ %i.v, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ %i.v, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ %.sroa.17.2.i, %bb.ae ] ; 4 uses
  %.promoted78.i = phi i64 [ %i.w, %f128MToFloatX256.exit22 ], [ %i.w, %bb.k ], [ %i.w, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ %i.w, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ %.sroa.24.2.i, %bb.ae ] ; 4 uses
  %i.cx = phi i64 [ %i.p, %f128MToFloatX256.exit22 ], [ %i.p, %bb.k ], [ %i.p, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ %i.p, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ %i.cw, %bb.ae ] ; 4 uses
  %i.cy = phi i8 [ %i.t, %f128MToFloatX256.exit22 ], [ %i.at, %bb.k ], [ %i.bh, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ %i.bh, %bb.t ], [ 1, %bb.w ], [ 0, %bb.x ], [ %i.bh, %bb.ae ] ; 9 uses
  %i.cz = phi i8 [ %i.q, %f128MToFloatX256.exit22 ], [ 0, %bb.k ], [ %i.q, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.t ], [ 1, %bb.w ], [ 1, %bb.x ], [ %i.q, %bb.ae ] ; 2 uses
  %i.da = phi i8 [ %i.r, %f128MToFloatX256.exit22 ], [ 0, %bb.k ], [ 1, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], [ 1, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.ae ]
  %i.db = phi i1 [ true, %f128MToFloatX256.exit22 ], [ true, %bb.k ], [ false, %bb.o ], [ true, %bb.p ], [ true, %bb.s ], [ false, %bb.t ], [ false, %bb.w ], [ false, %bb.x ], [ false, %bb.ae ]
  %.val = load i64, ptr %2, align 8, !tbaa !34    ; 5 uses
  %i.dc = getelementptr i8, ptr %2, i64 8
  %.val4 = load i64, ptr %i.dc, align 8, !tbaa !33 ; 3 uses
  %i.dd = lshr i64 %.val4, 48
  %i.de = and i64 %i.dd, 32767                    ; 2 uses
  %i.df = and i64 %.val4, 281474976710655         ; 5 uses
  switch i64 %i.de, label %bb.ai [
    i64 32767, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %floatX256Mul.exit
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = icmp ne i64 %.val, 0
  %or.cond.i.i35 = select i1 %i.dg, i1 true, i1 %i.dh
  br i1 %or.cond.i.i35, label %f128MToFloatX256.exit36, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br label %f128MToFloatX256.exit36

bb.ah:                                            ; preds = %floatX256Mul.exit
  %i.di = icmp ne i64 %i.df, 0
  %i.dj = icmp ne i64 %.val, 0
  %or.cond5.i.i23 = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %or.cond5.i.i23, label %.preheader.i.i31, label %f128MToFloatX256.exit36

.preheader.i.i31:                                 ; preds = %bb.ah, %.preheader.i.i31
  %.sroa.08.0.i.i32 = phi i64 [ %i.dm, %.preheader.i.i31 ], [ %.val, %bb.ah ]
  %.sroa.8.0.i.i33 = phi i64 [ %i.dn, %.preheader.i.i31 ], [ %i.df, %bb.ah ]
  %.0.i.i34 = phi i64 [ %i.dk, %.preheader.i.i31 ], [ -16382, %bb.ah ]
  %i.dk = add nsw i64 %.0.i.i34, -1               ; 2 uses
  %i.dl = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.0.i.i32, i64 %.sroa.8.0.i.i33, i32 noundef 1) #10 ; 2 uses
  %i.dm = extractvalue { i64, i64 } %i.dl, 0      ; 2 uses
  %i.dn = extractvalue { i64, i64 } %i.dl, 1      ; 3 uses
  %i.do = icmp ult i64 %i.dn, 281474976710656
  br i1 %i.do, label %.preheader.i.i31, label %f128MToFloatX256.exit36

bb.ai:                                            ; preds = %floatX256Mul.exit
  %i.dp = add nsw i64 %i.de, -16383
  %i.dq = or disjoint i64 %i.df, 281474976710656
  br label %f128MToFloatX256.exit36

f128MToFloatX256.exit36:                          ; preds = %.preheader.i.i31, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.sroa.131.0.i24 = phi i64 [ %i.dp, %bb.ai ], [ undef, %bb.af ], [ undef, %bb.ag ], [ undef, %bb.ah ], [ %i.dk, %.preheader.i.i31 ] ; 6 uses
  %.sroa.8.0.i25 = phi i8 [ 0, %bb.ai ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 1, %bb.ah ], [ 0, %.preheader.i.i31 ] ; 3 uses
  %.sroa.5.0.i26 = phi i8 [ 0, %bb.ai ], [ 0, %bb.af ], [ 1, %bb.ag ], [ 0, %bb.ah ], [ 0, %.preheader.i.i31 ] ; 2 uses
  %.sroa.0.0.i27 = phi i8 [ 0, %bb.ai ], [ 1, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %.preheader.i.i31 ] ; 2 uses
  %.sroa.08.1.i.i28 = phi i64 [ %.val, %bb.ai ], [ %.val, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ %i.dm, %.preheader.i.i31 ]
  %.sroa.8.1.i.i29 = phi i64 [ %i.dq, %bb.ai ], [ %i.df, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ %i.dn, %.preheader.i.i31 ]
  %.lobit.i.i30 = lshr i64 %.val4, 63
  %i.dr = trunc nuw nsw i64 %.lobit.i.i30 to i8   ; 7 uses
  %i.ds = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.08.1.i.i28, i64 %.sroa.8.1.i.i29, i32 noundef 7) #10 ; 2 uses
  %i.dt = extractvalue { i64, i64 } %i.ds, 0      ; 2 uses
  %i.du = extractvalue { i64, i64 } %i.ds, 1      ; 2 uses
  store i8 %.sroa.0.0.i27, ptr %7, align 8, !tbaa !41
  store i8 %.sroa.5.0.i26, ptr %i.ax, align 1, !tbaa !42
  store i8 %.sroa.8.0.i25, ptr %i.ay, align 2, !tbaa !43
  store i8 %i.dr, ptr %i.az, align 1, !tbaa !44
  store i64 %.sroa.131.0.i24, ptr %i.ba, align 8, !tbaa !45
  store i64 %i.du, ptr %i.bc, align 8, !tbaa !46
  store i64 %i.dt, ptr %i.bd, align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  br i1 %i.db, label %floatX256Add.exit, label %bb.aj

bb.aj:                                            ; preds = %f128MToFloatX256.exit36
  %i.dv = trunc nuw i8 %.sroa.0.0.i27 to i1
  br i1 %i.dv, label %bb.bx, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dw = trunc nuw i8 %i.da to i1
  %i.dx = trunc nuw i8 %.sroa.5.0.i26 to i1       ; 2 uses
  br i1 %i.dw, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %.not61.i = icmp ne i8 %i.cy, %i.dr
  %or.cond48.not = select i1 %i.dx, i1 %.not61.i, i1 false
  br i1 %or.cond48.not, label %bb.am, label %floatX256Add.exit

bb.am:                                            ; preds = %bb.al
  %i.dy = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.dz = or i8 %i.dy, 16
  store i8 %i.dz, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @floatX256NaN, i64 48, i1 false), !tbaa.struct !48
  br label %floatX256Add.exit

bb.an:                                            ; preds = %bb.ak
  br i1 %i.dx, label %bb.bx, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ea = trunc nuw i8 %i.cz to i1
  %i.eb = and i8 %i.cz, %.sroa.8.0.i25
  %or.cond49.not = icmp eq i8 %i.eb, 0
  br i1 %or.cond49.not, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ec = icmp eq i8 %i.cy, %i.dr
  br i1 %i.ec, label %floatX256Add.exit, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %.not.i37 = icmp ne i8 %i.cy, %i.dr
  %i.ed = icmp eq i64 %i.cx, %.sroa.131.0.i24
  %or.cond.i = select i1 %.not.i37, i1 %i.ed, i1 false
  %i.ee = icmp eq i64 %.promoted78.i, %i.du
  %or.cond51 = select i1 %or.cond.i, i1 %i.ee, i1 false
  %i.ef = icmp eq i64 %.promoted76.i, %i.dt
  %or.cond53 = select i1 %or.cond51, i1 %i.ef, i1 false
  br i1 %or.cond53, label %bb.ar, label %eq256M.exit.thread.i

bb.ar:                                            ; preds = %bb.aq
  %i.eg = icmp eq i64 %.promoted74.i, 0
  %i.eh = icmp eq i64 %.promoted72.i, 0
  %or.cond55 = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %or.cond55, label %bb.as, label %eq256M.exit.thread.i

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %i.ei = load i8, ptr @slowfloat_roundingMode, align 1, !tbaa !27
  %i.ej = icmp eq i8 %i.ei, 2
  br i1 %i.ej, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @floatX256NegativeZero, i64 48, i1 false), !tbaa.struct !48
  br label %floatX256Add.exit

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @floatX256PositiveZero, i64 48, i1 false), !tbaa.struct !48
  br label %floatX256Add.exit

eq256M.exit.thread.i:                             ; preds = %bb.ar, %bb.aq
  br i1 %i.ea, label %bb.bx, label %bb.av

bb.av:                                            ; preds = %eq256M.exit.thread.i
  %i.ek = trunc nuw i8 %.sroa.8.0.i25 to i1
  br i1 %i.ek, label %floatX256Add.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.el = sub nsw i64 %i.cx, %.sroa.131.0.i24     ; 7 uses
  %i.em = icmp slt i64 %i.el, 0
  br i1 %i.em, label %bb.ax, label %bb.bh

bb.ax:                                            ; preds = %bb.aw
  store i64 %.sroa.131.0.i24, ptr %i.aa, align 8, !tbaa !45
  %i.en = icmp samesign ult i64 %i.el, -248
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  br i1 %i.en, label %bb.ay, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.ax
  %i.ep = sub i64 %.sroa.131.0.i24, %i.cx
  %.neg205 = add i64 %i.cx, 1
  %xtraiter199 = and i64 %i.ep, 1
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader
  %i.eq = add nsw i64 %i.el, 1
  %i.er = and i64 %.promoted72.i, 1
  %i.es = tail call i64 @llvm.fshl.i64(i64 %.promoted74.i, i64 %.promoted72.i, i64 63)
  %i.et = tail call i64 @llvm.fshl.i64(i64 %.promoted76.i, i64 %.promoted74.i, i64 63) ; 2 uses
  %i.eu = tail call i64 @llvm.fshl.i64(i64 %.promoted78.i, i64 %.promoted76.i, i64 63) ; 2 uses
  %i.ev = lshr i64 %.promoted78.i, 1              ; 2 uses
  %i.ew = or i64 %i.es, %i.er                     ; 2 uses
  br label %.preheader.i.prol.loopexit

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.lcssa179.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.et, %.preheader.i.prol ]
  %.lcssa178.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.eu, %.preheader.i.prol ]
  %.lcssa177.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.ev, %.preheader.i.prol ]
  %.lcssa176.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.ew, %.preheader.i.prol ]
  %.unr201 = phi i64 [ %.promoted78.i, %.preheader.i.preheader ], [ %i.ev, %.preheader.i.prol ]
  %.unr202 = phi i64 [ %.promoted76.i, %.preheader.i.preheader ], [ %i.eu, %.preheader.i.prol ]
  %.unr203 = phi i64 [ %.promoted74.i, %.preheader.i.preheader ], [ %i.et, %.preheader.i.prol ]
  %.unr204 = phi i64 [ %.promoted72.i, %.preheader.i.preheader ], [ %i.ew, %.preheader.i.prol ]
  %.071.i.unr = phi i64 [ %i.el, %.preheader.i.preheader ], [ %i.eq, %.preheader.i.prol ]
  %i.ex = icmp eq i64 %.sroa.131.0.i24, %.neg205
  br i1 %i.ex, label %.loopexit.i, label %.preheader.i

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.ab, align 8, !tbaa !49
  br label %bb.az

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %i.ey = phi i64 [ %i.fm, %.preheader.i ], [ %.unr201, %.preheader.i.prol.loopexit ] ; 3 uses
  %i.ez = phi i64 [ %i.fl, %.preheader.i ], [ %.unr202, %.preheader.i.prol.loopexit ] ; 2 uses
  %i.fa = phi i64 [ %i.fk, %.preheader.i ], [ %.unr203, %.preheader.i.prol.loopexit ] ; 2 uses
  %i.fb = phi i64 [ %i.fn, %.preheader.i ], [ %.unr204, %.preheader.i.prol.loopexit ] ; 2 uses
  %.071.i = phi i64 [ %i.fh, %.preheader.i ], [ %.071.i.unr, %.preheader.i.prol.loopexit ]
  %i.fc = tail call i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fb, i64 63) ; 2 uses
  %i.fd = tail call i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.fa, i64 63) ; 2 uses
  %i.fe = tail call i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ez, i64 63) ; 2 uses
  %i.ff = lshr i64 %i.ey, 1
  %i.fg = or i64 %i.fc, %i.fb
  %i.fh = add nsw i64 %.071.i, 2                  ; 2 uses
  %i.fi = and i64 %i.fg, 1
  %i.fj = tail call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fc, i64 63)
  %i.fk = tail call i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fd, i64 63) ; 2 uses
  %i.fl = tail call i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.fe, i64 63) ; 2 uses
  %i.fm = lshr i64 %i.ey, 2                       ; 2 uses
  %i.fn = or i64 %i.fj, %i.fi                     ; 2 uses
  %exitcond.not.i39.1 = icmp eq i64 %i.fh, 0
  br i1 %exitcond.not.i39.1, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %.preheader.i.prol.loopexit
  %.lcssa179 = phi i64 [ %.lcssa179.unr, %.preheader.i.prol.loopexit ], [ %i.fk, %.preheader.i ] ; 2 uses
  %.lcssa178 = phi i64 [ %.lcssa178.unr, %.preheader.i.prol.loopexit ], [ %i.fl, %.preheader.i ] ; 2 uses
  %.lcssa177 = phi i64 [ %.lcssa177.unr, %.preheader.i.prol.loopexit ], [ %i.fm, %.preheader.i ] ; 2 uses
  %.lcssa176 = phi i64 [ %.lcssa176.unr, %.preheader.i.prol.loopexit ], [ %i.fn, %.preheader.i ] ; 2 uses
  store i64 %.lcssa176, ptr %i.ab, align 8, !tbaa !36
  store i64 %.lcssa179, ptr %i.eo, align 8, !tbaa !37
  store i64 %.lcssa178, ptr %i.ad, align 8, !tbaa !38
  store i64 %.lcssa177, ptr %i.ac, align 8, !tbaa !39
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.i, %bb.ay
  %i.fo = phi i64 [ %.lcssa178, %.loopexit.i ], [ 0, %bb.ay ] ; 3 uses
  %i.fp = phi i64 [ %.lcssa177, %.loopexit.i ], [ 0, %bb.ay ] ; 3 uses
  %i.fq = phi i64 [ %.lcssa176, %.loopexit.i ], [ 1, %bb.ay ] ; 3 uses
  %i.fr = phi i64 [ %.lcssa179, %.loopexit.i ], [ 0, %bb.ay ] ; 3 uses
  %.not59.i = icmp eq i8 %i.cy, %i.dr
  br i1 %.not59.i, label %neg256M.exit47, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ft = or i64 %i.fq, %i.fr
  %.not.i44 = icmp eq i64 %i.ft, 0
  br i1 %.not.i44, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fu = xor i64 %i.fp, -1
  store i64 %i.fu, ptr %i.ac, align 8, !tbaa !39
  %i.fv = xor i64 %i.fo, -1
  store i64 %i.fv, ptr %i.ad, align 8, !tbaa !38
  %.not24.i45 = icmp eq i64 %i.fq, 0
  br i1 %.not24.i45, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fw = xor i64 %i.fr, -1
  store i64 %i.fw, ptr %i.fs, align 8, !tbaa !37
  %i.fx = sub i64 0, %i.fq
  store i64 %i.fx, ptr %i.ab, align 8, !tbaa !36
  br label %neg256M.exit47

bb.bd:                                            ; preds = %bb.bb
  %i.fy = sub i64 0, %i.fr
  store i64 %i.fy, ptr %i.fs, align 8, !tbaa !37
  br label %neg256M.exit47

bb.be:                                            ; preds = %bb.ba
  %.not23.i46 = icmp eq i64 %i.fo, 0
  br i1 %.not23.i46, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fz = xor i64 %i.fp, -1
  store i64 %i.fz, ptr %i.ac, align 8, !tbaa !39
  %i.ga = sub i64 0, %i.fo
  store i64 %i.ga, ptr %i.ad, align 8, !tbaa !38
  br label %neg256M.exit47

bb.bg:                                            ; preds = %bb.be
  %i.gb = sub nsw i64 0, %i.fp
  store i64 %i.gb, ptr %i.ac, align 8, !tbaa !39
  br label %neg256M.exit47

neg256M.exit47:                                   ; preds = %bb.bg, %bb.bf, %bb.bd, %bb.bc, %bb.az
  store i8 %i.dr, ptr %i.z, align 1, !tbaa !44
  br label %neg256M.exit.i

bb.bh:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !tbaa.struct !50
  %i.gc = icmp samesign ugt i64 %i.el, 248
  br i1 %i.gc, label %bb.bi, label %.preheader62.i

.preheader62.i:                                   ; preds = %bb.bh
  %.promoted.i38 = load i64, ptr %5, align 8      ; 2 uses
  %.not80.i = icmp eq i64 %i.el, 0
  br i1 %.not80.i, label %.loopexit63.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader62.i
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %.promoted65.i = load i64, ptr %i.gd, align 8, !tbaa !37
  %.promoted67.i = load i64, ptr %i.ge, align 8, !tbaa !38
  %.promoted69.i = load i64, ptr %i.gf, align 8, !tbaa !39
  br label %.lr.ph.i.new

bb.bi:                                            ; preds = %bb.bh
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, i8 0, i64 24, i1 false)
  br label %.loopexit63.i

.lr.ph.i.new:                                     ; preds = %.lr.ph.i.new, %.lr.ph.i
  %i.gh = phi i64 [ %.promoted69.i, %.lr.ph.i ], [ %i.gq, %.lr.ph.i.new ] ; 2 uses
  %i.gi = phi i64 [ %.promoted67.i, %.lr.ph.i ], [ %i.gp, %.lr.ph.i.new ] ; 2 uses
  %i.gj = phi i64 [ %.promoted65.i, %.lr.ph.i ], [ %i.go, %.lr.ph.i.new ] ; 2 uses
  %.164.i = phi i64 [ %i.el, %.lr.ph.i ], [ %i.gl, %.lr.ph.i.new ] ; 2 uses
  %i.gk = phi i64 [ %.promoted.i38, %.lr.ph.i ], [ %i.gr, %.lr.ph.i.new ] ; 2 uses
  %i.gl = add nsw i64 %.164.i, -1
  %i.gm = and i64 %i.gk, 1
  %i.gn = tail call i64 @llvm.fshl.i64(i64 %i.gj, i64 %i.gk, i64 63)
  %i.go = tail call i64 @llvm.fshl.i64(i64 %i.gi, i64 %i.gj, i64 63) ; 2 uses
  %i.gp = tail call i64 @llvm.fshl.i64(i64 %i.gh, i64 %i.gi, i64 63) ; 2 uses
  %i.gq = lshr i64 %i.gh, 1                       ; 2 uses
  %i.gr = or i64 %i.gn, %i.gm                     ; 2 uses
  %8 = icmp samesign ugt i64 %.164.i, 1
  br i1 %8, label %.lr.ph.i.new, label %..loopexit63_crit_edge.i

..loopexit63_crit_edge.i:                         ; preds = %.lr.ph.i.new
  store i64 %i.go, ptr %i.gd, align 8, !tbaa !37
  store i64 %i.gp, ptr %i.ge, align 8, !tbaa !38
  store i64 %i.gq, ptr %i.gf, align 8, !tbaa !39
  br label %.loopexit63.i

.loopexit63.i:                                    ; preds = %.preheader62.i, %..loopexit63_crit_edge.i, %bb.bi
  %i.gs = phi i64 [ 1, %bb.bi ], [ %i.gr, %..loopexit63_crit_edge.i ], [ %.promoted.i38, %.preheader62.i ] ; 4 uses
  store i64 %i.gs, ptr %5, align 8
  %.not58.i = icmp eq i8 %i.cy, %i.dr
  br i1 %.not58.i, label %neg256M.exit.i, label %bb.bj

bb.bj:                                            ; preds = %.loopexit63.i
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !37 ; 3 uses
  %i.gv = or i64 %i.gu, %i.gs
  %.not.i.i = icmp eq i64 %i.gv, 0
  br i1 %.not.i.i, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gx = load <2 x i64>, ptr %i.gw, align 8, !tbaa !26
  %i.gy = xor <2 x i64> %i.gx, splat (i64 -1)
  store <2 x i64> %i.gy, ptr %i.gw, align 8, !tbaa !26
  %.not24.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not24.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gz = xor i64 %i.gu, -1
  store i64 %i.gz, ptr %i.gt, align 8, !tbaa !37
  %i.ha = sub i64 0, %i.gs
  store i64 %i.ha, ptr %5, align 8, !tbaa !36
  br label %neg256M.exit.i

bb.bm:                                            ; preds = %bb.bk
  %i.hb = sub i64 0, %i.gu
  store i64 %i.hb, ptr %i.gt, align 8, !tbaa !37
  br label %neg256M.exit.i

bb.bn:                                            ; preds = %bb.bj
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !38 ; 2 uses
  %.not23.i.i = icmp eq i64 %i.hd, 0
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !39 ; 2 uses
  br i1 %.not23.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hg = xor i64 %i.hf, -1
  store i64 %i.hg, ptr %i.he, align 8, !tbaa !39
  %i.hh = sub i64 0, %i.hd
  store i64 %i.hh, ptr %i.hc, align 8, !tbaa !38
  br label %neg256M.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.hi = sub i64 0, %i.hf
  store i64 %i.hi, ptr %i.he, align 8, !tbaa !39
  br label %neg256M.exit.i

neg256M.exit.i:                                   ; preds = %.loopexit63.i, %bb.bl, %bb.bm, %bb.bo, %bb.bp, %neg256M.exit47
  %.sink = phi ptr [ %i.bb, %neg256M.exit47 ], [ %5, %bb.bp ], [ %5, %bb.bo ], [ %5, %bb.bm ], [ %5, %bb.bl ], [ %5, %.loopexit63.i ]
  call fastcc void @add256M(ptr noundef %i.ab, ptr noundef %.sink)
  %i.hj = load i64, ptr %i.ac, align 8, !tbaa !46 ; 4 uses
  %.not60.i = icmp sgt i64 %i.hj, -1
  %.pre110 = load i8, ptr %i.z, align 1, !tbaa !44, !range !23 ; 2 uses
  br i1 %.not60.i, label %floatX256Add.exit, label %bb.bq

bb.bq:                                            ; preds = %neg256M.exit.i
  %i.hk = xor i8 %.pre110, 1                      ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !37 ; 3 uses
  %i.hn = load i64, ptr %i.ab, align 8, !tbaa !36 ; 3 uses
  %i.ho = or i64 %i.hn, %i.hm
  %.not.i43 = icmp eq i64 %i.ho, 0
  br i1 %.not.i43, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hp = xor i64 %i.hj, -1
  store i64 %i.hp, ptr %i.ac, align 8, !tbaa !39
  %i.hq = load i64, ptr %i.ad, align 8, !tbaa !38
  %i.hr = xor i64 %i.hq, -1
  store i64 %i.hr, ptr %i.ad, align 8, !tbaa !38
  %.not24.i = icmp eq i64 %i.hn, 0
  br i1 %.not24.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hs = xor i64 %i.hm, -1
  store i64 %i.hs, ptr %i.hl, align 8, !tbaa !37
  %i.ht = sub i64 0, %i.hn
  store i64 %i.ht, ptr %i.ab, align 8, !tbaa !36
  br label %floatX256Add.exit

bb.bt:                                            ; preds = %bb.br
  %i.hu = sub i64 0, %i.hm
  store i64 %i.hu, ptr %i.hl, align 8, !tbaa !37
  br label %floatX256Add.exit

bb.bu:                                            ; preds = %bb.bq
  %i.hv = load i64, ptr %i.ad, align 8, !tbaa !38 ; 2 uses
  %.not23.i = icmp eq i64 %i.hv, 0
  br i1 %.not23.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hw = xor i64 %i.hj, -1
  store i64 %i.hw, ptr %i.ac, align 8, !tbaa !39
  %i.hx = sub i64 0, %i.hv
  store i64 %i.hx, ptr %i.ad, align 8, !tbaa !38
  br label %floatX256Add.exit

bb.bw:                                            ; preds = %bb.bu
  %i.hy = sub i64 0, %i.hj
  store i64 %i.hy, ptr %i.ac, align 8, !tbaa !39
  br label %floatX256Add.exit

bb.bx:                                            ; preds = %eq256M.exit.thread.i, %bb.an, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull readonly align 8 dereferenceable(48) %7, i64 48, i1 false), !tbaa.struct !48
  %.pre = load i8, ptr %i.z, align 1, !tbaa !44, !range !23
  br label %floatX256Add.exit

floatX256Add.exit:                                ; preds = %bb.bw, %bb.bv, %bb.bt, %bb.bs, %f128MToFloatX256.exit36, %bb.al, %bb.am, %bb.ap, %bb.at, %bb.au, %bb.av, %neg256M.exit.i, %bb.bx
  %i.hz = phi i8 [ %i.hk, %bb.bw ], [ %i.hk, %bb.bv ], [ %i.hk, %bb.bt ], [ %i.hk, %bb.bs ], [ %i.cy, %f128MToFloatX256.exit36 ], [ %i.cy, %bb.al ], [ 0, %bb.am ], [ %i.cy, %bb.ap ], [ 1, %bb.at ], [ 0, %bb.au ], [ %i.cy, %bb.av ], [ %.pre110, %neg256M.exit.i ], [ %.pre, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.ia = load i8, ptr %6, align 8, !tbaa !41, !range !23, !noundef !24 ; 2 uses
  store i8 %i.ia, ptr %4, align 8, !tbaa !16
  %i.ib = load i8, ptr %i.x, align 1, !tbaa !42, !range !23, !noundef !24 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !17
  %i.id = load i8, ptr %i.y, align 2, !tbaa !43, !range !23, !noundef !24 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %i.id, ptr %i.ie, align 2, !tbaa !19
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 3
  store i8 %i.hz, ptr %i.if, align 1, !tbaa !18
  %i.ig = or i8 %i.ib, %i.ia
  %i.ih = or i8 %i.ig, %i.id
  %.not.i40 = icmp eq i8 %i.ih, 0
  br i1 %.not.i40, label %.peel.begin.i, label %floatX256ToF128M.exit

.peel.begin.i:                                    ; preds = %floatX256Add.exit
  %i.ii = load i64, ptr %i.aa, align 8, !tbaa !45 ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ab, align 8, !tbaa !26 ; 5 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !26 ; 4 uses
  %.sroa.13.0.copyload.i = load i64, ptr %i.ad, align 8, !tbaa !26 ; 3 uses
  %.sroa.18.0.copyload.i = load i64, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not9.peel.i = icmp eq i64 %.sroa.18.0.copyload.i, 0
  br i1 %.not9.peel.i, label %.peel.next.i, label %.preheader.i41

.peel.next.i:                                     ; preds = %.peel.begin.i
  %i.ij = add nsw i64 %i.ii, -64
  %.not9.peel33.i = icmp eq i64 %.sroa.13.0.copyload.i, 0
  br i1 %.not9.peel33.i, label %.peel.next32.i, label %.preheader.i41

.peel.next32.i:                                   ; preds = %.peel.next.i
  %i.ik = add nsw i64 %i.ii, -128
  %.not9.peel35.i = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %.not9.peel35.i, label %.peel.next34.i, label %.preheader.i41

.peel.next34.i:                                   ; preds = %.peel.next32.i
  %i.il = add nsw i64 %i.ii, -192
  %.not9.peel37.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not9.peel37.i, label %.peel.next36.i, label %.preheader.i41

.peel.next36.i:                                   ; preds = %.peel.next34.i, %.peel.next36.i
  br label %.peel.next36.i

.preheader.i41:                                   ; preds = %.peel.next34.i, %.peel.next32.i, %.peel.next.i, %.peel.begin.i
  %.sroa.18.0.lcssa.i = phi i64 [ %.sroa.0.0.copyload.i, %.peel.next34.i ], [ %.sroa.18.0.copyload.i, %.peel.begin.i ], [ %.sroa.13.0.copyload.i, %.peel.next.i ], [ %.sroa.8.0.copyload.i, %.peel.next32.i ] ; 3 uses
  %.sroa.13.0.lcssa.i = phi i64 [ 0, %.peel.next34.i ], [ %.sroa.13.0.copyload.i, %.peel.begin.i ], [ %.sroa.8.0.copyload.i, %.peel.next.i ], [ %.sroa.0.0.copyload.i, %.peel.next32.i ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i64 [ 0, %.peel.next34.i ], [ %.sroa.8.0.copyload.i, %.peel.begin.i ], [ %.sroa.0.0.copyload.i, %.peel.next.i ], [ 0, %.peel.next32.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %.peel.next34.i ], [ %.sroa.0.0.copyload.i, %.peel.begin.i ], [ 0, %.peel.next.i ], [ 0, %.peel.next32.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %i.il, %.peel.next34.i ], [ %i.ii, %.peel.begin.i ], [ %i.ij, %.peel.next.i ], [ %i.ik, %.peel.next32.i ] ; 2 uses
  %i.im = icmp ult i64 %.sroa.18.0.lcssa.i, 72057594037927936
  br i1 %i.im, label %.lr.ph.i42, label %._crit_edge.i

.lr.ph.i42:                                       ; preds = %.preheader.i41, %.lr.ph.i42
  %.123.i = phi i64 [ %i.in, %.lr.ph.i42 ], [ %.0.lcssa.i, %.preheader.i41 ]
  %.sroa.0.122.i = phi i64 [ %i.ir, %.lr.ph.i42 ], [ %.sroa.0.0.lcssa.i, %.preheader.i41 ] ; 2 uses
  %.sroa.8.121.i = phi i64 [ %i.iq, %.lr.ph.i42 ], [ %.sroa.8.0.lcssa.i, %.preheader.i41 ] ; 2 uses
  %.sroa.13.120.i = phi i64 [ %i.ip, %.lr.ph.i42 ], [ %.sroa.13.0.lcssa.i, %.preheader.i41 ] ; 2 uses
  %.sroa.18.119.i = phi i64 [ %i.io, %.lr.ph.i42 ], [ %.sroa.18.0.lcssa.i, %.preheader.i41 ]
  %i.in = add nsw i64 %.123.i, -1                 ; 2 uses
  %i.io = tail call i64 @llvm.fshl.i64(i64 %.sroa.18.119.i, i64 %.sroa.13.120.i, i64 1) ; 3 uses
  %i.ip = tail call i64 @llvm.fshl.i64(i64 %.sroa.13.120.i, i64 %.sroa.8.121.i, i64 1) ; 2 uses
  %i.iq = tail call i64 @llvm.fshl.i64(i64 %.sroa.8.121.i, i64 %.sroa.0.122.i, i64 1) ; 2 uses
  %i.ir = shl i64 %.sroa.0.122.i, 1               ; 2 uses
  %i.is = icmp samesign ult i64 %i.io, 72057594037927936
  br i1 %i.is, label %.lr.ph.i42, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i42, %.preheader.i41
  %.sroa.18.1.lcssa.i = phi i64 [ %.sroa.18.0.lcssa.i, %.preheader.i41 ], [ %i.io, %.lr.ph.i42 ]
  %.sroa.13.1.lcssa.i = phi i64 [ %.sroa.13.0.lcssa.i, %.preheader.i41 ], [ %i.ip, %.lr.ph.i42 ]
  %.sroa.8.1.lcssa.i = phi i64 [ %.sroa.8.0.lcssa.i, %.preheader.i41 ], [ %i.iq, %.lr.ph.i42 ]
  %.sroa.0.1.lcssa.i = phi i64 [ %.sroa.0.0.lcssa.i, %.preheader.i41 ], [ %i.ir, %.lr.ph.i42 ]
  %.1.lcssa.i = phi i64 [ %.0.lcssa.i, %.preheader.i41 ], [ %i.in, %.lr.ph.i42 ]
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.1.lcssa.i, ptr %i.it, align 8, !tbaa !20
  %i.iu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %.sroa.18.1.lcssa.i, ptr %i.iv, align 8, !tbaa !21
  %i.iw = or i64 %.sroa.0.1.lcssa.i, %.sroa.8.1.lcssa.i
  %i.ix = icmp ne i64 %i.iw, 0
  %i.iy = zext i1 %i.ix to i64
  %i.iz = or i64 %.sroa.13.1.lcssa.i, %i.iy
  store i64 %i.iz, ptr %i.iu, align 8, !tbaa !22
  br label %floatX256ToF128M.exit

floatX256ToF128M.exit:                            ; preds = %floatX256Add.exit, %._crit_edge.i
end_hunk_0
