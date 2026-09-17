Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/to_chars?download=true
inline.NumInlined: 709
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost8charconv6detail19to_chars_fixed_implIfEENS0_15to_chars_resultEPcS4_T_NS0_12chars_formatEi:bb.a
bb.ai:                                            ; preds = %bb.ah
  %i.ei = ptrtoint ptr %.sroa.0.0 to i64
  %i.ej = sub i64 %i.b, %i.ei
  %.not158 = icmp ugt i64 %.sroa.023.4.extract.shift69, %i.ej
  br i1 %.not158, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.sroa.0.0, i8 48, i64 %.sroa.023.4.extract.shift69, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.023.4.extract.shift69
  br label %.critedge

.critedge:                                        ; preds = %_ZN5boost8charconv6detail21to_chars_integer_implIjEENS0_15to_chars_resultEPcS4_T_.exit, %_ZN5boost8charconv6detail21to_chars_integer_implIjEENS0_15to_chars_resultEPcS4_T_.exit.thread, %bb.f, %bb.e, %bb.aj, %bb.ah, %bb.ad, %bb.ai, %bb.r, %_ZN5boost8charconv6detail19total_buffer_lengthIiEEiiT_b.exit, %bb.a
  %.sroa.0143.4 = phi ptr [ %1, %bb.a ], [ %i.t, %bb.e ], [ %i.x, %bb.f ], [ %1, %bb.r ], [ %1, %_ZN5boost8charconv6detail19total_buffer_lengthIiEEiiT_b.exit ], [ %1, %bb.ai ], [ %i.ek, %bb.aj ], [ %1, %_ZN5boost8charconv6detail21to_chars_integer_implIjEENS0_15to_chars_resultEPcS4_T_.exit ], [ %.sroa.0.0, %bb.ah ], [ %i.dx, %bb.ad ], [ %1, %_ZN5boost8charconv6detail21to_chars_integer_implIjEENS0_15to_chars_resultEPcS4_T_.exit.thread ]
  %.sroa.8.4 = phi i32 [ 75, %bb.a ], [ 0, %bb.e ], [ 0, %bb.f ], [ 75, %bb.r ], [ 75, %_ZN5boost8charconv6detail19total_buffer_lengthIiEEiiT_b.exit ], [ 75, %bb.ai ], [ 0, %bb.aj ], [ 75, %_ZN5boost8charconv6detail21to_chars_integer_implIjEENS0_15to_chars_resultEPcS4_T_.exit ], [ 0, %bb.ah ], [ 0, %bb.ad ], [ 22, %_ZN5boost8charconv6detail21to_chars_integer_implIjEENS0_15to_chars_resultEPcS4_T_.exit.thread ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0143.4, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.8.4, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost8charconv6detail5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcS7_NS0_12chars_formatE(double noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.10, align 8             ; 10 uses
  %i.a = alloca i64, align 8                      ; 20 uses
  %i.b = alloca i32, align 4                      ; 21 uses
  %i.c = alloca i32, align 4                      ; 18 uses
  %i.d = alloca i32, align 4                      ; 24 uses
  %i.e = alloca [3 x i64], align 16               ; 27 uses
  %i.f = alloca i64, align 8                      ; 15 uses
  %.not = icmp ult ptr %2, %3
  br i1 %.not, label %bb.b, label %bb.md

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %3 to i64
  %i.h = ptrtoint ptr %2 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = bitcast double %0 to i64                 ; 2 uses
  %.not1078 = icmp sgt i64 %i.j, -1               ; 2 uses
  %i.k = shl i64 %i.j, 1                          ; 2 uses
  %i.l = lshr i64 %i.k, 53                        ; 2 uses
  %i.m = trunc nuw nsw i64 %i.l to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.n = and i64 %i.k, 9007199254740990           ; 5 uses
  store i64 %i.n, ptr %i.a, align 8, !tbaa !15
  br i1 %.not1078, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 45, ptr %2, align 1, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.p = add i64 %i.i, -1                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZN5boost8charconv6detail16print_zero_fixedEPcmi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0842 = phi ptr [ %i.o, %bb.c ], [ %2, %bb.b ] ; 68 uses
  %.0841 = phi i64 [ %i.p, %bb.c ], [ %i.i, %bb.b ] ; 17 uses
  switch i64 %i.l, label %bb.o [
    i64 2047, label %bb.e
    i64 0, label %bb.p
  ]

bb.e:                                             ; preds = %bb.d
  switch i64 %i.n, label %bb.m [
    i64 0, label %bb.f
    i64 4503599627370496, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = icmp ult i64 %.0841, 3
  br i1 %i.r, label %_ZN5boost8charconv6detail16print_zero_fixedEPcmi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0842, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.0842, i64 3
  br label %_ZN5boost8charconv6detail16print_zero_fixedEPcmi.exit

bb.h:                                             ; preds = %bb.e
  br i1 %.not1078, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.t = icmp ult i64 %.0841, 3
  br i1 %i.t, label %_ZN5boost8charconv6detail16print_zero_fixedEPcmi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0842, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.0842, i64 3
  br label %_ZN5boost8charconv6detail16print_zero_fixedEPcmi.exit

bb.k:                                             ; preds = %bb.h
  %i.v = icmp ult i64 %.0841, 8
  br i1 %i.v, label %_ZN5boost8charconv6detail16print_zero_fixedEPcmi.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 2982630251155054958, ptr %.0842, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.0842, i64 8
  br label %_ZN5boost8charconv6detail16print_zero_fixedEPcmi.exit

bb.m:                                             ; preds = %bb.e
  %i.x = icmp ult i64 %.0841, 9
  br i1 %i.x, label %_ZN5boost8charconv6detail16print_zero_fixedEPcmi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.0842, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.0842, i64 9
  br label %_ZN5boost8charconv6detail16print_zero_fixedEPcmi.exit

bb.o:                                             ; preds = %bb.d
  %i.z = or disjoint i64 %i.n, 9007199254740992   ; 2 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !15
  %i.aa = add nsw i32 %i.m, -1075
  br label %bb.ac

bb.p:                                             ; preds = %bb.d
  %i.ab = icmp eq i64 %i.n, 0
  br i1 %i.ab, label %bb.q, label %bb.ac

bb.q:                                             ; preds = %bb.p
  switch i32 %4, label %bb.x [
    i32 3, label %bb.r
    i32 2, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  store i8 48, ptr %.0842, align 1, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %.0842, i64 1
  br label %_ZN5boost8charconv6detail16print_zero_fixedEPcmi.exit

bb.s:                                             ; preds = %bb.q
  %i.ad = icmp eq i32 %1, 0
  br i1 %i.ad, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i8 48, ptr %.0842, align 1, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %.0842, i64 1
  br label %_ZN5boost8charconv6detail16print_zero_fixedEPcmi.exit

bb.u:                                             ; preds = %bb.s
  %i.af = sext i32 %1 to i64                      ; 3 uses
  %i.ag = add nsw i64 %i.af, 2
  %i.ah = icmp ult i64 %.0841, %i.ag
  br i1 %i.ah, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ai = getelementptr inbounds nuw i8, ptr %.0842, i64 %.0841
  br label %_ZN5boost8charconv6detail16print_zero_fixedEPcmi.exit

bb.w:                                             ; preds = %bb.u
  store i16 11824, ptr %.0842, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0842, i64 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aj, i8 48, i64 %i.af, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.af
  br label %_ZN5boost8charconv6detail16print_zero_fixedEPcmi.exit

bb.x:                                             ; preds = %bb.q
  %i.al = icmp eq i32 %1, 0
  br i1 %i.al, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.am = icmp ult i64 %.0841, 5
  br i1 %i.am, label %_ZN5boost8charconv6detail16print_zero_fixedEPcmi.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.0842, ptr noundef nonnull align 1 dereferenceable(5) @.str.13, i64 5, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.0842, i64 5
  br label %_ZN5boost8charconv6detail16print_zero_fixedEPcmi.exit

bb.aa:                                            ; preds = %bb.x
  %i.ao = sext i32 %1 to i64                      ; 4 uses
  %i.ap = add nsw i64 %i.ao, 6
  %i.aq = icmp ult i64 %.0841, %i.ap
  br i1 %i.aq, label %_ZN5boost8charconv6detail16print_zero_fixedEPcmi.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i16 11824, ptr %.0842, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.0842, i64 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ar, i8 48, i64 %i.ao, i1 false)
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.ao
  store i32 808463205, ptr %i.as, align 1
  %i.at = getelementptr inbounds i8, ptr %.0842, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  br label %_ZN5boost8charconv6detail16print_zero_fixedEPcmi.exit

bb.ac:                                            ; preds = %bb.p, %bb.o
  %i.av = phi i64 [ %i.z, %bb.o ], [ %i.n, %bb.p ]
  %.0868 = phi i32 [ %i.aa, %bb.o ], [ -1074, %bb.p ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.aw = mul nsw i32 %.0868, 315653
  %i.ax = ashr i32 %i.aw, 20                      ; 2 uses
  %i.ay = sub nsw i32 2, %i.ax                    ; 4 uses
  store i32 %i.ay, ptr %i.b, align 4, !tbaa !23
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr [16 x i8], ptr @_ZN5boost8charconv6detail22main_cache_holder_implILb1EE5cacheE, i64 %i.az ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 4672
  %.sroa.0.0.copyload.i1287 = load i64, ptr %i.bb, align 16, !tbaa !15
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.ba, i64 4680
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  %i.bc = mul nsw i32 %i.ay, 1741647
  %i.bd = ashr i32 %i.bc, 19
  %i.be = add nsw i32 %i.bd, %.0868
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl i64 %i.av, %i.bf                    ; 2 uses
  %i.bh = zext i64 %i.bg to i128
  %i.bi = zext i64 %.sroa.0.0.copyload.i1287 to i128
  %i.bj = mul nuw i128 %i.bh, %i.bi               ; 2 uses
  %i.bk = lshr i128 %i.bj, 64
  %i.bl = trunc nuw i128 %i.bk to i64
  %i.bm = trunc i128 %i.bj to i64
  %6 = tail call noundef i64 @llvm.umulh.i64(i64 %i.bg, i64 %.sroa.2.0.copyload.i)
  %i.bn = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bm, i64 %6) ; 2 uses
  %i.bo = extractvalue { i64, i1 } %i.bn, 1
  %i.bp = extractvalue { i64, i1 } %i.bn, 0       ; 2 uses
  %i.bq = zext i1 %i.bo to i64
  %i.br = add nuw i64 %i.bq, %i.bl                ; 6 uses
  %i.bs = icmp ne i64 %i.bp, 0                    ; 11 uses
  %i.bt = icmp ult i64 %i.br, 10000000000000000
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ac, %.lr.ph
  %.09932467 = phi i64 [ %i.bu, %.lr.ph ], [ %i.br, %bb.ac ] ; 2 uses
  %.09952466 = phi i32 [ %i.bv, %.lr.ph ], [ 19, %bb.ac ]
  %i.bu = mul nuw nsw i64 %.09932467, 100         ; 2 uses
  %i.bv = add nsw i32 %.09952466, -2              ; 2 uses
  %i.bw = icmp samesign ult i64 %.09932467, 100000000000000
  br i1 %i.bw, label %.lr.ph, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph, %bb.ac
  %.0995.lcssa = phi i32 [ 19, %bb.ac ], [ %i.bv, %.lr.ph ]
  %.0993.lcssa = phi i64 [ %i.br, %bb.ac ], [ %i.bu, %.lr.ph ] ; 3 uses
  %i.bx = icmp ult i64 %.0993.lcssa, 1000000000000000000 ; 2 uses
  %i.by = mul nuw i64 %.0993.lcssa, 10
  %i.bz = sext i1 %i.bx to i32
  %.1996 = add nsw i32 %.0995.lcssa, %i.bz        ; 2 uses
  %.1994 = select i1 %i.bx, i64 %i.by, i64 %.0993.lcssa ; 2 uses
  %i.ca = add nsw i32 %i.ax, -3
  %i.cb = add i32 %i.ca, %.1996                   ; 20 uses
  switch i32 %4, label %bb.be [
    i32 1, label %bb.ad
    i32 2, label %bb.ag
  ]

bb.ad:                                            ; preds = %._crit_edge
  %i.cc = add nsw i32 %1, 1                       ; 2 uses
  %i.cd = add i32 %i.cb, 99
  %i.ce = icmp ult i32 %i.cd, 199
  %i.cf = select i1 %i.ce, i32 4, i32 5
  %.not1082 = icmp ne i32 %1, 0                   ; 2 uses
  %i.cg = zext i1 %.not1082 to i32
  %i.ch = add i32 %i.cc, %i.cg
  %i.ci = add i32 %i.ch, %i.cf
  %i.cj = sext i32 %i.ci to i64
  %.not1083 = icmp uge i64 %.0841, %i.cj          ; 2 uses
  %brmerge.not = and i1 %.not1082, %.not1083
  br i1 %brmerge.not, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i8 48, ptr %.0842, align 1, !tbaa !20
  %i.ck = getelementptr inbounds nuw i8, ptr %.0842, i64 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.01920 = phi ptr [ %.0842, %bb.ad ], [ %i.ck, %bb.ae ] ; 2 uses
  br i1 %.not1083, label %bb.bf, label %.thread2024

bb.ag:                                            ; preds = %._crit_edge
  %i.cl = icmp sgt i32 %i.cb, -1
  br i1 %i.cl, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.cm = add i32 %1, 1
  %i.cn = add i32 %i.cm, %i.cb                    ; 2 uses
  %.not1080 = icmp ne i32 %1, 0                   ; 2 uses
  %i.co = zext i1 %.not1080 to i32
  %i.cp = add nsw i32 %i.cn, %i.co
  %i.cq = sext i32 %i.cp to i64
  %.not1081 = icmp uge i64 %.0841, %i.cq          ; 2 uses
  %brmerge1156.not = and i1 %.not1080, %.not1081
  br i1 %brmerge1156.not, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i8 48, ptr %.0842, align 1, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %.0842, i64 1
  %i.cs = zext nneg i32 %i.cb to i64
  %i.ct = getelementptr i8, ptr %.0842, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.11921 = phi ptr [ %.0842, %bb.ah ], [ %i.cu, %bb.ai ]
  %.4 = phi ptr [ %.0842, %bb.ah ], [ %i.cr, %bb.ai ]
  br i1 %.not1081, label %bb.bf, label %.thread2024

bb.ak:                                            ; preds = %bb.ag
  %i.cv = sub i32 %i.ay, %.1996                   ; 4 uses
  %i.cw = icmp sgt i32 %i.cv, %1
  br i1 %i.cw, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.cx = icmp eq i32 %1, 0
  br i1 %i.cx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i8 48, ptr %.0842, align 1, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %.0842, i64 1
  br label %.thread2024

bb.an:                                            ; preds = %bb.al
  %i.cz = sext i32 %1 to i64                      ; 3 uses
  %i.da = add nsw i64 %i.cz, 2
  %i.db = icmp ult i64 %.0841, %i.da
  br i1 %i.db, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dc = getelementptr inbounds nuw i8, ptr %.0842, i64 %.0841
  br label %.thread2024

bb.ap:                                            ; preds = %bb.an
  store i16 11824, ptr %.0842, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.0842, i64 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dd, i8 48, i64 %i.cz, i1 false)
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %i.cz
  br label %.thread2024

bb.aq:                                            ; preds = %bb.ak
  %i.df = icmp eq i32 %i.cv, %1
  br i1 %i.df, label %bb.ar, label %bb.bc

bb.ar:                                            ; preds = %bb.aq
  %i.dg = zext i1 %i.bs to i64
  %i.dh = add i64 %.1994, %i.dg
  %i.di = icmp ugt i64 %i.dh, 5000000000000000000
  %i.dj = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %i.di, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  br i1 %i.dj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i8 48, ptr %.0842, align 1, !tbaa !20
  %i.dk = getelementptr inbounds nuw i8, ptr %.0842, i64 1
  br label %.thread2024

bb.au:                                            ; preds = %bb.as
  %i.dl = sext i32 %1 to i64                      ; 3 uses
  %i.dm = add nsw i64 %i.dl, 2
  %i.dn = icmp ult i64 %.0841, %i.dm
  br i1 %i.dn, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.do = getelementptr inbounds nuw i8, ptr %.0842, i64 %.0841
  br label %.thread2024

bb.aw:                                            ; preds = %bb.au
  store i16 11824, ptr %.0842, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.0842, i64 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dp, i8 48, i64 %i.dl, i1 false)
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %i.dl
  br label %.thread2024

bb.ax:                                            ; preds = %bb.ar
  br i1 %i.dj, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i8 49, ptr %.0842, align 1, !tbaa !20
  %i.dr = getelementptr inbounds nuw i8, ptr %.0842, i64 1
  br label %.thread2024

bb.az:                                            ; preds = %bb.ax
  %i.ds = zext nneg i32 %1 to i64                 ; 2 uses
  %i.dt = add nuw nsw i64 %i.ds, 2
  %i.du = icmp ult i64 %.0841, %i.dt
  br i1 %i.du, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dv = getelementptr inbounds nuw i8, ptr %.0842, i64 %.0841
  br label %.thread2024

bb.bb:                                            ; preds = %bb.az
  store i16 11824, ptr %.0842, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %.0842, i64 2 ; 2 uses
  %i.dx = add nsw i32 %1, -1
  %i.dy = zext nneg i32 %i.dx to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dw, i8 48, i64 %i.dy, i1 false)
  %i.dz = sext i32 %1 to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %.0842, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store i8 49, ptr %i.eb, align 1, !tbaa !20
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ds
  br label %.thread2024

bb.bc:                                            ; preds = %bb.aq
  %i.ed = add nuw nsw i32 %1, 2
  %i.ee = zext nneg i32 %i.ed to i64
  %.not2378 = icmp ult i64 %.0841, %i.ee
  br i1 %.not2378, label %.thread2024, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ef = sub nsw i32 %1, %i.cv
  %i.eg = add nuw nsw i32 %i.cv, 2
  %i.eh = zext nneg i32 %i.eg to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0842, i8 48, i64 %i.eh, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %.0842, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %.0842, i64 1
  br label %bb.bf

bb.be:                                            ; preds = %._crit_edge
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %1, i32 1) ; 3 uses
  store i8 48, ptr %.0842, align 1, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %.0842, i64 1
  %i.el = icmp sgt i32 %i.cb, 0
  %i.em = icmp slt i32 %i.cb, %spec.store.select
  %or.cond1135 = and i1 %i.el, %i.em
  %i.en = add nuw nsw i32 %i.cb, 1
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = select i1 %or.cond1135, i64 %i.eo, i64 1
  %i.eq = getelementptr inbounds nuw i8, ptr %.0842, i64 %i.ep
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be, %bb.aj, %bb.af
  %.3 = phi ptr [ %i.eq, %bb.be ], [ %.01920, %bb.af ], [ %.11921, %bb.aj ], [ %i.ej, %bb.bd ] ; 13 uses
  %.1998 = phi i32 [ %spec.store.select, %bb.be ], [ %i.cc, %bb.af ], [ %i.cn, %bb.aj ], [ %i.ef, %bb.bd ] ; 7 uses
  %.7 = phi ptr [ %i.ek, %bb.be ], [ %.01920, %bb.af ], [ %.4, %bb.aj ], [ %i.ei, %bb.bd ] ; 12 uses
  %.0839 = phi i32 [ %spec.store.select, %bb.be ], [ %1, %bb.af ], [ %1, %bb.aj ], [ %1, %bb.bd ] ; 4 uses
  %i.er = icmp slt i32 %.1998, 3
  br i1 %i.er, label %bb.bg, label %bb.bn

bb.bg:                                            ; preds = %bb.bf
  %i.es = icmp eq i32 %.1998, 1
  %i.et = zext i64 %.1994 to i128                 ; 2 uses
  br i1 %i.es, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.eu = mul nuw nsw i128 %i.et, 1329227995784915873 ; 2 uses
  %i.ev = lshr i128 %i.eu, 64
  %i.ew = trunc nuw nsw i128 %i.ev to i64         ; 2 uses
  %i.ex = trunc i128 %i.eu to i64
  %i.ey = tail call i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ex, i64 8) ; 2 uses
  %i.ez = lshr i64 %i.ew, 56                      ; 3 uses
  %i.fa = trunc nuw nsw i64 %i.ez to i32          ; 2 uses
  %.not1100 = icmp ult i64 %i.ey, -9223372036854775789
  br i1 %.not1100, label %bb.bi, label %.thread1981

bb.bi:                                            ; preds = %bb.bh
  %i.fb = lshr i64 %i.ey, 63
  %i.fc = zext i1 %i.bs to i64
  %i.fd = or i64 %i.ez, %i.fc
  %i.fe = and i64 %i.fd, %i.fb
  %.not1101 = icmp eq i64 %i.fe, 0
  br i1 %.not1101, label %bb.bj, label %.thread1981

bb.bj:                                            ; preds = %bb.bi
  %i.ff = trunc nuw nsw i64 %i.ez to i8
  %i.fg = add nuw nsw i8 %i.ff, 48
  store i8 %i.fg, ptr %.7, align 1, !tbaa !20
  %i.fh = getelementptr inbounds nuw i8, ptr %.7, i64 1
  br label %.thread2037

bb.bk:                                            ; preds = %bb.bg
  %i.fi = mul nuw i128 %i.et, 13292279957849158730 ; 2 uses
  %i.fj = lshr i128 %i.fi, 64
  %i.fk = trunc nuw i128 %i.fj to i64             ; 2 uses
  %i.fl = trunc i128 %i.fi to i64
  %i.fm = tail call i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fl, i64 8) ; 2 uses
  %i.fn = lshr i64 %i.fk, 56                      ; 3 uses
  %i.fo = trunc nuw nsw i64 %i.fn to i32          ; 2 uses
  %.not1098 = icmp ult i64 %i.fm, -9223372036854775623
  br i1 %.not1098, label %bb.bl, label %.thread2010

bb.bl:                                            ; preds = %bb.bk
  %i.fp = lshr i64 %i.fm, 63
  %i.fq = zext i1 %i.bs to i64
  %i.fr = or i64 %i.fn, %i.fq
  %i.fs = and i64 %i.fr, %i.fp
  %.not1099 = icmp eq i64 %i.fs, 0
  br i1 %.not1099, label %bb.bm, label %.thread2010

bb.bm:                                            ; preds = %bb.bl
  %i.ft = shl nuw nsw i64 %i.fn, 1
  %i.fu = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.ft
  %i.fv = load i16, ptr %i.fu, align 2
  store i16 %i.fv, ptr %.7, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %.7, i64 2
  br label %.thread2037

bb.bn:                                            ; preds = %bb.bf
  %7 = tail call noundef i64 @llvm.umulh.i64(i64 %i.br, i64 7922816251426433760) ; 6 uses
  %i.fx = lshr i64 %7, 32                         ; 6 uses
  %.neg = mul i64 %i.fx, -10000000000
  %i.fy = add i64 %.neg, %i.br                    ; 7 uses
  %.not1084 = icmp eq i64 %i.fx, 0
  br i1 %.not1084, label %.thread1960, label %bb.bo

.thread1960:                                      ; preds = %bb.bn
  %8 = tail call noundef i64 @llvm.umulh.i64(i64 %i.fy, i64 184467440737095517) ; 5 uses
  %i.fz = trunc i64 %8 to i32                     ; 4 uses
  %i.ga = trunc i64 %i.br to i32
  %.neg10911964 = mul i32 %i.fz, -100
  %i.gb = add i32 %.neg10911964, %i.ga
  %i.gc = icmp ugt i32 %i.fz, 999999
  br i1 %i.gc, label %bb.cl, label %bb.cm

bb.bo:                                            ; preds = %bb.bn
  %i.gd = icmp samesign ugt i64 %7, 429496729599999999 ; 2 uses
  br i1 %i.gd, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ge = mul nuw nsw i64 %i.fx, 1441151882
  %i.gf = lshr i64 %i.ge, 25
  br label %bb.bx

bb.bq:                                            ; preds = %bb.bo
  %i.gg = icmp samesign ugt i64 %7, 4294967295999999
  br i1 %i.gg, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gh = mul nuw nsw i64 %i.fx, 281474978
  %i.gi = lshr i64 %i.gh, 16
  br label %bb.bx

bb.bs:                                            ; preds = %bb.bq
  %i.gj = icmp samesign ugt i64 %7, 42949672959999
  br i1 %i.gj, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gk = mul nuw nsw i64 %i.fx, 429497
  br label %bb.bx

bb.bu:                                            ; preds = %bb.bs
  %i.gl = icmp samesign ugt i64 %7, 429496729599
  br i1 %i.gl, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.gm = mul nuw nsw i64 %i.fx, 42949673
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.gn = and i64 %7, 545460846592
  br label %bb.bx

bb.bx:                                            ; preds = %bb.br, %bb.bv, %bb.bw, %bb.bt, %bb.bp
  %i.go = phi i1 [ true, %bb.bp ], [ true, %bb.br ], [ true, %bb.bt ], [ true, %bb.bv ], [ false, %bb.bw ]
  %i.gp = phi i1 [ true, %bb.bp ], [ true, %bb.br ], [ true, %bb.bt ], [ false, %bb.bv ], [ false, %bb.bw ]
  %i.gq = phi i1 [ true, %bb.bp ], [ true, %bb.br ], [ false, %bb.bt ], [ false, %bb.bv ], [ false, %bb.bw ]
  %.0987 = phi i32 [ 8, %bb.bp ], [ 6, %bb.br ], [ 4, %bb.bt ], [ 2, %bb.bv ], [ 0, %bb.bw ] ; 4 uses
  %.0978 = phi i64 [ %i.gf, %bb.bp ], [ %i.gi, %bb.br ], [ %i.gk, %bb.bt ], [ %i.gm, %bb.bv ], [ %i.gn, %bb.bw ] ; 6 uses
  %i.gr = lshr i64 %.0978, 32                     ; 2 uses
  %i.gs = icmp samesign ult i64 %.0978, 42949672960
  br i1 %i.gs, label %bb.by, label %.thread1944

.thread1944:                                      ; preds = %bb.bx
  %i.gt = add nsw i32 %.1998, -2
  br label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %.not1085 = icmp ne ptr %.7, %2
  %i.gu = icmp ne i32 %.0839, 0
  %narrow = and i1 %.not1085, %i.gu
  %.neg1087 = sext i1 %narrow to i64
  %i.gv = getelementptr inbounds i8, ptr %.7, i64 %.neg1087 ; 3 uses
  %i.gw = add nsw i32 %.1998, -1                  ; 2 uses
  %i.gx = icmp eq i32 %.0839, 0
  br i1 %i.gx, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.gy = trunc nuw i64 %i.gr to i8
  %i.gz = or disjoint i8 %i.gy, 48
  store i8 %i.gz, ptr %i.gv, align 1, !tbaa !20
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  br label %bb.cb

bb.ca:                                            ; preds = %.thread1944, %bb.by
  %i.hb = phi i32 [ %i.gt, %.thread1944 ], [ %i.gw, %bb.by ]
  %i.hc = phi ptr [ %.7, %.thread1944 ], [ %i.gv, %bb.by ] ; 2 uses
  %i.hd = shl nuw nsw i64 %i.gr, 1
  %i.he = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.hd
  %i.hf = load i16, ptr %i.he, align 2
  store i16 %i.hf, ptr %i.hc, align 1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.hh = phi i32 [ %i.gw, %bb.bz ], [ %i.hb, %bb.ca ] ; 11 uses
  %.10 = phi ptr [ %i.ha, %bb.bz ], [ %i.hg, %bb.ca ] ; 9 uses
  %i.hi = icmp samesign ugt i32 %i.hh, %.0987
  br i1 %i.hi, label %bb.cc, label %.preheader2435

.preheader2435:                                   ; preds = %bb.cb
  %i.hj = add nsw i32 %i.hh, -1                   ; 2 uses
  %i.hk = lshr i32 %i.hj, 1                       ; 3 uses
  switch i32 %i.hk, label %.lr.ph2472.preheader.new [
    i32 0, label %._crit_edge2473
    i32 1, label %.lr.ph2472.epil.preheader
  ]

.lr.ph2472.preheader.new:                         ; preds = %.preheader2435
  %unroll_iter = and i32 %i.hk, 2147483646
  br label %.lr.ph2472

bb.cc:                                            ; preds = %bb.cb
  %i.hl = sub nuw nsw i32 %i.hh, %.0987           ; 5 uses
  br i1 %i.go, label %.lr.ph2480, label %.loopexit2434

.lr.ph2480:                                       ; preds = %bb.cc
  %i.hm = and i64 %.0978, 4294967295
  %i.hn = mul nuw nsw i64 %i.hm, 100              ; 2 uses
  %sh.diff2380 = lshr i64 %i.hn, 31
  %i.ho = and i64 %sh.diff2380, 254
  %i.hp = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.ho
  %i.hq = load i16, ptr %i.hp, align 2
  store i16 %i.hq, ptr %.10, align 1
  %i.hr = getelementptr inbounds nuw i8, ptr %.10, i64 2 ; 2 uses
  br i1 %i.gp, label %.lr.ph2480.1, label %.loopexit2434

.lr.ph2480.1:                                     ; preds = %.lr.ph2480
  %i.hs = and i64 %i.hn, 4294967292
  %i.ht = mul nuw nsw i64 %i.hs, 100              ; 2 uses
  %sh.diff2380.1 = lshr i64 %i.ht, 31
  %i.hu = and i64 %sh.diff2380.1, 254
  %i.hv = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.hu
  %i.hw = load i16, ptr %i.hv, align 2
  store i16 %i.hw, ptr %i.hr, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.10, i64 4 ; 2 uses
  br i1 %i.gq, label %.lr.ph2480.2, label %.loopexit2434

.lr.ph2480.2:                                     ; preds = %.lr.ph2480.1
  %i.hy = and i64 %i.ht, 4294967280
  %i.hz = mul nuw nsw i64 %i.hy, 100              ; 2 uses
  %sh.diff2380.2 = lshr i64 %i.hz, 31
  %i.ia = and i64 %sh.diff2380.2, 254
  %i.ib = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.ia
  %i.ic = load i16, ptr %i.ib, align 2
  store i16 %i.ic, ptr %i.hx, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %.10, i64 6 ; 2 uses
  br i1 %i.gd, label %.lr.ph2480.3, label %.loopexit2434

.lr.ph2480.3:                                     ; preds = %.lr.ph2480.2
  %i.ie = and i64 %i.hz, 4294967232
  %i.if = mul nuw nsw i64 %i.ie, 100
  %sh.diff2380.3 = lshr i64 %i.if, 31
  %i.ig = and i64 %sh.diff2380.3, 254
  %i.ih = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.ig
  %i.ii = load i16, ptr %i.ih, align 2
  store i16 %i.ii, ptr %i.id, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %.10, i64 8
  br label %.loopexit2434

._crit_edge2473.loopexit.unr-lcssa:               ; preds = %.lr.ph2472
  %i.ik = and i32 %i.hj, 2
  %lcmp.mod.not = icmp eq i32 %i.ik, 0
  br i1 %lcmp.mod.not, label %._crit_edge2473, label %.lr.ph2472.epil.preheader

.lr.ph2472.epil.preheader:                        ; preds = %.preheader2435, %._crit_edge2473.loopexit.unr-lcssa
  %.122471.epil.init = phi ptr [ %.10, %.preheader2435 ], [ %i.jd, %._crit_edge2473.loopexit.unr-lcssa ] ; 2 uses
  %.29802469.epil.init = phi i64 [ %.0978, %.preheader2435 ], [ %i.iz, %._crit_edge2473.loopexit.unr-lcssa ]
  %lcmp.mod3036 = trunc i32 %i.hk to i1
  tail call void @llvm.assume(i1 %lcmp.mod3036)
  %i.il = and i64 %.29802469.epil.init, 4294967295
  %i.im = mul nuw nsw i64 %i.il, 100              ; 2 uses
  %sh.diff.epil = lshr i64 %i.im, 31
  %i.in = and i64 %sh.diff.epil, 254
  %i.io = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.in
  %i.ip = load i16, ptr %i.io, align 2
  store i16 %i.ip, ptr %.122471.epil.init, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.122471.epil.init, i64 2
  br label %._crit_edge2473

._crit_edge2473:                                  ; preds = %.lr.ph2472.epil.preheader, %._crit_edge2473.loopexit.unr-lcssa, %.preheader2435
  %.2980.lcssa = phi i64 [ %.0978, %.preheader2435 ], [ %i.iz, %._crit_edge2473.loopexit.unr-lcssa ], [ %i.im, %.lr.ph2472.epil.preheader ] ; 2 uses
  %.12.lcssa = phi ptr [ %.10, %.preheader2435 ], [ %i.jd, %._crit_edge2473.loopexit.unr-lcssa ], [ %i.iq, %.lr.ph2472.epil.preheader ] ; 6 uses
  %i.ir = icmp samesign ugt i32 %.0987, %i.hh
  br i1 %i.ir, label %bb.cd, label %bb.ce

.lr.ph2472:                                       ; preds = %.lr.ph2472, %.lr.ph2472.preheader.new
  %.122471 = phi ptr [ %.10, %.lr.ph2472.preheader.new ], [ %i.jd, %.lr.ph2472 ] ; 3 uses
  %.29802469 = phi i64 [ %.0978, %.lr.ph2472.preheader.new ], [ %i.iz, %.lr.ph2472 ]
  %niter = phi i32 [ 0, %.lr.ph2472.preheader.new ], [ %niter.next.1, %.lr.ph2472 ]
  %i.is = and i64 %.29802469, 4294967295
  %i.it = mul nuw nsw i64 %i.is, 100              ; 2 uses
  %sh.diff = lshr i64 %i.it, 31
  %i.iu = and i64 %sh.diff, 254
  %i.iv = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.iu
  %i.iw = load i16, ptr %i.iv, align 2
  store i16 %i.iw, ptr %.122471, align 1
  %i.ix = getelementptr inbounds nuw i8, ptr %.122471, i64 2
  %i.iy = and i64 %i.it, 4294967292
  %i.iz = mul nuw nsw i64 %i.iy, 100              ; 4 uses
  %sh.diff.1 = lshr i64 %i.iz, 31
  %i.ja = and i64 %sh.diff.1, 254
  %i.jb = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2
  store i16 %i.jc, ptr %i.ix, align 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.122471, i64 4 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge2473.loopexit.unr-lcssa, label %.lr.ph2472, !llvm.loop !43

bb.cd:                                            ; preds = %._crit_edge2473
  %i.je = and i32 %i.hh, 1
  %.not1090 = icmp eq i32 %i.je, 0
  %i.jf = and i64 %.2980.lcssa, 4294967295
  %. = select i1 %.not1090, i64 100, i64 10
  %i.jg = mul nuw nsw i64 %i.jf, %.               ; 2 uses
  %i.jh = lshr i64 %i.jg, 32
  %i.ji = trunc nuw nsw i64 %i.jh to i32          ; 4 uses
  %i.jj = trunc i64 %i.jg to i32                  ; 2 uses
  %i.jk = sub nuw nsw i32 %.0987, %i.hh
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr [4 x i8], ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE37fractional_part_rounding_thresholds32E, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.jm, i64 -4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !23
  %.not.i1199 = icmp ugt i32 %i.jo, %i.jj
  br i1 %.not.i1199, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1201, label %.loopexit2434.thread.thread2828

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1201: ; preds = %bb.cd
  %9 = or i64 %i.fy, %i.bp
  %10 = icmp ne i64 %9, 0
  %i.jp = lshr i32 %i.jj, 31
  %i.jq = zext i1 %10 to i32
  %i.jr = or i32 %i.ji, %i.jq
  %i.js = and i32 %i.jr, %i.jp
  %.fr = freeze i32 %i.js
  %.not2379 = icmp eq i32 %.fr, 0
  br i1 %.not2379, label %.loopexit2434.thread, label %.loopexit2434.thread.thread2828

bb.ce:                                            ; preds = %._crit_edge2473
  %i.jt = and i64 %.2980.lcssa, 4294967295
  %i.ju = mul nuw nsw i64 %i.jt, 100
  %i.jv = lshr i64 %i.ju, 32
  %i.jw = trunc nuw nsw i64 %i.jv to i32          ; 4 uses
  %i.jx = icmp ugt i64 %i.fy, 5000000000
  br i1 %i.jx, label %.thread2010, label %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj10ELb0EEEbJETnNSt9enable_ifIXsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_S6_DpT1_.exit

_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj10ELb0EEEbJETnNSt9enable_ifIXsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_S6_DpT1_.exit: ; preds = %bb.ce
  %i.jy = icmp eq i64 %i.fy, 5000000000
  %i.jz = and i32 %i.jw, 1
  %i.ka = zext i1 %i.bs to i32
  %i.kb = or i32 %i.jz, %i.ka
  %i.kc = icmp ne i32 %i.kb, 0
  %i.kd = select i1 %i.jy, i1 %i.kc, i1 false
  %cond.fr1950 = freeze i1 %i.kd
  br i1 %cond.fr1950, label %.thread2010, label %.thread2095

.loopexit2434:                                    ; preds = %.lr.ph2480, %.lr.ph2480.1, %.lr.ph2480.2, %.lr.ph2480.3, %bb.cc
  %.13 = phi ptr [ %.10, %bb.cc ], [ %i.hr, %.lr.ph2480 ], [ %i.hx, %.lr.ph2480.1 ], [ %i.id, %.lr.ph2480.2 ], [ %i.ij, %.lr.ph2480.3 ] ; 7 uses
  %i.ke = icmp samesign ult i32 %i.hl, 3
  br i1 %i.ke, label %bb.cf, label %bb.ck

bb.cf:                                            ; preds = %.loopexit2434
  %i.kf = icmp eq i32 %i.hl, 1
  %i.kg = zext i64 %i.fy to i128                  ; 2 uses
  br i1 %i.kf, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.kh = mul nuw nsw i128 %i.kg, 18446744074     ; 2 uses
  %i.ki = lshr i128 %i.kh, 64                     ; 2 uses
  %i.kj = trunc i128 %i.kh to i64                 ; 2 uses
  %i.kk = trunc i128 %i.ki to i32                 ; 3 uses
  %i.kl = icmp ugt i64 %i.kj, -9223372018408031735
  br i1 %i.kl, label %.thread1981, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.km = trunc nuw nsw i128 %i.ki to i64
  %i.kn = lshr i64 %i.kj, 63
  %i.ko = zext i1 %i.bs to i64
  %i.kp = or i64 %i.km, %i.ko
  %i.kq = and i64 %i.kp, %i.kn
  %.not1097 = icmp eq i64 %i.kq, 0
  br i1 %.not1097, label %.thread2077, label %.thread1981

bb.ci:                                            ; preds = %bb.cf
  %i.kr = mul nuw nsw i128 %i.kg, 184467440738    ; 2 uses
  %i.ks = lshr i128 %i.kr, 64                     ; 2 uses
  %i.kt = trunc i128 %i.kr to i64                 ; 2 uses
  %i.ku = trunc i128 %i.ks to i32                 ; 3 uses
  %i.kv = icmp ugt i64 %i.kt, -9223371852387335071
  br i1 %i.kv, label %.thread2010, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kw = trunc nuw nsw i128 %i.ks to i64
  %i.kx = lshr i64 %i.kt, 63
  %i.ky = zext i1 %i.bs to i64
  %i.kz = or i64 %i.kw, %i.ky
  %i.la = and i64 %i.kz, %i.kx
  %.not1096 = icmp eq i64 %i.la, 0
  br i1 %.not1096, label %.thread2095, label %.thread2010

bb.ck:                                            ; preds = %.loopexit2434
  %11 = tail call noundef i64 @llvm.umulh.i64(i64 %i.fy, i64 184467440737095517) ; 2 uses
  %i.lb = trunc i64 %11 to i32
  %.neg1091 = mul i32 %i.lb, -100
  %i.lc = trunc i64 %i.fy to i32
  %i.ld = add i32 %.neg1091, %i.lc
  %i.le = and i64 %11, 4294967295
  %i.lf = mul nuw nsw i64 %i.le, 281474977
  %i.lg = lshr i64 %i.lf, 16
  %i.lh = add nuw nsw i64 %i.lg, 1
  %i.li = add nsw i32 %i.hl, -2
  br label %bb.cs

bb.cl:                                            ; preds = %.thread1960
  %i.lj = and i64 %8, 4294967295
  %i.lk = mul nuw nsw i64 %i.lj, 281474978
  %i.ll = lshr i64 %i.lk, 16
  br label %bb.cr

bb.cm:                                            ; preds = %.thread1960
  %i.lm = icmp samesign ugt i32 %i.fz, 9999
  br i1 %i.lm, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ln = and i64 %8, 1048575
  %i.lo = mul nuw nsw i64 %i.ln, 429497
  br label %bb.cr

bb.co:                                            ; preds = %bb.cm
  %i.lp = icmp samesign ugt i32 %i.fz, 99
  br i1 %i.lp, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.lq = and i64 %8, 16383
  %i.lr = mul nuw nsw i64 %i.lq, 42949673
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.ls = shl i64 %8, 32
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cn, %bb.cq, %bb.cp, %bb.cl
  %.2989 = phi i32 [ 6, %bb.cl ], [ 4, %bb.cn ], [ 2, %bb.cp ], [ 0, %bb.cq ]
  %.4982 = phi i64 [ %i.ll, %bb.cl ], [ %i.lo, %bb.cn ], [ %i.lr, %bb.cp ], [ %i.ls, %bb.cq ] ; 2 uses
  %i.lt = icmp ult i64 %.4982, 42949672960        ; 2 uses
  %.neg1092 = sext i1 %i.lt to i64
  %i.lu = getelementptr inbounds i8, ptr %.7, i64 %.neg1092
  %.neg1094 = select i1 %i.lt, i32 -1, i32 -2
  %i.lv = add nsw i32 %.neg1094, %.1998
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.ck
  %i.lw = phi i32 [ %i.ld, %bb.ck ], [ %i.gb, %bb.cr ] ; 7 uses
  %.41001 = phi i32 [ %i.li, %bb.ck ], [ %i.lv, %bb.cr ] ; 11 uses
  %.3990 = phi i32 [ 6, %bb.ck ], [ %.2989, %bb.cr ] ; 7 uses
  %.5983 = phi i64 [ %i.lh, %bb.ck ], [ %.4982, %bb.cr ] ; 5 uses
  %.15 = phi ptr [ %.13, %bb.ck ], [ %i.lu, %bb.cr ] ; 5 uses
  %sh.diff2381 = lshr i64 %.5983, 31
  %i.lx = and i64 %sh.diff2381, 4294967294
  %i.ly = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.lx
  %i.lz = load i16, ptr %i.ly, align 2
  store i16 %i.lz, ptr %.15, align 1
  %i.ma = getelementptr inbounds nuw i8, ptr %.15, i64 2 ; 5 uses
  %i.mb = icmp samesign ugt i32 %.41001, %.3990
  br i1 %i.mb, label %bb.ct, label %.preheader

.preheader:                                       ; preds = %bb.cs
  %i.mc = add nsw i32 %.41001, -1                 ; 2 uses
  %i.md = lshr i32 %i.mc, 1                       ; 3 uses
  switch i32 %i.md, label %.lr.ph2485.preheader.new [
    i32 0, label %._crit_edge2486
    i32 1, label %.lr.ph2485.epil.preheader
  ]

.lr.ph2485.preheader.new:                         ; preds = %.preheader
  %unroll_iter3042 = and i32 %i.md, 2147483646
  br label %.lr.ph2485

bb.ct:                                            ; preds = %bb.cs
  %i.me = sub nuw nsw i32 %.41001, %.3990         ; 3 uses
  %.not2914 = icmp eq i32 %.3990, 0
  br i1 %.not2914, label %.loopexit2433, label %.lr.ph2493

.lr.ph2493:                                       ; preds = %bb.ct
  %i.mf = and i64 %.5983, 4294967295
  %i.mg = mul nuw nsw i64 %i.mf, 100              ; 2 uses
  %sh.diff2432 = lshr i64 %i.mg, 31
  %i.mh = and i64 %sh.diff2432, 254
  %i.mi = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.mh
  %i.mj = load i16, ptr %i.mi, align 2
  store i16 %i.mj, ptr %i.ma, align 1
  %i.mk = getelementptr inbounds nuw i8, ptr %.15, i64 4 ; 2 uses
  %i.ml = icmp samesign ugt i32 %.3990, 2
  br i1 %i.ml, label %.lr.ph2493.1, label %.loopexit2433

.lr.ph2493.1:                                     ; preds = %.lr.ph2493
  %i.mm = and i64 %i.mg, 4294967292
  %i.mn = mul nuw nsw i64 %i.mm, 100              ; 2 uses
  %sh.diff2432.1 = lshr i64 %i.mn, 31
  %i.mo = and i64 %sh.diff2432.1, 254
  %i.mp = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.mo
  %i.mq = load i16, ptr %i.mp, align 2
  store i16 %i.mq, ptr %i.mk, align 1
  %i.mr = getelementptr inbounds nuw i8, ptr %.15, i64 6 ; 2 uses
  %i.ms = icmp sgt i32 %.3990, 4
  br i1 %i.ms, label %.lr.ph2493.2, label %.loopexit2433

.lr.ph2493.2:                                     ; preds = %.lr.ph2493.1
  %i.mt = and i64 %i.mn, 4294967280
  %i.mu = mul nuw nsw i64 %i.mt, 100
  %sh.diff2432.2 = lshr i64 %i.mu, 31
  %i.mv = and i64 %sh.diff2432.2, 254
  %i.mw = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.mv
  %i.mx = load i16, ptr %i.mw, align 2
  store i16 %i.mx, ptr %i.mr, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %.15, i64 8
  br label %.loopexit2433

._crit_edge2486.loopexit.unr-lcssa:               ; preds = %.lr.ph2485
  %i.mz = and i32 %i.mc, 2
  %lcmp.mod3038.not = icmp eq i32 %i.mz, 0
  br i1 %lcmp.mod3038.not, label %._crit_edge2486, label %.lr.ph2485.epil.preheader

.lr.ph2485.epil.preheader:                        ; preds = %.preheader, %._crit_edge2486.loopexit.unr-lcssa
  %.172484.epil.init = phi ptr [ %i.ma, %.preheader ], [ %i.ns, %._crit_edge2486.loopexit.unr-lcssa ] ; 2 uses
  %.79852482.epil.init = phi i64 [ %.5983, %.preheader ], [ %i.no, %._crit_edge2486.loopexit.unr-lcssa ]
  %lcmp.mod3041 = trunc i32 %i.md to i1
  tail call void @llvm.assume(i1 %lcmp.mod3041)
  %i.na = and i64 %.79852482.epil.init, 4294967295
  %i.nb = mul nuw nsw i64 %i.na, 100              ; 2 uses
  %sh.diff2384.epil = lshr i64 %i.nb, 31
  %i.nc = and i64 %sh.diff2384.epil, 254
  %i.nd = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.nc
  %i.ne = load i16, ptr %i.nd, align 2
  store i16 %i.ne, ptr %.172484.epil.init, align 1
  %i.nf = getelementptr inbounds nuw i8, ptr %.172484.epil.init, i64 2
  br label %._crit_edge2486

._crit_edge2486:                                  ; preds = %.lr.ph2485.epil.preheader, %._crit_edge2486.loopexit.unr-lcssa, %.preheader
  %.7985.lcssa = phi i64 [ %.5983, %.preheader ], [ %i.no, %._crit_edge2486.loopexit.unr-lcssa ], [ %i.nb, %.lr.ph2485.epil.preheader ] ; 2 uses
  %.17.lcssa = phi ptr [ %i.ma, %.preheader ], [ %i.ns, %._crit_edge2486.loopexit.unr-lcssa ], [ %i.nf, %.lr.ph2485.epil.preheader ] ; 6 uses
  %i.ng = icmp samesign ugt i32 %.3990, %.41001
  br i1 %i.ng, label %bb.cu, label %bb.cv

.lr.ph2485:                                       ; preds = %.lr.ph2485, %.lr.ph2485.preheader.new
  %.172484 = phi ptr [ %i.ma, %.lr.ph2485.preheader.new ], [ %i.ns, %.lr.ph2485 ] ; 3 uses
  %.79852482 = phi i64 [ %.5983, %.lr.ph2485.preheader.new ], [ %i.no, %.lr.ph2485 ]
  %niter3043 = phi i32 [ 0, %.lr.ph2485.preheader.new ], [ %niter3043.next.1, %.lr.ph2485 ]
  %i.nh = and i64 %.79852482, 4294967295
  %i.ni = mul nuw nsw i64 %i.nh, 100              ; 2 uses
  %sh.diff2384 = lshr i64 %i.ni, 31
  %i.nj = and i64 %sh.diff2384, 254
  %i.nk = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.nj
  %i.nl = load i16, ptr %i.nk, align 2
  store i16 %i.nl, ptr %.172484, align 1
  %i.nm = getelementptr inbounds nuw i8, ptr %.172484, i64 2
  %i.nn = and i64 %i.ni, 4294967292
  %i.no = mul nuw nsw i64 %i.nn, 100              ; 4 uses
  %sh.diff2384.1 = lshr i64 %i.no, 31
  %i.np = and i64 %sh.diff2384.1, 254
  %i.nq = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.np
  %i.nr = load i16, ptr %i.nq, align 2
  store i16 %i.nr, ptr %i.nm, align 1
  %i.ns = getelementptr inbounds nuw i8, ptr %.172484, i64 4 ; 3 uses
  %niter3043.next.1 = add i32 %niter3043, 2       ; 2 uses
  %niter3043.ncmp.1 = icmp eq i32 %niter3043.next.1, %unroll_iter3042
  br i1 %niter3043.ncmp.1, label %._crit_edge2486.loopexit.unr-lcssa, label %.lr.ph2485, !llvm.loop !44

bb.cu:                                            ; preds = %._crit_edge2486
  %i.nt = and i32 %.41001, 1
  %.not1095 = icmp eq i32 %i.nt, 0
  %i.nu = and i64 %.7985.lcssa, 4294967295
  %.2913 = select i1 %.not1095, i64 100, i64 10
  %i.nv = mul nuw nsw i64 %i.nu, %.2913           ; 2 uses
  %i.nw = lshr i64 %i.nv, 32
  %i.nx = trunc nuw nsw i64 %i.nw to i32          ; 4 uses
  %i.ny = trunc i64 %i.nv to i32                  ; 2 uses
  %i.nz = sub nuw nsw i32 %.3990, %.41001
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = getelementptr [4 x i8], ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE37fractional_part_rounding_thresholds32E, i64 %i.oa
  %i.oc = getelementptr i8, ptr %i.ob, i64 -4
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !23
  %.not.i1196 = icmp ugt i32 %i.od, %i.ny
  br i1 %.not.i1196, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1198, label %.loopexit2434.thread.thread2828

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1198: ; preds = %bb.cu
  %i.oe = icmp ne i32 %i.lw, 0
  %12 = or i1 %i.oe, %i.bs
  %i.of = lshr i32 %i.ny, 31
  %i.og = zext i1 %12 to i32
  %i.oh = or i32 %i.nx, %i.og
  %i.oi = and i32 %i.oh, %i.of
  %.fr2382 = freeze i32 %i.oi
  %.not2383 = icmp eq i32 %.fr2382, 0
  br i1 %.not2383, label %.loopexit2434.thread, label %.loopexit2434.thread.thread2828

bb.cv:                                            ; preds = %._crit_edge2486
  %i.oj = and i64 %.7985.lcssa, 4294967295
  %i.ok = mul nuw nsw i64 %i.oj, 100
  %i.ol = lshr i64 %i.ok, 32
  %i.om = trunc nuw nsw i64 %i.ol to i32          ; 4 uses
  %i.on = icmp ugt i32 %i.lw, 50
  br i1 %i.on, label %.thread2010, label %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEbJETnNSt9enable_ifIXsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_S6_DpT1_.exit1205

_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEbJETnNSt9enable_ifIXsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_S6_DpT1_.exit1205: ; preds = %bb.cv
  %i.oo = icmp eq i32 %i.lw, 50
  %i.op = and i32 %i.om, 1
  %i.oq = zext i1 %i.bs to i32
  %i.or = or i32 %i.op, %i.oq
  %i.os = icmp ne i32 %i.or, 0
  %i.ot = select i1 %i.oo, i1 %i.os, i1 false
  %cond.fr1972 = freeze i1 %i.ot
  br i1 %cond.fr1972, label %.thread2010, label %.thread2095

.loopexit2433:                                    ; preds = %.lr.ph2493, %.lr.ph2493.1, %.lr.ph2493.2, %bb.ct
  %.18 = phi ptr [ %i.ma, %bb.ct ], [ %i.mk, %.lr.ph2493 ], [ %i.mr, %.lr.ph2493.1 ], [ %i.my, %.lr.ph2493.2 ] ; 8 uses
  %i.ou = icmp samesign ugt i32 %i.me, 2
  br i1 %i.ou, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.loopexit2433
  %i.ov = shl i32 %i.lw, 1
  %i.ow = zext i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.ow
  %i.oy = load i16, ptr %i.ox, align 2
  store i16 %i.oy, ptr %.18, align 1
  %i.oz = getelementptr inbounds nuw i8, ptr %.18, i64 2 ; 2 uses
  %i.pa = add nsw i32 %i.me, -2                   ; 2 uses
  br i1 %i.bs, label %.thread2050, label %.thread2086

bb.cx:                                            ; preds = %.loopexit2433
  %i.pb = icmp eq i32 %i.me, 1
  br i1 %i.pb, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.pc = zext i32 %i.lw to i64
  %i.pd = mul nuw nsw i64 %i.pc, 429496730        ; 2 uses
  %i.pe = lshr i64 %i.pd, 32
  %i.pf = trunc nuw nsw i64 %i.pe to i32          ; 4 uses
  %i.pg = trunc i64 %i.pd to i32                  ; 2 uses
  %.not.i1193 = icmp ult i32 %i.pg, -1717986918
  br i1 %.not.i1193, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1195, label %.thread1981

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1195: ; preds = %bb.cy
  %i.ph = lshr i32 %i.pg, 31
  %i.pi = zext i1 %i.bs to i32
  %i.pj = or i32 %i.pf, %i.pi
  %i.pk = and i32 %i.pj, %i.ph
  %.fr2385 = freeze i32 %i.pk
  %.not2386 = icmp eq i32 %.fr2385, 0
  br i1 %.not2386, label %.thread2077, label %.thread1981

bb.cz:                                            ; preds = %bb.cx
  br i1 %i.bs, label %.thread2050, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pl = shl i32 %i.lw, 1
  %i.pm = zext i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.pm
  %i.po = load i16, ptr %i.pn, align 2
  store i16 %i.po, ptr %.18, align 1
  %i.pp = getelementptr inbounds nuw i8, ptr %.18, i64 2
  br label %.thread2037

.thread2050:                                      ; preds = %bb.cz, %bb.cw
  %.222065 = phi ptr [ %.18, %bb.cz ], [ %i.oz, %bb.cw ] ; 62 uses
  %.69382064 = phi i32 [ %i.lw, %bb.cz ], [ 0, %bb.cw ] ; 23 uses
  %.910062063 = phi i32 [ 0, %bb.cz ], [ %i.pa, %bb.cw ] ; 33 uses
  %i.pq = load i32, ptr %i.b, align 4, !tbaa !23  ; 2 uses
  %i.pr = add nsw i32 %i.pq, 294                  ; 13 uses
  %i.ps = udiv i32 %i.pr, 22                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.pt = mul nuw nsw i32 %i.ps, 22
  %i.pu = add nsw i32 %i.pt, -272                 ; 14 uses
  %i.pv = sub nsw i32 %i.pu, %i.pq                ; 36 uses
  store i32 %i.pv, ptr %i.c, align 4, !tbaa !23
  store i32 %i.pu, ptr %i.b, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.pw = load i64, ptr %i.a, align 8, !tbaa !15  ; 14 uses
  %i.px = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.pw, i1 false)
  %i.py = trunc nuw nsw i64 %i.px to i32
  %i.pz = add nsw i32 %.0868, %i.py               ; 12 uses
  store i32 %i.pz, ptr %i.d, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.qa = zext nneg i32 %i.ps to i64
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr @_ZN5boost8charconv6detail24extended_cache_long_implILb1EE27multiplier_index_info_tableE, i64 %i.qa ; 3 uses
  %.sroa.0.0.copyload.i1207 = load i16, ptr %i.qb, align 4, !tbaa !58
  %.sroa.4.0..sroa_idx.i1208 = getelementptr inbounds nuw i8, ptr %i.qb, i64 2
  %.sroa.4.0.copyload.i1209 = load i16, ptr %.sroa.4.0..sroa_idx.i1208, align 2, !tbaa !58
  %i.qc = zext i16 %.sroa.4.0.copyload.i1209 to i32
  %i.qd = add nsw i32 %.0868, %i.qc               ; 2 uses
  %i.qe = add nsw i32 %i.qd, -977                 ; 5 uses
  %i.qf = add nsw i32 %i.qd, -785                 ; 2 uses
  %i.qg = zext i16 %.sroa.0.0.copyload.i1207 to i32 ; 4 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  %i.qi = load i16, ptr %i.qh, align 4, !tbaa !60
  %i.qj = zext i16 %i.qi to i32                   ; 2 uses
  %i.qk = icmp slt i32 %i.qe, %i.qg
  br i1 %i.qk, label %bb.db, label %bb.de

bb.db:                                            ; preds = %.thread2050
  %i.ql = sub nsw i32 %i.qg, %i.qe                ; 3 uses
  %i.qm = lshr i32 %i.ql, 6                       ; 3 uses
  %i.qn = and i32 %i.ql, 63                       ; 2 uses
  %i.qo = and i32 %i.ql, -64
  %i.qp = add nsw i32 %i.qo, %i.qe                ; 3 uses
  %i.qq = lshr i32 %i.qg, 6                       ; 3 uses
  %i.qr = and i32 %i.qg, 65472                    ; 3 uses
  %i.qs = icmp slt i32 %i.qp, %i.qr
  br i1 %i.qs, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.qt = zext nneg i32 %i.qm to i64
  %i.qu = sub nsw i32 %i.qr, %i.qp                ; 2 uses
  %i.qv = zext nneg i32 %i.qq to i64
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail24extended_cache_long_implILb1EE5cacheE, i64 %i.qv
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !15
  %i.qy = zext nneg i32 %i.qu to i64
  %i.qz = lshr i64 %i.qx, %i.qy
  %i.ra = zext nneg i32 %i.qn to i64
  %i.rb = lshr i64 -1, %i.ra
  %i.rc = and i64 %i.qz, %i.rb
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.qt
  store i64 %i.rc, ptr %i.rd, align 8, !tbaa !15
  %i.re = add nuw nsw i32 %i.qm, 1
  %i.rf = sub nsw i32 64, %i.qu
  br label %bb.df

bb.dd:                                            ; preds = %bb.db
  %i.rg = sub nuw nsw i32 %i.qp, %i.qr
  %i.rh = zext nneg i32 %i.qn to i64
  br label %bb.df

bb.de:                                            ; preds = %.thread2050
  %i.ri = lshr i32 %i.qe, 6
  %i.rj = and i32 %i.qe, 63
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %.191.i1210 = phi i32 [ 0, %bb.de ], [ %i.re, %bb.dc ], [ %i.qm, %bb.dd ] ; 2 uses
  %.089.i1211 = phi i32 [ %i.ri, %bb.de ], [ %i.qq, %bb.dc ], [ %i.qq, %bb.dd ] ; 6 uses
  %.188.i1212 = phi i32 [ %i.rj, %bb.de ], [ %i.rf, %bb.dc ], [ %i.rg, %bb.dd ] ; 4 uses
  %.1.i1213 = phi i64 [ 0, %bb.de ], [ 0, %bb.dc ], [ %i.rh, %bb.dd ]
  %i.rk = icmp sgt i32 %i.qf, %i.qj               ; 2 uses
  %i.rl = sub nsw i32 %i.qf, %i.qj                ; 2 uses
  %i.rm = and i32 %i.rl, 63
  %i.rn = trunc i32 %i.rl to i8
  %i.ro = xor i8 %i.rn, -1
  %i.rp = lshr i8 %i.ro, 6
  %.085.i1214 = select i1 %i.rk, i32 %i.rm, i32 0 ; 2 uses
  %.0.i1215 = select i1 %i.rk, i8 %i.rp, i8 3     ; 2 uses
  %i.rq = zext nneg i8 %.0.i1215 to i32           ; 2 uses
  %i.rr = sub nsw i32 %i.rq, %.191.i1210          ; 2 uses
  %i.rs = zext nneg i32 %.191.i1210 to i64
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.rs ; 8 uses
  %i.ru = icmp eq i32 %.188.i1212, 0
  br i1 %i.ru, label %bb.dg, label %bb.dl

bb.dg:                                            ; preds = %bb.df
  switch i32 %i.rr, label %bb.dk [
    i32 3, label %bb.dh
    i32 2, label %bb.di
    i32 1, label %bb.dj
    i32 0, label %bb.dq
  ]

bb.dh:                                            ; preds = %bb.dg
  %i.rv = zext nneg i32 %.089.i1211 to i64
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail24extended_cache_long_implILb1EE5cacheE, i64 %i.rv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rt, ptr noundef nonnull align 8 dereferenceable(24) %i.rw, i64 24, i1 false)
  br label %bb.dq

bb.di:                                            ; preds = %bb.dg
  %i.rx = zext nneg i32 %.089.i1211 to i64
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail24extended_cache_long_implILb1EE5cacheE, i64 %i.rx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rt, ptr noundef nonnull align 8 dereferenceable(16) %i.ry, i64 16, i1 false)
  br label %bb.dq

bb.dj:                                            ; preds = %bb.dg
  %i.rz = zext nneg i32 %.089.i1211 to i64
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail24extended_cache_long_implILb1EE5cacheE, i64 %i.rz
  %i.sb = load i64, ptr %i.sa, align 8
  store i64 %i.sb, ptr %i.rt, align 8
  br label %bb.dq

bb.dk:                                            ; preds = %bb.dg
  unreachable

bb.dl:                                            ; preds = %bb.df
  switch i32 %i.rr, label %bb.dp [
end_hunk_0
begin_hunk_1_@_ZN5boost8charconv6detail5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcS7_NS0_12chars_formatE:bb.a
  %i.uw = lshr i128 %i.uv, 64
  %i.ux = trunc nuw i128 %i.uw to i64
  %i.uy = zext i64 %i.um to i128
  %i.uz = mul nuw i128 %i.uy, 10000000000000000000 ; 2 uses
  %i.va = lshr i128 %i.uz, 64
  %i.vb = trunc nuw i128 %i.va to i64
  %i.vc = trunc i128 %i.uz to i64
  %i.vd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.vc, i64 %i.ux) ; 2 uses
  %i.ve = extractvalue { i64, i1 } %i.vd, 1
  %i.vf = extractvalue { i64, i1 } %i.vd, 0
  %i.vg = zext i1 %i.ve to i64
  %i.vh = add i64 %i.ut, %i.vb
  %i.vi = add i64 %i.vh, %i.vg
  %i.vj = and i128 %i.uv, 18446744073709027328
  %i.vk = mul nuw nsw i128 %i.vj, 1000
  %i.vl = lshr i128 %i.vk, 64
  %i.vm = trunc nuw nsw i128 %i.vl to i64
  %i.vn = zext i64 %i.vf to i128
  %i.vo = mul nuw nsw i128 %i.vn, 1000            ; 2 uses
  %i.vp = lshr i128 %i.vo, 64
  %i.vq = trunc nuw nsw i128 %i.vp to i64
  %i.vr = trunc i128 %i.vo to i64
  %i.vs = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.vr, i64 %i.vm)
  %i.vt = extractvalue { i64, i1 } %i.vs, 1
  %i.vu = zext i1 %i.vt to i64
  %i.vv = add nuw nsw i64 %i.vu, %i.vq
  %i.vw = zext i64 %i.vi to i128
  %i.vx = mul nuw nsw i128 %i.vw, 1000            ; 2 uses
  %i.vy = lshr i128 %i.vx, 64
  %i.vz = trunc nuw nsw i128 %i.vy to i64
  %i.wa = trunc i128 %i.vx to i64
  %i.wb = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.wa, i64 %i.vv)
  %i.wc = extractvalue { i64, i1 } %i.wb, 1
  %i.wd = zext i1 %i.wc to i64
  %i.we = add nuw nsw i64 %i.wd, %i.vz            ; 2 uses
  %i.wf = icmp eq i32 %i.pv, 1
  br i1 %i.wf, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1262
  %i.wg = mul nuw nsw i64 %i.we, 429496730
  %i.wh = and i64 %i.wg, 4294967294
  %i.wi = mul nuw nsw i64 %i.wh, 10
  %i.wj = lshr i64 %i.wi, 32
  %i.wk = trunc nuw nsw i64 %i.wj to i8
  %i.wl = or disjoint i8 %i.wk, 48
  store i8 %i.wl, ptr %.222065, align 1, !tbaa !20
  %i.wm = getelementptr inbounds nuw i8, ptr %.222065, i64 1
  br label %.loopexit

bb.dv:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1262
  %i.wn = mul nuw nsw i64 %i.we, 42949673
  %i.wo = and i64 %i.wn, 4294967295
  %i.wp = mul nuw nsw i64 %i.wo, 100
  %sh.diff2416 = lshr i64 %i.wp, 31
  %i.wq = and i64 %sh.diff2416, 254
  %i.wr = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.wq
  %i.ws = load i16, ptr %i.wr, align 2
  store i16 %i.ws, ptr %.222065, align 1
  %i.wt = getelementptr inbounds nuw i8, ptr %.222065, i64 2
  br label %.loopexit

bb.dw:                                            ; preds = %bb.dt
  %i.wu = icmp samesign ult i32 %i.pv, 17
  br i1 %i.wu, label %bb.dx, label %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1253

bb.dx:                                            ; preds = %bb.dw
  %i.wv = sub nuw nsw i32 22, %i.pv
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dx, %.lr.ph.i
  %.012.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ 1, %bb.dx ]
  %.0811.i = phi i32 [ %i.wz, %.lr.ph.i ], [ %i.wv, %bb.dx ] ; 2 uses
  %.0910.i = phi i64 [ %i.wy, %.lr.ph.i ], [ 10, %bb.dx ] ; 3 uses
  %i.ww = and i32 %.0811.i, 1
  %.not.i1327 = icmp eq i32 %i.ww, 0
  %i.wx = select i1 %.not.i1327, i64 1, i64 %.0910.i
  %spec.select.i = mul i64 %i.wx, %.012.i         ; 3 uses
  %i.wy = mul i64 %.0910.i, %.0910.i
  %i.wz = lshr i32 %.0811.i, 1                    ; 2 uses
  %.not13.i = icmp eq i32 %i.wz, 0
  br i1 %.not13.i, label %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE13discard_upperImEEvT_Pmm.exit1227, label %.lr.ph.i, !llvm.loop !45

_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE13discard_upperImEEvT_Pmm.exit1227: ; preds = %.lr.ph.i
  %i.xa = mul i64 %i.up, %spec.select.i
  %i.xb = zext i64 %spec.select.i to i128         ; 2 uses
  %i.xc = and i128 %i.ua, 18446744073709551615
  %i.xd = mul nuw i128 %i.xc, %i.xb               ; 3 uses
  %i.xe = lshr i128 %i.xd, 64
  %i.xf = trunc nuw i128 %i.xe to i64
  %i.xg = trunc i128 %i.xd to i64
  store i64 %i.xg, ptr %i.tw, align 16, !tbaa !15
  %i.xh = zext i64 %i.um to i128
  %i.xi = mul nuw i128 %i.xh, %i.xb               ; 2 uses
  %i.xj = lshr i128 %i.xi, 64
  %i.xk = trunc nuw i128 %i.xj to i64
  %i.xl = trunc i128 %i.xi to i64
  %i.xm = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.xl, i64 %i.xf) ; 2 uses
  %i.xn = extractvalue { i64, i1 } %i.xm, 1
  %i.xo = extractvalue { i64, i1 } %i.xm, 0       ; 2 uses
  %i.xp = zext i1 %i.xn to i64
  store i64 %i.xo, ptr %i.ud, align 8, !tbaa !15
  %i.xq = add i64 %i.xa, %i.xk
  %i.xr = add i64 %i.xq, %i.xp                    ; 2 uses
  store i64 %i.xr, ptr %i.e, align 16, !tbaa !15
  %i.xs = icmp samesign ult i32 %i.pv, 10
  %i.xt = and i128 %i.xd, 18446744073709551615    ; 2 uses
  %i.xu = zext i64 %i.xo to i128                  ; 2 uses
  %i.xv = zext i64 %i.xr to i128                  ; 2 uses
  br i1 %i.xs, label %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1259, label %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1256

_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1259: ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE13discard_upperImEEvT_Pmm.exit1227
  %i.xw = mul nuw nsw i128 %i.xt, 1000000000
  %i.xx = lshr i128 %i.xw, 64
  %i.xy = trunc nuw nsw i128 %i.xx to i64
  %i.xz = mul nuw nsw i128 %i.xu, 1000000000      ; 2 uses
  %i.ya = lshr i128 %i.xz, 64
  %i.yb = trunc nuw nsw i128 %i.ya to i64
  %i.yc = trunc i128 %i.xz to i64
  %i.yd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.yc, i64 %i.xy)
  %i.ye = extractvalue { i64, i1 } %i.yd, 1
  %i.yf = zext i1 %i.ye to i64
  %i.yg = add nuw nsw i64 %i.yf, %i.yb
  %i.yh = mul nuw nsw i128 %i.xv, 1000000000      ; 2 uses
  %i.yi = lshr i128 %i.yh, 64
  %i.yj = trunc nuw nsw i128 %i.yi to i64
  %i.yk = trunc i128 %i.yh to i64
  %i.yl = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.yk, i64 %i.yg)
  %i.ym = extractvalue { i64, i1 } %i.yl, 1
  %i.yn = zext i1 %i.ym to i64
  %i.yo = add nuw nsw i64 %i.yn, %i.yj            ; 2 uses
  %i.yp = and i32 %i.pv, 1
  %.not1114 = icmp eq i32 %i.yp, 0
  br i1 %.not1114, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1259
  %i.yq = mul nuw nsw i64 %i.yo, 720575941
  %i.yr = lshr i64 %i.yq, 24
  %i.ys = add nuw nsw i64 %i.yr, 1                ; 2 uses
  %i.yt = lshr i64 %i.ys, 32
  %i.yu = trunc nuw nsw i64 %i.yt to i8
  %i.yv = add nuw nsw i8 %i.yu, 48
  store i8 %i.yv, ptr %.222065, align 1, !tbaa !20
  br label %bb.ea

bb.dz:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1259
  %i.yw = mul nuw nsw i64 %i.yo, 450359963
  %i.yx = lshr i64 %i.yw, 20
  %i.yy = add nuw nsw i64 %i.yx, 1                ; 2 uses
  %sh.diff2414 = lshr i64 %i.yy, 31
  %i.yz = and i64 %sh.diff2414, 8190
  %i.za = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.yz
  %i.zb = load i16, ptr %i.za, align 2
  store i16 %i.zb, ptr %.222065, align 1
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.sink2904.a = phi i64 [ 2, %bb.dz ], [ 1, %bb.dy ]
  %.0927 = phi i64 [ %i.yy, %bb.dz ], [ %i.ys, %bb.dy ]
  %i.zc = getelementptr inbounds nuw i8, ptr %.222065, i64 %.sink2904.a ; 2 uses
  %.pr = load i32, ptr %i.c, align 4, !tbaa !23
  %i.zd = icmp sgt i32 %.pr, 2
  br i1 %i.zd, label %.lr.ph2538, label %.loopexit

.lr.ph2538:                                       ; preds = %bb.ea, %.lr.ph2538
  %.252536 = phi ptr [ %i.zj, %.lr.ph2538 ], [ %i.zc, %bb.ea ] ; 2 uses
  %.19282535 = phi i64 [ %i.zf, %.lr.ph2538 ], [ %.0927, %bb.ea ]
  %i.ze = and i64 %.19282535, 4294967295
  %i.zf = mul nuw nsw i64 %i.ze, 100              ; 2 uses
  %sh.diff2415 = lshr i64 %i.zf, 31
  %i.zg = and i64 %sh.diff2415, 254
  %i.zh = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.zg
  %i.zi = load i16, ptr %i.zh, align 2
  store i16 %i.zi, ptr %.252536, align 1
  %i.zj = getelementptr inbounds nuw i8, ptr %.252536, i64 2 ; 2 uses
  %i.zk = load i32, ptr %i.c, align 4, !tbaa !23  ; 2 uses
  %i.zl = add nsw i32 %i.zk, -2
  store i32 %i.zl, ptr %i.c, align 4, !tbaa !23
  %i.zm = icmp sgt i32 %i.zk, 4
  br i1 %i.zm, label %.lr.ph2538, label %.loopexit, !llvm.loop !46

_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1256: ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE13discard_upperImEEvT_Pmm.exit1227
  %i.zn = mul nuw nsw i128 %i.xt, 10000000000000000
  %i.zo = lshr i128 %i.zn, 64
  %i.zp = trunc nuw nsw i128 %i.zo to i64
  %i.zq = mul nuw nsw i128 %i.xu, 10000000000000000 ; 2 uses
  %i.zr = lshr i128 %i.zq, 64
  %i.zs = trunc nuw nsw i128 %i.zr to i64
  %i.zt = trunc i128 %i.zq to i64
  %i.zu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.zt, i64 %i.zp)
  %i.zv = extractvalue { i64, i1 } %i.zu, 1
  %i.zw = zext i1 %i.zv to i64
  %i.zx = add nuw nsw i64 %i.zw, %i.zs
  %i.zy = mul nuw nsw i128 %i.xv, 10000000000000000 ; 2 uses
  %i.zz = lshr i128 %i.zy, 64
  %i.aaa = trunc nuw nsw i128 %i.zz to i64
  %i.aab = trunc i128 %i.zy to i64
  %i.aac = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.aab, i64 %i.zx)
  %i.aad = extractvalue { i64, i1 } %i.aac, 1
  %i.aae = zext i1 %i.aad to i64
  %i.aaf = add nuw nsw i64 %i.aae, %i.aaa         ; 2 uses
  %13 = tail call noundef i64 @llvm.umulh.i64(i64 %i.aaf, i64 3022314549036573)
  %14 = lshr i64 %13, 14                          ; 2 uses
  %i.aag = trunc i64 %14 to i32
  %.neg1112 = mul i64 %14, 4194967296
  %i.aah = add i64 %.neg1112, %i.aaf
  tail call void @_ZN5boost8charconv6detail14print_8_digitsEjPc(i32 noundef %i.aag, ptr noundef nonnull %.222065) #14
  %i.aai = getelementptr inbounds nuw i8, ptr %.222065, i64 8
  %i.aaj = and i64 %i.aah, 4294967295
  %i.aak = mul nuw nsw i64 %i.aaj, 140737489
  %i.aal = lshr i64 %i.aak, 15
  %i.aam = add nuw nsw i64 %i.aal, 1              ; 3 uses
  %sh.diff2412 = lshr i64 %i.aam, 31
  %i.aan = and i64 %sh.diff2412, 32766
  %i.aao = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.aan
  %i.aap = load i16, ptr %i.aao, align 2
  store i16 %i.aap, ptr %i.aai, align 1
  %i.aaq = getelementptr inbounds nuw i8, ptr %.222065, i64 10 ; 2 uses
  %i.aar = add nsw i32 %i.pv, -10                 ; 2 uses
  store i32 %i.aar, ptr %i.c, align 4, !tbaa !23
  %i.aas = icmp samesign ugt i32 %i.pv, 11
  br i1 %i.aas, label %.lr.ph2530, label %._crit_edge2531

.lr.ph2530:                                       ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1256, %.lr.ph2530
  %.262529 = phi ptr [ %i.aay, %.lr.ph2530 ], [ %i.aaq, %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1256 ] ; 2 uses
  %.09262528 = phi i64 [ %i.aau, %.lr.ph2530 ], [ %i.aam, %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1256 ]
  %i.aat = and i64 %.09262528, 4294967295
  %i.aau = mul nuw nsw i64 %i.aat, 100            ; 3 uses
  %sh.diff2413 = lshr i64 %i.aau, 31
  %i.aav = and i64 %sh.diff2413, 254
  %i.aaw = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.aav
  %i.aax = load i16, ptr %i.aaw, align 2
  store i16 %i.aax, ptr %.262529, align 1
  %i.aay = getelementptr inbounds nuw i8, ptr %.262529, i64 2 ; 2 uses
  %i.aaz = load i32, ptr %i.c, align 4, !tbaa !23 ; 2 uses
  %i.aba = add nsw i32 %i.aaz, -2                 ; 2 uses
  store i32 %i.aba, ptr %i.c, align 4, !tbaa !23
  %i.abb = icmp sgt i32 %i.aaz, 3
  br i1 %i.abb, label %.lr.ph2530, label %._crit_edge2531, !llvm.loop !47

._crit_edge2531:                                  ; preds = %.lr.ph2530, %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1256
  %storemerge.lcssa = phi i32 [ %i.aar, %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1256 ], [ %i.aba, %.lr.ph2530 ]
  %.0926.lcssa = phi i64 [ %i.aam, %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1256 ], [ %i.aau, %.lr.ph2530 ]
  %.26.lcssa = phi ptr [ %i.aaq, %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1256 ], [ %i.aay, %.lr.ph2530 ] ; 3 uses
  %.not1113 = icmp eq i32 %storemerge.lcssa, 0
  br i1 %.not1113, label %.loopexit, label %bb.eb

bb.eb:                                            ; preds = %._crit_edge2531
  %i.abc = and i64 %.0926.lcssa, 4294967295
  %i.abd = mul nuw nsw i64 %i.abc, 10
  %i.abe = lshr i64 %i.abd, 32
  %i.abf = trunc nuw nsw i64 %i.abe to i8
  %i.abg = or disjoint i8 %i.abf, 48
  store i8 %i.abg, ptr %.26.lcssa, align 1, !tbaa !20
  %i.abh = getelementptr inbounds nuw i8, ptr %.26.lcssa, i64 1
  br label %.loopexit

_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1253: ; preds = %bb.dw
  %i.abi = and i128 %i.ua, 18446744073709551615
  %i.abj = mul nuw nsw i128 %i.abi, 1000000       ; 3 uses
  %i.abk = lshr i128 %i.abj, 64
  %i.abl = trunc nuw nsw i128 %i.abk to i64
  %i.abm = trunc i128 %i.abj to i64
  store i64 %i.abm, ptr %i.tw, align 16, !tbaa !15
  %i.abn = zext i64 %i.um to i128
  %i.abo = mul nuw nsw i128 %i.abn, 1000000       ; 2 uses
  %i.abp = lshr i128 %i.abo, 64
  %i.abq = trunc nuw nsw i128 %i.abp to i64
  %i.abr = trunc i128 %i.abo to i64
  %i.abs = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.abr, i64 %i.abl) ; 2 uses
  %i.abt = extractvalue { i64, i1 } %i.abs, 1
  %i.abu = extractvalue { i64, i1 } %i.abs, 0     ; 2 uses
  %i.abv = zext i1 %i.abt to i64
  %i.abw = add nuw nsw i64 %i.abv, %i.abq
  store i64 %i.abu, ptr %i.ud, align 8, !tbaa !15
  %i.abx = zext i64 %i.up to i128
  %i.aby = mul nuw nsw i128 %i.abx, 1000000       ; 2 uses
  %i.abz = lshr i128 %i.aby, 64
  %i.aca = trunc nuw nsw i128 %i.abz to i64
  %i.acb = trunc i128 %i.aby to i64
  %i.acc = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.acb, i64 %i.abw) ; 2 uses
  %i.acd = extractvalue { i64, i1 } %i.acc, 1
  %i.ace = extractvalue { i64, i1 } %i.acc, 0     ; 2 uses
  %i.acf = zext i1 %i.acd to i64
  %i.acg = add nuw nsw i64 %i.acf, %i.aca         ; 6 uses
  store i64 %i.ace, ptr %i.e, align 16, !tbaa !15
  %i.ach = and i128 %i.abj, 18446744073709551552
  %i.aci = mul nuw nsw i128 %i.ach, 10000000000000000
  %i.acj = lshr i128 %i.aci, 64
  %i.ack = trunc nuw nsw i128 %i.acj to i64
  %i.acl = zext i64 %i.abu to i128
  %i.acm = mul nuw nsw i128 %i.acl, 10000000000000000 ; 2 uses
  %i.acn = lshr i128 %i.acm, 64
  %i.aco = trunc nuw nsw i128 %i.acn to i64
  %i.acp = trunc i128 %i.acm to i64
  %i.acq = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.acp, i64 %i.ack)
  %i.acr = extractvalue { i64, i1 } %i.acq, 1
  %i.acs = zext i1 %i.acr to i64
  %i.act = add nuw nsw i64 %i.acs, %i.aco
  %i.acu = zext i64 %i.ace to i128
  %i.acv = mul nuw nsw i128 %i.acu, 10000000000000000 ; 2 uses
  %i.acw = lshr i128 %i.acv, 64
  %i.acx = trunc nuw nsw i128 %i.acw to i64
  %i.acy = trunc i128 %i.acv to i64
  %i.acz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.acy, i64 %i.act)
  %i.ada = extractvalue { i64, i1 } %i.acz, 1
  %i.adb = zext i1 %i.ada to i64
  %i.adc = add nuw nsw i64 %i.adb, %i.acx         ; 2 uses
  %15 = tail call noundef i64 @llvm.umulh.i64(i64 %i.adc, i64 3022314549036573)
  %16 = lshr i64 %15, 14
  %i.add = trunc i64 %16 to i32                   ; 2 uses
  %i.ade = trunc i64 %i.adc to i32
  %.neg1111 = mul i32 %i.add, -100000000
  %i.adf = add i32 %.neg1111, %i.ade
  %i.adg = add nsw i32 %i.pv, -16                 ; 2 uses
  switch i32 %i.adg, label %bb.eh [
    i32 1, label %bb.ei
    i32 2, label %bb.ec
    i32 3, label %bb.ed
    i32 4, label %bb.ee
    i32 5, label %bb.ef
    i32 6, label %bb.eg
  ]

bb.ec:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1253
  %i.adh = mul nuw nsw i64 %i.acg, 42949673
  br label %.lr.ph2525.preheader

bb.ed:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1253
  %i.adi = mul nuw nsw i64 %i.acg, 4294968
  br label %.thread2796.a

bb.ee:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1253
  %i.adj = mul nuw nsw i64 %i.acg, 429497
  br label %.lr.ph2525.preheader

bb.ef:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1253
  %i.adk = mul nuw nsw i64 %i.acg, 687195
  %i.adl = lshr i64 %i.adk, 4
  %i.adm = add nuw nsw i64 %i.adl, 1
  br label %.thread2796.a

bb.eg:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1253
  %i.adn = mul nuw nsw i64 %i.acg, 429497         ; 2 uses
  %sh.diff2409 = lshr i64 %i.adn, 31
  %i.ado = and i64 %sh.diff2409, 4294967294
  %i.adp = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.ado
  %i.adq = load i16, ptr %i.adp, align 2
  store i16 %i.adq, ptr %.222065, align 1
  %i.adr = getelementptr inbounds nuw i8, ptr %.222065, i64 2
  br label %.lr.ph2525.preheader

bb.eh:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1253
  unreachable

.thread2796.a:                                    ; preds = %bb.ed, %bb.ef
  %.0923.ph = phi i64 [ %i.adm, %bb.ef ], [ %i.adi, %bb.ed ]
  %i.ads = and i64 %.0923.ph, 4294967295
  %i.adt = mul nuw nsw i64 %i.ads, 10             ; 2 uses
  %i.adu = lshr i64 %i.adt, 32
  %i.adv = trunc nuw nsw i64 %i.adu to i8
  %i.adw = or disjoint i8 %i.adv, 48
  store i8 %i.adw, ptr %.222065, align 1, !tbaa !20
  %i.adx = getelementptr inbounds nuw i8, ptr %.222065, i64 1
  br label %.lr.ph2525.preheader

.lr.ph2525.preheader:                             ; preds = %bb.eg, %bb.ee, %bb.ec, %.thread2796.a
  %.292523.ph = phi ptr [ %.222065, %bb.ec ], [ %.222065, %bb.ee ], [ %i.adr, %bb.eg ], [ %i.adx, %.thread2796.a ]
  %.19222522.ph = phi i32 [ 2, %bb.ec ], [ 4, %bb.ee ], [ 4, %bb.eg ], [ %i.adg, %.thread2796.a ]
  %.29252521.ph = phi i64 [ %i.adh, %bb.ec ], [ %i.adj, %bb.ee ], [ %i.adn, %bb.eg ], [ %i.adt, %.thread2796.a ]
  br label %.lr.ph2525

bb.ei:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1253
  %i.ady = mul nuw nsw i64 %i.acg, 429496730
  %i.adz = and i64 %i.ady, 4294967294
  %i.aea = mul nuw nsw i64 %i.adz, 10
  %i.aeb = lshr i64 %i.aea, 32
  %i.aec = trunc nuw nsw i64 %i.aeb to i8
  %i.aed = or disjoint i8 %i.aec, 48
  store i8 %i.aed, ptr %.222065, align 1, !tbaa !20
  %i.aee = getelementptr inbounds nuw i8, ptr %.222065, i64 1
  br label %._crit_edge2526

.lr.ph2525:                                       ; preds = %.lr.ph2525.preheader, %.lr.ph2525
  %.292523 = phi ptr [ %i.aek, %.lr.ph2525 ], [ %.292523.ph, %.lr.ph2525.preheader ] ; 2 uses
  %.19222522 = phi i32 [ %i.ael, %.lr.ph2525 ], [ %.19222522.ph, %.lr.ph2525.preheader ] ; 2 uses
  %.29252521 = phi i64 [ %i.aeg, %.lr.ph2525 ], [ %.29252521.ph, %.lr.ph2525.preheader ]
  %i.aef = and i64 %.29252521, 4294967295
  %i.aeg = mul nuw nsw i64 %i.aef, 100            ; 2 uses
  %sh.diff2410 = lshr i64 %i.aeg, 31
  %i.aeh = and i64 %sh.diff2410, 254
  %i.aei = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.aeh
  %i.aej = load i16, ptr %i.aei, align 2
  store i16 %i.aej, ptr %.292523, align 1
  %i.aek = getelementptr inbounds nuw i8, ptr %.292523, i64 2 ; 2 uses
  %i.ael = add nsw i32 %.19222522, -2
  %i.aem = icmp samesign ugt i32 %.19222522, 3
  br i1 %i.aem, label %.lr.ph2525, label %._crit_edge2526, !llvm.loop !48

._crit_edge2526:                                  ; preds = %.lr.ph2525, %bb.ei
  %.29.lcssa = phi ptr [ %i.aee, %bb.ei ], [ %i.aek, %.lr.ph2525 ] ; 3 uses
  tail call void @_ZN5boost8charconv6detail14print_8_digitsEjPc(i32 noundef %i.add, ptr noundef nonnull %.29.lcssa) #14
  %i.aen = getelementptr inbounds nuw i8, ptr %.29.lcssa, i64 8
  tail call void @_ZN5boost8charconv6detail14print_8_digitsEjPc(i32 noundef %i.adf, ptr noundef nonnull %i.aen) #14
  %i.aeo = getelementptr inbounds nuw i8, ptr %.29.lcssa, i64 16
  br label %.loopexit

bb.ej:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE13discard_upperImEEvT_Pmm.exit1233
  %i.aep = icmp samesign ult i32 %i.pv, 3
  br i1 %i.aep, label %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerIiEET_S5_Pmm.exit, label %bb.ez

_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerIiEET_S5_Pmm.exit: ; preds = %bb.ej
  %i.aeq = mul i64 %i.up, -8446744073709551616
  %i.aer = and i128 %i.ua, 18446744073709551615
  %i.aes = mul nuw i128 %i.aer, 10000000000000000000 ; 2 uses
  %i.aet = lshr i128 %i.aes, 64
  %i.aeu = trunc nuw i128 %i.aet to i64
  %i.aev = zext i64 %i.um to i128
  %i.aew = mul nuw i128 %i.aev, 10000000000000000000 ; 2 uses
  %i.aex = lshr i128 %i.aew, 64
  %i.aey = trunc nuw i128 %i.aex to i64
  %i.aez = trunc i128 %i.aew to i64
  %i.afa = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.aez, i64 %i.aeu) ; 2 uses
  %i.afb = extractvalue { i64, i1 } %i.afa, 1
  %i.afc = extractvalue { i64, i1 } %i.afa, 0
  %i.afd = zext i1 %i.afb to i64
  %i.afe = add i64 %i.aeq, %i.aey
  %i.aff = add i64 %i.afe, %i.afd
  %i.afg = and i128 %i.aes, 18446744073709027328
  %i.afh = mul nuw nsw i128 %i.afg, 2000
  %i.afi = lshr i128 %i.afh, 64
  %i.afj = trunc nuw nsw i128 %i.afi to i64
  %i.afk = zext i64 %i.afc to i128
  %i.afl = mul nuw nsw i128 %i.afk, 2000          ; 2 uses
  %i.afm = lshr i128 %i.afl, 64
  %i.afn = trunc nuw nsw i128 %i.afm to i64
  %i.afo = trunc i128 %i.afl to i64
  %i.afp = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.afo, i64 %i.afj)
  %i.afq = extractvalue { i64, i1 } %i.afp, 1
  %i.afr = zext i1 %i.afq to i64
  %i.afs = add nuw nsw i64 %i.afr, %i.afn
  %i.aft = zext i64 %i.aff to i128
  %i.afu = mul nuw nsw i128 %i.aft, 2000          ; 2 uses
  %i.afv = lshr i128 %i.afu, 64
  %i.afw = trunc nuw nsw i128 %i.afv to i32
  %i.afx = trunc i128 %i.afu to i64
  %i.afy = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.afx, i64 %i.afs)
  %i.afz = extractvalue { i64, i1 } %i.afy, 1
  %i.aga = zext i1 %i.afz to i32
  %i.agb = add nuw nsw i32 %i.aga, %i.afw         ; 2 uses
  %i.agc = trunc i32 %i.agb to i1
  %i.agd = lshr i32 %i.agb, 1                     ; 2 uses
  %i.age = icmp eq i32 %i.pv, 2
  br i1 %i.age, label %bb.ek, label %bb.es

bb.ek:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerIiEET_S5_Pmm.exit
  %i.agf = icmp eq i32 %.910062063, 1
  %i.agg = mul i32 %i.agd, 42949673               ; 2 uses
  %i.agh = zext i32 %i.agg to i64                 ; 2 uses
  br i1 %i.agf, label %bb.el, label %bb.eo

bb.el:                                            ; preds = %bb.ek
  %i.agi = mul nuw nsw i64 %i.agh, 10             ; 2 uses
  %i.agj = lshr i64 %i.agi, 32
  %i.agk = trunc nuw nsw i64 %i.agj to i32        ; 4 uses
  %i.agl = icmp ult i32 %i.pr, 264
  %i.agm = add nsw i32 %i.pz, %i.pu
  %i.agn = icmp slt i32 %i.agm, 1
  %or.cond.i.i = select i1 %i.agl, i1 true, i1 %i.agn
  br i1 %or.cond.i.i, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ago = icmp ugt i32 %i.pr, 285
  br i1 %i.ago, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.agp = mul i64 %i.pw, -4078282918271054303
  %i.agq = icmp ugt i64 %i.agp, 47223664828696
  %i.agr = zext i1 %i.agq to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit

_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit: ; preds = %bb.el, %bb.em, %bb.en
  %.0.i.i = phi i32 [ %i.agr, %bb.en ], [ 1, %bb.el ], [ 0, %bb.em ]
  %i.ags = trunc i64 %i.agi to i32                ; 2 uses
  %.not.i1190 = icmp ult i32 %i.ags, -1717986918
  br i1 %.not.i1190, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1192, label %.thread1981.sink.split

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1192: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit
  %i.agt = lshr i32 %i.ags, 31
  %i.agu = or i32 %.0.i.i, %i.agk
  %i.agv = and i32 %i.agu, %i.agt
  %.fr2406 = freeze i32 %i.agv
  %.not2407 = icmp eq i32 %.fr2406, 0
  br i1 %.not2407, label %.thread2077.sink.split, label %.thread1981.sink.split

bb.eo:                                            ; preds = %bb.ek
  %i.agw = mul nuw nsw i64 %i.agh, 100
  %i.agx = lshr i64 %i.agw, 32                    ; 2 uses
  %i.agy = icmp eq i32 %.910062063, 0
  br i1 %i.agy, label %bb.ep, label %bb.ew

bb.ep:                                            ; preds = %bb.eo
  %i.agz = icmp ult i32 %i.pr, 264
  %i.aha = add nsw i32 %i.pz, %i.pu
  %i.ahb = icmp slt i32 %i.aha, 1
  %or.cond.i.i1366 = select i1 %i.agz, i1 true, i1 %i.ahb
  br i1 %or.cond.i.i1366, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1368, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ahc = icmp ugt i32 %i.pr, 285
  br i1 %i.ahc, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1368, label %bb.er
end_hunk_1
begin_hunk_2_@_ZN5boost8charconv6detail5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcS7_NS0_12chars_formatE:bb.a

.thread2130:                                      ; preds = %bb.fd
  %i.akx = shl nuw nsw i64 %i.aks, 1
  %i.aky = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.akx
  %i.akz = load i16, ptr %i.aky, align 2
  store i16 %i.akz, ptr %.222065, align 1
  br label %bb.fh

bb.fh:                                            ; preds = %.thread2130, %bb.fc
  %.sink2905.a = phi i64 [ 2, %.thread2130 ], [ 1, %bb.fc ]
  %i.ala = getelementptr inbounds nuw i8, ptr %.222065, i64 %.sink2905.a ; 3 uses
  %i.alb = icmp samesign ugt i32 %.910062063, 4
  br i1 %i.alb, label %.lr.ph2518.preheader, label %._crit_edge2519

.lr.ph2518.preheader:                             ; preds = %bb.fh
  %i.alc = add nsw i32 %.910062063, -3            ; 2 uses
  %i.ald = lshr i32 %i.alc, 1                     ; 3 uses
  %i.ale = icmp eq i32 %i.ald, 1
  br i1 %i.ale, label %.lr.ph2518.epil.preheader, label %.lr.ph2518.preheader.new

.lr.ph2518.preheader.new:                         ; preds = %.lr.ph2518.preheader
  %unroll_iter3055 = and i32 %i.ald, 2147483646
  br label %.lr.ph2518

._crit_edge2519.loopexit.unr-lcssa:               ; preds = %.lr.ph2518
  %i.alf = and i32 %i.alc, 2
  %lcmp.mod3052.not = icmp eq i32 %i.alf, 0
  br i1 %lcmp.mod3052.not, label %._crit_edge2519, label %.lr.ph2518.epil.preheader

.lr.ph2518.epil.preheader:                        ; preds = %._crit_edge2519.loopexit.unr-lcssa, %.lr.ph2518.preheader
  %.322516.epil.init = phi ptr [ %i.ala, %.lr.ph2518.preheader ], [ %i.amd, %._crit_edge2519.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3054 = trunc i32 %i.ald to i1
  tail call void @llvm.assume(i1 %lcmp.mod3054)
  %i.alg = load i64, ptr %i.f, align 8, !tbaa !15
  %i.alh = and i64 %i.alg, 4294967295
  %i.ali = mul nuw nsw i64 %i.alh, 100            ; 2 uses
  store i64 %i.ali, ptr %i.f, align 8, !tbaa !15
  %sh.diff2405.epil = lshr i64 %i.ali, 31
  %i.alj = and i64 %sh.diff2405.epil, 254
  %i.alk = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.alj
  %i.all = load i16, ptr %i.alk, align 2
  store i16 %i.all, ptr %.322516.epil.init, align 1
  %i.alm = getelementptr inbounds nuw i8, ptr %.322516.epil.init, i64 2
  br label %._crit_edge2519

._crit_edge2519:                                  ; preds = %.lr.ph2518.epil.preheader, %._crit_edge2519.loopexit.unr-lcssa, %bb.fh
  %.32.lcssa = phi ptr [ %i.ala, %bb.fh ], [ %i.amd, %._crit_edge2519.loopexit.unr-lcssa ], [ %i.alm, %.lr.ph2518.epil.preheader ] ; 3 uses
  %i.aln = load i32, ptr %i.c, align 4, !tbaa !23 ; 2 uses
  %.not1109 = icmp eq i32 %i.aln, 0
  %i.alo = load i64, ptr %i.f, align 8, !tbaa !15
  %i.alp = and i64 %i.alo, 4294967295             ; 2 uses
  br i1 %.not1109, label %bb.fm, label %bb.fi

.lr.ph2518:                                       ; preds = %.lr.ph2518, %.lr.ph2518.preheader.new
  %.322516 = phi ptr [ %i.ala, %.lr.ph2518.preheader.new ], [ %i.amd, %.lr.ph2518 ] ; 3 uses
  %niter3056 = phi i32 [ 0, %.lr.ph2518.preheader.new ], [ %niter3056.next.1, %.lr.ph2518 ]
  %i.alq = load i64, ptr %i.f, align 8, !tbaa !15
  %i.alr = and i64 %i.alq, 4294967295
  %i.als = mul nuw nsw i64 %i.alr, 100            ; 2 uses
  store i64 %i.als, ptr %i.f, align 8, !tbaa !15
  %sh.diff2405 = lshr i64 %i.als, 31
  %i.alt = and i64 %sh.diff2405, 254
  %i.alu = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.alt
  %i.alv = load i16, ptr %i.alu, align 2
  store i16 %i.alv, ptr %.322516, align 1
  %i.alw = getelementptr inbounds nuw i8, ptr %.322516, i64 2
  %i.alx = load i64, ptr %i.f, align 8, !tbaa !15
  %i.aly = and i64 %i.alx, 4294967295
  %i.alz = mul nuw nsw i64 %i.aly, 100            ; 2 uses
  store i64 %i.alz, ptr %i.f, align 8, !tbaa !15
  %sh.diff2405.1 = lshr i64 %i.alz, 31
  %i.ama = and i64 %sh.diff2405.1, 254
  %i.amb = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.ama
  %i.amc = load i16, ptr %i.amb, align 2
  store i16 %i.amc, ptr %i.alw, align 1
  %i.amd = getelementptr inbounds nuw i8, ptr %.322516, i64 4 ; 3 uses
  %niter3056.next.1 = add i32 %niter3056, 2       ; 2 uses
  %niter3056.ncmp.1 = icmp eq i32 %niter3056.next.1, %unroll_iter3055
  br i1 %niter3056.ncmp.1, label %._crit_edge2519.loopexit.unr-lcssa, label %.lr.ph2518, !llvm.loop !49

bb.fi:                                            ; preds = %._crit_edge2519
  %i.ame = mul nuw nsw i64 %i.alp, 100            ; 2 uses
  %i.amf = lshr i64 %i.ame, 32
  %.pre2640.a = load i64, ptr %i.a, align 8, !tbaa !15
  %.pre2641 = load i32, ptr %i.d, align 4, !tbaa !23
  %.pre2642 = load i32, ptr %i.b, align 4, !tbaa !23
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fd, %bb.fb, %bb.fi
  %i.amg = phi i32 [ %i.pu, %bb.fb ], [ %.pre2642, %bb.fi ], [ %i.pu, %bb.fd ] ; 3 uses
  %i.amh = phi i32 [ %i.pz, %bb.fb ], [ %.pre2641, %bb.fi ], [ %i.pz, %bb.fd ]
  %i.ami = phi i64 [ %i.pw, %bb.fb ], [ %.pre2640.a, %bb.fi ], [ %i.pw, %bb.fd ]
  %i.amj = phi i32 [ %i.akg, %bb.fb ], [ %i.aln, %bb.fi ], [ %i.akg, %bb.fd ]
  %i.amk = phi i64 [ %i.akk, %bb.fb ], [ %i.ame, %bb.fi ], [ %i.akr, %bb.fd ]
  %.101007 = phi i32 [ 1, %bb.fb ], [ 0, %bb.fi ], [ %.910062063, %bb.fd ] ; 2 uses
  %.13945.in = phi i64 [ %i.akl, %bb.fb ], [ %i.amf, %bb.fi ], [ %i.aks, %bb.fd ]
  %.33 = phi ptr [ %.222065, %bb.fb ], [ %.32.lcssa, %bb.fi ], [ %.222065, %bb.fd ] ; 2 uses
  %.13945 = trunc nuw nsw i64 %.13945.in to i32   ; 3 uses
  %i.aml = trunc i64 %i.amk to i32                ; 2 uses
  %i.amm = icmp slt i32 %i.amg, -8
  %i.amn = add nsw i32 %i.amg, %i.amh
  %i.amo = icmp slt i32 %i.amn, 1
  %or.cond.i.i1393 = select i1 %i.amm, i1 true, i1 %i.amo
  br i1 %or.cond.i.i1393, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1395, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.amp = icmp sgt i32 %i.amg, 13
  br i1 %i.amp, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1395, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.amq = mul i64 %i.ami, -4078282918271054303
  %i.amr = icmp ugt i64 %i.amq, 47223664828696
  %i.ams = zext i1 %i.amr to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1395

_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1395: ; preds = %bb.fj, %bb.fk, %bb.fl
  %.0.i.i1394 = phi i32 [ %i.ams, %bb.fl ], [ 1, %bb.fj ], [ 0, %bb.fk ]
  %i.amt = sext i32 %i.amj to i64
  %i.amu = getelementptr [4 x i8], ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE37fractional_part_rounding_thresholds32E, i64 %i.amt
  %i.amv = getelementptr i8, ptr %i.amu, i64 -4
  %i.amw = load i32, ptr %i.amv, align 4, !tbaa !23
  %.not.i1187 = icmp ugt i32 %i.amw, %i.aml
  br i1 %.not.i1187, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1189, label %.thread2111.thread2369

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1189: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1395
  %i.amx = lshr i32 %i.aml, 31
  %i.amy = or i32 %.0.i.i1394, %.13945
  %i.amz = and i32 %i.amy, %i.amx
  %.fr2403 = freeze i32 %i.amz
  %.not2404 = icmp eq i32 %.fr2403, 0
  br i1 %.not2404, label %.thread2111, label %.thread2111.thread2369

.thread2111.thread2369:                           ; preds = %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1189, %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %.loopexit2434.thread.thread2828.sink.split

bb.fm:                                            ; preds = %._crit_edge2519
  %i.ana = mul nuw nsw i64 %i.alp, 200            ; 2 uses
  %i.anb = and i64 %i.ana, 4294967296
  %i.anc = icmp ne i64 %i.anb, 0
  %sum.shift = lshr i64 %i.ana, 33
  %i.and = trunc nuw nsw i64 %sum.shift to i32    ; 3 uses
  %i.ane = load i64, ptr %i.a, align 8, !tbaa !15
  %i.anf = load i32, ptr %i.d, align 4, !tbaa !23
  %i.ang = load i32, ptr %i.b, align 4, !tbaa !23 ; 3 uses
  %i.anh = icmp slt i32 %i.ang, -8
  %i.ani = add nsw i32 %i.ang, %i.anf
  %i.anj = icmp slt i32 %i.ani, 1
  %or.cond.i.i1396 = select i1 %i.anh, i1 true, i1 %i.anj
  br i1 %or.cond.i.i1396, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj1ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ank = icmp sgt i32 %i.ang, 13
  br i1 %i.ank, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj1ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.anl = mul i64 %i.ane, -8194354213138031507
  %i.anm = icmp ugt i64 %i.anl, 9444732965739
  %i.ann = zext i1 %i.anm to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj1ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit

_ZN5boost8charconv6detail18has_further_digitsILj0ELj1ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit: ; preds = %bb.fm, %bb.fn, %bb.fo
  %.0.i.i1397 = phi i32 [ %i.ann, %bb.fo ], [ 1, %bb.fm ], [ 0, %bb.fn ]
  %i.ano = and i32 %i.and, 1
  %i.anp = or i32 %.0.i.i1397, %i.ano
  %i.anq = icmp ne i32 %i.anp, 0
  %.0.i1279 = select i1 %i.anc, i1 %i.anq, i1 false
  br i1 %.0.i1279, label %.thread2111.thread2364, label %.thread2111.thread2356

_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE8generateImEET_S5_Pmm.exit1267: ; preds = %bb.ez
  %i.anr = and i128 %i.ua, 18446744073709551615
  %i.ans = mul nuw nsw i128 %i.anr, 20000000000000 ; 2 uses
  %i.ant = lshr i128 %i.ans, 64
  %i.anu = trunc nuw nsw i128 %i.ant to i64
  %i.anv = trunc i128 %i.ans to i64
  store i64 %i.anv, ptr %i.tw, align 16, !tbaa !15
  %i.anw = zext i64 %i.um to i128
  %i.anx = mul nuw nsw i128 %i.anw, 20000000000000 ; 2 uses
  %i.any = lshr i128 %i.anx, 64
  %i.anz = trunc nuw nsw i128 %i.any to i64
  %i.aoa = trunc i128 %i.anx to i64
  %i.aob = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.aoa, i64 %i.anu) ; 2 uses
  %i.aoc = extractvalue { i64, i1 } %i.aob, 1
  %i.aod = extractvalue { i64, i1 } %i.aob, 0
  %i.aoe = zext i1 %i.aoc to i64
  %i.aof = add nuw nsw i64 %i.aoe, %i.anz
  store i64 %i.aod, ptr %i.ud, align 8, !tbaa !15
  %i.aog = zext i64 %i.up to i128
  %i.aoh = mul nuw nsw i128 %i.aog, 20000000000000 ; 2 uses
  %i.aoi = lshr i128 %i.aoh, 64
  %i.aoj = trunc nuw nsw i128 %i.aoi to i64
  %i.aok = trunc i128 %i.aoh to i64
  %i.aol = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.aok, i64 %i.aof) ; 2 uses
  %i.aom = extractvalue { i64, i1 } %i.aol, 1
  %i.aon = extractvalue { i64, i1 } %i.aol, 0
  %i.aoo = zext i1 %i.aom to i64
  %i.aop = add nuw nsw i64 %i.aoo, %i.aoj         ; 2 uses
  store i64 %i.aon, ptr %i.e, align 16, !tbaa !15
  %i.aoq = trunc i64 %i.aop to i1                 ; 2 uses
  %i.aor = lshr i64 %i.aop, 1                     ; 2 uses
  %17 = tail call noundef i64 @llvm.umulh.i64(i64 %i.aor, i64 1844674407371) ; 5 uses
  %i.aos = trunc i64 %17 to i32                   ; 3 uses
  %i.aot = trunc i64 %i.aor to i32
  %.neg1102 = mul i32 %i.aos, -10000000
  %i.aou = add i32 %.neg1102, %i.aot              ; 10 uses
  %i.aov = icmp samesign ugt i32 %i.pv, 16
  br i1 %i.aov, label %bb.fp, label %bb.gt

bb.fp:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE8generateImEET_S5_Pmm.exit1267
  %i.aow = add nsw i32 %i.pv, -16                 ; 8 uses
  %i.aox = icmp samesign ugt i32 %.910062063, %i.aow
  br i1 %i.aox, label %bb.fq, label %bb.fu

bb.fq:                                            ; preds = %bb.fp
  %i.aoy = sub nuw nsw i32 %.910062063, %i.aow    ; 5 uses
  %i.aoz = icmp eq i32 %i.aow, 6
  %18 = and i64 %17, 4294967295                   ; 2 uses
  br i1 %i.aoz, label %.thread2798, label %bb.fr

.thread2798:                                      ; preds = %bb.fq
  %i.apa = mul nuw nsw i64 %18, 429497
  %i.apb = add nuw nsw i64 %i.apa, 1              ; 2 uses
  %sh.diff2394 = lshr i64 %i.apb, 31
  %i.apc = and i64 %sh.diff2394, 2097150
  %i.apd = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.apc
  %i.ape = load i16, ptr %i.apd, align 2
  store i16 %i.ape, ptr %.222065, align 1
  %i.apf = getelementptr inbounds nuw i8, ptr %.222065, i64 2
  br label %.lr.ph2499.preheader

bb.fr:                                            ; preds = %bb.fq
  %i.apg = mul nuw nsw i64 %18, 687195
  %i.aph = lshr i64 %i.apg, 4
  %i.api = add nuw nsw i64 %i.aph, 1              ; 2 uses
  %i.apj = icmp samesign ult i32 %i.pv, 21
  br i1 %i.apj, label %.lr.ph.i1405.preheader, label %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1412

.lr.ph.i1405.preheader:                           ; preds = %bb.fr
  %i.apk = sub nuw nsw i32 21, %i.pv
  br label %.lr.ph.i1405

.lr.ph.i1405:                                     ; preds = %.lr.ph.i1405.preheader, %.lr.ph.i1405
  %.012.i1406 = phi i64 [ %spec.select.i1410, %.lr.ph.i1405 ], [ 1, %.lr.ph.i1405.preheader ]
  %.0811.i1407 = phi i32 [ %i.apo, %.lr.ph.i1405 ], [ %i.apk, %.lr.ph.i1405.preheader ] ; 2 uses
  %.0910.i1408 = phi i64 [ %i.apn, %.lr.ph.i1405 ], [ 10, %.lr.ph.i1405.preheader ] ; 3 uses
  %i.apl = and i32 %.0811.i1407, 1
  %.not.i1409 = icmp eq i32 %i.apl, 0
  %i.apm = select i1 %.not.i1409, i64 1, i64 %.0910.i1408
  %spec.select.i1410 = mul i64 %i.apm, %.012.i1406 ; 2 uses
  %i.apn = mul i64 %.0910.i1408, %.0910.i1408
  %i.apo = lshr i32 %.0811.i1407, 1               ; 2 uses
  %.not13.i1411 = icmp eq i32 %i.apo, 0
  br i1 %.not13.i1411, label %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1412.loopexit, label %.lr.ph.i1405, !llvm.loop !45

_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1412.loopexit: ; preds = %.lr.ph.i1405
  %i.app = mul i64 %spec.select.i1410, %i.api
  br label %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1412

_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1412: ; preds = %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1412.loopexit, %bb.fr
  %.0.lcssa.i1404 = phi i64 [ %i.api, %bb.fr ], [ %i.app, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1412.loopexit ] ; 2 uses
  %i.apq = and i32 %i.pv, 1
  %.not1104 = icmp eq i32 %i.apq, 0
  br i1 %.not1104, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1412
  %i.apr = and i64 %.0.lcssa.i1404, 4294967295
  %i.aps = mul nuw nsw i64 %i.apr, 10             ; 2 uses
  %i.apt = lshr i64 %i.aps, 32
  %i.apu = trunc nuw nsw i64 %i.apt to i8
  %i.apv = or disjoint i8 %i.apu, 48
  store i8 %i.apv, ptr %.222065, align 1, !tbaa !20
  %i.apw = getelementptr inbounds nuw i8, ptr %.222065, i64 1
  br label %bb.ft

bb.ft:                                            ; preds = %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1412, %bb.fs
  %.0874 = phi i64 [ %.0.lcssa.i1404, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1412 ], [ %i.aps, %bb.fs ]
  %.35 = phi ptr [ %.222065, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1412 ], [ %i.apw, %bb.fs ] ; 2 uses
  %i.apx = icmp sgt i32 %i.pv, 17
  br i1 %i.apx, label %.lr.ph2499.preheader, label %.thread2148

.lr.ph2499.preheader:                             ; preds = %.thread2798, %bb.ft
  %.362497.ph = phi ptr [ %.35, %bb.ft ], [ %i.apf, %.thread2798 ]
  %.18702496.ph = phi i32 [ %i.aow, %bb.ft ], [ 4, %.thread2798 ]
  %.18752495.ph = phi i64 [ %.0874, %bb.ft ], [ %i.apb, %.thread2798 ]
  br label %.lr.ph2499

.lr.ph2499:                                       ; preds = %.lr.ph2499.preheader, %.lr.ph2499
  %.362497 = phi ptr [ %i.aqd, %.lr.ph2499 ], [ %.362497.ph, %.lr.ph2499.preheader ] ; 2 uses
  %.18702496 = phi i32 [ %i.aqe, %.lr.ph2499 ], [ %.18702496.ph, %.lr.ph2499.preheader ] ; 2 uses
  %.18752495 = phi i64 [ %i.apz, %.lr.ph2499 ], [ %.18752495.ph, %.lr.ph2499.preheader ]
  %i.apy = and i64 %.18752495, 4294967295
  %i.apz = mul nuw nsw i64 %i.apy, 100            ; 2 uses
  %sh.diff2402 = lshr i64 %i.apz, 31
  %i.aqa = and i64 %sh.diff2402, 254
  %i.aqb = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.aqa
  %i.aqc = load i16, ptr %i.aqb, align 2
  store i16 %i.aqc, ptr %.362497, align 1
  %i.aqd = getelementptr inbounds nuw i8, ptr %.362497, i64 2 ; 2 uses
  %i.aqe = add nsw i32 %.18702496, -2
  %i.aqf = icmp samesign ugt i32 %.18702496, 3
  br i1 %i.aqf, label %.lr.ph2499, label %.thread2148, !llvm.loop !50

bb.fu:                                            ; preds = %bb.fp
  %i.aqg = and i32 %.910062063, 1
  %.not1103 = icmp eq i32 %i.aqg, 0
  br i1 %.not1103, label %bb.fz, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %19 = and i64 %17, 4294967295
  %i.aqh = mul nuw nsw i64 %19, 687195
  %i.aqi = lshr i64 %i.aqh, 4
  %i.aqj = add nuw nsw i64 %i.aqi, 1              ; 3 uses
  %i.aqk = icmp samesign ult i32 %i.pv, 22
  br i1 %i.aqk, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %.not2391 = icmp eq i32 %i.pv, 21
  br i1 %.not2391, label %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1421, label %.lr.ph.i1414.preheader

.lr.ph.i1414.preheader:                           ; preds = %bb.fw
  %i.aql = sub nuw nsw i32 21, %i.pv
  br label %.lr.ph.i1414

.lr.ph.i1414:                                     ; preds = %.lr.ph.i1414.preheader, %.lr.ph.i1414
  %.012.i1415 = phi i64 [ %spec.select.i1419, %.lr.ph.i1414 ], [ 1, %.lr.ph.i1414.preheader ]
  %.0811.i1416 = phi i32 [ %i.aqp, %.lr.ph.i1414 ], [ %i.aql, %.lr.ph.i1414.preheader ] ; 2 uses
  %.0910.i1417 = phi i64 [ %i.aqo, %.lr.ph.i1414 ], [ 10, %.lr.ph.i1414.preheader ] ; 3 uses
  %i.aqm = and i32 %.0811.i1416, 1
  %.not.i1418 = icmp eq i32 %i.aqm, 0
  %i.aqn = select i1 %.not.i1418, i64 1, i64 %.0910.i1417
  %spec.select.i1419 = mul i64 %i.aqn, %.012.i1415 ; 2 uses
  %i.aqo = mul i64 %.0910.i1417, %.0910.i1417
  %i.aqp = lshr i32 %.0811.i1416, 1               ; 2 uses
  %.not13.i1420 = icmp eq i32 %i.aqp, 0
  br i1 %.not13.i1420, label %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1421.loopexit, label %.lr.ph.i1414, !llvm.loop !45

_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1421.loopexit: ; preds = %.lr.ph.i1414
  %i.aqq = mul i64 %spec.select.i1419, %i.aqj
  br label %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1421

_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1421: ; preds = %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1421.loopexit, %bb.fw
  %.0.lcssa.i1413 = phi i64 [ %i.aqj, %bb.fw ], [ %i.aqq, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1421.loopexit ]
  %i.aqr = and i64 %.0.lcssa.i1413, 4294967295
  %i.aqs = mul nuw nsw i64 %i.aqr, 10
  br label %bb.fx

bb.fx:                                            ; preds = %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1421, %bb.fv
  %.2876 = phi i64 [ %i.aqs, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1421 ], [ %i.aqj, %bb.fv ] ; 3 uses
  %i.aqt = lshr i64 %.2876, 32                    ; 2 uses
  %i.aqu = sub nsw i32 %i.aow, %.910062063        ; 2 uses
  %i.aqv = icmp eq i32 %.910062063, 1
  br i1 %i.aqv, label %bb.gm, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aqw = trunc i64 %i.aqt to i8
  %i.aqx = add i8 %i.aqw, 48
  store i8 %i.aqx, ptr %.222065, align 1, !tbaa !20
  br label %bb.gj

bb.fz:                                            ; preds = %bb.fu
  %i.aqy = icmp eq i32 %i.aow, 6
  br i1 %i.aqy, label %bb.ga, label %bb.gf

bb.ga:                                            ; preds = %bb.fz
  %i.aqz = icmp eq i32 %.910062063, 0
  br i1 %i.aqz, label %bb.gb, label %bb.ge

bb.gb:                                            ; preds = %bb.ga
  %i.ara = icmp ult i32 %i.pr, 286
  %i.arb = add nsw i32 %i.pz, %i.pu
  %i.arc = icmp slt i32 %i.arb, 17
  %or.cond.i.i1422 = select i1 %i.ara, i1 true, i1 %i.arc
  br i1 %or.cond.i.i1422, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj16ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.ard = icmp ugt i32 %i.pr, 307
  br i1 %i.ard, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj16ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.are = mul i64 %i.pw, -8116567392432202711
  %i.arf = icmp ugt i64 %i.are, 737869762948382064
  %i.arg = zext i1 %i.arf to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj16ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit

_ZN5boost8charconv6detail18has_further_digitsILj1ELj16ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit: ; preds = %bb.gb, %bb.gc, %bb.gd
  %.0.i.i1423 = phi i32 [ %i.arg, %bb.gd ], [ 1, %bb.gb ], [ 0, %bb.gc ]
  %i.arh = icmp ugt i32 %i.aos, 500000
  br i1 %i.arh, label %.thread2010.sink.split, label %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj6ELb1EEEbJETnNSt9enable_ifIXsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_S6_DpT1_.exit

_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj6ELb1EEEbJETnNSt9enable_ifIXsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_S6_DpT1_.exit: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj16ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit
  %i.ari = icmp eq i32 %i.aos, 500000
  %i.arj = and i32 %.69382064, 1
  %i.ark = or i32 %.0.i.i1423, %i.arj
  %.fr2395 = freeze i32 %i.ark
  %20 = icmp ne i32 %.fr2395, 0
  %21 = and i1 %i.ari, %20
  br i1 %21, label %.thread2010.sink.split, label %.thread2095.sink.split

bb.ge:                                            ; preds = %bb.ga
  %22 = and i64 %17, 4294967295
  %i.arl = mul nuw nsw i64 %22, 429497
  %i.arm = add nuw nsw i64 %i.arl, 1
  br label %bb.gh

bb.gf:                                            ; preds = %bb.fz
  %23 = and i64 %17, 4294967295
  %i.arn = mul nuw nsw i64 %23, 687195
  %i.aro = lshr i64 %i.arn, 4
  %i.arp = add nuw nsw i64 %i.aro, 1              ; 2 uses
  %i.arq = icmp samesign ult i32 %i.pv, 21
  br i1 %i.arq, label %.lr.ph.i1425.preheader, label %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1432

.lr.ph.i1425.preheader:                           ; preds = %bb.gf
  %i.arr = sub nuw nsw i32 21, %i.pv
  br label %.lr.ph.i1425

.lr.ph.i1425:                                     ; preds = %.lr.ph.i1425.preheader, %.lr.ph.i1425
  %.012.i1426 = phi i64 [ %spec.select.i1430, %.lr.ph.i1425 ], [ 1, %.lr.ph.i1425.preheader ]
  %.0811.i1427 = phi i32 [ %i.arv, %.lr.ph.i1425 ], [ %i.arr, %.lr.ph.i1425.preheader ] ; 2 uses
  %.0910.i1428 = phi i64 [ %i.aru, %.lr.ph.i1425 ], [ 10, %.lr.ph.i1425.preheader ] ; 3 uses
  %i.ars = and i32 %.0811.i1427, 1
  %.not.i1429 = icmp eq i32 %i.ars, 0
  %i.art = select i1 %.not.i1429, i64 1, i64 %.0910.i1428
  %spec.select.i1430 = mul i64 %i.art, %.012.i1426 ; 2 uses
  %i.aru = mul i64 %.0910.i1428, %.0910.i1428
  %i.arv = lshr i32 %.0811.i1427, 1               ; 2 uses
  %.not13.i1431 = icmp eq i32 %i.arv, 0
  br i1 %.not13.i1431, label %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1432.loopexit, label %.lr.ph.i1425, !llvm.loop !45

_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1432.loopexit: ; preds = %.lr.ph.i1425
  %i.arw = mul i64 %spec.select.i1430, %i.arp
  br label %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1432

_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1432: ; preds = %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1432.loopexit, %bb.gf
  %.0.lcssa.i1424 = phi i64 [ %i.arp, %bb.gf ], [ %i.arw, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1432.loopexit ] ; 2 uses
  %i.arx = icmp eq i32 %.910062063, 0
  br i1 %i.arx, label %bb.gq, label %bb.gg

bb.gg:                                            ; preds = %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1432
  %i.ary = and i64 %.0.lcssa.i1424, 4294967295
  %i.arz = mul nuw nsw i64 %i.ary, 100
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.ge
  %.3877 = phi i64 [ %i.arm, %bb.ge ], [ %i.arz, %bb.gg ] ; 3 uses
  %i.asa = lshr i64 %.3877, 32                    ; 2 uses
  %i.asb = sub nsw i32 %i.aow, %.910062063        ; 2 uses
  %i.asc = icmp eq i32 %.910062063, 2
  br i1 %i.asc, label %bb.gm, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.asd = shl nuw nsw i64 %i.asa, 1
  %i.ase = and i64 %i.asd, 4294967294
  %i.asf = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.ase
  %i.asg = load i16, ptr %i.asf, align 2
  store i16 %i.asg, ptr %.222065, align 1
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.fy
  %.sink2906.a = phi i64 [ 2, %bb.gi ], [ 1, %bb.fy ]
  %.4878 = phi i64 [ %.3877, %bb.gi ], [ %.2876, %bb.fy ] ; 2 uses
  %.2871 = phi i32 [ %i.asb, %bb.gi ], [ %i.aqu, %bb.fy ]
  %i.ash = getelementptr inbounds nuw i8, ptr %.222065, i64 %.sink2906.a ; 3 uses
  %i.asi = icmp samesign ugt i32 %.910062063, 4
  br i1 %i.asi, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.asj = and i64 %.4878, 4294967295
  %i.ask = mul nuw nsw i64 %i.asj, 100            ; 2 uses
  %sh.diff2392 = lshr i64 %i.ask, 31
  %i.asl = and i64 %sh.diff2392, 254
  %i.asm = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.asl
  %i.asn = load i16, ptr %i.asm, align 2
  store i16 %i.asn, ptr %i.ash, align 1
  %i.aso = getelementptr inbounds nuw i8, ptr %i.ash, i64 2
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %.5879 = phi i64 [ %i.ask, %bb.gk ], [ %.4878, %bb.gj ]
  %.38 = phi ptr [ %i.aso, %bb.gk ], [ %i.ash, %bb.gj ]
  %i.asp = and i64 %.5879, 4294967295
  %i.asq = mul nuw nsw i64 %i.asp, 100            ; 2 uses
  %i.asr = lshr i64 %i.asq, 32
  %.pre2627.pre.a = load i64, ptr %i.a, align 8, !tbaa !15
  %.pre2628.pre = load i32, ptr %i.d, align 4, !tbaa !23
  %.pre2629.pre = load i32, ptr %i.b, align 4, !tbaa !23
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gh, %bb.fx, %bb.gl
  %.pre2629.a = phi i32 [ %i.pu, %bb.fx ], [ %.pre2629.pre, %bb.gl ], [ %i.pu, %bb.gh ] ; 4 uses
  %.pre2628.a = phi i32 [ %i.pz, %bb.fx ], [ %.pre2628.pre, %bb.gl ], [ %i.pz, %bb.gh ] ; 2 uses
  %.pre2627 = phi i64 [ %i.pw, %bb.fx ], [ %.pre2627.pre.a, %bb.gl ], [ %i.pw, %bb.gh ] ; 2 uses
  %.121009 = phi i32 [ 1, %bb.fx ], [ 0, %bb.gl ], [ 2, %bb.gh ] ; 4 uses
  %.15947.in = phi i64 [ %i.aqt, %bb.fx ], [ %i.asr, %bb.gl ], [ %i.asa, %bb.gh ]
  %.6880 = phi i64 [ %.2876, %bb.fx ], [ %i.asq, %bb.gl ], [ %.3877, %bb.gh ]
  %.3872 = phi i32 [ %i.aqu, %bb.fx ], [ %.2871, %bb.gl ], [ %i.asb, %bb.gh ] ; 2 uses
  %.39 = phi ptr [ %.222065, %bb.fx ], [ %.38, %bb.gl ], [ %.222065, %bb.gh ] ; 4 uses
  %.15947 = trunc nuw nsw i64 %.15947.in to i32   ; 5 uses
  %i.ass = icmp eq i32 %.3872, 0
  br i1 %i.ass, label %bb.gn, label %bb.gq

bb.gn:                                            ; preds = %bb.gm
  %i.ast = icmp slt i32 %.pre2629.a, -8
  %i.asu = add nsw i32 %.pre2629.a, %.pre2628.a
  %i.asv = icmp slt i32 %i.asu, 10
  %or.cond.i.i1433 = select i1 %i.ast, i1 true, i1 %i.asv
  br i1 %or.cond.i.i1433, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj9ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.asw = icmp sgt i32 %.pre2629.a, 13
  br i1 %i.asw, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj9ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.asx = mul i64 %.pre2627, -4083592946278653939
  %i.asy = icmp ugt i64 %i.asx, 24178516
  %i.asz = zext i1 %i.asy to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj9ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit

_ZN5boost8charconv6detail18has_further_digitsILj1ELj9ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit: ; preds = %bb.gn, %bb.go, %bb.gp
  %.0.i.i1434 = phi i32 [ %i.asz, %bb.gp ], [ 1, %bb.gn ], [ 0, %bb.go ]
  %i.ata = icmp ugt i32 %i.aou, 5000000
  br i1 %i.ata, label %.loopexit2434.thread.thread2828.sink.split, label %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj7ELb1EEEbJETnNSt9enable_ifIXsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_S6_DpT1_.exit1286

_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj7ELb1EEEbJETnNSt9enable_ifIXsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_S6_DpT1_.exit1286: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj9ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit
  %i.atb = icmp eq i32 %i.aou, 5000000
  %i.atc = and i32 %.15947, 1
  %i.atd = or i32 %.0.i.i1434, %i.atc
  %i.ate = icmp ne i32 %i.atd, 0
  %i.atf = select i1 %i.atb, i1 %i.ate, i1 false
  br i1 %i.atf, label %.loopexit2434.thread.thread2828.sink.split, label %.loopexit2434.thread.sink.split

bb.gq:                                            ; preds = %bb.gm, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1432
  %i.atg = phi i32 [ %.pre2629.a, %bb.gm ], [ %i.pu, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1432 ] ; 3 uses
  %i.ath = phi i32 [ %.pre2628.a, %bb.gm ], [ %i.pz, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1432 ]
  %i.ati = phi i64 [ %.pre2627, %bb.gm ], [ %i.pw, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1432 ]
  %.131010 = phi i32 [ %.121009, %bb.gm ], [ 0, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1432 ] ; 3 uses
  %.16948 = phi i32 [ %.15947, %bb.gm ], [ %.69382064, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1432 ] ; 4 uses
  %.7881 = phi i64 [ %.6880, %bb.gm ], [ %.0.lcssa.i1424, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1432 ]
  %.4873 = phi i32 [ %.3872, %bb.gm ], [ %i.aow, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1432 ]
  %.40 = phi ptr [ %.39, %bb.gm ], [ %.222065, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1432 ] ; 3 uses
  %i.atj = trunc i64 %.7881 to i32                ; 2 uses
  %i.atk = icmp slt i32 %i.atg, 14
  %i.atl = add nsw i32 %i.atg, %i.ath
  %i.atm = icmp slt i32 %i.atl, 17
  %or.cond.i.i1435 = select i1 %i.atk, i1 true, i1 %i.atm
  br i1 %or.cond.i.i1435, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj16ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1437, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.atn = icmp samesign ugt i32 %i.atg, 35
  br i1 %i.atn, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj16ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1437, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ato = mul i64 %i.ati, -8116567392432202711
  %i.atp = icmp ugt i64 %i.ato, 737869762948382064
  %i.atq = zext i1 %i.atp to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj16ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1437

_ZN5boost8charconv6detail18has_further_digitsILj1ELj16ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1437: ; preds = %bb.gq, %bb.gr, %bb.gs
  %.0.i.i1436 = phi i32 [ %i.atq, %bb.gs ], [ 1, %bb.gq ], [ 0, %bb.gr ]
  %i.atr = sext i32 %.4873 to i64
  %i.ats = getelementptr [4 x i8], ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE37fractional_part_rounding_thresholds32E, i64 %i.atr
  %i.att = getelementptr i8, ptr %i.ats, i64 -4
  %i.atu = load i32, ptr %i.att, align 4, !tbaa !23
  %.not.i1184 = icmp ugt i32 %i.atu, %i.atj
  br i1 %.not.i1184, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1186, label %.loopexit2434.thread.thread2828.sink.split

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1186: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj16ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1437
  %i.atv = lshr i32 %i.atj, 31
  %i.atw = or i32 %.0.i.i1436, %.16948
  %i.atx = and i32 %i.atw, %i.atv
  %.not2393 = icmp eq i32 %i.atx, 0
  br i1 %.not2393, label %.loopexit2434.thread.sink.split, label %.loopexit2434.thread.thread2828.sink.split

bb.gt:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE8generateImEET_S5_Pmm.exit1267
  %i.aty = add nsw i32 %i.pv, -9                  ; 9 uses
  %i.atz = icmp samesign ugt i32 %.910062063, %i.aty
  br i1 %i.atz, label %bb.gu, label %bb.gz

.thread2148:                                      ; preds = %.lr.ph2499, %bb.ft
  %.36.lcssa = phi ptr [ %.35, %bb.ft ], [ %i.aqd, %.lr.ph2499 ] ; 3 uses
  %i.aua = icmp samesign ugt i32 %i.aoy, 7
  br i1 %i.aua, label %.thread2160, label %.thread2167

.thread2160:                                      ; preds = %.thread2148
  %i.aub = zext i32 %i.aou to i64
  %i.auc = mul nuw nsw i64 %i.aub, 17592187
  %i.aud = lshr i64 %i.auc, 12
  %i.aue = add nuw nsw i64 %i.aud, 1
  %i.auf = add nsw i32 %i.aoy, -7
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.aug = zext i32 %i.aou to i64
  %i.auh = mul nuw nsw i64 %i.aug, 17592187
  %i.aui = lshr i64 %i.auh, 12
  %i.auj = add nuw nsw i64 %i.aui, 1              ; 3 uses
  %i.auk = sub nuw nsw i32 %.910062063, %i.aty    ; 4 uses
  %i.aul = icmp eq i32 %i.aty, 7
  br i1 %i.aul, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %.thread2160, %bb.gu
  %i.aum = phi i32 [ %i.auf, %.thread2160 ], [ %i.auk, %bb.gu ]
  %i.aun = phi i64 [ %i.aue, %.thread2160 ], [ %i.auj, %bb.gu ] ; 2 uses
  %.4321582164 = phi ptr [ %.36.lcssa, %.thread2160 ], [ %.222065, %bb.gu ] ; 2 uses
  %i.auo = lshr i64 %i.aun, 32
  %i.aup = trunc i64 %i.auo to i8
  %i.auq = add i8 %i.aup, 48
end_hunk_2
begin_hunk_3_@_ZN5boost8charconv6detail5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcS7_NS0_12chars_formatE:bb.a
  %i.bge = sub nsw i32 %i.bex, %i.bfc             ; 2 uses
  %i.bgf = and i32 %i.bge, 63
  %i.bgg = trunc i32 %i.bge to i8
  %i.bgh = xor i8 %i.bgg, -1
  %i.bgi = lshr i8 %i.bgh, 6
  %.085.i = select i1 %i.bgd, i32 %i.bgf, i32 0   ; 2 uses
  %.0.i1206 = select i1 %i.bgd, i8 %i.bgi, i8 3   ; 2 uses
  %i.bgj = zext nneg i8 %.0.i1206 to i32          ; 2 uses
  %i.bgk = sub nsw i32 %i.bgj, %.191.i            ; 2 uses
  %i.bgl = zext nneg i32 %.191.i to i64
  %i.bgm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bgl ; 8 uses
  %i.bgn = icmp eq i32 %.188.i, 0
  br i1 %i.bgn, label %bb.ir, label %bb.iw

bb.ir:                                            ; preds = %bb.iq
  switch i32 %i.bgk, label %bb.iv [
    i32 3, label %bb.is
    i32 2, label %bb.it
    i32 1, label %bb.iu
    i32 0, label %bb.jb
  ]

bb.is:                                            ; preds = %bb.ir
  %i.bgo = zext nneg i32 %.089.i to i64
  %i.bgp = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail24extended_cache_long_implILb1EE5cacheE, i64 %i.bgo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bgm, ptr noundef nonnull align 8 dereferenceable(24) %i.bgp, i64 24, i1 false)
  br label %bb.jb

bb.it:                                            ; preds = %bb.ir
  %i.bgq = zext nneg i32 %.089.i to i64
  %i.bgr = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail24extended_cache_long_implILb1EE5cacheE, i64 %i.bgq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bgm, ptr noundef nonnull align 8 dereferenceable(16) %i.bgr, i64 16, i1 false)
  br label %bb.jb

bb.iu:                                            ; preds = %bb.ir
  %i.bgs = zext nneg i32 %.089.i to i64
  %i.bgt = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail24extended_cache_long_implILb1EE5cacheE, i64 %i.bgs
  %i.bgu = load i64, ptr %i.bgt, align 8
  store i64 %i.bgu, ptr %i.bgm, align 8
  br label %bb.jb

bb.iv:                                            ; preds = %bb.ir
  unreachable

bb.iw:                                            ; preds = %bb.iq
  switch i32 %i.bgk, label %bb.ja [
    i32 3, label %bb.ix
    i32 2, label %._crit_edge2643
    i32 1, label %._crit_edge2648
    i32 0, label %bb.jb
  ]

._crit_edge2648:                                  ; preds = %bb.iw
  %.phi.trans.insert2649.a = zext nneg i32 %.089.i to i64 ; 2 uses
  %.phi.trans.insert2650 = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail24extended_cache_long_implILb1EE5cacheE, i64 %.phi.trans.insert2649.a
  %.phi.trans.insert2651 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert2650, i64 8
  %.pre2652.a = load i64, ptr %.phi.trans.insert2651, align 8, !tbaa !15
  %.pre2673.a = zext i32 %.188.i to i64           ; 2 uses
  %.pre2675 = sub nsw i64 64, %.pre2673.a
  br label %bb.iz

._crit_edge2643:                                  ; preds = %bb.iw
  %.phi.trans.insert2644.a = zext nneg i32 %.089.i to i64 ; 2 uses
  %.phi.trans.insert2645 = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail24extended_cache_long_implILb1EE5cacheE, i64 %.phi.trans.insert2644.a
  %.phi.trans.insert2646 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert2645, i64 16
  %.pre2647 = load i64, ptr %.phi.trans.insert2646, align 8, !tbaa !15
  %.pre2669.a = zext i32 %.188.i to i64           ; 2 uses
  %.pre2671 = sub nsw i64 64, %.pre2669.a
  br label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.bgv = zext nneg i32 %.089.i to i64           ; 2 uses
  %i.bgw = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail24extended_cache_long_implILb1EE5cacheE, i64 %i.bgv ; 2 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgw, i64 16
  %i.bgy = load i64, ptr %i.bgx, align 8, !tbaa !15 ; 2 uses
  %i.bgz = zext i32 %.188.i to i64                ; 3 uses
  %i.bha = shl i64 %i.bgy, %i.bgz
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgw, i64 24
  %i.bhc = load i64, ptr %i.bhb, align 8, !tbaa !15
  %i.bhd = sub nsw i64 64, %i.bgz                 ; 2 uses
  %i.bhe = lshr i64 %i.bhc, %i.bhd
  %i.bhf = or disjoint i64 %i.bhe, %i.bha
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bgm, i64 16
  store i64 %i.bhf, ptr %i.bhg, align 8, !tbaa !15
  br label %bb.iy

bb.iy:                                            ; preds = %._crit_edge2643, %bb.ix
  %.pre-phi2672.a = phi i64 [ %.pre2671, %._crit_edge2643 ], [ %i.bhd, %bb.ix ] ; 2 uses
  %.pre-phi2670 = phi i64 [ %.pre2669.a, %._crit_edge2643 ], [ %i.bgz, %bb.ix ] ; 2 uses
  %.pre-phi2668 = phi i64 [ %.phi.trans.insert2644.a, %._crit_edge2643 ], [ %i.bgv, %bb.ix ] ; 2 uses
  %i.bhh = phi i64 [ %.pre2647, %._crit_edge2643 ], [ %i.bgy, %bb.ix ]
  %i.bhi = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail24extended_cache_long_implILb1EE5cacheE, i64 %.pre-phi2668
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhi, i64 8
  %i.bhk = load i64, ptr %i.bhj, align 8, !tbaa !15 ; 2 uses
  %i.bhl = shl i64 %i.bhk, %.pre-phi2670
  %i.bhm = lshr i64 %i.bhh, %.pre-phi2672.a
  %i.bhn = or disjoint i64 %i.bhm, %i.bhl
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bgm, i64 8
  store i64 %i.bhn, ptr %i.bho, align 8, !tbaa !15
  br label %bb.iz

bb.iz:                                            ; preds = %._crit_edge2648, %bb.iy
  %.pre-phi2676 = phi i64 [ %.pre2675, %._crit_edge2648 ], [ %.pre-phi2672.a, %bb.iy ]
  %.pre-phi2674 = phi i64 [ %.pre2673.a, %._crit_edge2648 ], [ %.pre-phi2670, %bb.iy ]
  %.pre-phi2662 = phi i64 [ %.phi.trans.insert2649.a, %._crit_edge2648 ], [ %.pre-phi2668, %bb.iy ]
  %i.bhp = phi i64 [ %.pre2652.a, %._crit_edge2648 ], [ %i.bhk, %bb.iy ]
  %i.bhq = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail24extended_cache_long_implILb1EE5cacheE, i64 %.pre-phi2662
  %i.bhr = load i64, ptr %i.bhq, align 8, !tbaa !15
  %i.bhs = shl i64 %i.bhr, %.pre-phi2674
  %i.bht = lshr i64 %i.bhp, %.pre-phi2676
  %i.bhu = or disjoint i64 %i.bht, %i.bhs
  store i64 %i.bhu, ptr %i.bgm, align 8, !tbaa !15
  br label %bb.jb

bb.ja:                                            ; preds = %bb.iw
  unreachable

bb.jb:                                            ; preds = %bb.iz, %bb.iw, %bb.iu, %bb.it, %bb.is, %bb.ir
  %i.bhv = lshr i64 -1, %.1.i
  %i.bhw = load i64, ptr %i.bgm, align 8, !tbaa !15
  %i.bhx = and i64 %i.bhw, %i.bhv
  store i64 %i.bhx, ptr %i.bgm, align 8, !tbaa !15
  %i.bhy = zext nneg i32 %.085.i to i64           ; 2 uses
  %i.bhz = shl nsw i64 -1, %i.bhy
  %i.bia = zext nneg i8 %.0.i1206 to i64
  %i.bib = getelementptr [8 x i8], ptr %i.e, i64 %i.bia
  %i.bic = getelementptr i8, ptr %i.bib, i64 -8   ; 3 uses
  %i.bid = load i64, ptr %i.bic, align 8, !tbaa !15
  %i.bie = and i64 %i.bid, %i.bhz                 ; 2 uses
  store i64 %i.bie, ptr %i.bic, align 8, !tbaa !15
  %i.bif = icmp slt i32 %i.bel, 0
  br i1 %i.bif, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.big = add nsw i32 %i.bes, %.0868
  %i.bih = shl nuw nsw i32 %i.bgj, 6
  %i.bii = sub i32 %i.big, %.085.i
  %i.bij = add i32 %i.bii, %i.bih
  %i.bik = icmp slt i32 %i.bij, 23
  br i1 %i.bik, label %bb.jd, label %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE13discard_upperImEEvT_Pmm.exit

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %i.bil = shl nuw i64 1, %i.bhy
  %i.bim = add i64 %i.bie, %i.bil
  store i64 %i.bim, ptr %i.bic, align 8, !tbaa !15
  br label %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE13discard_upperImEEvT_Pmm.exit

_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE13discard_upperImEEvT_Pmm.exit: ; preds = %bb.jc, %bb.jd
  %i.bin = load i64, ptr %i.e, align 16, !tbaa !15
  %i.bio = mul i64 %i.bin, %i.bej
  %i.bip = load i64, ptr %i.tw, align 16, !tbaa !15
  %i.biq = zext i64 %i.bej to i128                ; 2 uses
  %i.bir = zext i64 %i.bip to i128
  %i.bis = mul nuw i128 %i.bir, %i.biq            ; 3 uses
  %i.bit = lshr i128 %i.bis, 64
  %i.biu = trunc nuw i128 %i.bit to i64
  %i.biv = load i64, ptr %i.ud, align 8, !tbaa !15
  %i.biw = zext i64 %i.biv to i128
  %i.bix = mul nuw i128 %i.biw, %i.biq            ; 2 uses
  %i.biy = lshr i128 %i.bix, 64
  %i.biz = trunc nuw i128 %i.biy to i64
  %i.bja = trunc i128 %i.bix to i64
  %i.bjb = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bja, i64 %i.biu) ; 2 uses
  %i.bjc = extractvalue { i64, i1 } %i.bjb, 1
  %i.bjd = extractvalue { i64, i1 } %i.bjb, 0     ; 2 uses
  %i.bje = zext i1 %i.bjc to i64
  %i.bjf = add i64 %i.bio, %i.biz
  %i.bjg = add i64 %i.bjf, %i.bje                 ; 2 uses
  %i.bjh = icmp sgt i32 %.221019, 16
  br i1 %i.bjh, label %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE8generateImEET_S5_Pmm.exit, label %bb.jv

_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE8generateImEET_S5_Pmm.exit: ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE13discard_upperImEEvT_Pmm.exit
  %i.bji = and i128 %i.bis, 18446744073709551615
  %i.bjj = mul nuw nsw i128 %i.bji, 10000000000000000 ; 2 uses
  %i.bjk = lshr i128 %i.bjj, 64
  %i.bjl = trunc nuw nsw i128 %i.bjk to i64
  %i.bjm = trunc i128 %i.bjj to i64
  store i64 %i.bjm, ptr %i.tw, align 16, !tbaa !15
  %i.bjn = zext i64 %i.bjd to i128
  %i.bjo = mul nuw nsw i128 %i.bjn, 10000000000000000 ; 2 uses
  %i.bjp = lshr i128 %i.bjo, 64
  %i.bjq = trunc nuw nsw i128 %i.bjp to i64
  %i.bjr = trunc i128 %i.bjo to i64
  %i.bjs = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bjr, i64 %i.bjl) ; 2 uses
  %i.bjt = extractvalue { i64, i1 } %i.bjs, 1
  %i.bju = extractvalue { i64, i1 } %i.bjs, 0
  %i.bjv = zext i1 %i.bjt to i64
  %i.bjw = add nuw nsw i64 %i.bjv, %i.bjq
  store i64 %i.bju, ptr %i.ud, align 8, !tbaa !15
  %i.bjx = zext i64 %i.bjg to i128
  %i.bjy = mul nuw nsw i128 %i.bjx, 10000000000000000 ; 2 uses
  %i.bjz = lshr i128 %i.bjy, 64
  %i.bka = trunc nuw nsw i128 %i.bjz to i64
  %i.bkb = trunc i128 %i.bjy to i64
  %i.bkc = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bkb, i64 %i.bjw) ; 2 uses
  %i.bkd = extractvalue { i64, i1 } %i.bkc, 1
  %i.bke = extractvalue { i64, i1 } %i.bkc, 0
  %i.bkf = zext i1 %i.bkd to i64
  %i.bkg = add nuw nsw i64 %i.bkf, %i.bka         ; 2 uses
  store i64 %i.bke, ptr %i.e, align 16, !tbaa !15
  %24 = tail call noundef i64 @llvm.umulh.i64(i64 %i.bkg, i64 3022314549036573)
  %25 = lshr i64 %24, 14                          ; 2 uses
  %.neg1120 = mul i64 %25, 4194967296
  %26 = add i64 %.neg1120, %i.bkg
  %27 = and i64 %25, 4294967295
  %i.bkh = mul nuw nsw i64 %27, 140737489
  %i.bki = lshr i64 %i.bkh, 15
  %i.bkj = add nuw nsw i64 %i.bki, 1              ; 2 uses
  %sh.diff.i = lshr i64 %i.bkj, 31
  %i.bkk = and i64 %sh.diff.i, 32766
  %i.bkl = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bkk
  %i.bkm = load i16, ptr %i.bkl, align 2
  store i16 %i.bkm, ptr %.59, align 1
  %i.bkn = getelementptr inbounds nuw i8, ptr %.59, i64 2
  %i.bko = and i64 %i.bkj, 4294967295
  %i.bkp = mul nuw nsw i64 %i.bko, 100            ; 2 uses
  %sh.diff9.i = lshr i64 %i.bkp, 31
  %i.bkq = and i64 %sh.diff9.i, 254
  %i.bkr = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bkq
  %i.bks = load i16, ptr %i.bkr, align 2
  store i16 %i.bks, ptr %i.bkn, align 1
  %i.bkt = and i64 %i.bkp, 4294967292
  %i.bku = mul nuw nsw i64 %i.bkt, 100            ; 2 uses
  %i.bkv = getelementptr inbounds nuw i8, ptr %.59, i64 4
  %sh.diff9.1.i = lshr i64 %i.bku, 31
  %i.bkw = and i64 %sh.diff9.1.i, 254
  %i.bkx = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bkw
  %i.bky = load i16, ptr %i.bkx, align 2
  store i16 %i.bky, ptr %i.bkv, align 1
  %i.bkz = and i64 %i.bku, 4294967280
  %i.bla = mul nuw nsw i64 %i.bkz, 100
  %i.blb = getelementptr inbounds nuw i8, ptr %.59, i64 6
  %sh.diff9.2.i = lshr i64 %i.bla, 31
  %i.blc = and i64 %sh.diff9.2.i, 254
  %i.bld = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.blc
  %i.ble = load i16, ptr %i.bld, align 2
  store i16 %i.ble, ptr %i.blb, align 1
  %i.blf = getelementptr inbounds nuw i8, ptr %.59, i64 8
  %i.blg = and i64 %26, 4294967295
  %i.blh = mul nuw nsw i64 %i.blg, 140737489
  %i.bli = lshr i64 %i.blh, 15
  %i.blj = add nuw nsw i64 %i.bli, 1              ; 2 uses
  %sh.diff.i1501 = lshr i64 %i.blj, 31
  %i.blk = and i64 %sh.diff.i1501, 32766
  %i.bll = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.blk
  %i.blm = load i16, ptr %i.bll, align 2
  store i16 %i.blm, ptr %i.blf, align 1
  %i.bln = getelementptr inbounds nuw i8, ptr %.59, i64 10
  %i.blo = and i64 %i.blj, 4294967295
  %i.blp = mul nuw nsw i64 %i.blo, 100            ; 2 uses
  %sh.diff9.i1502 = lshr i64 %i.blp, 31
  %i.blq = and i64 %sh.diff9.i1502, 254
  %i.blr = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.blq
  %i.bls = load i16, ptr %i.blr, align 2
  store i16 %i.bls, ptr %i.bln, align 1
  %i.blt = and i64 %i.blp, 4294967292
  %i.blu = mul nuw nsw i64 %i.blt, 100            ; 2 uses
  %i.blv = getelementptr inbounds nuw i8, ptr %.59, i64 12
  %sh.diff9.1.i1503 = lshr i64 %i.blu, 31
  %i.blw = and i64 %sh.diff9.1.i1503, 254
  %i.blx = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.blw
  %i.bly = load i16, ptr %i.blx, align 2
  store i16 %i.bly, ptr %i.blv, align 1
  %i.blz = and i64 %i.blu, 4294967280
  %i.bma = mul nuw nsw i64 %i.blz, 100
  %i.bmb = getelementptr inbounds nuw i8, ptr %.59, i64 14
  %sh.diff9.2.i1504 = lshr i64 %i.bma, 31
  %i.bmc = and i64 %sh.diff9.2.i1504, 254
  %i.bmd = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bmc
  %i.bme = load i16, ptr %i.bmd, align 2
  store i16 %i.bme, ptr %i.bmb, align 1
  %i.bmf = icmp samesign ugt i32 %.221019, 22
  br i1 %i.bmf, label %bb.ju, label %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1241

_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1241: ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE8generateImEET_S5_Pmm.exit
  %i.bmg = getelementptr inbounds nuw i8, ptr %.59, i64 16 ; 6 uses
  %i.bmh = add nsw i32 %.221019, -16              ; 5 uses
  %i.bmi = load i64, ptr %i.tw, align 16, !tbaa !15
  %i.bmj = zext i64 %i.bmi to i128
  %i.bmk = mul nuw nsw i128 %i.bmj, 2000000
  %i.bml = lshr i128 %i.bmk, 64
  %i.bmm = trunc nuw nsw i128 %i.bml to i64
  %i.bmn = load i64, ptr %i.ud, align 8, !tbaa !15
  %i.bmo = zext i64 %i.bmn to i128
  %i.bmp = mul nuw nsw i128 %i.bmo, 2000000       ; 2 uses
  %i.bmq = lshr i128 %i.bmp, 64
  %i.bmr = trunc nuw nsw i128 %i.bmq to i64
  %i.bms = trunc i128 %i.bmp to i64
  %i.bmt = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bms, i64 %i.bmm)
  %i.bmu = extractvalue { i64, i1 } %i.bmt, 1
  %i.bmv = zext i1 %i.bmu to i64
  %i.bmw = add nuw nsw i64 %i.bmv, %i.bmr
  %i.bmx = load i64, ptr %i.e, align 16, !tbaa !15
  %i.bmy = zext i64 %i.bmx to i128
  %i.bmz = mul nuw nsw i128 %i.bmy, 2000000       ; 2 uses
  %i.bna = lshr i128 %i.bmz, 64
  %i.bnb = trunc nuw nsw i128 %i.bna to i64
  %i.bnc = trunc i128 %i.bmz to i64
  %i.bnd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bnc, i64 %i.bmw)
  %i.bne = extractvalue { i64, i1 } %i.bnd, 1
  %i.bnf = zext i1 %i.bne to i64
  %i.bng = add nuw nsw i64 %i.bnf, %i.bnb         ; 2 uses
  %i.bnh = trunc i64 %i.bng to i1
  %i.bni = lshr i64 %i.bng, 1                     ; 2 uses
  %i.bnj = and i32 %.221019, 1
  %.not1121 = icmp eq i32 %i.bnj, 0
  br i1 %.not1121, label %bb.jj, label %bb.je

bb.je:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1241
  %i.bnk = mul nuw nsw i64 %i.bni, 687195
  %i.bnl = lshr i64 %i.bnk, 4
  %i.bnm = add nuw nsw i64 %i.bnl, 1              ; 3 uses
  %i.bnn = lshr i64 %i.bnm, 32                    ; 2 uses
  %i.bno = trunc nuw nsw i64 %i.bnn to i32        ; 4 uses
  %i.bnp = icmp eq i32 %i.bmh, 1
  br i1 %i.bnp, label %bb.jf, label %bb.ji

bb.jf:                                            ; preds = %bb.je
  %i.bnq = trunc i64 %i.bnm to i32                ; 2 uses
  %i.bnr = load i64, ptr %i.a, align 8, !tbaa !15
  %i.bns = load i32, ptr %i.d, align 4, !tbaa !23
  %i.bnt = load i32, ptr %i.b, align 4, !tbaa !23 ; 3 uses
  %i.bnu = icmp slt i32 %i.bnt, -8
  %i.bnv = add nsw i32 %i.bnt, %i.bns
  %i.bnw = icmp slt i32 %i.bnv, 1
  %or.cond.i.i1520 = select i1 %i.bnu, i1 true, i1 %i.bnw
  br i1 %or.cond.i.i1520, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1522, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.bnx = icmp sgt i32 %i.bnt, 13
  br i1 %i.bnx, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1522, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.bny = mul i64 %i.bnr, -4078282918271054303
  %i.bnz = icmp ugt i64 %i.bny, 47223664828696
  %i.boa = zext i1 %i.bnz to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1522

_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1522: ; preds = %bb.jf, %bb.jg, %bb.jh
  %.0.i.i1521 = phi i32 [ %i.boa, %bb.jh ], [ 1, %bb.jf ], [ 0, %bb.jg ]
  %.not.i1172 = icmp ult i32 %i.bnq, -2147440698
  br i1 %.not.i1172, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1174, label %.thread1981.sink.split

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1174: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1522
  %i.bob = lshr i32 %i.bnq, 31
  %i.boc = or i32 %.0.i.i1521, %i.bno
  %i.bod = and i32 %i.boc, %i.bob
  %.fr2427 = freeze i32 %i.bod
  %.not2428 = icmp eq i32 %.fr2427, 0
  br i1 %.not2428, label %.thread2077.sink.split, label %.thread1981.sink.split

bb.ji:                                            ; preds = %bb.je
  %i.boe = trunc nuw nsw i64 %i.bnn to i8
  %i.bof = add nuw nsw i8 %i.boe, 48
  store i8 %i.bof, ptr %i.bmg, align 1, !tbaa !20
  br label %bb.jl

bb.jj:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1241
  %i.bog = mul nuw nsw i64 %i.bni, 429497
  %i.boh = add nuw nsw i64 %i.bog, 1              ; 3 uses
  %i.boi = lshr i64 %i.boh, 32                    ; 2 uses
  %i.boj = icmp eq i32 %i.bmh, 2
  br i1 %i.boj, label %bb.jr, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.bok = shl nuw nsw i64 %i.boi, 1
  %i.bol = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bok
  %i.bom = load i16, ptr %i.bol, align 2
  store i16 %i.bom, ptr %i.bmg, align 1
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.ji
  %.sink2908.a = phi i64 [ 18, %bb.jk ], [ 17, %bb.ji ]
  %.0852 = phi i64 [ %i.boh, %bb.jk ], [ %i.bnm, %bb.ji ] ; 2 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %.59, i64 %.sink2908.a ; 3 uses
  %i.boo = icmp samesign ugt i32 %.221019, 20
  br i1 %i.boo, label %bb.jm, label %bb.jq

bb.jm:                                            ; preds = %bb.jl
  %i.bop = and i64 %.0852, 4294967295
  %i.boq = mul nuw nsw i64 %i.bop, 100            ; 3 uses
  %sh.diff2429 = lshr i64 %i.boq, 31
  %i.bor = and i64 %sh.diff2429, 254
  %i.bos = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bor
  %i.bot = load i16, ptr %i.bos, align 2
  store i16 %i.bot, ptr %i.bon, align 1
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bon, i64 2 ; 3 uses
  %i.bov = icmp eq i32 %i.bmh, 6
  br i1 %i.bov, label %bb.jn, label %bb.jq

bb.jn:                                            ; preds = %bb.jm
  %i.bow = and i64 %i.boq, 4294967292
  %i.box = mul nuw nsw i64 %i.bow, 100
  %i.boy = lshr i64 %i.box, 32
  %i.boz = trunc nuw nsw i64 %i.boy to i32        ; 3 uses
  %i.bpa = load i64, ptr %i.a, align 8, !tbaa !15
  %i.bpb = load i32, ptr %i.d, align 4, !tbaa !23
  %i.bpc = load i32, ptr %i.b, align 4, !tbaa !23 ; 3 uses
  %i.bpd = icmp slt i32 %i.bpc, -8
  %i.bpe = add nsw i32 %i.bpc, %i.bpb
  %i.bpf = icmp slt i32 %i.bpe, 0
  %or.cond.i.i1523 = select i1 %i.bpd, i1 true, i1 %i.bpf
  br i1 %or.cond.i.i1523, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1525, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.bpg = icmp sgt i32 %i.bpc, 13
  br i1 %i.bpg, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1525, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.bph = mul i64 %i.bpa, -4078282918271054303
  %i.bpi = icmp ugt i64 %i.bph, 47223664828696
  %i.bpj = zext i1 %i.bpi to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1525

_ZN5boost8charconv6detail18has_further_digitsILj0ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1525: ; preds = %bb.jn, %bb.jo, %bb.jp
  %.0.i.i1524 = phi i32 [ %i.bpj, %bb.jp ], [ 1, %bb.jn ], [ 0, %bb.jo ]
  %i.bpk = and i32 %i.boz, 1
  %i.bpl = or i32 %.0.i.i1524, %i.bpk
  %i.bpm = icmp ne i32 %i.bpl, 0
  %.0.i1276 = select i1 %i.bnh, i1 %i.bpm, i1 false
  br i1 %.0.i1276, label %.thread2010.sink.split, label %.thread2095.sink.split

bb.jq:                                            ; preds = %bb.jm, %bb.jl
  %.1853 = phi i64 [ %i.boq, %bb.jm ], [ %.0852, %bb.jl ]
  %.61 = phi ptr [ %i.bou, %bb.jm ], [ %i.bon, %bb.jl ]
  %i.bpn = and i64 %.1853, 4294967295
  %i.bpo = mul nuw nsw i64 %i.bpn, 100            ; 2 uses
  %i.bpp = lshr i64 %i.bpo, 32
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jj, %bb.jq
  %.29961.in = phi i64 [ %i.bpp, %bb.jq ], [ %i.boi, %bb.jj ]
  %.2854 = phi i64 [ %i.bpo, %bb.jq ], [ %i.boh, %bb.jj ]
  %.62 = phi ptr [ %.61, %bb.jq ], [ %i.bmg, %bb.jj ] ; 3 uses
  %.29961 = trunc nuw nsw i64 %.29961.in to i32   ; 4 uses
  %i.bpq = trunc i64 %.2854 to i32                ; 2 uses
  %i.bpr = sub nuw nsw i32 22, %.221019
  %i.bps = load i64, ptr %i.a, align 8, !tbaa !15
  %i.bpt = load i32, ptr %i.d, align 4, !tbaa !23
  %i.bpu = load i32, ptr %i.b, align 4, !tbaa !23 ; 3 uses
  %i.bpv = icmp slt i32 %i.bpu, -8
  %i.bpw = add nsw i32 %i.bpu, %i.bpt
  %i.bpx = icmp slt i32 %i.bpw, 1
  %or.cond.i.i1526 = select i1 %i.bpv, i1 true, i1 %i.bpx
  br i1 %or.cond.i.i1526, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1528, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.bpy = icmp sgt i32 %i.bpu, 13
  br i1 %i.bpy, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1528, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.bpz = mul i64 %i.bps, -4078282918271054303
  %i.bqa = icmp ugt i64 %i.bpz, 47223664828696
  %i.bqb = zext i1 %i.bqa to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1528

_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1528: ; preds = %bb.jr, %bb.js, %bb.jt
  %.0.i.i1527 = phi i32 [ %i.bqb, %bb.jt ], [ 1, %bb.jr ], [ 0, %bb.js ]
  %i.bqc = zext nneg i32 %i.bpr to i64
  %i.bqd = getelementptr [4 x i8], ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE37fractional_part_rounding_thresholds32E, i64 %i.bqc
  %i.bqe = getelementptr i8, ptr %i.bqd, i64 -4
  %i.bqf = load i32, ptr %i.bqe, align 4, !tbaa !23
  %.not.i1169 = icmp ugt i32 %i.bqf, %i.bpq
  br i1 %.not.i1169, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1171, label %.thread2010.sink.split

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1171: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1528
  %i.bqg = lshr i32 %i.bpq, 31
  %i.bqh = or i32 %.0.i.i1527, %.29961
  %i.bqi = and i32 %i.bqh, %i.bqg
  %.fr2430 = freeze i32 %i.bqi
  %.not2431 = icmp eq i32 %.fr2430, 0
  br i1 %.not2431, label %.thread2095.sink.split, label %.thread2010.sink.split

bb.ju:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE8generateImEET_S5_Pmm.exit
  %i.bqj = load i64, ptr %i.tw, align 16, !tbaa !15
  %i.bqk = zext i64 %i.bqj to i128
  %i.bql = mul nuw nsw i128 %i.bqk, 1000000
  %i.bqm = lshr i128 %i.bql, 64
  %i.bqn = trunc nuw nsw i128 %i.bqm to i64
  %i.bqo = load i64, ptr %i.ud, align 8, !tbaa !15
  %i.bqp = zext i64 %i.bqo to i128
  %i.bqq = mul nuw nsw i128 %i.bqp, 1000000       ; 2 uses
  %i.bqr = lshr i128 %i.bqq, 64
  %i.bqs = trunc nuw nsw i128 %i.bqr to i64
  %i.bqt = trunc i128 %i.bqq to i64
  %i.bqu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bqt, i64 %i.bqn)
  %i.bqv = extractvalue { i64, i1 } %i.bqu, 1
  %i.bqw = zext i1 %i.bqv to i64
  %i.bqx = add nuw nsw i64 %i.bqw, %i.bqs
  %i.bqy = load i64, ptr %i.e, align 16, !tbaa !15
  %i.bqz = zext i64 %i.bqy to i128
  %i.bra = mul nuw nsw i128 %i.bqz, 1000000       ; 2 uses
  %i.brb = lshr i128 %i.bra, 64
  %i.brc = trunc nuw nsw i128 %i.brb to i64
  %i.brd = trunc i128 %i.bra to i64
  %i.bre = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.brd, i64 %i.bqx)
  %i.brf = extractvalue { i64, i1 } %i.bre, 1
  %i.brg = zext i1 %i.brf to i64
  %i.brh = add nuw nsw i64 %i.brg, %i.brc
  %i.bri = getelementptr inbounds nuw i8, ptr %.59, i64 16
  %i.brj = mul nuw nsw i64 %i.brh, 429497
  %i.brk = add nuw nsw i64 %i.brj, 1              ; 2 uses
  %sh.diff.i1511 = lshr i64 %i.brk, 31
  %i.brl = and i64 %sh.diff.i1511, 2097150
  %i.brm = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.brl
  %i.brn = load i16, ptr %i.brm, align 2
  store i16 %i.brn, ptr %i.bri, align 1
  %i.bro = getelementptr inbounds nuw i8, ptr %.59, i64 18
  %i.brp = and i64 %i.brk, 4294967295
  %i.brq = mul nuw nsw i64 %i.brp, 100            ; 2 uses
  %sh.diff9.i1512 = lshr i64 %i.brq, 31
  %i.brr = and i64 %sh.diff9.i1512, 254
  %i.brs = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.brr
  %i.brt = load i16, ptr %i.brs, align 2
  store i16 %i.brt, ptr %i.bro, align 1
  %i.bru = and i64 %i.brq, 4294967292
  %i.brv = mul nuw nsw i64 %i.bru, 100
  %i.brw = getelementptr inbounds nuw i8, ptr %.59, i64 20
  %sh.diff9.1.i1513 = lshr i64 %i.brv, 31
  %i.brx = and i64 %sh.diff9.1.i1513, 254
  %i.bry = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.brx
  %i.brz = load i16, ptr %i.bry, align 2
  store i16 %i.brz, ptr %i.brw, align 1
  %i.bsa = getelementptr inbounds nuw i8, ptr %.59, i64 22
  %i.bsb = add nsw i32 %.221019, -22
  br label %bb.ik, !llvm.loop !53

bb.jv:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE13discard_upperImEEvT_Pmm.exit
  %i.bsc = icmp sgt i32 %.221019, 8
  %i.bsd = and i128 %i.bis, 18446744073709551615  ; 2 uses
  %i.bse = zext i64 %i.bjd to i128                ; 2 uses
  %i.bsf = zext i64 %i.bjg to i128                ; 2 uses
  br i1 %i.bsc, label %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1238, label %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit

_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1238: ; preds = %bb.jv
  %i.bsg = mul nuw nsw i128 %i.bsd, 20000000000000000
  %i.bsh = lshr i128 %i.bsg, 64
  %i.bsi = trunc nuw nsw i128 %i.bsh to i64
  %i.bsj = mul nuw nsw i128 %i.bse, 20000000000000000 ; 2 uses
  %i.bsk = lshr i128 %i.bsj, 64
  %i.bsl = trunc nuw nsw i128 %i.bsk to i64
  %i.bsm = trunc i128 %i.bsj to i64
  %i.bsn = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bsm, i64 %i.bsi)
  %i.bso = extractvalue { i64, i1 } %i.bsn, 1
  %i.bsp = zext i1 %i.bso to i64
  %i.bsq = add nuw nsw i64 %i.bsp, %i.bsl
  %i.bsr = mul nuw nsw i128 %i.bsf, 20000000000000000 ; 2 uses
  %i.bss = lshr i128 %i.bsr, 64
  %i.bst = trunc nuw nsw i128 %i.bss to i64
  %i.bsu = trunc i128 %i.bsr to i64
  %i.bsv = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bsu, i64 %i.bsq)
  %i.bsw = extractvalue { i64, i1 } %i.bsv, 1
  %i.bsx = zext i1 %i.bsw to i64
  %i.bsy = add nuw nsw i64 %i.bsx, %i.bst         ; 2 uses
  %i.bsz = trunc i64 %i.bsy to i1
  %i.bta = lshr i64 %i.bsy, 1                     ; 2 uses
  %28 = tail call noundef i64 @llvm.umulh.i64(i64 %i.bta, i64 3022314549036573)
  %29 = lshr i64 %28, 14                          ; 2 uses
  %i.btb = trunc i64 %29 to i32
  %.neg1117 = mul i64 %29, 4194967296
  %30 = add i64 %.neg1117, %i.bta
  tail call void @_ZN5boost8charconv6detail14print_8_digitsEjPc(i32 noundef %i.btb, ptr noundef nonnull %.59) #14
  %i.btc = getelementptr inbounds nuw i8, ptr %.59, i64 8 ; 6 uses
  %i.btd = add nsw i32 %.221019, -8               ; 4 uses
  %i.bte = and i32 %.221019, 1
  %.not1118 = icmp eq i32 %i.bte, 0
  %31 = and i64 %30, 4294967295                   ; 2 uses
  br i1 %.not1118, label %bb.kb, label %bb.jw

bb.jw:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1238
  %i.btf = mul nuw nsw i64 %31, 112589991
  %i.btg = lshr i64 %i.btf, 18
  %i.bth = add nuw nsw i64 %i.btg, 1              ; 3 uses
  %i.bti = lshr i64 %i.bth, 32                    ; 2 uses
  %i.btj = trunc nuw nsw i64 %i.bti to i32        ; 4 uses
  %i.btk = icmp eq i32 %i.btd, 1
  br i1 %i.btk, label %bb.jx, label %bb.ka

bb.jx:                                            ; preds = %bb.jw
  %i.btl = trunc i64 %i.bth to i32                ; 2 uses
  %i.btm = icmp slt i32 %i.bel, -30
  %i.btn = add nsw i32 %i.bes, %i.bek
  %i.bto = icmp slt i32 %i.btn, 7
  %or.cond.i.i1535 = select i1 %i.btm, i1 true, i1 %i.bto
  br i1 %or.cond.i.i1535, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.btp = icmp sgt i32 %i.bel, -9
  br i1 %i.btp, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.btq = mul i64 %i.bej, 6059715779035702873
  %i.btr = icmp ugt i64 %i.btq, 3022314549
  %i.bts = zext i1 %i.btr to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit

_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit: ; preds = %bb.jx, %bb.jy, %bb.jz
  %.0.i.i1536 = phi i32 [ %i.bts, %bb.jz ], [ 1, %bb.jx ], [ 0, %bb.jy ]
  %.not.i1166 = icmp ult i32 %i.btl, -2147483218
  br i1 %.not.i1166, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1168, label %.thread1981.sink.split

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1168: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit
  %i.btt = lshr i32 %i.btl, 31
  %i.btu = or i32 %.0.i.i1536, %i.btj
  %i.btv = and i32 %i.btu, %i.btt
  %.fr2422 = freeze i32 %i.btv
  %.not2423 = icmp eq i32 %.fr2422, 0
  br i1 %.not2423, label %.thread2077.sink.split, label %.thread1981.sink.split

bb.ka:                                            ; preds = %bb.jw
  %i.btw = trunc i64 %i.bti to i8
  %i.btx = add i8 %i.btw, 48
  store i8 %i.btx, ptr %i.btc, align 1, !tbaa !20
  br label %bb.kd

bb.kb:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1238
  %i.bty = mul nuw nsw i64 %31, 140737489
  %i.btz = lshr i64 %i.bty, 15
  %i.bua = add nuw nsw i64 %i.btz, 1              ; 3 uses
  %i.bub = lshr i64 %i.bua, 32                    ; 2 uses
  %i.buc = trunc nuw nsw i64 %i.bub to i32
  %i.bud = icmp eq i32 %i.btd, 2
  br i1 %i.bud, label %bb.ke, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.bue = shl nuw nsw i64 %i.bub, 1
  %i.buf = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bue
  %i.bug = load i16, ptr %i.buf, align 2
  store i16 %i.bug, ptr %i.btc, align 1
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.ka
  %.sink2909 = phi i64 [ 10, %bb.kc ], [ 9, %bb.ka ]
  %.0849 = phi i64 [ %i.bua, %bb.kc ], [ %i.bth, %bb.ka ] ; 3 uses
  %i.buh = getelementptr inbounds nuw i8, ptr %.59, i64 %.sink2909 ; 3 uses
  %i.bui = icmp samesign ugt i32 %.221019, 12
  br i1 %i.bui, label %.lr.ph2552.preheader, label %._crit_edge2553.thread

._crit_edge2553.thread:                           ; preds = %bb.kd
  %i.buj = and i64 %.0849, 4294967295
  %i.buk = mul nuw nsw i64 %i.buj, 100            ; 2 uses
  %i.bul = lshr i64 %i.buk, 32
  %i.bum = trunc nuw nsw i64 %i.bul to i32
  br label %bb.ke

.lr.ph2552.preheader:                             ; preds = %bb.kd
  %.lhs.trunc = add nuw i32 %.221019, 245         ; 3 uses
  %i.bun = lshr i32 %.lhs.trunc, 1                ; 2 uses
  %i.buo = and i32 %.lhs.trunc, 254
  %i.bup = icmp eq i32 %i.buo, 2
  br i1 %i.bup, label %.lr.ph2552.epil.preheader, label %.lr.ph2552.preheader.new

.lr.ph2552.preheader.new:                         ; preds = %.lr.ph2552.preheader
  %unroll_iter3069 = and i32 %i.bun, 126
  br label %.lr.ph2552

._crit_edge2553.unr-lcssa:                        ; preds = %.lr.ph2552
  %i.buq = and i32 %.lhs.trunc, 2
  %lcmp.mod3065.not = icmp eq i32 %i.buq, 0
  br i1 %lcmp.mod3065.not, label %._crit_edge2553, label %.lr.ph2552.epil.preheader

.lr.ph2552.epil.preheader:                        ; preds = %._crit_edge2553.unr-lcssa, %.lr.ph2552.preheader
  %.662550.epil.init = phi ptr [ %i.buh, %.lr.ph2552.preheader ], [ %i.bvm, %._crit_edge2553.unr-lcssa ] ; 2 uses
  %.18502548.epil.init = phi i64 [ %.0849, %.lr.ph2552.preheader ], [ %i.bvi, %._crit_edge2553.unr-lcssa ]
  %lcmp.mod3068 = trunc i32 %i.bun to i1
  tail call void @llvm.assume(i1 %lcmp.mod3068)
  %i.bur = and i64 %.18502548.epil.init, 4294967295
  %i.bus = mul nuw nsw i64 %i.bur, 100            ; 2 uses
  %sh.diff2424.epil = lshr i64 %i.bus, 31
  %i.but = and i64 %sh.diff2424.epil, 254
  %i.buu = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.but
  %i.buv = load i16, ptr %i.buu, align 2
  store i16 %i.buv, ptr %.662550.epil.init, align 1
  %i.buw = getelementptr inbounds nuw i8, ptr %.662550.epil.init, i64 2
  br label %._crit_edge2553

._crit_edge2553:                                  ; preds = %._crit_edge2553.unr-lcssa, %.lr.ph2552.epil.preheader
  %.lcssa2980 = phi i64 [ %i.bvi, %._crit_edge2553.unr-lcssa ], [ %i.bus, %.lr.ph2552.epil.preheader ]
  %.lcssa2979 = phi ptr [ %i.bvm, %._crit_edge2553.unr-lcssa ], [ %i.buw, %.lr.ph2552.epil.preheader ] ; 3 uses
  %.pre2656.pre.a = load i64, ptr %i.a, align 8, !tbaa !15 ; 2 uses
  %.pre2657.pre = load i32, ptr %i.d, align 4, !tbaa !23 ; 2 uses
  %.pre2658.pre = load i32, ptr %i.b, align 4, !tbaa !23 ; 4 uses
  %i.bux = and i64 %.lcssa2980, 4294967292
  %i.buy = mul nuw nsw i64 %i.bux, 100            ; 2 uses
  %i.buz = lshr i64 %i.buy, 32
  %i.bva = trunc nuw nsw i64 %i.buz to i32        ; 4 uses
  %.not1119 = icmp eq i32 %.221019, 16
  br i1 %.not1119, label %bb.kh, label %bb.ke

.lr.ph2552:                                       ; preds = %.lr.ph2552, %.lr.ph2552.preheader.new
  %.662550 = phi ptr [ %i.buh, %.lr.ph2552.preheader.new ], [ %i.bvm, %.lr.ph2552 ] ; 3 uses
  %.18502548 = phi i64 [ %.0849, %.lr.ph2552.preheader.new ], [ %i.bvi, %.lr.ph2552 ]
  %niter3070 = phi i32 [ 0, %.lr.ph2552.preheader.new ], [ %niter3070.next.1, %.lr.ph2552 ]
  %i.bvb = and i64 %.18502548, 4294967295
  %i.bvc = mul nuw nsw i64 %i.bvb, 100            ; 2 uses
  %sh.diff2424 = lshr i64 %i.bvc, 31
  %i.bvd = and i64 %sh.diff2424, 254
  %i.bve = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bvd
  %i.bvf = load i16, ptr %i.bve, align 2
  store i16 %i.bvf, ptr %.662550, align 1
  %i.bvg = getelementptr inbounds nuw i8, ptr %.662550, i64 2
  %i.bvh = and i64 %i.bvc, 4294967292
  %i.bvi = mul nuw nsw i64 %i.bvh, 100            ; 4 uses
  %sh.diff2424.1 = lshr i64 %i.bvi, 31
  %i.bvj = and i64 %sh.diff2424.1, 254
  %i.bvk = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bvj
  %i.bvl = load i16, ptr %i.bvk, align 2
  store i16 %i.bvl, ptr %i.bvg, align 1
  %i.bvm = getelementptr inbounds nuw i8, ptr %.662550, i64 4 ; 3 uses
  %niter3070.next.1 = add i32 %niter3070, 2       ; 2 uses
  %niter3070.ncmp.1 = icmp eq i32 %niter3070.next.1, %unroll_iter3069
  br i1 %niter3070.ncmp.1, label %._crit_edge2553.unr-lcssa, label %.lr.ph2552, !llvm.loop !54

bb.ke:                                            ; preds = %._crit_edge2553.thread, %._crit_edge2553, %bb.kb
  %i.bvn = phi i32 [ %.pre2658.pre, %._crit_edge2553 ], [ %i.bes, %bb.kb ], [ %i.bes, %._crit_edge2553.thread ] ; 3 uses
  %i.bvo = phi i32 [ %.pre2657.pre, %._crit_edge2553 ], [ %i.bek, %bb.kb ], [ %i.bek, %._crit_edge2553.thread ]
  %i.bvp = phi i64 [ %.pre2656.pre.a, %._crit_edge2553 ], [ %i.bej, %bb.kb ], [ %i.bej, %._crit_edge2553.thread ]
  %.32964 = phi i32 [ %i.bva, %._crit_edge2553 ], [ %i.buc, %bb.kb ], [ %i.bum, %._crit_edge2553.thread ] ; 4 uses
  %.2851 = phi i64 [ %i.buy, %._crit_edge2553 ], [ %i.bua, %bb.kb ], [ %i.buk, %._crit_edge2553.thread ]
  %.67 = phi ptr [ %.lcssa2979, %._crit_edge2553 ], [ %i.btc, %bb.kb ], [ %i.buh, %._crit_edge2553.thread ] ; 3 uses
  %i.bvq = trunc i64 %.2851 to i32                ; 2 uses
  %i.bvr = sub nuw nsw i32 16, %.221019
  %i.bvs = icmp slt i32 %i.bvn, -8
  %i.bvt = add nsw i32 %i.bvn, %i.bvo
  %i.bvu = icmp slt i32 %i.bvt, 7
  %or.cond.i.i1537 = select i1 %i.bvs, i1 true, i1 %i.bvu
  br i1 %or.cond.i.i1537, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1539, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bvv = icmp sgt i32 %i.bvn, 13
  br i1 %i.bvv, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1539, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.bvw = mul i64 %i.bvp, 6059715779035702873
  %i.bvx = icmp ugt i64 %i.bvw, 3022314549
  %i.bvy = zext i1 %i.bvx to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1539

_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1539: ; preds = %bb.ke, %bb.kf, %bb.kg
  %.0.i.i1538 = phi i32 [ %i.bvy, %bb.kg ], [ 1, %bb.ke ], [ 0, %bb.kf ]
  %i.bvz = zext nneg i32 %i.bvr to i64
  %i.bwa = getelementptr [4 x i8], ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE37fractional_part_rounding_thresholds32E, i64 %i.bvz
  %i.bwb = getelementptr i8, ptr %i.bwa, i64 -4
  %i.bwc = load i32, ptr %i.bwb, align 4, !tbaa !23
  %.not.i1163 = icmp ugt i32 %i.bwc, %i.bvq
  br i1 %.not.i1163, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1165, label %.thread2010.sink.split

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1165: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1539
  %i.bwd = lshr i32 %i.bvq, 31
  %i.bwe = or i32 %.0.i.i1538, %.32964
  %i.bwf = and i32 %i.bwe, %i.bwd
  %.not2425 = icmp eq i32 %i.bwf, 0
  br i1 %.not2425, label %.thread2095.sink.split, label %.thread2010.sink.split

bb.kh:                                            ; preds = %._crit_edge2553
  %i.bwg = icmp slt i32 %.pre2658.pre, -8
  %i.bwh = add nsw i32 %.pre2658.pre, %.pre2657.pre
  %i.bwi = icmp slt i32 %i.bwh, 6
  %or.cond.i.i1540 = select i1 %i.bwg, i1 true, i1 %i.bwi
  br i1 %or.cond.i.i1540, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.bwj = icmp sgt i32 %.pre2658.pre, 13
  br i1 %i.bwj, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.bwk = mul i64 %.pre2656.pre.a, 6059715779035702873
  %i.bwl = icmp ugt i64 %i.bwk, 3022314549
  %i.bwm = zext i1 %i.bwl to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit

_ZN5boost8charconv6detail18has_further_digitsILj0ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit: ; preds = %bb.kh, %bb.ki, %bb.kj
  %.0.i.i1541 = phi i32 [ %i.bwm, %bb.kj ], [ 1, %bb.kh ], [ 0, %bb.ki ]
  %i.bwn = and i32 %i.bva, 1
  %i.bwo = or i32 %.0.i.i1541, %i.bwn
  %i.bwp = icmp ne i32 %i.bwo, 0
  %.0.i1275 = select i1 %i.bsz, i1 %i.bwp, i1 false
  br i1 %.0.i1275, label %.thread2010.sink.split, label %.thread2095.sink.split

_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit: ; preds = %bb.jv
  %i.bwq = mul nuw nsw i128 %i.bsd, 200000000
  %i.bwr = lshr i128 %i.bwq, 64
  %i.bws = trunc nuw nsw i128 %i.bwr to i64
  %i.bwt = mul nuw nsw i128 %i.bse, 200000000     ; 2 uses
  %i.bwu = lshr i128 %i.bwt, 64
  %i.bwv = trunc nuw nsw i128 %i.bwu to i64
  %i.bww = trunc i128 %i.bwt to i64
  %i.bwx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bww, i64 %i.bws)
  %i.bwy = extractvalue { i64, i1 } %i.bwx, 1
  %i.bwz = zext i1 %i.bwy to i64
  %i.bxa = add nuw nsw i64 %i.bwz, %i.bwv
  %i.bxb = mul nuw nsw i128 %i.bsf, 200000000     ; 2 uses
  %i.bxc = lshr i128 %i.bxb, 64
  %i.bxd = trunc nuw nsw i128 %i.bxc to i64
  %i.bxe = trunc i128 %i.bxb to i64
  %i.bxf = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bxe, i64 %i.bxa)
  %i.bxg = extractvalue { i64, i1 } %i.bxf, 1
  %i.bxh = zext i1 %i.bxg to i64
  %i.bxi = add nuw nsw i64 %i.bxh, %i.bxd         ; 2 uses
  %i.bxj = trunc i64 %i.bxi to i1
  %i.bxk = lshr i64 %i.bxi, 1                     ; 2 uses
  %i.bxl = and i32 %.221019, 1
  %.not1115 = icmp eq i32 %i.bxl, 0
  br i1 %.not1115, label %bb.kp, label %bb.kk

bb.kk:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit
  %i.bxm = mul nuw nsw i64 %i.bxk, 112589991
  %i.bxn = lshr i64 %i.bxm, 18
  %i.bxo = add nuw nsw i64 %i.bxn, 1              ; 3 uses
  %i.bxp = lshr i64 %i.bxo, 32                    ; 2 uses
  %i.bxq = trunc nuw nsw i64 %i.bxp to i32        ; 4 uses
  %i.bxr = icmp eq i32 %.221019, 1
  br i1 %i.bxr, label %bb.kl, label %bb.ko

bb.kl:                                            ; preds = %bb.kk
  %i.bxs = trunc i64 %i.bxo to i32                ; 2 uses
  %i.bxt = icmp slt i32 %i.bel, -30
end_hunk_3
begin_hunk_4_@_ZN5boost8charconv6detail12to_chars_hexIfEENS0_15to_chars_resultEPcS4_T_i:bb.a
  %i.dj = load i16, ptr %i.di, align 2
  store i16 %i.dj, ptr %i.df, align 2
  %i.dk = and i64 %i.de, 144115188075855868
  %i.dl = mul nuw i64 %i.dk, 100                  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dn = lshr i64 %i.dl, 56
  %i.do = and i64 %i.dn, 254
  %i.dp = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11radix_tableE, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2
  store i16 %i.dq, ptr %i.dm, align 2
  %i.dr = and i64 %i.dl, 144115188075855856
  %i.ds = mul nuw i64 %i.dr, 100                  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.du = lshr i64 %i.ds, 56
  %i.dv = and i64 %i.du, 254
  %i.dw = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11radix_tableE, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2
  store i16 %i.dx, ptr %i.dt, align 2
  %i.dy = and i64 %i.ds, 144115188075855808
  %i.dz = mul nuw i64 %i.dy, 100
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eb = lshr i64 %i.dz, 56
  %i.ec = and i64 %i.eb, 254
  %i.ed = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11radix_tableE, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2
  store i16 %i.ee, ptr %i.ea, align 2
  %i.ef = sub nuw nsw i64 10, %.0.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.7, ptr noundef nonnull align 1 dereferenceable(1) %i.eg, i64 %.0.i.i.i, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN5boost8charconv6detail10num_digitsIjEEiT_.exit.i.i
  %spec.select25.i.i = phi i32 [ 75, %_ZN5boost8charconv6detail10num_digitsIjEEiT_.exit.i.i ], [ 0, %bb.o ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.7, i64 %.0.i.i.i
  %spec.select.i.i = select i1 %.not.i.i, ptr %1, ptr %i.eh
  br label %_ZN5boost8charconv6detail12to_chars_intIjEENS0_15to_chars_resultEPcS4_T_i.exit

_ZN5boost8charconv6detail12to_chars_intIjEENS0_15to_chars_resultEPcS4_T_i.exit: ; preds = %.loopexit, %bb.p
  %.sroa.0.2.i.i = phi ptr [ %spec.select.i.i, %bb.p ], [ %1, %.loopexit ]
  %.sroa.4.2.i.i = phi i32 [ %spec.select25.i.i, %bb.p ], [ 22, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.q

bb.q:                                             ; preds = %_ZN5boost8charconv6detail12to_chars_intIjEENS0_15to_chars_resultEPcS4_T_i.exit, %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit, %bb.a
  %.sroa.0.1 = phi ptr [ %1, %bb.a ], [ %.sroa.0.2.i.i, %_ZN5boost8charconv6detail12to_chars_intIjEENS0_15to_chars_resultEPcS4_T_i.exit ], [ %1, %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit ]
  %.sroa.4.1 = phi i32 [ 75, %bb.a ], [ %.sroa.4.2.i.i, %_ZN5boost8charconv6detail12to_chars_intIjEENS0_15to_chars_resultEPcS4_T_i.exit ], [ 75, %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZZN5boost8charconv6detail10to_decimalIfNS1_22dragonbox_float_traitsIfEEJEEEDaNS1_33dragonbox_signed_significand_bitsIT_T0_EEjDpT1_ENKUlNS1_11policy_impl26decimal_to_binary_rounding15nearest_to_evenEE_clESD_(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %i.c = shl i32 %i.b, 1                          ; 3 uses
  %i.d = load i32, ptr %0, align 4, !tbaa !62     ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.d, -150                   ; 5 uses
  %i.f = icmp eq i32 %i.c, 0
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = mul nsw i32 %i.e, 631305
  %i.h = add nsw i32 %i.g, -261663
  %i.i = ashr i32 %i.h, 21                        ; 5 uses
  %i.j = sub nsw i32 0, %i.i
  %i.k = mul nsw i32 %i.i, -1741647
  %i.l = ashr i32 %i.k, 19
  %i.m = add nsw i32 %i.l, %i.e                   ; 2 uses
  %i.n = sext i32 %i.j to i64
  %i.o = getelementptr [8 x i8], ptr @_ZN5boost8charconv6detail34cache_holder_ieee754_binary32_implILb1EE5cacheE, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 248
  %i.q = load i64, ptr %i.p, align 8, !tbaa !15   ; 5 uses
  %i.r = lshr i64 %i.q, 25
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = sub nsw i32 40, %i.m
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.s, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = lshr i64 %i.q, 24
  %i.y = add i64 %i.x, %i.q
  %i.z = lshr i64 %i.y, %i.u
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = and i32 %i.e, -2
  %i.ac = icmp ne i32 %i.ab, 2
  %i.ad = zext i1 %i.ac to i32
  %spec.select.i.i = add i32 %i.w, %i.ad          ; 2 uses
  %i.ae = udiv i32 %i.aa, 10                      ; 2 uses
  %i.af = mul nuw i32 %i.ae, 10
  %.not.i.i = icmp ult i32 %i.af, %spec.select.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = add nsw i32 %i.i, 1
  %i.ah = icmp ult i32 %i.aa, 10
  br i1 %i.ah, label %_ZN5boost8charconv6detail4implIfNS1_22dragonbox_float_traitsIfEEE21remove_trailing_zerosERj.exit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.0.sroa.0.1.i.i = phi i32 [ %i.aj, %.preheader.i.i ], [ %i.ae, %bb.d ] ; 3 uses
  %.013.i.i.i = phi i32 [ %i.ak, %.preheader.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.ai = mul i32 %.sroa.0.sroa.0.1.i.i, -1030792151 ; 2 uses
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 30) ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.aj, 42949672
  %i.ak = add nuw nsw i32 %.013.i.i.i, 2
  br i1 %.not.i.i.i, label %bb.e, label %.preheader.i.i

bb.e:                                             ; preds = %.preheader.i.i
  %i.al = mul i32 %.sroa.0.sroa.0.1.i.i, -858993459 ; 2 uses
  %i.am = tail call i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 31) ; 2 uses
  %.not17.i.i.i = icmp ult i32 %i.am, 429496730   ; 2 uses
  %spec.select43.i.i = select i1 %.not17.i.i.i, i32 %i.am, i32 %.sroa.0.sroa.0.1.i.i
  %i.an = zext i1 %.not17.i.i.i to i32
  %spec.select44.i.i = or disjoint i32 %.013.i.i.i, %i.an
  br label %_ZN5boost8charconv6detail4implIfNS1_22dragonbox_float_traitsIfEEE21remove_trailing_zerosERj.exit.i.i

_ZN5boost8charconv6detail4implIfNS1_22dragonbox_float_traitsIfEEE21remove_trailing_zerosERj.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.sroa.0.3.i.i = phi i32 [ 0, %bb.d ], [ %spec.select43.i.i, %bb.e ]
  %.014.i.i.i = phi i32 [ 0, %bb.d ], [ %spec.select44.i.i, %bb.e ]
  %i.ao = add nsw i32 %i.ag, %.014.i.i.i
  br label %_ZZZN5boost8charconv6detail10to_decimalIfNS1_22dragonbox_float_traitsIfEEJEEEDaNS1_33dragonbox_signed_significand_bitsIT_T0_EEjDpT1_ENKUlNS1_11policy_impl26decimal_to_binary_rounding15nearest_to_evenEE_clESD_ENKUlvE_clEv.exit

bb.f:                                             ; preds = %bb.c
  %i.ap = sub nsw i32 39, %i.m
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = lshr i64 %i.q, %i.aq
  %i.as = trunc i64 %i.ar to i32
  %i.at = add i32 %i.as, 1
  %i.au = lshr i32 %i.at, 1                       ; 4 uses
  %i.av = trunc i32 %i.au to i1
  %i.aw = icmp eq i32 %i.e, -35
  %or.cond3.i.i = and i1 %i.aw, %i.av
  br i1 %or.cond3.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = add nsw i32 %i.au, -1
  br label %_ZZZN5boost8charconv6detail10to_decimalIfNS1_22dragonbox_float_traitsIfEEJEEEDaNS1_33dragonbox_signed_significand_bitsIT_T0_EEjDpT1_ENKUlNS1_11policy_impl26decimal_to_binary_rounding15nearest_to_evenEE_clESD_ENKUlvE_clEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ay = icmp ult i32 %i.au, %spec.select.i.i
  %i.az = zext i1 %i.ay to i32
  %spec.select45.i.i = add nuw i32 %i.au, %i.az
  br label %_ZZZN5boost8charconv6detail10to_decimalIfNS1_22dragonbox_float_traitsIfEEJEEEDaNS1_33dragonbox_signed_significand_bitsIT_T0_EEjDpT1_ENKUlNS1_11policy_impl26decimal_to_binary_rounding15nearest_to_evenEE_clESD_ENKUlvE_clEv.exit

_ZZZN5boost8charconv6detail10to_decimalIfNS1_22dragonbox_float_traitsIfEEJEEEDaNS1_33dragonbox_signed_significand_bitsIT_T0_EEjDpT1_ENKUlNS1_11policy_impl26decimal_to_binary_rounding15nearest_to_evenEE_clESD_ENKUlvE_clEv.exit: ; preds = %_ZN5boost8charconv6detail4implIfNS1_22dragonbox_float_traitsIfEEE21remove_trailing_zerosERj.exit.i.i, %bb.g, %bb.h
  %.sroa.0.sroa.14.0.i.i = phi i32 [ %i.i, %bb.g ], [ %i.ao, %_ZN5boost8charconv6detail4implIfNS1_22dragonbox_float_traitsIfEEE21remove_trailing_zerosERj.exit.i.i ], [ %i.i, %bb.h ]
  %.sroa.0.sroa.0.0.i.i = phi i32 [ %i.ax, %bb.g ], [ %.sroa.0.sroa.0.3.i.i, %_ZN5boost8charconv6detail4implIfNS1_22dragonbox_float_traitsIfEEE21remove_trailing_zerosERj.exit.i.i ], [ %spec.select45.i.i, %bb.h ]
  %.sroa.0.sroa.14.0.insert.ext.i.i = zext i32 %.sroa.0.sroa.14.0.i.i to i64
  %.sroa.0.sroa.14.0.insert.shift.i.i = shl nuw i64 %.sroa.0.sroa.14.0.insert.ext.i.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.0.sroa.0.0.i.i to i64
  %.sroa.0.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.sroa.14.0.insert.shift.i.i, %.sroa.0.sroa.0.0.insert.ext.i.i
  %.fca.0.insert.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.sroa.0.0.insert.insert.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i, i8 0, 1
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.ba = or i32 %i.c, 16777216
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.019 = phi i32 [ %i.e, %bb.i ], [ -149, %bb.a ]
  %.0 = phi i32 [ %i.ba, %bb.i ], [ %i.c, %bb.a ]
  %i.bb = and i32 %i.b, 1
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = tail call { i64, i8 } @_ZN5boost8charconv6detail4implIfNS1_22dragonbox_float_traitsIfEEE22compute_nearest_normalINS1_10decimal_fpIjLb1ELb0EEENS1_11policy_impl26decimal_to_binary_rounding13interval_type18symmetric_boundaryENS9_13trailing_zero6removeENS9_26binary_to_decimal_rounding7to_evenENS9_5cache4fullEJbEEET_jiDpT4_(i32 noundef %.0, i32 noundef %.019, i1 noundef zeroext %i.bc) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZZN5boost8charconv6detail10to_decimalIfNS1_22dragonbox_float_traitsIfEEJEEEDaNS1_33dragonbox_signed_significand_bitsIT_T0_EEjDpT1_ENKUlNS1_11policy_impl26decimal_to_binary_rounding15nearest_to_evenEE_clESD_ENKUlvE_clEv.exit
  %.pn = phi { i64, i8 } [ %.fca.1.insert.i.i, %_ZZZN5boost8charconv6detail10to_decimalIfNS1_22dragonbox_float_traitsIfEEJEEEDaNS1_33dragonbox_signed_significand_bitsIT_T0_EEjDpT1_ENKUlNS1_11policy_impl26decimal_to_binary_rounding15nearest_to_evenEE_clESD_ENKUlvE_clEv.exit ], [ %i.bd, %bb.j ]
  ret { i64, i8 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZN5boost8charconv6detail4implIfNS1_22dragonbox_float_traitsIfEEE22compute_nearest_normalINS1_10decimal_fpIjLb1ELb0EEENS1_11policy_impl26decimal_to_binary_rounding13interval_type18symmetric_boundaryENS9_13trailing_zero6removeENS9_26binary_to_decimal_rounding7to_evenENS9_5cache4fullEJbEEET_jiDpT4_(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = mul nsw i32 %1, 315653
  %i.b = ashr i32 %i.a, 20                        ; 5 uses
  %i.c = sub nsw i32 1, %i.b                      ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr [8 x i8], ptr @_ZN5boost8charconv6detail34cache_holder_ieee754_binary32_implILb1EE5cacheE, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 248
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15   ; 4 uses
  %i.h = mul nsw i32 %i.c, 1741647
  %i.i = ashr i32 %i.h, 19
  %i.j = add nsw i32 %i.i, %1                     ; 6 uses
  %i.k = sub nsw i32 63, %i.j
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 %i.g, %i.l
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = or i32 %0, 1
  %i.p = shl i32 %i.o, %i.j
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw i64 %i.q, 32
  %3 = tail call noundef i64 @llvm.umulh.i64(i64 %i.r, i64 %i.g) ; 2 uses
  %i.s = lshr i64 %3, 32                          ; 2 uses
  %.sroa.017.0.extract.trunc = trunc nuw i64 %i.s to i32
  %i.t = mul nuw nsw i64 %i.s, 1374389535
  %i.u = lshr i64 %i.t, 37                        ; 2 uses
  %i.v = trunc nuw nsw i64 %i.u to i32            ; 5 uses
  %.neg = mul i32 %i.v, -100
  %i.w = add i32 %.neg, %.sroa.017.0.extract.trunc ; 5 uses
  %i.x = icmp ult i32 %i.w, %i.n
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.y = and i64 %3, 4294967295
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = icmp ne i32 %i.w, 0
  %i.ab = or i1 %i.z, %i.aa
  %or.cond = or i1 %i.ab, %2
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = add nsw i32 %i.v, -1
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.ad = icmp ugt i32 %i.w, %i.n
  br i1 %i.ad, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = add i32 %0, -1
  %i.af = zext i32 %i.ae to i64
  %i.ag = mul i64 %i.g, %i.af                     ; 2 uses
  %i.ah = sub nsw i32 64, %i.j
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = lshr i64 %i.ag, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %.sroa.0.0.insert.ext.i = and i32 %i.ak, 1
  %i.al = sub nsw i32 32, %i.j
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl i64 4294967295, %i.am
  %i.ao = and i64 %i.ag, %i.an
  %i.ap = icmp eq i64 %i.ao, 0
  %narrow = select i1 %2, i1 %i.ap, i1 false
  %i.aq = zext i1 %narrow to i32
  %i.ar = or i32 %.sroa.0.0.insert.ext.i, %i.aq
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.as = add nsw i32 %i.b, 1
  %i.at = icmp eq i64 %i.u, 0
  br i1 %i.at, label %_ZN5boost8charconv6detail4implIfNS1_22dragonbox_float_traitsIfEEE21remove_trailing_zerosERj.exit, label %.preheader

.preheader:                                       ; preds = %bb.f, %.preheader
  %.sroa.055.sroa.0.3 = phi i32 [ %i.av, %.preheader ], [ %i.v, %bb.f ] ; 3 uses
  %.013.i = phi i32 [ %i.aw, %.preheader ], [ 0, %bb.f ] ; 2 uses
  %i.au = mul i32 %.sroa.055.sroa.0.3, -1030792151 ; 2 uses
  %i.av = tail call i32 @llvm.fshl.i32(i32 %i.au, i32 %i.au, i32 30) ; 2 uses
  %.not.i = icmp ugt i32 %i.av, 42949672
  %i.aw = add nuw nsw i32 %.013.i, 2
  br i1 %.not.i, label %bb.g, label %.preheader

bb.g:                                             ; preds = %.preheader
  %i.ax = mul i32 %.sroa.055.sroa.0.3, -858993459 ; 2 uses
  %i.ay = tail call i32 @llvm.fshl.i32(i32 %i.ax, i32 %i.ax, i32 31) ; 2 uses
  %.not17.i = icmp ult i32 %i.ay, 429496730       ; 2 uses
  %spec.select = select i1 %.not17.i, i32 %i.ay, i32 %.sroa.055.sroa.0.3
  %i.az = zext i1 %.not17.i to i32
  %spec.select82 = or disjoint i32 %.013.i, %i.az
  br label %_ZN5boost8charconv6detail4implIfNS1_22dragonbox_float_traitsIfEEE21remove_trailing_zerosERj.exit

_ZN5boost8charconv6detail4implIfNS1_22dragonbox_float_traitsIfEEE21remove_trailing_zerosERj.exit: ; preds = %bb.g, %bb.f
  %.sroa.055.sroa.0.5 = phi i32 [ 0, %bb.f ], [ %spec.select, %bb.g ]
  %.014.i = phi i32 [ 0, %bb.f ], [ %spec.select82, %bb.g ]
  %i.ba = add nsw i32 %i.as, %.014.i
  br label %bb.l

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.055.sroa.0.0 = phi i32 [ %i.ac, %bb.c ], [ %i.v, %bb.d ], [ %i.v, %bb.e ]
  %.036 = phi i32 [ 100, %bb.c ], [ %i.w, %bb.d ], [ %i.w, %bb.e ]
  %i.bb = mul nsw i32 %.sroa.055.sroa.0.0, 10
  %i.bc = lshr i32 %i.n, 1
  %i.bd = sub i32 %.036, %i.bc                    ; 2 uses
  %i.be = mul i32 %i.bd, 6554
  %i.bf = add i32 %i.be, 32770                    ; 2 uses
  %i.bg = and i32 %i.bf, 65534
  %i.bh = icmp samesign ult i32 %i.bg, 6554
  %i.bi = lshr i32 %i.bf, 16                      ; 2 uses
  %i.bj = add nsw i32 %i.bi, %i.bb                ; 3 uses
  br i1 %i.bh, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bk = zext i32 %0 to i64
  %i.bl = mul i64 %i.g, %i.bk                     ; 2 uses
  %i.bm = sub nsw i32 64, %i.j
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = lshr i64 %i.bl, %i.bn
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = xor i32 %i.bd, %i.bp
  %i.br = and i32 %i.bq, 1
  %.not41 = icmp eq i32 %i.br, 0
  br i1 %.not41, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = add nsw i32 %i.bj, -1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bt = sub nsw i32 32, %i.j
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl i64 4294967295, %i.bu
  %i.bw = and i64 %i.bl, %i.bv
  %i.bx = icmp eq i64 %i.bw, 0
  %i.by = trunc i32 %i.bi to i1
  %.not42.not = and i1 %i.bx, %i.by
  %i.bz = sext i1 %.not42.not to i32
  %spec.select83 = add nsw i32 %i.bj, %i.bz
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.j, %_ZN5boost8charconv6detail4implIfNS1_22dragonbox_float_traitsIfEEE21remove_trailing_zerosERj.exit
  %.sroa.055.sroa.19.0 = phi i32 [ %i.ba, %_ZN5boost8charconv6detail4implIfNS1_22dragonbox_float_traitsIfEEE21remove_trailing_zerosERj.exit ], [ %i.b, %bb.j ], [ %i.b, %bb.h ], [ %i.b, %bb.k ]
  %.sroa.055.sroa.0.2 = phi i32 [ %.sroa.055.sroa.0.5, %_ZN5boost8charconv6detail4implIfNS1_22dragonbox_float_traitsIfEEE21remove_trailing_zerosERj.exit ], [ %i.bs, %bb.j ], [ %i.bj, %bb.h ], [ %spec.select83, %bb.k ]
  %.sroa.055.sroa.19.0.insert.ext = zext i32 %.sroa.055.sroa.19.0 to i64
  %.sroa.055.sroa.19.0.insert.shift = shl nuw i64 %.sroa.055.sroa.19.0.insert.ext, 32
  %.sroa.055.sroa.0.0.insert.ext = zext i32 %.sroa.055.sroa.0.2 to i64
  %.sroa.055.sroa.0.0.insert.insert = or disjoint i64 %.sroa.055.sroa.19.0.insert.shift, %.sroa.055.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.055.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost8charconv6detail15to_chars_detail15to_chars_n_implINS1_11policy_impl13policy_holderIJNS4_4sign11return_signENS4_13trailing_zero6removeENS4_26decimal_to_binary_rounding15nearest_to_evenENS4_26binary_to_decimal_rounding7to_evenENS4_5cache4fullEEEEfNS1_22dragonbox_float_traitsIfEEEENS0_15to_chars_resultENS1_20dragonbox_float_bitsIT0_T1_EEPcSO_NS0_12chars_formatE(i32 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.2, align 8              ; 4 uses
  %i.a = lshr i32 %0, 23
  %i.b = and i32 %i.a, 255                        ; 3 uses
  %i.c = shl nuw nsw i32 %i.b, 23
  %i.d = xor i32 %i.c, %0                         ; 2 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  %.not59 = icmp eq i32 %i.b, 255
  %i.h = icmp slt i32 %0, 0                       ; 5 uses
  br i1 %.not59, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 45, ptr %1, align 1, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.044 = phi ptr [ %i.i, %bb.c ], [ %1, %bb.b ]  ; 5 uses
  %.mask.i.i = and i32 %0, 2147483647
  %.not60 = icmp eq i32 %.mask.i.i, 0
  br i1 %.not60, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.26.0.insert.ext.i = zext i32 %i.d to i64
  %.sroa.26.0.insert.shift.i = shl nuw i64 %.sroa.26.0.insert.ext.i, 32
  %.sroa.05.0.insert.ext.i = zext nneg i32 %i.b to i64
  %.sroa.05.0.insert.insert.i = or disjoint i64 %.sroa.26.0.insert.shift.i, %.sroa.05.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.05.0.insert.insert.i, ptr %4, align 8
  %i.j = call { i64, i8 } @_ZZN5boost8charconv6detail10to_decimalIfNS1_22dragonbox_float_traitsIfEEJNS1_11policy_impl4sign6ignoreENS5_13trailing_zero6ignoreENS5_26decimal_to_binary_rounding15nearest_to_evenENS5_26binary_to_decimal_rounding7to_evenENS5_5cache4fullEEEEDaNS1_33dragonbox_signed_significand_bitsIT_T0_EEjDpT1_ENKUlSB_E_clESB_(ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.fca.0.extract = extractvalue { i64, i8 } %i.j, 0 ; 2 uses
  %.sroa.06.0.extract.trunc = trunc i64 %.fca.0.extract to i32
  %.sroa.06.4.extract.shift = lshr i64 %.fca.0.extract, 32
  %.sroa.06.4.extract.trunc = trunc nuw i64 %.sroa.06.4.extract.shift to i32
  %i.k = call { ptr, i32 } @_ZN5boost8charconv6detail15to_chars_detail22dragon_box_print_charsIfNS1_22dragonbox_float_traitsIfEEEENS0_15to_chars_resultENT0_12carrier_uintEiPcS9_NS0_12chars_formatE(i32 noundef %.sroa.06.0.extract.trunc, i32 noundef %.sroa.06.4.extract.trunc, ptr noundef %.044, ptr noundef %2, i32 noundef %3) #14
  br label %bb.y

bb.f:                                             ; preds = %bb.d
  %.not48 = icmp eq i32 %3, 1
  br i1 %.not48, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 48, ptr %.044, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.044, i64 1
  %i.m = insertvalue { ptr, i32 } poison, ptr %i.l, 0
  %i.n = insertvalue { ptr, i32 } %i.m, i32 0, 1
  br label %bb.y

bb.h:                                             ; preds = %bb.f
  %i.o = icmp sgt i64 %i.g, 4
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.044, ptr noundef nonnull align 1 dereferenceable(5) @.str.13, i64 5, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.044, i64 5
  %i.q = insertvalue { ptr, i32 } poison, ptr %i.p, 0
  %i.r = insertvalue { ptr, i32 } %i.q, i32 0, 1
  br label %bb.y

bb.j:                                             ; preds = %bb.h
  %i.s = insertvalue { ptr, i32 } poison, ptr %2, 0
  %i.t = insertvalue { ptr, i32 } %i.s, i32 75, 1
  br label %bb.y

bb.k:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 45, ptr %1, align 1, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1 = phi ptr [ %i.u, %bb.l ], [ %1, %bb.k ]    ; 8 uses
  %.mask.i.i49 = and i32 %i.d, 2147483647
end_hunk_4
begin_hunk_5_@_ZN5boost8charconv6detail12to_chars_hexIdEENS0_15to_chars_resultEPcS4_T_i:bb.a
  %i.ej = lshr i64 %i.ei, 56
  %i.ek = and i64 %i.ej, 126
  %i.el = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11radix_tableE, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2
  store i16 %i.em, ptr %i.a, align 2
  %i.en = and i64 %i.ei, 144115188075855871
  %i.eo = mul nuw i64 %i.en, 100                  ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.eq = lshr i64 %i.eo, 56
  %i.er = and i64 %i.eq, 254
  %i.es = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11radix_tableE, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2
  store i16 %i.et, ptr %i.ep, align 2
  %i.eu = and i64 %i.eo, 144115188075855868
  %i.ev = mul nuw i64 %i.eu, 100                  ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ex = lshr i64 %i.ev, 56
  %i.ey = and i64 %i.ex, 254
  %i.ez = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11radix_tableE, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2
  store i16 %i.fa, ptr %i.ew, align 2
  %i.fb = and i64 %i.ev, 144115188075855856
  %i.fc = mul nuw i64 %i.fb, 100                  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.fe = lshr i64 %i.fc, 56
  %i.ff = and i64 %i.fe, 254
  %i.fg = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11radix_tableE, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2
  store i16 %i.fh, ptr %i.fd, align 2
  %i.fi = and i64 %i.fc, 144115188075855808
  %i.fj = mul nuw i64 %i.fi, 100
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fl = lshr i64 %i.fj, 56
  %i.fm = and i64 %i.fl, 254
  %i.fn = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11radix_tableE, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 2
  store i16 %i.fo, ptr %i.fk, align 2
  %i.fp = sub nuw nsw i64 10, %.0.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.7, ptr noundef nonnull align 1 dereferenceable(1) %i.fq, i64 %.0.i.i.i, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5boost8charconv6detail10num_digitsIjEEiT_.exit.i.i
  %spec.select25.i.i = phi i32 [ 75, %_ZN5boost8charconv6detail10num_digitsIjEEiT_.exit.i.i ], [ 0, %bb.q ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.7, i64 %.0.i.i.i
  %spec.select.i.i = select i1 %.not.i.i, ptr %1, ptr %i.fr
  br label %_ZN5boost8charconv6detail12to_chars_intIjEENS0_15to_chars_resultEPcS4_T_i.exit

_ZN5boost8charconv6detail12to_chars_intIjEENS0_15to_chars_resultEPcS4_T_i.exit: ; preds = %.loopexit, %bb.r
  %.sroa.0.2.i.i = phi ptr [ %spec.select.i.i, %bb.r ], [ %1, %.loopexit ]
  %.sroa.4.2.i.i = phi i32 [ %spec.select25.i.i, %bb.r ], [ 22, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.s

bb.s:                                             ; preds = %_ZN5boost8charconv6detail12to_chars_intIjEENS0_15to_chars_resultEPcS4_T_i.exit, %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit, %bb.a
  %.sroa.0.1 = phi ptr [ %1, %bb.a ], [ %.sroa.0.2.i.i, %_ZN5boost8charconv6detail12to_chars_intIjEENS0_15to_chars_resultEPcS4_T_i.exit ], [ %1, %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit ]
  %.sroa.4.1 = phi i32 [ 75, %bb.a ], [ %.sroa.4.2.i.i, %_ZN5boost8charconv6detail12to_chars_intIjEENS0_15to_chars_resultEPcS4_T_i.exit ], [ 75, %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE23compute_nearest_shorterINS1_10decimal_fpImLb1ELb0EEENS1_11policy_impl26decimal_to_binary_rounding13interval_type6closedENS9_13trailing_zero6removeENS9_26binary_to_decimal_rounding7to_evenENS9_5cache4fullEJEEET_iDpT4_(i32 noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = mul nsw i32 %0, 631305
  %i.b = add nsw i32 %i.a, -261663
  %i.c = ashr i32 %i.b, 21                        ; 5 uses
  %i.d = sub nsw i32 0, %i.c
  %i.e = mul nsw i32 %i.c, -1741647
  %i.f = ashr i32 %i.e, 19
  %i.g = add nsw i32 %i.f, %0                     ; 2 uses
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr [16 x i8], ptr @_ZN5boost8charconv6detail34cache_holder_ieee754_binary64_implILb1EE5cacheE, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 4672
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 16, !tbaa !15 ; 5 uses
  %i.k = lshr i64 %.sroa.0.0.copyload.i, 54
  %i.l = sub nuw i64 %.sroa.0.0.copyload.i, %i.k
  %i.m = sub nsw i32 11, %i.g
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = lshr i64 %i.l, %i.n
  %i.p = lshr i64 %.sroa.0.0.copyload.i, 53
  %i.q = add i64 %i.p, %.sroa.0.0.copyload.i
  %i.r = lshr i64 %i.q, %i.n                      ; 2 uses
  %i.s = and i32 %0, -2
  %i.t = icmp ne i32 %i.s, 2
  %i.u = zext i1 %i.t to i64
  %spec.select = add i64 %i.o, %i.u               ; 2 uses
  %i.v = udiv i64 %i.r, 10                        ; 3 uses
  %i.w = mul nuw i64 %i.v, 10
  %.not = icmp ult i64 %i.w, %spec.select
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = add nsw i32 %i.c, 1
  %i.y = icmp ult i64 %i.r, 10
  br i1 %i.y, label %_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE21remove_trailing_zerosERm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = zext nneg i64 %i.v to i128
  %i.aa = mul nuw nsw i128 %i.z, 12379400392853802749 ; 3 uses
  %i.ab = trunc i128 %i.aa to i64
  %i.ac = and i128 %i.aa, 1237940020838636201189572608
  %i.ad = icmp eq i128 %i.ac, 0
  %i.ae = icmp ult i64 %i.ab, -6067343680855748867
  %or.cond.i = and i1 %i.ae, %i.ad
  br i1 %or.cond.i, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.af = lshr i128 %i.aa, 90
  %i.ag = trunc i128 %i.af to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.034.i = phi i32 [ %i.ag, %bb.d ], [ %i.ai, %bb.e ] ; 3 uses
  %.031.i = phi i32 [ 8, %bb.d ], [ %i.aj, %bb.e ] ; 2 uses
  %i.ah = mul i32 %.034.i, -1030792151            ; 2 uses
  %i.ai = tail call i32 @llvm.fshl.i32(i32 %i.ah, i32 %i.ah, i32 30) ; 2 uses
  %.not45.i = icmp ugt i32 %i.ai, 42949672
  %i.aj = add nuw nsw i32 %.031.i, 2
  br i1 %.not45.i, label %bb.f, label %bb.e

bb.f:                                             ; preds = %bb.e
  %i.ak = mul i32 %.034.i, -858993459             ; 2 uses
  %i.al = tail call i32 @llvm.fshl.i32(i32 %i.ak, i32 %i.ak, i32 31) ; 2 uses
  %.not46.i = icmp ult i32 %i.al, 429496730       ; 2 uses
  %spec.select.i = select i1 %.not46.i, i32 %i.al, i32 %.034.i
  %i.am = zext i1 %.not46.i to i32
  %spec.select47.i = or disjoint i32 %.031.i, %i.am
  %i.an = zext i32 %spec.select.i to i64
  br label %_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE21remove_trailing_zerosERm.exit

.preheader:                                       ; preds = %bb.c, %.preheader
  %.sroa.024.1 = phi i64 [ %i.ap, %.preheader ], [ %i.v, %bb.c ] ; 3 uses
  %.0.i = phi i32 [ %i.aq, %.preheader ], [ 0, %bb.c ] ; 2 uses
  %i.ao = mul i64 %.sroa.024.1, -8116567392432202711 ; 2 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 62) ; 2 uses
  %.not.i = icmp ugt i64 %i.ap, 184467440737095516
  %i.aq = add nuw nsw i32 %.0.i, 2
  br i1 %.not.i, label %bb.g, label %.preheader

bb.g:                                             ; preds = %.preheader
  %i.ar = mul i64 %.sroa.024.1, -3689348814741910323 ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 63) ; 2 uses
  %.not44.i = icmp ult i64 %i.as, 1844674407370955162 ; 2 uses
  %spec.select50 = select i1 %.not44.i, i64 %i.as, i64 %.sroa.024.1
  %i.at = zext i1 %.not44.i to i32
  %spec.select51 = or disjoint i32 %.0.i, %i.at
  br label %_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE21remove_trailing_zerosERm.exit

_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE21remove_trailing_zerosERm.exit: ; preds = %bb.g, %bb.b, %bb.f
  %.sroa.024.3 = phi i64 [ 0, %bb.b ], [ %i.an, %bb.f ], [ %spec.select50, %bb.g ]
  %.138.i = phi i32 [ 0, %bb.b ], [ %spec.select47.i, %bb.f ], [ %spec.select51, %bb.g ]
  %i.au = add nsw i32 %i.x, %.138.i
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.av = sub nsw i32 10, %i.g
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = lshr i64 %.sroa.0.0.copyload.i, %i.aw
  %i.ay = add i64 %i.ax, 1
  %i.az = lshr i64 %i.ay, 1                       ; 4 uses
  %i.ba = trunc i64 %i.az to i1
  %i.bb = icmp eq i32 %0, -77
  %or.cond3 = and i1 %i.bb, %i.ba
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = add nsw i64 %i.az, -1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bd = icmp ult i64 %i.az, %spec.select
  %i.be = zext i1 %i.bd to i64
  %spec.select52 = add nuw i64 %i.az, %i.be
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE21remove_trailing_zerosERm.exit
  %.sroa.024.0 = phi i64 [ %i.bc, %bb.i ], [ %.sroa.024.3, %_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE21remove_trailing_zerosERm.exit ], [ %spec.select52, %bb.j ]
  %.sroa.15.0.in = phi i32 [ %i.c, %bb.i ], [ %i.au, %_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE21remove_trailing_zerosERm.exit ], [ %i.c, %bb.j ]
  %.sroa.15.0 = zext i32 %.sroa.15.0.in to i64
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.024.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.15.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE22compute_nearest_normalINS1_10decimal_fpImLb1ELb0EEENS1_11policy_impl26decimal_to_binary_rounding13interval_type18symmetric_boundaryENS9_13trailing_zero6removeENS9_26binary_to_decimal_rounding7to_evenENS9_5cache4fullEJbEEET_miDpT4_(i64 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = mul nsw i32 %1, 315653
  %i.b = ashr i32 %i.a, 20                        ; 5 uses
  %i.c = sub nsw i32 2, %i.b                      ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr [16 x i8], ptr @_ZN5boost8charconv6detail34cache_holder_ieee754_binary64_implILb1EE5cacheE, i64 %i.d ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4672
  %.sroa.0.0.copyload.i = load i64, ptr %i.f, align 16, !tbaa !15 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.e, i64 4680
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15 ; 3 uses
  %i.g = mul nsw i32 %i.c, 1741647
  %i.h = ashr i32 %i.g, 19
  %i.i = add nsw i32 %i.h, %1                     ; 4 uses
  %i.j = sub nsw i32 63, %i.i
  %i.k = zext nneg i32 %i.j to i64
  %i.l = lshr i64 %.sroa.0.0.copyload.i, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 3 uses
  %i.n = or i64 %0, 1
  %i.o = zext nneg i32 %i.i to i64                ; 3 uses
  %i.p = shl i64 %i.n, %i.o                       ; 2 uses
  %i.q = zext i64 %i.p to i128
  %i.r = zext i64 %.sroa.0.0.copyload.i to i128
  %i.s = mul nuw i128 %i.r, %i.q                  ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = trunc nuw i128 %i.t to i64
  %i.v = trunc i128 %i.s to i64
  %3 = tail call noundef i64 @llvm.umulh.i64(i64 %i.p, i64 %.sroa.2.0.copyload.i)
  %i.w = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.v, i64 %3) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = zext i1 %i.x to i64
  %i.z = add nuw i64 %i.y, %i.u                   ; 2 uses
  %4 = tail call noundef i64 @llvm.umulh.i64(i64 %i.z, i64 2361183241434822607)
  %5 = lshr i64 %4, 7                             ; 7 uses
  %.neg = mul i64 %5, 4294966296
  %i.aa = add i64 %.neg, %i.z
  %i.ab = trunc i64 %i.aa to i32                  ; 5 uses
  %i.ac = icmp ugt i32 %i.m, %i.ab
  br i1 %i.ac, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ad = extractvalue { i64, i1 } %i.w, 0
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = icmp ne i32 %i.ab, 0
  %i.ag = or i1 %i.ae, %i.af
  %or.cond = or i1 %2, %i.ag
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = add nsw i64 %5, -1
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.ai = icmp ult i32 %i.m, %i.ab
  br i1 %i.ai, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = add i64 %0, -1                          ; 2 uses
  %i.ak = mul i64 %.sroa.0.0.copyload.i, %i.aj
  %6 = zext i64 %i.aj to i128
  %i.al = zext i64 %.sroa.2.0.copyload.i to i128
  %i.am = mul nuw i128 %i.al, %6                  ; 2 uses
  %i.an = lshr i128 %i.am, 64
  %i.ao = trunc nuw i128 %i.an to i64
  %i.ap = trunc i128 %i.am to i64
  %i.aq = add i64 %i.ak, %i.ao                    ; 2 uses
  %i.ar = sub nsw i32 64, %i.i
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = lshr i64 %i.aq, %i.as
  %i.au = trunc i64 %i.at to i32
  %.sroa.06.0.insert.ext.i = and i32 %i.au, 1
  %i.av = shl i64 %i.aq, %i.o
  %i.aw = lshr i64 %i.ap, %i.as
  %i.ax = or i64 %i.av, %i.aw
  %i.ay = icmp eq i64 %i.ax, 0
  %narrow = select i1 %2, i1 %i.ay, i1 false
  %i.az = zext i1 %narrow to i32
  %i.ba = or i32 %.sroa.06.0.insert.ext.i, %i.az
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.bb = add nsw i32 %i.b, 1
  %i.bc = icmp eq i64 %5, 0
  br i1 %i.bc, label %_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE21remove_trailing_zerosERm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %7 = zext nneg i64 %5 to i128
  %i.bd = mul nuw nsw i128 %7, 12379400392853802749 ; 3 uses
  %i.be = trunc i128 %i.bd to i64
  %i.bf = and i128 %i.bd, 1237940020838636201189572608
  %i.bg = icmp eq i128 %i.bf, 0
  %i.bh = icmp ult i64 %i.be, -6067343680855748867
  %or.cond.i = and i1 %i.bh, %i.bg
  br i1 %or.cond.i, label %bb.h, label %.preheader

bb.h:                                             ; preds = %bb.g
  %i.bi = lshr i128 %i.bd, 90
  %i.bj = trunc nuw nsw i128 %i.bi to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.034.i = phi i32 [ %i.bj, %bb.h ], [ %i.bl, %bb.i ] ; 3 uses
  %.031.i = phi i32 [ 8, %bb.h ], [ %i.bm, %bb.i ] ; 2 uses
  %i.bk = mul i32 %.034.i, -1030792151            ; 2 uses
  %i.bl = tail call i32 @llvm.fshl.i32(i32 %i.bk, i32 %i.bk, i32 30) ; 2 uses
  %.not45.i = icmp ugt i32 %i.bl, 42949672
  %i.bm = add nuw nsw i32 %.031.i, 2
  br i1 %.not45.i, label %bb.j, label %bb.i

bb.j:                                             ; preds = %bb.i
  %i.bn = mul i32 %.034.i, -858993459             ; 2 uses
  %i.bo = tail call i32 @llvm.fshl.i32(i32 %i.bn, i32 %i.bn, i32 31) ; 2 uses
  %.not46.i = icmp ult i32 %i.bo, 429496730       ; 2 uses
  %spec.select.i = select i1 %.not46.i, i32 %i.bo, i32 %.034.i
  %i.bp = zext i1 %.not46.i to i32
  %spec.select47.i = or disjoint i32 %.031.i, %i.bp
  %i.bq = zext i32 %spec.select.i to i64
  br label %_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE21remove_trailing_zerosERm.exit

.preheader:                                       ; preds = %bb.g, %.preheader
  %.sroa.067.3 = phi i64 [ %i.bs, %.preheader ], [ %5, %bb.g ] ; 3 uses
  %.0.i = phi i32 [ %i.bt, %.preheader ], [ 0, %bb.g ] ; 2 uses
  %i.br = mul i64 %.sroa.067.3, -8116567392432202711 ; 2 uses
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 62) ; 2 uses
  %.not.i = icmp ugt i64 %i.bs, 184467440737095516
  %i.bt = add nuw nsw i32 %.0.i, 2
  br i1 %.not.i, label %bb.k, label %.preheader

bb.k:                                             ; preds = %.preheader
  %i.bu = mul i64 %.sroa.067.3, -3689348814741910323 ; 2 uses
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 63) ; 2 uses
  %.not44.i = icmp ult i64 %i.bv, 1844674407370955162 ; 2 uses
  %spec.select = select i1 %.not44.i, i64 %i.bv, i64 %.sroa.067.3
  %i.bw = zext i1 %.not44.i to i32
  %spec.select99 = or disjoint i32 %.0.i, %i.bw
  br label %_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE21remove_trailing_zerosERm.exit

_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE21remove_trailing_zerosERm.exit: ; preds = %bb.k, %bb.f, %bb.j
  %.sroa.067.5 = phi i64 [ 0, %bb.f ], [ %i.bq, %bb.j ], [ %spec.select, %bb.k ]
  %.138.i = phi i32 [ 0, %bb.f ], [ %spec.select47.i, %bb.j ], [ %spec.select99, %bb.k ]
  %i.bx = add nsw i32 %i.bb, %.138.i
  br label %bb.p

bb.l:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.067.0 = phi i64 [ %i.ah, %bb.c ], [ %5, %bb.d ], [ %5, %bb.e ]
  %.035 = phi i32 [ 1000, %bb.c ], [ %i.ab, %bb.d ], [ %i.ab, %bb.e ]
  %i.by = mul nsw i64 %.sroa.067.0, 10
  %i.bz = lshr i32 %i.m, 1
  %i.ca = sub i32 %.035, %i.bz                    ; 2 uses
  %i.cb = mul i32 %i.ca, 656
  %i.cc = add i32 %i.cb, 32800                    ; 2 uses
  %i.cd = and i32 %i.cc, 65520
  %i.ce = icmp samesign ult i32 %i.cd, 656
  %i.cf = lshr i32 %i.cc, 16                      ; 2 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = add nsw i64 %i.by, %i.cg                ; 3 uses
  br i1 %i.ce, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ci = mul i64 %.sroa.0.0.copyload.i, %0
  %i.cj = zext i64 %0 to i128
  %8 = zext i64 %.sroa.2.0.copyload.i to i128
  %i.ck = mul nuw i128 %8, %i.cj                  ; 2 uses
  %i.cl = lshr i128 %i.ck, 64
  %i.cm = trunc nuw i128 %i.cl to i64
  %i.cn = add i64 %i.ci, %i.cm                    ; 2 uses
  %i.co = sub nsw i32 64, %i.i
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = lshr i64 %i.cn, %i.cp
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = xor i32 %i.ca, %i.cr
  %i.ct = and i32 %i.cs, 1
  %.not40 = icmp eq i32 %i.ct, 0
  br i1 %.not40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = add nsw i64 %i.ch, -1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cv = shl i64 %i.cn, %i.o
  %i.cw = trunc i128 %i.ck to i64
  %i.cx = lshr i64 %i.cw, %i.cp
  %i.cy = or i64 %i.cv, %i.cx
  %i.cz = icmp eq i64 %i.cy, 0
  %i.da = trunc i32 %i.cf to i1
  %.not41.not = and i1 %i.cz, %i.da
  %i.db = sext i1 %.not41.not to i64
  %spec.select100 = add nsw i64 %i.ch, %i.db
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.n, %_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE21remove_trailing_zerosERm.exit
  %.sroa.067.2 = phi i64 [ %.sroa.067.5, %_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE21remove_trailing_zerosERm.exit ], [ %i.ch, %bb.l ], [ %spec.select100, %bb.o ], [ %i.cu, %bb.n ]
  %.sroa.20.0.in = phi i32 [ %i.bx, %_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE21remove_trailing_zerosERm.exit ], [ %i.b, %bb.l ], [ %i.b, %bb.o ], [ %i.b, %bb.n ]
  %.sroa.20.0 = zext i32 %.sroa.20.0.in to i64
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.067.2, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.20.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost8charconv6detail15to_chars_detail15to_chars_n_implINS1_11policy_impl13policy_holderIJNS4_4sign11return_signENS4_13trailing_zero6removeENS4_26decimal_to_binary_rounding15nearest_to_evenENS4_26binary_to_decimal_rounding7to_evenENS4_5cache4fullEEEEdNS1_22dragonbox_float_traitsIdEEEENS0_15to_chars_resultENS1_20dragonbox_float_bitsIT0_T1_EEPcSO_NS0_12chars_formatE(i64 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %0, 52
  %i.b = trunc nuw nsw i64 %i.a to i32
  %i.c = and i32 %i.b, 2047                       ; 3 uses
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %.not61 = icmp eq i32 %i.c, 2047
  %i.g = icmp slt i64 %0, 0                       ; 5 uses
  br i1 %.not61, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 45, ptr %1, align 1, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.043 = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ]  ; 5 uses
  %.mask.i.i = and i64 %0, 9223372036854775807
  %.not62 = icmp eq i64 %.mask.i.i, 0
  br i1 %.not62, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = shl i64 %0, 1
  %i.j = and i64 %i.i, 9007199254740990           ; 3 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i32 %i.c, -1075                  ; 2 uses
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = tail call { i64, i64 } @_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE23compute_nearest_shorterINS1_10decimal_fpImLb1ELb0EEENS1_11policy_impl26decimal_to_binary_rounding13interval_type6closedENS9_13trailing_zero6removeENS9_26binary_to_decimal_rounding7to_evenENS9_5cache4fullEJEEET_iDpT4_(i32 noundef %i.k) #14
  br label %_ZZN5boost8charconv6detail10to_decimalIdNS1_22dragonbox_float_traitsIdEEJNS1_11policy_impl4sign6ignoreENS5_13trailing_zero6ignoreENS5_26decimal_to_binary_rounding15nearest_to_evenENS5_26binary_to_decimal_rounding7to_evenENS5_5cache4fullEEEEDaNS1_33dragonbox_signed_significand_bitsIT_T0_EEjDpT1_ENKUlSB_E_clESB_.exit

bb.h:                                             ; preds = %bb.f
  %i.n = or disjoint i64 %i.j, 9007199254740992
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.09.i = phi i64 [ %i.n, %bb.h ], [ %i.j, %bb.e ]
  %.0.i = phi i32 [ %i.k, %bb.h ], [ -1074, %bb.e ]
  %i.o = and i64 %0, 1
  %i.p = icmp eq i64 %i.o, 0
  %i.q = tail call { i64, i64 } @_ZN5boost8charconv6detail4implIdNS1_22dragonbox_float_traitsIdEEE22compute_nearest_normalINS1_10decimal_fpImLb1ELb0EEENS1_11policy_impl26decimal_to_binary_rounding13interval_type18symmetric_boundaryENS9_13trailing_zero6removeENS9_26binary_to_decimal_rounding7to_evenENS9_5cache4fullEJbEEET_miDpT4_(i64 noundef %.09.i, i32 noundef %.0.i, i1 noundef zeroext %i.p) #14
  br label %_ZZN5boost8charconv6detail10to_decimalIdNS1_22dragonbox_float_traitsIdEEJNS1_11policy_impl4sign6ignoreENS5_13trailing_zero6ignoreENS5_26decimal_to_binary_rounding15nearest_to_evenENS5_26binary_to_decimal_rounding7to_evenENS5_5cache4fullEEEEDaNS1_33dragonbox_signed_significand_bitsIT_T0_EEjDpT1_ENKUlSB_E_clESB_.exit

_ZZN5boost8charconv6detail10to_decimalIdNS1_22dragonbox_float_traitsIdEEJNS1_11policy_impl4sign6ignoreENS5_13trailing_zero6ignoreENS5_26decimal_to_binary_rounding15nearest_to_evenENS5_26binary_to_decimal_rounding7to_evenENS5_5cache4fullEEEEDaNS1_33dragonbox_signed_significand_bitsIT_T0_EEjDpT1_ENKUlSB_E_clESB_.exit: ; preds = %bb.g, %bb.i
  %.pn.i = phi { i64, i64 } [ %i.m, %bb.g ], [ %i.q, %bb.i ] ; 2 uses
  %i.r = extractvalue { i64, i64 } %.pn.i, 1
  %i.s = extractvalue { i64, i64 } %.pn.i, 0
  %.sroa.4.8.extract.trunc = trunc i64 %i.r to i32
  %i.t = tail call { ptr, i32 } @_ZN5boost8charconv6detail15to_chars_detail22dragon_box_print_charsIdNS1_22dragonbox_float_traitsIdEEEENS0_15to_chars_resultENT0_12carrier_uintEiPcS9_NS0_12chars_formatE(i64 noundef %i.s, i32 noundef %.sroa.4.8.extract.trunc, ptr noundef %.043, ptr noundef %2, i32 noundef %3) #14
  br label %bb.ab

bb.j:                                             ; preds = %bb.d
  %.not47 = icmp eq i32 %3, 1
  br i1 %.not47, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 48, ptr %.043, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.043, i64 1
  %i.v = insertvalue { ptr, i32 } poison, ptr %i.u, 0
  %i.w = insertvalue { ptr, i32 } %i.v, i32 0, 1
  br label %bb.ab

bb.l:                                             ; preds = %bb.j
  %i.x = icmp sgt i64 %i.f, 4
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.043, ptr noundef nonnull align 1 dereferenceable(5) @.str.13, i64 5, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.043, i64 5
  %i.z = insertvalue { ptr, i32 } poison, ptr %i.y, 0
  %i.aa = insertvalue { ptr, i32 } %i.z, i32 0, 1
  br label %bb.ab

bb.n:                                             ; preds = %bb.l
  %i.ab = insertvalue { ptr, i32 } poison, ptr %2, 0
  %i.ac = insertvalue { ptr, i32 } %i.ab, i32 75, 1
  br label %bb.ab

bb.o:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 45, ptr %1, align 1, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1 = phi ptr [ %i.ad, %bb.p ], [ %1, %bb.o ]   ; 8 uses
  %.mask.i.i48 = and i64 %0, 4503599627370495
  switch i64 %.mask.i.i48, label %bb.y [
    i64 0, label %bb.r
    i64 2251799813685248, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.ae = select i1 %i.g, i64 4, i64 3
  %.not46 = icmp slt i64 %i.f, %i.ae
  br i1 %.not46, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.1, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.1, i64 3
  br label %bb.aa

bb.t:                                             ; preds = %bb.q
  br i1 %i.g, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not44 = icmp slt i64 %i.f, 3
  br i1 %.not44, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.1, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.1, i64 3
  br label %bb.aa

bb.w:                                             ; preds = %bb.t
  %.not45 = icmp slt i64 %i.f, 9
  br i1 %.not45, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 2982630251155054958, ptr %.1, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br label %bb.aa

bb.y:                                             ; preds = %bb.q
  %i.ai = select i1 %i.g, i64 10, i64 9
  %.not = icmp slt i64 %i.f, %i.ai
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.1, i64 9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.v, %bb.x, %bb.z, %bb.u, %bb.w, %bb.y, %bb.r, %bb.s
  %.sroa.041.1 = phi ptr [ %i.af, %bb.s ], [ %2, %bb.r ], [ %i.ah, %bb.x ], [ %2, %bb.u ], [ %i.ag, %bb.v ], [ %2, %bb.w ], [ %i.aj, %bb.z ], [ %2, %bb.y ]
  %.sroa.13.1 = phi i32 [ 0, %bb.s ], [ 75, %bb.r ], [ 0, %bb.x ], [ 75, %bb.u ], [ 0, %bb.v ], [ 75, %bb.w ], [ 0, %bb.z ], [ 75, %bb.y ]
  %i.ak = insertvalue { ptr, i32 } poison, ptr %.sroa.041.1, 0
  %i.al = insertvalue { ptr, i32 } %i.ak, i32 %.sroa.13.1, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.n, %bb.m, %bb.k, %_ZZN5boost8charconv6detail10to_decimalIdNS1_22dragonbox_float_traitsIdEEJNS1_11policy_impl4sign6ignoreENS5_13trailing_zero6ignoreENS5_26decimal_to_binary_rounding15nearest_to_evenENS5_26binary_to_decimal_rounding7to_evenENS5_5cache4fullEEEEDaNS1_33dragonbox_signed_significand_bitsIT_T0_EEjDpT1_ENKUlSB_E_clESB_.exit
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.t, %_ZZN5boost8charconv6detail10to_decimalIdNS1_22dragonbox_float_traitsIdEEJNS1_11policy_impl4sign6ignoreENS5_13trailing_zero6ignoreENS5_26decimal_to_binary_rounding15nearest_to_evenENS5_26binary_to_decimal_rounding7to_evenENS5_5cache4fullEEEEDaNS1_33dragonbox_signed_significand_bitsIT_T0_EEjDpT1_ENKUlSB_E_clESB_.exit ], [ %i.w, %bb.k ], [ %i.aa, %bb.m ], [ %i.ac, %bb.n ], [ %i.al, %bb.aa ]
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: write, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !16}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"__int128", !5, i64 0}
!10 = !{!"bool", !5, i64 0}
!11 = !{!"_ZTSN5boost8charconv6detail3ryu20floating_decimal_128E", !9, i64 0, !6, i64 16, !10, i64 20}
!12 = !{!11, !9, i64 0}
!13 = !{!11, !6, i64 16}
!14 = !{!"long", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!11, !10, i64 20}
!18 = !{!9, !9, i64 0}
!19 = !{!10, !10, i64 0}
!20 = !{!5, !5, i64 0}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{!6, !6, i64 0}
!24 = !{!"_ZTSN5boost8charconv6detail33dragonbox_signed_significand_bitsIfNS1_22dragonbox_float_traitsIfEEEE", !6, i64 0}
!25 = !{!24, !6, i64 0}
!26 = distinct !{!26, !"_ZN5boost8charconv6detail3ryuL25generic_binary_to_decimalEojjb"}
!27 = distinct !{!27, !26, !"_ZN5boost8charconv6detail3ryuL25generic_binary_to_decimalEojjb: argument 0"}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = !{!27}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !16}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !16}
!57 = !{!"short", !5, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"_ZTSN5boost8charconv6detail24extended_cache_long_implILb1EE21multiplier_index_infoE", !57, i64 0, !57, i64 2}
!60 = !{!59, !57, i64 0}
!61 = !{!"_ZTSZN5boost8charconv6detail10to_decimalIfNS1_22dragonbox_float_traitsIfEEJEEEDaNS1_33dragonbox_signed_significand_bitsIT_T0_EEjDpT1_EUlNS1_11policy_impl26decimal_to_binary_rounding15nearest_to_evenEE_", !6, i64 0, !24, i64 4}
!62 = !{!61, !6, i64 0}
!63 = !{!"_ZTSZN5boost8charconv6detail10to_decimalIfNS1_22dragonbox_float_traitsIfEEJNS1_11policy_impl4sign6ignoreENS5_13trailing_zero6ignoreENS5_26decimal_to_binary_rounding15nearest_to_evenENS5_26binary_to_decimal_rounding7to_evenENS5_5cache4fullEEEEDaNS1_33dragonbox_signed_significand_bitsIT_T0_EEjDpT1_EUlSB_E_", !6, i64 0, !24, i64 4}
!64 = !{!63, !6, i64 0}
!65 = !{!"any pointer", !5, i64 0}
!66 = !{!"p1 long", !65, i64 0}
!67 = !{!"p1 int", !65, i64 0}
!68 = !{!"_ZTSZN5boost8charconv6detail5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcS7_NS0_12chars_formatEEUlvE0_", !66, i64 0, !67, i64 8, !66, i64 16, !67, i64 24, !67, i64 32}
!69 = !{!68, !66, i64 0}
!70 = !{i64 8}
!71 = !{!68, !67, i64 8}
!72 = !{i64 4}
!73 = !{!68, !66, i64 16}
!74 = !{!68, !67, i64 24}
!75 = !{!68, !67, i64 32}
!76 = distinct !{!76, !16}
!77 = distinct !{!77, !16}
end_hunk_5
