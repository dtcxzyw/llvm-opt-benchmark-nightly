Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/softfloat?download=true
inline.NumInlined: 1649
inline.NumDeleted: 185
begin_hunk_0_@parts64_addsub:bb.a
  %i.cl = or i64 %i.ch, %i.ck
  br label %frac64_shrjam.exit.i56

bb.ah:                                            ; preds = %bb.af
  %i.cm = icmp ne i64 %.sroa.28.0.copyload, 0
  %i.cn = zext i1 %i.cm to i64
  br label %frac64_shrjam.exit.i56

frac64_shrjam.exit.i56:                           ; preds = %bb.ag, %bb.ah, %bb.ac, %bb.ad, %bb.ae
  %.sroa.075.sroa.18206.2 = phi i32 [ %.sroa.075.sroa.18206.0.extract.trunc, %bb.ac ], [ %.sroa.075.sroa.18206.0.extract.trunc, %bb.ad ], [ %.sroa.075.sroa.18206.0.extract.trunc, %bb.ae ], [ %.sroa.0.sroa.10135.0.extract.trunc, %bb.ah ], [ %.sroa.0.sroa.10135.0.extract.trunc, %bb.ag ] ; 2 uses
  %.sroa.28.4 = phi i64 [ %.sroa.28.0.copyload, %bb.ac ], [ %.sroa.28.0.copyload, %bb.ad ], [ %.sroa.28.0.copyload, %bb.ae ], [ %i.cn, %bb.ah ], [ %i.cl, %bb.ag ]
  %.sroa.13.3 = phi i64 [ %i.ca, %bb.ac ], [ %i.cc, %bb.ad ], [ %.sroa.13.0.copyload, %bb.ae ], [ %.sroa.13.0.copyload, %bb.ah ], [ %.sroa.13.0.copyload, %bb.ag ]
  %i.co = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.sroa.28.4, i64 %.sroa.13.3) ; 2 uses
  %i.cp = extractvalue { i64, i1 } %i.co, 1
  %i.cq = extractvalue { i64, i1 } %i.co, 0       ; 3 uses
  br i1 %i.cp, label %bb.ai, label %parts64_add_normal.exit

bb.ai:                                            ; preds = %frac64_shrjam.exit.i56
  %i.cr = lshr i64 %i.cq, 1
  %i.cs = tail call i64 asm "shrd ${2:b}, $1, $0", "=r,r,{cx}i,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cq, i32 range(i32 1, -2147483646) 1, i64 0) #17, !srcloc !25
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = zext i1 %i.ct to i64
  %i.cv = or i64 %i.cr, %i.cu
  %i.cw = or disjoint i64 %i.cv, -9223372036854775808
  %i.cx = add i32 %.sroa.075.sroa.18206.2, 1
  br label %parts64_add_normal.exit

parts64_add_normal.exit:                          ; preds = %frac64_shrjam.exit.i56, %bb.ai
  %.sroa.075.sroa.18206.3 = phi i32 [ %i.cx, %bb.ai ], [ %.sroa.075.sroa.18206.2, %frac64_shrjam.exit.i56 ]
  %.sroa.28.5 = phi i64 [ %i.cw, %bb.ai ], [ %i.cq, %frac64_shrjam.exit.i56 ]
  %.sroa.075.sroa.18206.0.insert.ext215 = zext i32 %.sroa.075.sroa.18206.3 to i64
  %.sroa.075.sroa.18206.0.insert.shift216 = shl nuw i64 %.sroa.075.sroa.18206.0.insert.ext215, 32
  %i.cy = and i64 %i.m, 4294967295
  %.sroa.075.sroa.0.0.insert.insert148 = or disjoint i64 %.sroa.075.sroa.18206.0.insert.shift216, %i.cy
  %i.cz = insertvalue { i64, i64 } poison, i64 %.sroa.075.sroa.0.0.insert.insert148, 0
  %i.da = insertvalue { i64, i64 } %i.cz, i64 %.sroa.28.5, 1
  br label %bb.aq

bb.aj:                                            ; preds = %bb.z
  %i.db = icmp eq i32 %i.g, 2
  br i1 %i.db, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dc = insertvalue { i64, i64 } poison, i64 %i.m, 0
  %i.dd = insertvalue { i64, i64 } %i.dc, i64 %.sroa.28.0.copyload, 1
  br label %bb.aq

bb.al:                                            ; preds = %bb.aj
  %i.de = and i32 %i.g, 16
  %.not47 = icmp eq i32 %i.de, 0
  br i1 %.not47, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.075.sroa.14.0.insert.insert177 = and i64 %i.m, -256
  %.sroa.075.sroa.0.0.insert.insert154 = or disjoint i64 %.sroa.075.sroa.14.0.insert.insert177, 4
  %i.df = insertvalue { i64, i64 } poison, i64 %.sroa.075.sroa.0.0.insert.insert154, 0
  %i.dg = insertvalue { i64, i64 } %i.df, i64 %.sroa.28.0.copyload, 1
  br label %bb.aq

bb.an:                                            ; preds = %bb.al, %bb.t
  %i.dh = and i32 %i.g, 2
  %.not49 = icmp eq i32 %i.dh, 0
  %i.di = and i32 %i.g, 12
  %.not50 = icmp eq i32 %i.di, 0
  %or.cond = or i1 %.not49, %.not50
  br i1 %or.cond, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 618, ptr noundef nonnull @__PRETTY_FUNCTION__.parts64_addsub) #15
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.dj = icmp eq i8 %.sroa.0.sroa.0.0.extract.trunc, 1 ; 2 uses
  %.sroa.12.0 = select i1 %i.dj, i64 %.sroa.28.0.copyload, i64 %.sroa.13.0.copyload
  %.sroa.0.sroa.8.0.insert.shift128 = select i1 %i.p, i64 256, i64 0
  %i.dk = and i64 %i.n, -65281
  %.sroa.0.sroa.0.0.insert.insert126 = or disjoint i64 %i.dk, %.sroa.0.sroa.8.0.insert.shift128
  %.sroa.0.0 = select i1 %i.dj, i64 %i.m, i64 %.sroa.0.sroa.0.0.insert.insert126
  %i.dl = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.dm = insertvalue { i64, i64 } %i.dl, i64 %.sroa.12.0, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.q, %bb.s, %bb.v, %bb.x, %bb.y, %parts64_add_normal.exit, %bb.ak, %bb.am, %bb.ap, %bb.b
  %.fca.1.insert.merged = phi { i64, i64 } [ %i.i, %bb.b ], [ %i.bc, %bb.q ], [ %i.bh, %bb.s ], [ %i.bm, %bb.v ], [ %i.bo, %bb.x ], [ %i.br, %bb.y ], [ %i.dm, %bb.ap ], [ %i.da, %parts64_add_normal.exit ], [ %i.dd, %bb.ak ], [ %i.dg, %bb.am ]
  ret { i64, i64 } %.fca.1.insert.merged
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local { i64, i64 } @parts64_mul(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = zext nneg i8 %i.a to i32
  %i.c = shl nuw i32 1, %i.b
  %i.d = load i8, ptr %1, align 8
  %i.e = zext nneg i8 %i.d to i32
  %i.f = shl nuw i32 1, %i.e
  %i.g = or i32 %i.f, %i.c                        ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !19, !noundef !20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !19, !noundef !20
  %i.l = icmp ne i8 %i.i, %i.k
  %i.m = zext i1 %i.l to i8                       ; 3 uses
  %i.n = and i32 %i.g, -13
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.b, label %bb.d, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.r, %i.p
  %.not.i36 = icmp samesign ult i32 %i.g, 8
  br i1 %.not.i36, label %record_denormals_used.exit, label %bb.c, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %2, align 4
  %i.u = or i64 %i.t, 16384
  store i64 %i.u, ptr %2, align 4
  br label %record_denormals_used.exit

record_denormals_used.exit:                       ; preds = %bb.b, %bb.c
  %i.v = getelementptr i8, ptr %0, i64 8
  %.val32 = load i64, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %1, i64 8
  %.val33 = load i64, ptr %i.w, align 8
  %i.x = zext i64 %.val32 to i128
  %i.y = zext i64 %.val33 to i128
  %i.z = mul nuw i128 %i.y, %i.x                  ; 4 uses
  %i.aa = trunc i128 %i.z to i64
  %i.ab = lshr i128 %i.z, 64
  %i.ac = trunc nuw i128 %i.ab to i64
  %i.ad = icmp ne i64 %i.aa, 0
  %i.ae = zext i1 %i.ad to i64
  %i.af = or i64 %i.ae, %i.ac
  %.not30 = icmp sgt i128 %i.z, -1
  %.lobit = lshr i128 %i.z, 127
  %i.ag = trunc nuw nsw i128 %.lobit to i32
  %.sroa.039.sroa.13.0 = add i32 %i.s, %i.ag
  %i.ah = zext i1 %.not30 to i64
  %.sroa.18.0 = shl nuw i64 %i.af, %i.ah
  %i.ai = zext i32 %.sroa.039.sroa.13.0 to i64
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.aj = icmp eq i32 %i.g, 18
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !27

bb.e:                                             ; preds = %bb.d
  %i.ak = load i64, ptr %2, align 4
  %i.al = or i64 %i.ak, 257
  store i64 %i.al, ptr %2, align 4
  %i.am = tail call { i64, i64 } @parts64_default_nan(ptr noundef nonnull %2) ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.am, 0      ; 4 uses
  %.sroa.039.sroa.7.0.extract.shift = lshr i64 %i.an, 8
  %.sroa.039.sroa.7.0.extract.trunc = trunc i64 %.sroa.039.sroa.7.0.extract.shift to i8
  %.sroa.039.sroa.13.0.extract.shift = lshr i64 %i.an, 32
  %i.ao = extractvalue { i64, i64 } %i.am, 1
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.ap = and i32 %i.g, 96
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.h, label %bb.g, !prof !24

bb.g:                                             ; preds = %bb.f
  %i.aq = tail call { i64, i64 } @parts64_pick_nan(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) ; 2 uses
  %i.ar = extractvalue { i64, i64 } %i.aq, 0      ; 4 uses
  %.sroa.039.sroa.7.0.extract.shift52 = lshr i64 %i.ar, 8
  %.sroa.039.sroa.7.0.extract.trunc53 = trunc i64 %.sroa.039.sroa.7.0.extract.shift52 to i8
  %.sroa.039.sroa.13.0.extract.shift56 = lshr i64 %i.ar, 32
  %i.as = extractvalue { i64, i64 } %i.aq, 1
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.at = and i32 %i.g, 8
  %.not.i37 = icmp eq i32 %i.at, 0
  br i1 %.not.i37, label %record_denormals_used.exit38, label %bb.i, !prof !24

bb.i:                                             ; preds = %bb.h
  %i.au = load i64, ptr %2, align 4
  %i.av = or i64 %i.au, 16384
  store i64 %i.av, ptr %2, align 4
  br label %record_denormals_used.exit38

record_denormals_used.exit38:                     ; preds = %bb.h, %bb.i
  %i.aw = and i32 %i.g, 16
  %.not27 = icmp eq i32 %i.aw, 0
  br i1 %.not27, label %bb.j, label %bb.l

bb.j:                                             ; preds = %record_denormals_used.exit38
  %i.ax = and i32 %i.g, 2
  %.not28 = icmp eq i32 %i.ax, 0
  br i1 %.not28, label %bb.k, label %bb.l, !prof !27

bb.k:                                             ; preds = %bb.j
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 671, ptr noundef nonnull @__func__.parts64_mul, ptr noundef nonnull @.str.5) #15
  unreachable

bb.l:                                             ; preds = %record_denormals_used.exit, %bb.j, %record_denormals_used.exit38, %bb.g, %bb.e
  %.sroa.039.sroa.0.0 = phi i64 [ %i.ar, %bb.g ], [ %i.an, %bb.e ], [ 4, %record_denormals_used.exit38 ], [ 2, %record_denormals_used.exit ], [ 1, %bb.j ]
  %.sroa.039.sroa.7.0 = phi i8 [ %.sroa.039.sroa.7.0.extract.trunc53, %bb.g ], [ %.sroa.039.sroa.7.0.extract.trunc, %bb.e ], [ %i.m, %record_denormals_used.exit38 ], [ %i.m, %record_denormals_used.exit ], [ %i.m, %bb.j ]
  %.sroa.039.sroa.10.0 = phi i64 [ %i.ar, %bb.g ], [ %i.an, %bb.e ], [ 0, %record_denormals_used.exit38 ], [ 0, %record_denormals_used.exit ], [ 0, %bb.j ]
  %.sroa.039.sroa.13.1 = phi i64 [ %.sroa.039.sroa.13.0.extract.shift56, %bb.g ], [ %.sroa.039.sroa.13.0.extract.shift, %bb.e ], [ 0, %record_denormals_used.exit38 ], [ %i.ai, %record_denormals_used.exit ], [ 0, %bb.j ]
  %.sroa.18.1 = phi i64 [ %i.as, %bb.g ], [ %i.ao, %bb.e ], [ 0, %record_denormals_used.exit38 ], [ %.sroa.18.0, %record_denormals_used.exit ], [ 0, %bb.j ]
  %.sroa.039.sroa.13.0.insert.shift = shl nuw i64 %.sroa.039.sroa.13.1, 32
  %.sroa.039.sroa.10.0.insert.ext = and i64 %.sroa.039.sroa.10.0, 4294901760
  %.sroa.039.sroa.10.0.insert.insert = or disjoint i64 %.sroa.039.sroa.13.0.insert.shift, %.sroa.039.sroa.10.0.insert.ext
  %.sroa.039.sroa.7.0.insert.ext = zext i8 %.sroa.039.sroa.7.0 to i64
  %.sroa.039.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.039.sroa.7.0.insert.ext, 8
  %.sroa.039.sroa.7.0.insert.insert = or disjoint i64 %.sroa.039.sroa.10.0.insert.insert, %.sroa.039.sroa.7.0.insert.shift
  %.sroa.039.sroa.0.0.insert.ext = and i64 %.sroa.039.sroa.0.0, 255
  %.sroa.039.sroa.0.0.insert.insert = or disjoint i64 %.sroa.039.sroa.7.0.insert.insert, %.sroa.039.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.039.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.18.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local { i64, i64 } @parts64_muladd(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.FloatParts128, align 8      ; 10 uses
  %6 = alloca %struct.FloatParts128, align 8      ; 10 uses
  %i.a = load i8, ptr %0, align 8
  %i.b = zext nneg i8 %i.a to i32
  %i.c = shl nuw i32 1, %i.b
  %i.d = load i8, ptr %1, align 8
  %i.e = zext nneg i8 %i.d to i32
  %i.f = shl nuw i32 1, %i.e
  %i.g = or i32 %i.f, %i.c                        ; 6 uses
  %i.h = load i8, ptr %2, align 8
  %i.i = zext nneg i8 %i.h to i32
  %i.j = shl nuw i32 1, %i.i                      ; 6 uses
  %i.k = or i32 %i.g, %i.j                        ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !19, !noundef !20
  %i.n = zext nneg i8 %i.m to i32
  %i.o = and i32 %3, 1
  %i.p = icmp ne i32 %i.o, %i.n                   ; 4 uses
  %i.q = zext i1 %i.p to i8                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.s = load i8, ptr %i.r, align 1, !range !19, !noundef !20
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !19, !noundef !20
  %i.v = xor i8 %i.u, %i.s
  %i.w = zext nneg i8 %i.v to i32
  %i.x = lshr i32 %3, 1
  %.lobit = and i32 %i.x, 1
  %i.y = icmp ne i32 %.lobit, %i.w                ; 4 uses
  %i.z = zext i1 %i.y to i8                       ; 4 uses
  %i.aa = and i32 %i.j, -15
  %.masked = and i32 %i.g, -13
  %i.ab = or i32 %.masked, %i.aa
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.b, label %bb.j, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.ac = and i32 %i.k, 8
  %.not.i73 = icmp eq i32 %i.ac, 0
  br i1 %.not.i73, label %record_denormals_used.exit, label %bb.c, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.ad = load i64, ptr %4, align 4
  %i.ae = or i64 %i.ad, 16384
  store i64 %i.ae, ptr %4, align 4
  br label %record_denormals_used.exit

record_denormals_used.exit:                       ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  store i64 0, ptr %5, align 8
  store i8 %i.z, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = add i32 %i.ak, %i.ai                    ; 3 uses
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.ag, align 4
  %i.an = getelementptr i8, ptr %0, i64 8
  %.val68 = load i64, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %1, i64 8
  %.val69 = load i64, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ar = zext i64 %.val68 to i128
  %i.as = zext i64 %.val69 to i128
  %i.at = mul nuw i128 %i.as, %i.ar               ; 3 uses
  %i.au = trunc i128 %i.at to i64                 ; 4 uses
  store i64 %i.au, ptr %i.ap, align 8
  %i.av = lshr i128 %i.at, 64
  %i.aw = trunc nuw i128 %i.av to i64             ; 3 uses
  store i64 %i.aw, ptr %i.aq, align 8
  %.not64 = icmp sgt i128 %i.at, -1
  br i1 %.not64, label %bb.d, label %bb.e

bb.d:                                             ; preds = %record_denormals_used.exit
  %i.ax = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.au, i64 %i.au) ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 1
  %i.az = extractvalue { i64, i1 } %i.ax, 0       ; 2 uses
  store i64 %i.az, ptr %i.ap, align 8
  %i.ba = zext i1 %i.ay to i64
  %i.bb = shl nuw i64 %i.aw, 1
  %i.bc = or disjoint i64 %i.bb, %i.ba            ; 2 uses
  store i64 %i.bc, ptr %i.aq, align 8
  store i32 %i.al, ptr %i.ag, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %record_denormals_used.exit
  %.val71111 = phi i64 [ %i.az, %bb.d ], [ %i.au, %record_denormals_used.exit ]
  %.val70109 = phi i64 [ %i.bc, %bb.d ], [ %i.aw, %record_denormals_used.exit ]
  %i.bd = phi i32 [ %i.al, %bb.d ], [ %i.am, %record_denormals_used.exit ]
  %i.be = and i32 %i.j, 2
  %.not65 = icmp eq i32 %i.be, 0
  br i1 %.not65, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i64 0, ptr %6, align 8
  store i8 %i.q, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bi = load i32, ptr %i.bh, align 4
  store i32 %i.bi, ptr %i.bg, align 4
  %i.bj = getelementptr i8, ptr %2, i64 8
  %.val72 = load i64, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.val72, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.bl, align 8
  %i.bm = xor i1 %i.p, %i.y
  br i1 %i.bm, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call fastcc void @parts128_add_normal(ptr noundef %5, ptr noundef %6)
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.bn = call fastcc zeroext i1 @parts128_sub_normal(ptr noundef %5, ptr noundef %6)
  br i1 %i.bn, label %.thread, label %.thread101

.thread:                                          ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %.pre = load i8, ptr %i.af, align 1, !range !19
  %.pre107 = load i32, ptr %i.ag, align 4
  %.val70.pre = load i64, ptr %i.aq, align 8
  %.val71.pre = load i64, ptr %i.ap, align 8
  br label %bb.i

.thread101:                                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.v

bb.i:                                             ; preds = %bb.e, %.thread
  %.val71 = phi i64 [ %.val71111, %bb.e ], [ %.val71.pre, %.thread ]
  %.val70 = phi i64 [ %.val70109, %bb.e ], [ %.val70.pre, %.thread ]
  %i.bo = phi i32 [ %i.bd, %bb.e ], [ %.pre107, %.thread ]
  %i.bp = phi i8 [ %i.z, %bb.e ], [ %.pre, %.thread ]
  %i.bq = icmp ne i64 %.val71, 0
  %i.br = zext i1 %i.bq to i64
  %i.bs = or i64 %.val70, %i.br
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.bt = zext i32 %i.bo to i64
  br label %record_denormals_used.exit75

bb.j:                                             ; preds = %bb.a
  %i.bu = and i32 %i.k, 96
  %.not = icmp eq i32 %i.bu, 0
  br i1 %.not, label %bb.l, label %bb.k, !prof !24

bb.k:                                             ; preds = %bb.j
  %i.bv = tail call fastcc { i64, i64 } @parts64_pick_nan_muladd(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %4, i32 noundef %i.g, i32 noundef %i.k) ; 2 uses
  %i.bw = extractvalue { i64, i64 } %i.bv, 0      ; 4 uses
  %.sroa.0.sroa.9.0.extract.shift = lshr i64 %i.bw, 8
  %.sroa.0.sroa.9.0.extract.trunc = trunc i64 %.sroa.0.sroa.9.0.extract.shift to i8
  %.sroa.0.sroa.16.0.extract.shift = lshr i64 %i.bw, 32
  %i.bx = extractvalue { i64, i64 } %i.bv, 1
  br label %record_denormals_used.exit75

bb.l:                                             ; preds = %bb.j
  %i.by = icmp eq i32 %i.g, 18
  br i1 %i.by, label %bb.w, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.bz = and i32 %i.g, 16
  %.not58 = icmp eq i32 %i.bz, 0
  br i1 %.not58, label %bb.q, label %bb.n, !prof !24

bb.n:                                             ; preds = %bb.m
  %i.ca = and i32 %i.j, 16
  %.not62 = icmp ne i32 %i.ca, 0
  %i.cb = xor i1 %i.p, %i.y
  %or.cond = select i1 %.not62, i1 %i.cb, i1 false
  br i1 %or.cond, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = and i32 %i.k, 8
  %.not.i74 = icmp eq i32 %i.cc, 0
  br i1 %.not.i74, label %record_denormals_used.exit75, label %bb.p, !prof !24

bb.p:                                             ; preds = %bb.o
  %i.cd = load i64, ptr %4, align 4
end_hunk_0
begin_hunk_1_@floatx80_addsub:bb.a
bb.am:                                            ; preds = %bb.al
  store i8 4, ptr %7, align 8, !noalias !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  br label %bb.as

bb.an:                                            ; preds = %bb.al, %bb.ab
  %i.bo = and i32 %i.ap, 2
  %.not25.i = icmp eq i32 %i.bo, 0
  %i.bp = and i32 %i.ap, 12
  %.not26.i = icmp eq i32 %i.bp, 0
  %or.cond.i = or i1 %.not25.i, %.not26.i
  br i1 %or.cond.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 618, ptr noundef nonnull @__PRETTY_FUNCTION__.parts128_addsub) #15, !noalias !63
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.bq = load i8, ptr %8, align 8, !noalias !63
  %i.br = icmp eq i8 %i.bq, 1
  br i1 %i.br, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.af, %bb.ad, %.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16, !noalias !63
  br label %parts128_addsub.exit

parts128_addsub.exit:                             ; preds = %bb.u, %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %.val30 = load i64, ptr %4, align 4             ; 3 uses
  %i.bs = lshr i64 %.val30, 19
  %i.bt = and i64 %i.bs, 3
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr @floatx80_params, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %9, align 8
  switch i8 %i.bv, label %bb.az [
    i8 2, label %bb.at
    i8 3, label %bb.at
    i8 4, label %bb.ax
    i8 1, label %floatx80_round_pack_canonical.exit
    i8 6, label %bb.ay
    i8 5, label %bb.ay
  ]

bb.at:                                            ; preds = %parts128_addsub.exit, %parts128_addsub.exit
  %i.bw = and i64 %.val30, 1572864
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call fastcc void @parts128_uncanon_normal(ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %i.bu)
  %i.by = load i64, ptr %.sroa.5.0..sroa_idx.i15, align 8
  %i.bz = load i32, ptr %.sroa.4.0..sroa_idx.i14, align 4
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i64 0, ptr %6, align 8, !annotation !49
  %i.ca = load i8, ptr %.sroa.2.0..sroa_idx.i12, align 1, !range !19, !noundef !20
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = load i32, ptr %.sroa.4.0..sroa_idx.i14, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 %i.cc, ptr %i.cd, align 4
  %.val25 = load i64, ptr %.sroa.5.0..sroa_idx.i15, align 8
  %.val26 = load i64, ptr %.sroa.6.0..sroa_idx.i16, align 8
  %i.ce = icmp ne i64 %.val26, 0
  %i.cf = zext i1 %i.ce to i64
  %i.cg = or i64 %.val25, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.cg, ptr %i.ch, align 8
  call fastcc void @parts64_uncanon_normal(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %i.bu, i1 noundef zeroext false)
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = load i32, ptr %i.cd, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.021.i = phi i64 [ %i.by, %bb.au ], [ %i.ci, %bb.av ]
  %.0.i22 = phi i32 [ %i.bz, %bb.au ], [ %i.cj, %bb.av ] ; 2 uses
  %.not.i23 = icmp eq i32 %.0.i22, 32767
  br i1 %.not.i23, label %._crit_edge, label %floatx80_round_pack_canonical.exit

._crit_edge:                                      ; preds = %bb.aw
  %.val.pre = load i64, ptr %4, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge, %parts128_addsub.exit
  %.val = phi i64 [ %.val.pre, %._crit_edge ], [ %.val30, %parts128_addsub.exit ]
  %i.ck = shl i64 %.val, 12
  %i.cl = and i64 %i.ck, -9223372036854775808
  %i.cm = xor i64 %i.cl, -9223372036854775808
  br label %floatx80_round_pack_canonical.exit

bb.ay:                                            ; preds = %parts128_addsub.exit, %parts128_addsub.exit
  %i.cn = load i64, ptr %.sroa.5.0..sroa_idx.i15, align 8
  %i.co = or i64 %i.cn, -9223372036854775808
  br label %floatx80_round_pack_canonical.exit

bb.az:                                            ; preds = %parts128_addsub.exit
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 1586, ptr noundef nonnull @__func__.floatx80_round_pack_canonical, ptr noundef null) #15
  unreachable

floatx80_round_pack_canonical.exit:               ; preds = %parts128_addsub.exit, %bb.aw, %bb.ax, %bb.ay
  %.122.i = phi i64 [ %.021.i, %bb.aw ], [ %i.cm, %bb.ax ], [ %i.co, %bb.ay ], [ 0, %parts128_addsub.exit ]
  %.1.i20 = phi i32 [ %.0.i22, %bb.aw ], [ 32767, %bb.ax ], [ 32767, %bb.ay ], [ 0, %parts128_addsub.exit ]
  %i.cp = load i8, ptr %.sroa.2.0..sroa_idx.i12, align 1, !range !19, !noundef !20
  %i.cq = zext nneg i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 15
  %i.cs = add i32 %i.cr, %.1.i20
  %i.ct = trunc i32 %i.cs to i16
  br label %bb.ba

bb.ba:                                            ; preds = %floatx80_round_pack_canonical.exit, %parts64_default_nan.exit
  %.122.i.pn = phi i64 [ %.122.i, %floatx80_round_pack_canonical.exit ], [ %i.ah, %parts64_default_nan.exit ]
  %.pn69 = phi i16 [ %i.ct, %floatx80_round_pack_canonical.exit ], [ %i.ai, %parts64_default_nan.exit ]
  %.fca.0.insert.i50.pn = insertvalue { i64, i16 } poison, i64 %.122.i.pn, 0
  %.pn = insertvalue { i64, i16 } %.fca.0.insert.i50.pn, i16 %.pn69, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  ret { i64, i16 } %.pn
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local { i64, i16 } @floatx80_sub(i64 %0, i16 %1, i64 %2, i16 %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc { i64, i16 } @floatx80_addsub(i64 %0, i16 %1, i64 %2, i16 %3, ptr noundef %4, i1 noundef zeroext true)
  ret { i64, i16 } %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i16 @float16_mul(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FloatParts64, align 8       ; 6 uses
  %4 = alloca %struct.FloatParts64, align 8       ; 6 uses
  %5 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %6 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %7 = alloca %struct.FloatParts64, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = zext i16 %0 to i64                       ; 2 uses
  %.not.i.i = icmp sgt i16 %0, -1
  %i.b = and i64 %i.a, 1023
  %i.c = shl nuw nsw i64 %i.a, 22
  %.sroa.4.0.insert.ext.i.i = and i64 %i.c, 133143986176
  %.sroa.2.0.insert.shift.i.i = select i1 %.not.i.i, i64 0, i64 256
  %.sroa.2.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  store i64 %.sroa.2.0.insert.insert.i.i, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.b, ptr %i.d, align 8
  call fastcc void @parts64_canonicalize(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @float16_params)
  %.fca.0.load.i10 = load i64, ptr %4, align 8    ; 4 uses
  %.fca.1.load.i12 = load i64, ptr %i.d, align 8  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %.fca.0.load.i10, ptr %5, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.fca.1.load.i12, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.f = zext i16 %1 to i64                       ; 2 uses
  %.not.i.i14 = icmp sgt i16 %1, -1
  %i.g = and i64 %i.f, 1023
  %i.h = shl nuw nsw i64 %i.f, 22
  %.sroa.4.0.insert.ext.i.i15 = and i64 %i.h, 133143986176
  %.sroa.2.0.insert.shift.i.i16 = select i1 %.not.i.i14, i64 0, i64 256
  %.sroa.2.0.insert.insert.i.i17 = or disjoint i64 %.sroa.4.0.insert.ext.i.i15, %.sroa.2.0.insert.shift.i.i16
  store i64 %.sroa.2.0.insert.insert.i.i17, ptr %3, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.i, align 8
  call fastcc void @parts64_canonicalize(ptr noundef %3, ptr noundef %2, ptr noundef nonnull @float16_params)
  %.fca.0.load.i18 = load i64, ptr %3, align 8    ; 4 uses
  %.fca.1.load.i20 = load i64, ptr %i.i, align 8  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store i64 %.fca.0.load.i18, ptr %6, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.fca.1.load.i20, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.k = trunc i64 %.fca.0.load.i10 to i32
  %i.l = and i32 %i.k, 255
  %i.m = shl nuw i32 1, %i.l
  %i.n = trunc i64 %.fca.0.load.i18 to i32
  %i.o = and i32 %i.n, 255
  %i.p = shl nuw i32 1, %i.o
  %i.q = or i32 %i.p, %i.m                        ; 7 uses
  %i.r = lshr i64 %.fca.0.load.i10, 8
  %i.s = trunc i64 %i.r to i8
  %i.t = lshr i64 %.fca.0.load.i18, 8
  %i.u = trunc i64 %i.t to i8
  %i.v = icmp ne i8 %i.s, %i.u
  %i.w = zext i1 %i.v to i8                       ; 3 uses
  %i.x = and i32 %i.q, -13
  %.not.i22 = icmp eq i32 %i.x, 0
  br i1 %.not.i22, label %bb.b, label %bb.d, !prof !24

bb.b:                                             ; preds = %bb.a
  %8 = lshr i64 %.fca.0.load.i18, 32
  %9 = lshr i64 %.fca.0.load.i10, 32
  %10 = add nuw nsw i64 %8, %9
  %.not.i23 = icmp samesign ult i32 %i.q, 8
  br i1 %.not.i23, label %record_denormals_used.exit, label %bb.c, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.y = load i64, ptr %2, align 4
  %i.z = or i64 %i.y, 16384
  store i64 %i.z, ptr %2, align 4
  br label %record_denormals_used.exit

record_denormals_used.exit:                       ; preds = %bb.b, %bb.c
  %i.aa = zext i64 %.fca.1.load.i12 to i128
  %i.ab = zext i64 %.fca.1.load.i20 to i128
  %i.ac = mul nuw i128 %i.ab, %i.aa               ; 4 uses
  %i.ad = trunc i128 %i.ac to i64
  %i.ae = lshr i128 %i.ac, 64
  %i.af = trunc nuw i128 %i.ae to i64
  %i.ag = icmp ne i64 %i.ad, 0
  %i.ah = zext i1 %i.ag to i64
  %i.ai = or i64 %i.ah, %i.af
  %.not30.i = icmp sgt i128 %i.ac, -1
  %.lobit = lshr i128 %i.ac, 127
  %i.aj = trunc nuw nsw i128 %.lobit to i64
  %.sroa.026.sroa.15.0 = add nuw nsw i64 %10, %i.aj
  %i.ak = zext i1 %.not30.i to i64
  %.sroa.20.0 = shl nuw i64 %i.ai, %i.ak
  %i.al = and i64 %.sroa.026.sroa.15.0, 4294967295
  br label %parts64_mul.exit

bb.d:                                             ; preds = %bb.a
  %i.am = icmp eq i32 %i.q, 18
  br i1 %i.am, label %bb.e, label %bb.f, !prof !27

bb.e:                                             ; preds = %bb.d
  %i.an = load i64, ptr %2, align 4
  %i.ao = or i64 %i.an, 257
  store i64 %i.ao, ptr %2, align 4
  %i.ap = tail call { i64, i64 } @parts64_default_nan(ptr noundef nonnull %2) ; 2 uses
  %i.aq = extractvalue { i64, i64 } %i.ap, 0      ; 4 uses
  %.sroa.026.sroa.9.0.extract.shift39 = lshr i64 %i.aq, 8
  %.sroa.026.sroa.9.0.extract.trunc40 = trunc i64 %.sroa.026.sroa.9.0.extract.shift39 to i8
  %.sroa.026.sroa.15.0.extract.shift43 = lshr i64 %i.aq, 32
  %i.ar = extractvalue { i64, i64 } %i.ap, 1
  br label %parts64_mul.exit

bb.f:                                             ; preds = %bb.d
  %i.as = and i32 %i.q, 96
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !24

bb.g:                                             ; preds = %bb.f
  %i.at = call { i64, i64 } @parts64_pick_nan(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2) ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.at, 0      ; 4 uses
  %.sroa.026.sroa.9.0.extract.shift = lshr i64 %i.au, 8
  %.sroa.026.sroa.9.0.extract.trunc = trunc i64 %.sroa.026.sroa.9.0.extract.shift to i8
  %.sroa.026.sroa.15.0.extract.shift = lshr i64 %i.au, 32
  %i.av = extractvalue { i64, i64 } %i.at, 1
  br label %parts64_mul.exit

bb.h:                                             ; preds = %bb.f
  %i.aw = and i32 %i.q, 8
  %.not.i24 = icmp eq i32 %i.aw, 0
  br i1 %.not.i24, label %record_denormals_used.exit25, label %bb.i, !prof !24

bb.i:                                             ; preds = %bb.h
  %i.ax = load i64, ptr %2, align 4
  %i.ay = or i64 %i.ax, 16384
  store i64 %i.ay, ptr %2, align 4
  br label %record_denormals_used.exit25

record_denormals_used.exit25:                     ; preds = %bb.h, %bb.i
  %i.az = and i32 %i.q, 16
  %.not27.i = icmp eq i32 %i.az, 0
  br i1 %.not27.i, label %bb.j, label %parts64_mul.exit

bb.j:                                             ; preds = %record_denormals_used.exit25
  %i.ba = and i32 %i.q, 2
  %.not28.i = icmp eq i32 %i.ba, 0
  br i1 %.not28.i, label %bb.k, label %parts64_mul.exit, !prof !27

bb.k:                                             ; preds = %bb.j
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 671, ptr noundef nonnull @__func__.parts64_mul, ptr noundef nonnull @.str.5) #15
  unreachable

parts64_mul.exit:                                 ; preds = %record_denormals_used.exit, %bb.j, %record_denormals_used.exit25, %bb.e, %bb.g
  %.sroa.026.sroa.0.0 = phi i64 [ %i.au, %bb.g ], [ %i.aq, %bb.e ], [ 4, %record_denormals_used.exit25 ], [ 2, %record_denormals_used.exit ], [ 1, %bb.j ]
  %.sroa.026.sroa.9.0 = phi i8 [ %.sroa.026.sroa.9.0.extract.trunc, %bb.g ], [ %.sroa.026.sroa.9.0.extract.trunc40, %bb.e ], [ %i.w, %record_denormals_used.exit25 ], [ %i.w, %record_denormals_used.exit ], [ %i.w, %bb.j ]
  %.sroa.026.sroa.12.0 = phi i64 [ %i.au, %bb.g ], [ %i.aq, %bb.e ], [ 0, %record_denormals_used.exit25 ], [ 0, %record_denormals_used.exit ], [ 0, %bb.j ]
  %.sroa.026.sroa.15.1 = phi i64 [ %.sroa.026.sroa.15.0.extract.shift, %bb.g ], [ %.sroa.026.sroa.15.0.extract.shift43, %bb.e ], [ 0, %record_denormals_used.exit25 ], [ %i.al, %record_denormals_used.exit ], [ 0, %bb.j ]
  %.sroa.20.1 = phi i64 [ %i.av, %bb.g ], [ %i.ar, %bb.e ], [ 0, %record_denormals_used.exit25 ], [ %.sroa.20.0, %record_denormals_used.exit ], [ 0, %bb.j ]
  %.sroa.026.sroa.15.0.insert.shift = shl nuw i64 %.sroa.026.sroa.15.1, 32
  %.sroa.026.sroa.12.0.insert.ext = and i64 %.sroa.026.sroa.12.0, 4294901760
  %.sroa.026.sroa.12.0.insert.insert = or disjoint i64 %.sroa.026.sroa.15.0.insert.shift, %.sroa.026.sroa.12.0.insert.ext
  %.sroa.026.sroa.9.0.insert.ext = zext i8 %.sroa.026.sroa.9.0 to i64
  %.sroa.026.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.026.sroa.9.0.insert.ext, 8
  %.sroa.026.sroa.9.0.insert.insert = or disjoint i64 %.sroa.026.sroa.12.0.insert.insert, %.sroa.026.sroa.9.0.insert.shift
  %.sroa.026.sroa.0.0.insert.ext = and i64 %.sroa.026.sroa.0.0, 255
  %.sroa.026.sroa.0.0.insert.insert = or disjoint i64 %.sroa.026.sroa.9.0.insert.insert, %.sroa.026.sroa.0.0.insert.ext
  store i64 %.sroa.026.sroa.0.0.insert.insert, ptr %7, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.sroa.20.1, ptr %i.bb, align 8
  call fastcc void @parts64_uncanon(ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull @float16_params, i1 noundef zeroext false)
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !range !19, !noundef !20
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 15
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = shl i32 %i.bh, 10
  %i.bj = and i32 %i.bi, 31744
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = or disjoint i64 %i.bf, %i.bk
  %i.bm = load i64, ptr %i.bb, align 8
  %i.bn = and i64 %i.bm, 1023
  %i.bo = or disjoint i64 %i.bl, %i.bn
  %i.bp = trunc nuw i64 %i.bo to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i16 %i.bp
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @float32_mul(i32 noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %2, align 4               ; 5 uses
  %i.a = and i64 %.val, 458768
  %i.b = icmp eq i64 %i.a, 16
  br i1 %i.b, label %bb.b, label %f32_is_zon2.exit.thread, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %.val, 4194304
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %float32_input_flush2.exit, label %bb.c, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %0, 2139095040
  %i.e = icmp eq i32 %i.d, 0
  %i.f = and i32 %0, 8388607
  %i.g = icmp ne i32 %i.f, 0
  %i.h = and i1 %i.e, %i.g                        ; 2 uses
  br i1 %i.h, label %bb.d, label %float32_input_flush__nocheck.exit.i, !prof !27

bb.d:                                             ; preds = %bb.c
  %.lobit.i.i = and i32 %0, -2147483648
  %i.i = or i64 %.val, 32
  br label %float32_input_flush__nocheck.exit.i

float32_input_flush__nocheck.exit.i:              ; preds = %bb.d, %bb.c
  %i.j = phi i64 [ %i.i, %bb.d ], [ %.val, %bb.c ] ; 2 uses
  %.sroa.05.1 = phi i32 [ %.lobit.i.i, %bb.d ], [ %0, %bb.c ] ; 2 uses
  %i.k = and i32 %1, 2139095040
  %i.l = icmp eq i32 %i.k, 0
  %i.m = and i32 %1, 8388607
  %i.n = icmp ne i32 %i.m, 0
  %i.o = and i1 %i.l, %i.n                        ; 2 uses
  br i1 %i.o, label %bb.e, label %float32_input_flush2.exitcondstore.split, !prof !27

bb.e:                                             ; preds = %float32_input_flush__nocheck.exit.i
  %.lobit.i5.i = and i32 %1, -2147483648
  %i.p = or i64 %i.j, 32
  br label %float32_input_flush2.exitcondstore.split

float32_input_flush2.exitcondstore.split:         ; preds = %float32_input_flush__nocheck.exit.i, %bb.e
  %.ph = phi i64 [ %i.j, %float32_input_flush__nocheck.exit.i ], [ %i.p, %bb.e ] ; 3 uses
  %.sroa.0.1.ph = phi i32 [ %1, %float32_input_flush__nocheck.exit.i ], [ %.lobit.i5.i, %bb.e ] ; 2 uses
  %i.q = or i1 %i.h, %i.o
  br i1 %i.q, label %bb.f, label %float32_input_flush2.exit, !prof !66

bb.f:                                             ; preds = %float32_input_flush2.exitcondstore.split
  store i64 %.ph, ptr %2, align 4
  br label %float32_input_flush2.exit

float32_input_flush2.exit:                        ; preds = %bb.f, %float32_input_flush2.exitcondstore.split, %bb.b
  %i.r = phi i64 [ %.val, %bb.b ], [ %.ph, %float32_input_flush2.exitcondstore.split ], [ %.ph, %bb.f ]
  %.sroa.05.2 = phi i32 [ %0, %bb.b ], [ %.sroa.05.1, %float32_input_flush2.exitcondstore.split ], [ %.sroa.05.1, %bb.f ] ; 7 uses
  %.sroa.0.1 = phi i32 [ %1, %bb.b ], [ %.sroa.0.1.ph, %float32_input_flush2.exitcondstore.split ], [ %.sroa.0.1.ph, %bb.f ] ; 7 uses
  %i.s = lshr i32 %.sroa.05.2, 23
  %i.t = add nuw nsw i32 %i.s, 1
  %i.u = and i32 %i.t, 254
  %i.v = icmp ne i32 %i.u, 0
  %i.w = and i32 %.sroa.05.2, 2147483647
  %i.x = icmp eq i32 %i.w, 0
  %i.y = or i1 %i.x, %i.v
  br i1 %i.y, label %f32_is_zon2.exit, label %f32_is_zon2.exit.thread, !prof !50

f32_is_zon2.exit:                                 ; preds = %float32_input_flush2.exit
  %i.z = lshr i32 %.sroa.0.1, 23
  %i.aa = add nuw nsw i32 %i.z, 1
  %i.ab = and i32 %i.aa, 254
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = and i32 %.sroa.0.1, 2147483647
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = or i1 %i.ae, %i.ac
  br i1 %i.af, label %bb.g, label %f32_is_zon2.exit.thread, !prof !51

bb.g:                                             ; preds = %f32_is_zon2.exit
  %i.ag = bitcast i32 %.sroa.05.2 to float
  %i.ah = bitcast i32 %.sroa.0.1 to float
  %i.ai = fmul float %i.ag, %i.ah                 ; 2 uses
  %i.aj = bitcast float %i.ai to i32              ; 3 uses
  %i.ak = tail call float @llvm.fabs.f32(float %i.ai) ; 2 uses
  %i.al = fcmp oeq float %i.ak, +inf
  br i1 %i.al, label %bb.h, label %bb.i, !prof !27

bb.h:                                             ; preds = %bb.g
  %i.am = or i64 %i.r, 4
  store i64 %i.am, ptr %2, align 4
  br label %float32_gen2.exit

bb.i:                                             ; preds = %bb.g
  %i.an = fcmp ugt float %i.ak, f0x00800000
  br i1 %i.an, label %float32_gen2.exit, label %bb.j, !prof !24

bb.j:                                             ; preds = %bb.i
  %i.ao = or i32 %.sroa.0.1, %.sroa.05.2
  %i.ap = and i32 %i.ao, 2147483647
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %float32_gen2.exit, label %f32_is_zon2.exit.thread

f32_is_zon2.exit.thread:                          ; preds = %float32_input_flush2.exit, %bb.j, %f32_is_zon2.exit, %bb.a
  %.sroa.05.0 = phi i32 [ %.sroa.05.2, %bb.j ], [ %.sroa.05.2, %f32_is_zon2.exit ], [ %0, %bb.a ], [ %.sroa.05.2, %float32_input_flush2.exit ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.1, %bb.j ], [ %.sroa.0.1, %f32_is_zon2.exit ], [ %1, %bb.a ], [ %.sroa.0.1, %float32_input_flush2.exit ]
  %i.aq = tail call fastcc i32 @soft_f32_mul(i32 noundef %.sroa.05.0, i32 noundef %.sroa.0.0, ptr noundef nonnull %2) #16, !callees !67, !inline_history !68
  br label %float32_gen2.exit

float32_gen2.exit:                                ; preds = %bb.h, %bb.i, %bb.j, %f32_is_zon2.exit.thread
  %.0.i = phi i32 [ %i.aq, %f32_is_zon2.exit.thread ], [ %i.aj, %bb.i ], [ %i.aj, %bb.j ], [ %i.aj, %bb.h ]
  ret i32 %.0.i
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc i32 @soft_f32_mul(i32 noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #7 {
bb.a:
  %3 = alloca %struct.FloatParts64, align 8       ; 6 uses
  %4 = alloca %struct.FloatParts64, align 8       ; 6 uses
  %5 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %6 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %7 = alloca %struct.FloatParts64, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = zext i32 %0 to i64                       ; 2 uses
  %.not.i.i9 = icmp sgt i32 %0, -1
  %i.b = and i64 %i.a, 8388607
  %i.c = shl nuw nsw i64 %i.a, 9
  %.sroa.4.0.insert.ext.i.i10 = and i64 %i.c, 1095216660480
  %.sroa.2.0.insert.shift.i.i11 = select i1 %.not.i.i9, i64 0, i64 256
  %.sroa.2.0.insert.insert.i.i12 = or disjoint i64 %.sroa.4.0.insert.ext.i.i10, %.sroa.2.0.insert.shift.i.i11
  store i64 %.sroa.2.0.insert.insert.i.i12, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.b, ptr %i.d, align 8
  call fastcc void @parts64_canonicalize(ptr noundef %3, ptr noundef %2, ptr noundef nonnull @float32_params)
  %.fca.0.load.i15 = load i64, ptr %3, align 8    ; 4 uses
  %.fca.1.load.i17 = load i64, ptr %i.d, align 8  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store i64 %.fca.0.load.i15, ptr %5, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.fca.1.load.i17, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.f = zext i32 %1 to i64                       ; 2 uses
  %.not.i.i = icmp sgt i32 %1, -1
  %i.g = and i64 %i.f, 8388607
  %i.h = shl nuw nsw i64 %i.f, 9
  %.sroa.4.0.insert.ext.i.i = and i64 %i.h, 1095216660480
  %.sroa.2.0.insert.shift.i.i = select i1 %.not.i.i, i64 0, i64 256
  %.sroa.2.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  store i64 %.sroa.2.0.insert.insert.i.i, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.i, align 8
  call fastcc void @parts64_canonicalize(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @float32_params)
  %.fca.0.load.i5 = load i64, ptr %4, align 8     ; 4 uses
  %.fca.1.load.i7 = load i64, ptr %i.i, align 8   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %.fca.0.load.i5, ptr %6, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.fca.1.load.i7, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.k = trunc i64 %.fca.0.load.i15 to i32
  %i.l = and i32 %i.k, 255
  %i.m = shl nuw i32 1, %i.l
  %i.n = trunc i64 %.fca.0.load.i5 to i32
  %i.o = and i32 %i.n, 255
  %i.p = shl nuw i32 1, %i.o
  %i.q = or i32 %i.p, %i.m                        ; 7 uses
  %i.r = lshr i64 %.fca.0.load.i15, 8
  %i.s = trunc i64 %i.r to i8
  %i.t = lshr i64 %.fca.0.load.i5, 8
  %i.u = trunc i64 %i.t to i8
  %i.v = icmp ne i8 %i.s, %i.u
  %i.w = zext i1 %i.v to i8                       ; 3 uses
  %i.x = and i32 %i.q, -13
  %.not.i24 = icmp eq i32 %i.x, 0
  br i1 %.not.i24, label %bb.b, label %bb.d, !prof !24

bb.b:                                             ; preds = %bb.a
  %8 = lshr i64 %.fca.0.load.i5, 32
  %9 = lshr i64 %.fca.0.load.i15, 32
  %10 = add nuw nsw i64 %8, %9
  %.not.i25 = icmp samesign ult i32 %i.q, 8
  br i1 %.not.i25, label %record_denormals_used.exit, label %bb.c, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.y = load i64, ptr %2, align 4
  %i.z = or i64 %i.y, 16384
  store i64 %i.z, ptr %2, align 4
  br label %record_denormals_used.exit

record_denormals_used.exit:                       ; preds = %bb.b, %bb.c
  %i.aa = zext i64 %.fca.1.load.i17 to i128
  %i.ab = zext i64 %.fca.1.load.i7 to i128
  %i.ac = mul nuw i128 %i.ab, %i.aa               ; 4 uses
  %i.ad = trunc i128 %i.ac to i64
  %i.ae = lshr i128 %i.ac, 64
  %i.af = trunc nuw i128 %i.ae to i64
  %i.ag = icmp ne i64 %i.ad, 0
  %i.ah = zext i1 %i.ag to i64
  %i.ai = or i64 %i.ah, %i.af
  %.not30.i = icmp sgt i128 %i.ac, -1
  %.lobit = lshr i128 %i.ac, 127
  %i.aj = trunc nuw nsw i128 %.lobit to i64
  %.sroa.028.sroa.15.0 = add nuw nsw i64 %10, %i.aj
  %i.ak = zext i1 %.not30.i to i64
  %.sroa.20.0 = shl nuw i64 %i.ai, %i.ak
  %i.al = and i64 %.sroa.028.sroa.15.0, 4294967295
  br label %parts64_mul.exit

bb.d:                                             ; preds = %bb.a
  %i.am = icmp eq i32 %i.q, 18
  br i1 %i.am, label %bb.e, label %bb.f, !prof !27

bb.e:                                             ; preds = %bb.d
  %i.an = load i64, ptr %2, align 4
  %i.ao = or i64 %i.an, 257
  store i64 %i.ao, ptr %2, align 4
  %i.ap = tail call { i64, i64 } @parts64_default_nan(ptr noundef nonnull %2) ; 2 uses
  %i.aq = extractvalue { i64, i64 } %i.ap, 0      ; 4 uses
  %.sroa.028.sroa.9.0.extract.shift41 = lshr i64 %i.aq, 8
  %.sroa.028.sroa.9.0.extract.trunc42 = trunc i64 %.sroa.028.sroa.9.0.extract.shift41 to i8
  %.sroa.028.sroa.15.0.extract.shift45 = lshr i64 %i.aq, 32
  %i.ar = extractvalue { i64, i64 } %i.ap, 1
  br label %parts64_mul.exit

bb.f:                                             ; preds = %bb.d
  %i.as = and i32 %i.q, 96
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !24

bb.g:                                             ; preds = %bb.f
  %i.at = call { i64, i64 } @parts64_pick_nan(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2) ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.at, 0      ; 4 uses
  %.sroa.028.sroa.9.0.extract.shift = lshr i64 %i.au, 8
  %.sroa.028.sroa.9.0.extract.trunc = trunc i64 %.sroa.028.sroa.9.0.extract.shift to i8
  %.sroa.028.sroa.15.0.extract.shift = lshr i64 %i.au, 32
  %i.av = extractvalue { i64, i64 } %i.at, 1
  br label %parts64_mul.exit

bb.h:                                             ; preds = %bb.f
  %i.aw = and i32 %i.q, 8
  %.not.i26 = icmp eq i32 %i.aw, 0
  br i1 %.not.i26, label %record_denormals_used.exit27, label %bb.i, !prof !24

bb.i:                                             ; preds = %bb.h
  %i.ax = load i64, ptr %2, align 4
  %i.ay = or i64 %i.ax, 16384
  store i64 %i.ay, ptr %2, align 4
  br label %record_denormals_used.exit27

record_denormals_used.exit27:                     ; preds = %bb.h, %bb.i
  %i.az = and i32 %i.q, 16
  %.not27.i = icmp eq i32 %i.az, 0
  br i1 %.not27.i, label %bb.j, label %parts64_mul.exit

bb.j:                                             ; preds = %record_denormals_used.exit27
  %i.ba = and i32 %i.q, 2
  %.not28.i = icmp eq i32 %i.ba, 0
  br i1 %.not28.i, label %bb.k, label %parts64_mul.exit, !prof !27

bb.k:                                             ; preds = %bb.j
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 671, ptr noundef nonnull @__func__.parts64_mul, ptr noundef nonnull @.str.5) #15
  unreachable

parts64_mul.exit:                                 ; preds = %record_denormals_used.exit, %bb.j, %record_denormals_used.exit27, %bb.e, %bb.g
  %.sroa.028.sroa.0.0 = phi i64 [ %i.au, %bb.g ], [ %i.aq, %bb.e ], [ 4, %record_denormals_used.exit27 ], [ 2, %record_denormals_used.exit ], [ 1, %bb.j ]
  %.sroa.028.sroa.9.0 = phi i8 [ %.sroa.028.sroa.9.0.extract.trunc, %bb.g ], [ %.sroa.028.sroa.9.0.extract.trunc42, %bb.e ], [ %i.w, %record_denormals_used.exit27 ], [ %i.w, %record_denormals_used.exit ], [ %i.w, %bb.j ]
  %.sroa.028.sroa.12.0 = phi i64 [ %i.au, %bb.g ], [ %i.aq, %bb.e ], [ 0, %record_denormals_used.exit27 ], [ 0, %record_denormals_used.exit ], [ 0, %bb.j ]
  %.sroa.028.sroa.15.1 = phi i64 [ %.sroa.028.sroa.15.0.extract.shift, %bb.g ], [ %.sroa.028.sroa.15.0.extract.shift45, %bb.e ], [ 0, %record_denormals_used.exit27 ], [ %i.al, %record_denormals_used.exit ], [ 0, %bb.j ]
  %.sroa.20.1 = phi i64 [ %i.av, %bb.g ], [ %i.ar, %bb.e ], [ 0, %record_denormals_used.exit27 ], [ %.sroa.20.0, %record_denormals_used.exit ], [ 0, %bb.j ]
  %.sroa.028.sroa.15.0.insert.shift = shl nuw i64 %.sroa.028.sroa.15.1, 32
  %.sroa.028.sroa.12.0.insert.ext = and i64 %.sroa.028.sroa.12.0, 4294901760
  %.sroa.028.sroa.12.0.insert.insert = or disjoint i64 %.sroa.028.sroa.15.0.insert.shift, %.sroa.028.sroa.12.0.insert.ext
  %.sroa.028.sroa.9.0.insert.ext = zext i8 %.sroa.028.sroa.9.0 to i64
  %.sroa.028.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.028.sroa.9.0.insert.ext, 8
  %.sroa.028.sroa.9.0.insert.insert = or disjoint i64 %.sroa.028.sroa.12.0.insert.insert, %.sroa.028.sroa.9.0.insert.shift
  %.sroa.028.sroa.0.0.insert.ext = and i64 %.sroa.028.sroa.0.0, 255
  %.sroa.028.sroa.0.0.insert.insert = or disjoint i64 %.sroa.028.sroa.9.0.insert.insert, %.sroa.028.sroa.0.0.insert.ext
  store i64 %.sroa.028.sroa.0.0.insert.insert, ptr %7, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.sroa.20.1, ptr %i.bb, align 8
  call fastcc void @parts64_uncanon(ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull @float32_params, i1 noundef zeroext false)
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !range !19, !noundef !20
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 31
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = shl i32 %i.bh, 23
  %i.bj = and i32 %i.bi, 2139095040
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = or disjoint i64 %i.bf, %i.bk
  %i.bm = load i64, ptr %i.bb, align 8
  %i.bn = and i64 %i.bm, 8388607
  %i.bo = or disjoint i64 %i.bl, %i.bn
  %i.bp = trunc nuw i64 %i.bo to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i32 %i.bp
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @float64_mul(i64 noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %2, align 4               ; 5 uses
  %i.a = and i64 %.val, 458768
  %i.b = icmp eq i64 %i.a, 16
  br i1 %i.b, label %bb.b, label %f64_is_zon2.exit.thread, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %.val, 4194304
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %float64_input_flush2.exit, label %bb.c, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %0, 9218868437227405312
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %0, 4503599627370495
  %i.g = icmp ne i64 %i.f, 0
  %i.h = and i1 %i.e, %i.g                        ; 2 uses
  br i1 %i.h, label %bb.d, label %float64_input_flush__nocheck.exit.i, !prof !27

bb.d:                                             ; preds = %bb.c
  %.lobit.i.i = and i64 %0, -9223372036854775808
  %i.i = or i64 %.val, 32
  br label %float64_input_flush__nocheck.exit.i

float64_input_flush__nocheck.exit.i:              ; preds = %bb.d, %bb.c
  %i.j = phi i64 [ %i.i, %bb.d ], [ %.val, %bb.c ] ; 2 uses
  %.sroa.05.1 = phi i64 [ %.lobit.i.i, %bb.d ], [ %0, %bb.c ] ; 2 uses
  %i.k = and i64 %1, 9218868437227405312
  %i.l = icmp eq i64 %i.k, 0
  %i.m = and i64 %1, 4503599627370495
  %i.n = icmp ne i64 %i.m, 0
  %i.o = and i1 %i.l, %i.n                        ; 2 uses
  br i1 %i.o, label %bb.e, label %float64_input_flush2.exitcondstore.split, !prof !27

bb.e:                                             ; preds = %float64_input_flush__nocheck.exit.i
  %.lobit.i5.i = and i64 %1, -9223372036854775808
  %i.p = or i64 %i.j, 32
  br label %float64_input_flush2.exitcondstore.split

float64_input_flush2.exitcondstore.split:         ; preds = %float64_input_flush__nocheck.exit.i, %bb.e
  %.ph = phi i64 [ %i.j, %float64_input_flush__nocheck.exit.i ], [ %i.p, %bb.e ] ; 3 uses
  %.sroa.0.1.ph = phi i64 [ %1, %float64_input_flush__nocheck.exit.i ], [ %.lobit.i5.i, %bb.e ] ; 2 uses
  %i.q = or i1 %i.h, %i.o
  br i1 %i.q, label %bb.f, label %float64_input_flush2.exit, !prof !66

bb.f:                                             ; preds = %float64_input_flush2.exitcondstore.split
  store i64 %.ph, ptr %2, align 4
  br label %float64_input_flush2.exit

float64_input_flush2.exit:                        ; preds = %bb.f, %float64_input_flush2.exitcondstore.split, %bb.b
  %i.r = phi i64 [ %.val, %bb.b ], [ %.ph, %float64_input_flush2.exitcondstore.split ], [ %.ph, %bb.f ]
  %.sroa.05.2 = phi i64 [ %0, %bb.b ], [ %.sroa.05.1, %float64_input_flush2.exitcondstore.split ], [ %.sroa.05.1, %bb.f ] ; 7 uses
  %.sroa.0.1 = phi i64 [ %1, %bb.b ], [ %.sroa.0.1.ph, %float64_input_flush2.exitcondstore.split ], [ %.sroa.0.1.ph, %bb.f ] ; 7 uses
  %i.s = bitcast i64 %.sroa.05.2 to double        ; 4 uses
  %or.cond.i = fcmp ueq double %i.s, 0.000000e+00
  br i1 %or.cond.i, label %.critedge.i, label %bb.g

.critedge.i:                                      ; preds = %float64_input_flush2.exit
  %i.t = fcmp oeq double %i.s, 0.000000e+00
  br i1 %i.t, label %.critedge11.i, label %f64_is_zon2.exit.thread, !prof !50

bb.g:                                             ; preds = %float64_input_flush2.exit
  %or.cond20.i = tail call i1 @llvm.is.fpclass.f64(double %i.s, /* (norm) */ i32 264)
  br i1 %or.cond20.i, label %.critedge11.i, label %f64_is_zon2.exit.thread, !prof !50

.critedge11.i:                                    ; preds = %bb.g, %.critedge.i
  %i.u = bitcast i64 %.sroa.0.1 to double         ; 4 uses
  %i.v = fcmp oeq double %i.u, 0.000000e+00       ; 2 uses
  %or.cond16.i = fcmp ueq double %i.u, 0.000000e+00
  br i1 %or.cond16.i, label %f64_is_zon2.exit, label %bb.h

bb.h:                                             ; preds = %.critedge11.i
  %or.cond21.i = tail call i1 @llvm.is.fpclass.f64(double %i.u, /* (norm) */ i32 264)
  %brmerge = or i1 %or.cond21.i, %i.v
  br i1 %brmerge, label %f64_is_zon2.exit.thread9, label %f64_is_zon2.exit.thread, !prof !52

f64_is_zon2.exit:                                 ; preds = %.critedge11.i
  br i1 %i.v, label %f64_is_zon2.exit.thread9, label %f64_is_zon2.exit.thread, !prof !51

f64_is_zon2.exit.thread9:                         ; preds = %bb.h, %f64_is_zon2.exit
  %i.w = fmul double %i.s, %i.u                   ; 2 uses
  %i.x = bitcast double %i.w to i64               ; 3 uses
  %i.y = tail call double @llvm.fabs.f64(double %i.w) ; 2 uses
  %i.z = fcmp oeq double %i.y, +inf
  br i1 %i.z, label %bb.i, label %bb.j, !prof !27

bb.i:                                             ; preds = %f64_is_zon2.exit.thread9
  %i.aa = or i64 %i.r, 4
  store i64 %i.aa, ptr %2, align 4
  br label %float64_gen2.exit

bb.j:                                             ; preds = %f64_is_zon2.exit.thread9
  %i.ab = fcmp ugt double %i.y, f0x0010000000000000
  br i1 %i.ab, label %float64_gen2.exit, label %bb.k, !prof !24

bb.k:                                             ; preds = %bb.j
  %i.ac = or i64 %.sroa.0.1, %.sroa.05.2
  %i.ad = and i64 %i.ac, 9223372036854775807
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %float64_gen2.exit, label %f64_is_zon2.exit.thread

f64_is_zon2.exit.thread:                          ; preds = %bb.h, %.critedge.i, %bb.g, %bb.k, %f64_is_zon2.exit, %bb.a
  %.sroa.05.0 = phi i64 [ %.sroa.05.2, %bb.k ], [ %.sroa.05.2, %f64_is_zon2.exit ], [ %0, %bb.a ], [ %.sroa.05.2, %bb.g ], [ %.sroa.05.2, %.critedge.i ], [ %.sroa.05.2, %bb.h ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %bb.k ], [ %.sroa.0.1, %f64_is_zon2.exit ], [ %1, %bb.a ], [ %.sroa.0.1, %bb.g ], [ %.sroa.0.1, %.critedge.i ], [ %.sroa.0.1, %bb.h ]
  %i.ae = tail call fastcc i64 @soft_f64_mul(i64 noundef %.sroa.05.0, i64 noundef %.sroa.0.0, ptr noundef nonnull %2) #16, !callees !69, !inline_history !70
  br label %float64_gen2.exit

float64_gen2.exit:                                ; preds = %bb.i, %bb.j, %bb.k, %f64_is_zon2.exit.thread
  %.0.i = phi i64 [ %i.ae, %f64_is_zon2.exit.thread ], [ %i.x, %bb.j ], [ %i.x, %bb.k ], [ %i.x, %bb.i ]
  ret i64 %.0.i
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc i64 @soft_f64_mul(i64 noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #7 {
bb.a:
  %3 = alloca %struct.FloatParts64, align 8       ; 6 uses
  %4 = alloca %struct.FloatParts64, align 8       ; 6 uses
  %5 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %6 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %7 = alloca %struct.FloatParts64, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = and i64 %0, 4503599627370495
  %i.b = lshr i64 %0, 20
  %.sroa.4.0.insert.ext.i.i10 = and i64 %i.b, 8791798054912
  %i.c = lshr i64 %0, 55
  %.sroa.2.0.insert.shift.i.i11 = and i64 %i.c, 256
  %.sroa.2.0.insert.insert.i.i12 = or disjoint i64 %.sroa.4.0.insert.ext.i.i10, %.sroa.2.0.insert.shift.i.i11
  store i64 %.sroa.2.0.insert.insert.i.i12, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.a, ptr %i.d, align 8
  call fastcc void @parts64_canonicalize(ptr noundef %3, ptr noundef %2, ptr noundef nonnull @float64_params)
  %.fca.0.load.i15 = load i64, ptr %3, align 8    ; 4 uses
  %.fca.1.load.i17 = load i64, ptr %i.d, align 8  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store i64 %.fca.0.load.i15, ptr %5, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.fca.1.load.i17, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.f = and i64 %1, 4503599627370495
  %i.g = lshr i64 %1, 20
  %.sroa.4.0.insert.ext.i.i = and i64 %i.g, 8791798054912
  %i.h = lshr i64 %1, 55
  %.sroa.2.0.insert.shift.i.i = and i64 %i.h, 256
  %.sroa.2.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  store i64 %.sroa.2.0.insert.insert.i.i, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.f, ptr %i.i, align 8
  call fastcc void @parts64_canonicalize(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @float64_params)
  %.fca.0.load.i5 = load i64, ptr %4, align 8     ; 4 uses
  %.fca.1.load.i7 = load i64, ptr %i.i, align 8   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %.fca.0.load.i5, ptr %6, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.fca.1.load.i7, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.k = trunc i64 %.fca.0.load.i15 to i32
  %i.l = and i32 %i.k, 255
  %i.m = shl nuw i32 1, %i.l
  %i.n = trunc i64 %.fca.0.load.i5 to i32
  %i.o = and i32 %i.n, 255
  %i.p = shl nuw i32 1, %i.o
  %i.q = or i32 %i.p, %i.m                        ; 7 uses
  %i.r = lshr i64 %.fca.0.load.i15, 8
  %i.s = trunc i64 %i.r to i8
  %i.t = lshr i64 %.fca.0.load.i5, 8
  %i.u = trunc i64 %i.t to i8
  %i.v = icmp ne i8 %i.s, %i.u
  %i.w = zext i1 %i.v to i8                       ; 3 uses
  %i.x = and i32 %i.q, -13
  %.not.i24 = icmp eq i32 %i.x, 0
  br i1 %.not.i24, label %bb.b, label %bb.d, !prof !24

bb.b:                                             ; preds = %bb.a
  %8 = lshr i64 %.fca.0.load.i5, 32
  %9 = lshr i64 %.fca.0.load.i15, 32
  %10 = add nuw nsw i64 %8, %9
  %.not.i25 = icmp samesign ult i32 %i.q, 8
  br i1 %.not.i25, label %record_denormals_used.exit, label %bb.c, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.y = load i64, ptr %2, align 4
  %i.z = or i64 %i.y, 16384
  store i64 %i.z, ptr %2, align 4
  br label %record_denormals_used.exit

record_denormals_used.exit:                       ; preds = %bb.b, %bb.c
  %i.aa = zext i64 %.fca.1.load.i17 to i128
  %i.ab = zext i64 %.fca.1.load.i7 to i128
  %i.ac = mul nuw i128 %i.ab, %i.aa               ; 4 uses
  %i.ad = trunc i128 %i.ac to i64
  %i.ae = lshr i128 %i.ac, 64
  %i.af = trunc nuw i128 %i.ae to i64
  %i.ag = icmp ne i64 %i.ad, 0
  %i.ah = zext i1 %i.ag to i64
  %i.ai = or i64 %i.ah, %i.af
  %.not30.i = icmp sgt i128 %i.ac, -1
  %.lobit = lshr i128 %i.ac, 127
  %i.aj = trunc nuw nsw i128 %.lobit to i64
  %.sroa.028.sroa.15.0 = add nuw nsw i64 %10, %i.aj
  %i.ak = zext i1 %.not30.i to i64
  %.sroa.20.0 = shl nuw i64 %i.ai, %i.ak
  %i.al = and i64 %.sroa.028.sroa.15.0, 4294967295
  br label %parts64_mul.exit

bb.d:                                             ; preds = %bb.a
  %i.am = icmp eq i32 %i.q, 18
  br i1 %i.am, label %bb.e, label %bb.f, !prof !27

bb.e:                                             ; preds = %bb.d
  %i.an = load i64, ptr %2, align 4
  %i.ao = or i64 %i.an, 257
  store i64 %i.ao, ptr %2, align 4
  %i.ap = tail call { i64, i64 } @parts64_default_nan(ptr noundef nonnull %2) ; 2 uses
  %i.aq = extractvalue { i64, i64 } %i.ap, 0      ; 4 uses
  %.sroa.028.sroa.9.0.extract.shift41 = lshr i64 %i.aq, 8
  %.sroa.028.sroa.9.0.extract.trunc42 = trunc i64 %.sroa.028.sroa.9.0.extract.shift41 to i8
  %.sroa.028.sroa.15.0.extract.shift45 = lshr i64 %i.aq, 32
  %i.ar = extractvalue { i64, i64 } %i.ap, 1
  br label %parts64_mul.exit

bb.f:                                             ; preds = %bb.d
  %i.as = and i32 %i.q, 96
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !24

bb.g:                                             ; preds = %bb.f
  %i.at = call { i64, i64 } @parts64_pick_nan(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2) ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.at, 0      ; 4 uses
  %.sroa.028.sroa.9.0.extract.shift = lshr i64 %i.au, 8
  %.sroa.028.sroa.9.0.extract.trunc = trunc i64 %.sroa.028.sroa.9.0.extract.shift to i8
  %.sroa.028.sroa.15.0.extract.shift = lshr i64 %i.au, 32
  %i.av = extractvalue { i64, i64 } %i.at, 1
  br label %parts64_mul.exit

bb.h:                                             ; preds = %bb.f
  %i.aw = and i32 %i.q, 8
  %.not.i26 = icmp eq i32 %i.aw, 0
  br i1 %.not.i26, label %record_denormals_used.exit27, label %bb.i, !prof !24

bb.i:                                             ; preds = %bb.h
  %i.ax = load i64, ptr %2, align 4
  %i.ay = or i64 %i.ax, 16384
  store i64 %i.ay, ptr %2, align 4
  br label %record_denormals_used.exit27

record_denormals_used.exit27:                     ; preds = %bb.h, %bb.i
  %i.az = and i32 %i.q, 16
  %.not27.i = icmp eq i32 %i.az, 0
  br i1 %.not27.i, label %bb.j, label %parts64_mul.exit

bb.j:                                             ; preds = %record_denormals_used.exit27
  %i.ba = and i32 %i.q, 2
  %.not28.i = icmp eq i32 %i.ba, 0
  br i1 %.not28.i, label %bb.k, label %parts64_mul.exit, !prof !27

bb.k:                                             ; preds = %bb.j
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 671, ptr noundef nonnull @__func__.parts64_mul, ptr noundef nonnull @.str.5) #15
  unreachable

parts64_mul.exit:                                 ; preds = %record_denormals_used.exit, %bb.j, %record_denormals_used.exit27, %bb.e, %bb.g
  %.sroa.028.sroa.0.0 = phi i64 [ %i.au, %bb.g ], [ %i.aq, %bb.e ], [ 4, %record_denormals_used.exit27 ], [ 2, %record_denormals_used.exit ], [ 1, %bb.j ]
  %.sroa.028.sroa.9.0 = phi i8 [ %.sroa.028.sroa.9.0.extract.trunc, %bb.g ], [ %.sroa.028.sroa.9.0.extract.trunc42, %bb.e ], [ %i.w, %record_denormals_used.exit27 ], [ %i.w, %record_denormals_used.exit ], [ %i.w, %bb.j ]
  %.sroa.028.sroa.12.0 = phi i64 [ %i.au, %bb.g ], [ %i.aq, %bb.e ], [ 0, %record_denormals_used.exit27 ], [ 0, %record_denormals_used.exit ], [ 0, %bb.j ]
  %.sroa.028.sroa.15.1 = phi i64 [ %.sroa.028.sroa.15.0.extract.shift, %bb.g ], [ %.sroa.028.sroa.15.0.extract.shift45, %bb.e ], [ 0, %record_denormals_used.exit27 ], [ %i.al, %record_denormals_used.exit ], [ 0, %bb.j ]
  %.sroa.20.1 = phi i64 [ %i.av, %bb.g ], [ %i.ar, %bb.e ], [ 0, %record_denormals_used.exit27 ], [ %.sroa.20.0, %record_denormals_used.exit ], [ 0, %bb.j ]
  %.sroa.028.sroa.15.0.insert.shift = shl nuw i64 %.sroa.028.sroa.15.1, 32
  %.sroa.028.sroa.12.0.insert.ext = and i64 %.sroa.028.sroa.12.0, 4294901760
  %.sroa.028.sroa.12.0.insert.insert = or disjoint i64 %.sroa.028.sroa.15.0.insert.shift, %.sroa.028.sroa.12.0.insert.ext
  %.sroa.028.sroa.9.0.insert.ext = zext i8 %.sroa.028.sroa.9.0 to i64
  %.sroa.028.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.028.sroa.9.0.insert.ext, 8
  %.sroa.028.sroa.9.0.insert.insert = or disjoint i64 %.sroa.028.sroa.12.0.insert.insert, %.sroa.028.sroa.9.0.insert.shift
  %.sroa.028.sroa.0.0.insert.ext = and i64 %.sroa.028.sroa.0.0, 255
  %.sroa.028.sroa.0.0.insert.insert = or disjoint i64 %.sroa.028.sroa.9.0.insert.insert, %.sroa.028.sroa.0.0.insert.ext
  store i64 %.sroa.028.sroa.0.0.insert.insert, ptr %7, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.sroa.20.1, ptr %i.bb, align 8
  call fastcc void @parts64_uncanon(ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull @float64_params, i1 noundef zeroext false)
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !range !19, !noundef !20
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = shl nuw i64 %i.be, 63
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = and i32 %i.bh, 2047
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 52
  %i.bl = or disjoint i64 %i.bk, %i.bf
  %i.bm = load i64, ptr %i.bb, align 8
  %i.bn = and i64 %i.bm, 4503599627370495
  %i.bo = or disjoint i64 %i.bl, %i.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i64 %i.bo
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @float64r32_mul(i64 noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FloatParts64, align 16      ; 6 uses
  %4 = alloca %struct.FloatParts64, align 16      ; 6 uses
  %5 = alloca %struct.FloatParts64, align 16      ; 4 uses
  %6 = alloca %struct.FloatParts64, align 16      ; 4 uses
  %7 = alloca %struct.FloatParts64, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = and i64 %0, 4503599627370495
  %i.b = lshr i64 %0, 20
  %.sroa.4.0.insert.ext.i.i = and i64 %i.b, 8791798054912
  %i.c = lshr i64 %0, 55
  %.sroa.2.0.insert.shift.i.i = and i64 %i.c, 256
  %.sroa.2.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  store i64 %.sroa.2.0.insert.insert.i.i, ptr %4, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.a, ptr %i.d, align 8
  call fastcc void @parts64_canonicalize(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @float64_params)
  %i.e = load <2 x i64>, ptr %4, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store <2 x i64> %i.e, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.f = and i64 %1, 4503599627370495
  %i.g = lshr i64 %1, 20
  %.sroa.4.0.insert.ext.i.i5 = and i64 %i.g, 8791798054912
  %i.h = lshr i64 %1, 55
  %.sroa.2.0.insert.shift.i.i6 = and i64 %i.h, 256
  %.sroa.2.0.insert.insert.i.i7 = or disjoint i64 %.sroa.4.0.insert.ext.i.i5, %.sroa.2.0.insert.shift.i.i6
  store i64 %.sroa.2.0.insert.insert.i.i7, ptr %3, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.f, ptr %i.i, align 8
  call fastcc void @parts64_canonicalize(ptr noundef %3, ptr noundef %2, ptr noundef nonnull @float64_params)
  %i.j = load <2 x i64>, ptr %3, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store <2 x i64> %i.j, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.k = call { i64, i64 } @parts64_mul(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  store i64 %i.l, ptr %7, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = extractvalue { i64, i64 } %i.k, 1
  store i64 %i.n, ptr %i.m, align 8
  %i.o = call fastcc i64 @float64r32_round_pack_canonical(ptr noundef %7, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i64 %i.o
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @float64r32_round_pack_canonical(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @parts64_uncanon(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @float32_params, i1 noundef zeroext false)
  %i.a = load i8, ptr %0, align 8
  switch i8 %i.a, label %bb.h [
    i8 2, label %bb.b
    i8 3, label %bb.b
    i8 6, label %bb.f
    i8 5, label %bb.f
    i8 4, label %bb.g
    i8 1, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4
  br label %float64r32_pack_raw.exit

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  br i1 %i.d, label %bb.c, label %bb.e, !prof !27

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %frac64_normalize.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true) ; 2 uses
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = shl i64 %i.f, %i.g
  %i.j = sub nsw i32 41, %i.h
  %i.k = lshr i64 %i.i, 11
  br label %frac64_normalize.exit.i

bb.e:                                             ; preds = %bb.b
  %i.l = shl i64 %i.f, 29
  br label %frac64_normalize.exit.i

frac64_normalize.exit.i:                          ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i = phi i64 [ %i.l, %bb.e ], [ %i.k, %bb.d ], [ 0, %bb.c ]
  %i.m = phi i32 [ %i.c, %bb.e ], [ %i.j, %bb.d ], [ -23, %bb.c ]
  store i64 %.sink.i, ptr %i.e, align 8
  %i.n = add i32 %i.m, 896                        ; 2 uses
  store i32 %i.n, ptr %i.b, align 4
  br label %float64r32_pack_raw.exit

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = shl i64 %i.p, 29
  store i64 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 2047, ptr %i.r, align 4
  br label %float64r32_pack_raw.exit

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 2047, ptr %i.s, align 4
  br label %float64r32_pack_raw.exit

bb.h:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 1475, ptr noundef nonnull @__func__.float64r32_pack_raw, ptr noundef null) #15
  unreachable

float64r32_pack_raw.exit:                         ; preds = %._crit_edge.i, %frac64_normalize.exit.i, %bb.f, %bb.g
  %i.t = phi i32 [ %.pre.i, %._crit_edge.i ], [ 2047, %bb.g ], [ 2047, %bb.f ], [ %i.n, %frac64_normalize.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = load i8, ptr %i.u, align 1, !range !19, !noundef !20
  %i.w = zext nneg i8 %i.v to i64
  %i.x = shl nuw i64 %i.w, 63
  %i.y = and i32 %i.t, 2047
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 52
  %i.ab = or disjoint i64 %i.aa, %i.x
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = and i64 %i.ad, 4503599627370495
  %i.af = or disjoint i64 %i.ab, %i.ae
  ret i64 %i.af
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i16 @bfloat16_mul(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FloatParts64, align 8       ; 6 uses
  %4 = alloca %struct.FloatParts64, align 8       ; 6 uses
  %5 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %6 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %7 = alloca %struct.FloatParts64, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = zext i16 %0 to i64                       ; 2 uses
  %.not.i.i9 = icmp sgt i16 %0, -1
  %i.b = and i64 %i.a, 127
  %i.c = shl nuw nsw i64 %i.a, 25
  %.sroa.4.0.insert.ext.i.i10 = and i64 %i.c, 1095216660480
  %.sroa.2.0.insert.shift.i.i11 = select i1 %.not.i.i9, i64 0, i64 256
  %.sroa.2.0.insert.insert.i.i12 = or disjoint i64 %.sroa.4.0.insert.ext.i.i10, %.sroa.2.0.insert.shift.i.i11
  store i64 %.sroa.2.0.insert.insert.i.i12, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.b, ptr %i.d, align 8
  call fastcc void @parts64_canonicalize(ptr noundef %3, ptr noundef %2, ptr noundef nonnull @bfloat16_params)
  %.fca.0.load.i15 = load i64, ptr %3, align 8    ; 4 uses
  %.fca.1.load.i17 = load i64, ptr %i.d, align 8  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store i64 %.fca.0.load.i15, ptr %5, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.fca.1.load.i17, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.f = zext i16 %1 to i64                       ; 2 uses
  %.not.i.i = icmp sgt i16 %1, -1
  %i.g = and i64 %i.f, 127
  %i.h = shl nuw nsw i64 %i.f, 25
  %.sroa.4.0.insert.ext.i.i = and i64 %i.h, 1095216660480
  %.sroa.2.0.insert.shift.i.i = select i1 %.not.i.i, i64 0, i64 256
  %.sroa.2.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.ext.i.i, %.sroa.2.0.insert.shift.i.i
  store i64 %.sroa.2.0.insert.insert.i.i, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.i, align 8
  call fastcc void @parts64_canonicalize(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @bfloat16_params)
  %.fca.0.load.i5 = load i64, ptr %4, align 8     ; 4 uses
  %.fca.1.load.i7 = load i64, ptr %i.i, align 8   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %.fca.0.load.i5, ptr %6, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.fca.1.load.i7, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.k = trunc i64 %.fca.0.load.i15 to i32
  %i.l = and i32 %i.k, 255
  %i.m = shl nuw i32 1, %i.l
  %i.n = trunc i64 %.fca.0.load.i5 to i32
  %i.o = and i32 %i.n, 255
  %i.p = shl nuw i32 1, %i.o
  %i.q = or i32 %i.p, %i.m                        ; 7 uses
  %i.r = lshr i64 %.fca.0.load.i15, 8
  %i.s = trunc i64 %i.r to i8
  %i.t = lshr i64 %.fca.0.load.i5, 8
  %i.u = trunc i64 %i.t to i8
  %i.v = icmp ne i8 %i.s, %i.u
  %i.w = zext i1 %i.v to i8                       ; 3 uses
  %i.x = and i32 %i.q, -13
  %.not.i24 = icmp eq i32 %i.x, 0
  br i1 %.not.i24, label %bb.b, label %bb.d, !prof !24

bb.b:                                             ; preds = %bb.a
  %8 = lshr i64 %.fca.0.load.i5, 32
  %9 = lshr i64 %.fca.0.load.i15, 32
  %10 = add nuw nsw i64 %8, %9
  %.not.i25 = icmp samesign ult i32 %i.q, 8
  br i1 %.not.i25, label %record_denormals_used.exit, label %bb.c, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.y = load i64, ptr %2, align 4
  %i.z = or i64 %i.y, 16384
  store i64 %i.z, ptr %2, align 4
  br label %record_denormals_used.exit

record_denormals_used.exit:                       ; preds = %bb.b, %bb.c
  %i.aa = zext i64 %.fca.1.load.i17 to i128
  %i.ab = zext i64 %.fca.1.load.i7 to i128
  %i.ac = mul nuw i128 %i.ab, %i.aa               ; 4 uses
  %i.ad = trunc i128 %i.ac to i64
  %i.ae = lshr i128 %i.ac, 64
  %i.af = trunc nuw i128 %i.ae to i64
  %i.ag = icmp ne i64 %i.ad, 0
  %i.ah = zext i1 %i.ag to i64
  %i.ai = or i64 %i.ah, %i.af
  %.not30.i = icmp sgt i128 %i.ac, -1
  %.lobit = lshr i128 %i.ac, 127
  %i.aj = trunc nuw nsw i128 %.lobit to i64
  %.sroa.028.sroa.15.0 = add nuw nsw i64 %10, %i.aj
  %i.ak = zext i1 %.not30.i to i64
  %.sroa.20.0 = shl nuw i64 %i.ai, %i.ak
  %i.al = and i64 %.sroa.028.sroa.15.0, 4294967295
  br label %parts64_mul.exit

bb.d:                                             ; preds = %bb.a
  %i.am = icmp eq i32 %i.q, 18
  br i1 %i.am, label %bb.e, label %bb.f, !prof !27

bb.e:                                             ; preds = %bb.d
  %i.an = load i64, ptr %2, align 4
  %i.ao = or i64 %i.an, 257
  store i64 %i.ao, ptr %2, align 4
  %i.ap = tail call { i64, i64 } @parts64_default_nan(ptr noundef nonnull %2) ; 2 uses
  %i.aq = extractvalue { i64, i64 } %i.ap, 0      ; 4 uses
  %.sroa.028.sroa.9.0.extract.shift41 = lshr i64 %i.aq, 8
  %.sroa.028.sroa.9.0.extract.trunc42 = trunc i64 %.sroa.028.sroa.9.0.extract.shift41 to i8
  %.sroa.028.sroa.15.0.extract.shift45 = lshr i64 %i.aq, 32
  %i.ar = extractvalue { i64, i64 } %i.ap, 1
  br label %parts64_mul.exit

bb.f:                                             ; preds = %bb.d
  %i.as = and i32 %i.q, 96
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !24

bb.g:                                             ; preds = %bb.f
  %i.at = call { i64, i64 } @parts64_pick_nan(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2) ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.at, 0      ; 4 uses
  %.sroa.028.sroa.9.0.extract.shift = lshr i64 %i.au, 8
  %.sroa.028.sroa.9.0.extract.trunc = trunc i64 %.sroa.028.sroa.9.0.extract.shift to i8
  %.sroa.028.sroa.15.0.extract.shift = lshr i64 %i.au, 32
  %i.av = extractvalue { i64, i64 } %i.at, 1
  br label %parts64_mul.exit

bb.h:                                             ; preds = %bb.f
  %i.aw = and i32 %i.q, 8
  %.not.i26 = icmp eq i32 %i.aw, 0
  br i1 %.not.i26, label %record_denormals_used.exit27, label %bb.i, !prof !24

bb.i:                                             ; preds = %bb.h
  %i.ax = load i64, ptr %2, align 4
  %i.ay = or i64 %i.ax, 16384
  store i64 %i.ay, ptr %2, align 4
  br label %record_denormals_used.exit27

record_denormals_used.exit27:                     ; preds = %bb.h, %bb.i
  %i.az = and i32 %i.q, 16
  %.not27.i = icmp eq i32 %i.az, 0
  br i1 %.not27.i, label %bb.j, label %parts64_mul.exit

bb.j:                                             ; preds = %record_denormals_used.exit27
  %i.ba = and i32 %i.q, 2
  %.not28.i = icmp eq i32 %i.ba, 0
  br i1 %.not28.i, label %bb.k, label %parts64_mul.exit, !prof !27

bb.k:                                             ; preds = %bb.j
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 671, ptr noundef nonnull @__func__.parts64_mul, ptr noundef nonnull @.str.5) #15
  unreachable

parts64_mul.exit:                                 ; preds = %record_denormals_used.exit, %bb.j, %record_denormals_used.exit27, %bb.e, %bb.g
  %.sroa.028.sroa.0.0 = phi i64 [ %i.au, %bb.g ], [ %i.aq, %bb.e ], [ 4, %record_denormals_used.exit27 ], [ 2, %record_denormals_used.exit ], [ 1, %bb.j ]
  %.sroa.028.sroa.9.0 = phi i8 [ %.sroa.028.sroa.9.0.extract.trunc, %bb.g ], [ %.sroa.028.sroa.9.0.extract.trunc42, %bb.e ], [ %i.w, %record_denormals_used.exit27 ], [ %i.w, %record_denormals_used.exit ], [ %i.w, %bb.j ]
  %.sroa.028.sroa.12.0 = phi i64 [ %i.au, %bb.g ], [ %i.aq, %bb.e ], [ 0, %record_denormals_used.exit27 ], [ 0, %record_denormals_used.exit ], [ 0, %bb.j ]
  %.sroa.028.sroa.15.1 = phi i64 [ %.sroa.028.sroa.15.0.extract.shift, %bb.g ], [ %.sroa.028.sroa.15.0.extract.shift45, %bb.e ], [ 0, %record_denormals_used.exit27 ], [ %i.al, %record_denormals_used.exit ], [ 0, %bb.j ]
  %.sroa.20.1 = phi i64 [ %i.av, %bb.g ], [ %i.ar, %bb.e ], [ 0, %record_denormals_used.exit27 ], [ %.sroa.20.0, %record_denormals_used.exit ], [ 0, %bb.j ]
  %.sroa.028.sroa.15.0.insert.shift = shl nuw i64 %.sroa.028.sroa.15.1, 32
  %.sroa.028.sroa.12.0.insert.ext = and i64 %.sroa.028.sroa.12.0, 4294901760
  %.sroa.028.sroa.12.0.insert.insert = or disjoint i64 %.sroa.028.sroa.15.0.insert.shift, %.sroa.028.sroa.12.0.insert.ext
  %.sroa.028.sroa.9.0.insert.ext = zext i8 %.sroa.028.sroa.9.0 to i64
  %.sroa.028.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.028.sroa.9.0.insert.ext, 8
  %.sroa.028.sroa.9.0.insert.insert = or disjoint i64 %.sroa.028.sroa.12.0.insert.insert, %.sroa.028.sroa.9.0.insert.shift
  %.sroa.028.sroa.0.0.insert.ext = and i64 %.sroa.028.sroa.0.0, 255
  %.sroa.028.sroa.0.0.insert.insert = or disjoint i64 %.sroa.028.sroa.9.0.insert.insert, %.sroa.028.sroa.0.0.insert.ext
  store i64 %.sroa.028.sroa.0.0.insert.insert, ptr %7, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.sroa.20.1, ptr %i.bb, align 8
  call fastcc void @parts64_uncanon(ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull @bfloat16_params, i1 noundef zeroext false)
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !range !19, !noundef !20
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 15
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = shl i32 %i.bh, 7
  %i.bj = and i32 %i.bi, 32640
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = or disjoint i64 %i.bf, %i.bk
  %i.bm = load i64, ptr %i.bb, align 8
  %i.bn = and i64 %i.bm, 127
  %i.bo = or disjoint i64 %i.bl, %i.bn
  %i.bp = trunc nuw i64 %i.bo to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i16 %i.bp
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local { i64, i64 } @float128_mul(i64 %0, i64 %1, i64 %2, i64 %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.FloatParts128, align 8      ; 10 uses
  %6 = alloca %struct.FloatParts128, align 8      ; 10 uses
  %7 = alloca %struct.FloatParts128, align 8      ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %.lobit.i = lshr i64 %1, 63
  %i.b = trunc nuw nsw i64 %.lobit.i to i8
  store i64 0, ptr %5, align 8
  store i8 %i.b, ptr %i.a, align 1, !alias.scope !71
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.d = lshr i64 %1, 48
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 32767
  store i32 %i.f, ptr %i.c, align 4, !alias.scope !71
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.h = and i64 %1, 281474976710655
  store i64 %i.h, ptr %i.g, align 8, !alias.scope !71
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 %0, ptr %i.i, align 8, !alias.scope !71
  call fastcc void @parts128_canonicalize(ptr noundef nonnull align 8 %5, ptr noundef %4, ptr noundef nonnull @float128_params)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %.lobit.i11 = lshr i64 %3, 63
  %i.k = trunc nuw nsw i64 %.lobit.i11 to i8
  store i64 0, ptr %6, align 8
  store i8 %i.k, ptr %i.j, align 1, !alias.scope !74
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.m = lshr i64 %3, 48
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = and i32 %i.n, 32767
  store i32 %i.o, ptr %i.l, align 4, !alias.scope !74
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.q = and i64 %3, 281474976710655
  store i64 %i.q, ptr %i.p, align 8, !alias.scope !74
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %2, ptr %i.r, align 8, !alias.scope !74
  call fastcc void @parts128_canonicalize(ptr noundef nonnull align 8 %6, ptr noundef %4, ptr noundef nonnull @float128_params)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !annotation !49
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.s = load i8, ptr %5, align 8, !noalias !77
  %i.t = zext nneg i8 %i.s to i32
  %i.u = shl nuw i32 1, %i.t
  %i.v = load i8, ptr %6, align 8, !noalias !77
  %i.w = zext nneg i8 %i.v to i32
  %i.x = shl nuw i32 1, %i.w
  %i.y = or i32 %i.x, %i.u                        ; 7 uses
  %i.z = load i8, ptr %i.a, align 1, !range !19, !noalias !77, !noundef !20
  %i.aa = load i8, ptr %i.j, align 1, !range !19, !noalias !77, !noundef !20
  %i.ab = icmp ne i8 %i.z, %i.aa
  %i.ac = zext i1 %i.ab to i8                     ; 3 uses
  %i.ad = and i32 %i.y, -13
  %.not.i12 = icmp eq i32 %i.ad, 0
  br i1 %.not.i12, label %bb.b, label %bb.e, !prof !24

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %7, align 8
  store i8 2, ptr %7, align 8, !alias.scope !77
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.ac, ptr %i.ae, align 1, !alias.scope !77
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.c, align 4, !noalias !77
  %i.ah = load i32, ptr %i.l, align 4, !noalias !77
  %i.ai = add i32 %i.ah, %i.ag                    ; 2 uses
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.af, align 4, !alias.scope !77
  %.not.i13 = icmp samesign ult i32 %i.y, 8
  br i1 %.not.i13, label %record_denormals_used.exit, label %bb.c, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %4, align 4, !noalias !77
  %i.al = or i64 %i.ak, 16384
  store i64 %i.al, ptr %4, align 4, !noalias !77
  br label %record_denormals_used.exit

record_denormals_used.exit:                       ; preds = %bb.b, %bb.c
  %.val = load i64, ptr %i.g, align 8
  %.val8 = load i64, ptr %i.i, align 8
  %.val9 = load i64, ptr %i.p, align 8
  %.val10 = load i64, ptr %i.r, align 8
  %i.am = zext i64 %.val8 to i128                 ; 2 uses
  %i.an = zext i64 %.val9 to i128                 ; 2 uses
  %i.ao = mul nuw i128 %i.an, %i.am               ; 2 uses
  %i.ap = trunc i128 %i.ao to i64
  %i.aq = lshr i128 %i.ao, 64
  %i.ar = trunc nuw i128 %i.aq to i64
  %i.as = zext i64 %.val to i128                  ; 2 uses
  %i.at = zext i64 %.val10 to i128                ; 2 uses
  %i.au = mul nuw i128 %i.at, %i.as               ; 2 uses
  %i.av = trunc i128 %i.au to i64
  %i.aw = lshr i128 %i.au, 64
  %i.ax = trunc nuw i128 %i.aw to i64
  %i.ay = mul nuw i128 %i.at, %i.am               ; 2 uses
  %i.az = trunc i128 %i.ay to i64
  %i.ba = lshr i128 %i.ay, 64
  %i.bb = trunc nuw i128 %i.ba to i64
  %i.bc = mul nuw i128 %i.an, %i.as               ; 2 uses
  %i.bd = trunc i128 %i.bc to i64
  %i.be = lshr i128 %i.bc, 64
  %i.bf = trunc nuw i128 %i.be to i64
  %i.bg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ap, i64 %i.av) ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  %i.bi = extractvalue { i64, i1 } %i.bg, 0
  %i.bj = zext i1 %i.bh to i64
  %i.bk = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ar, i64 %i.ax) ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  %i.bm = extractvalue { i64, i1 } %i.bk, 0
  %i.bn = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bm, i64 %i.bj) ; 2 uses
  %i.bo = extractvalue { i64, i1 } %i.bn, 1
  %i.bp = extractvalue { i64, i1 } %i.bn, 0
  %i.bq = or i1 %i.bl, %i.bo
  %i.br = zext i1 %i.bq to i64
  %i.bs = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bi, i64 %i.bb) ; 2 uses
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  %i.bu = extractvalue { i64, i1 } %i.bs, 0
  %i.bv = zext i1 %i.bt to i64
  %i.bw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bp, i64 %i.bd) ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 1
  %i.by = extractvalue { i64, i1 } %i.bw, 0
  %i.bz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.by, i64 %i.bv) ; 2 uses
  %i.ca = extractvalue { i64, i1 } %i.bz, 1
  %i.cb = extractvalue { i64, i1 } %i.bz, 0
  %i.cc = or i1 %i.bx, %i.ca
  %i.cd = zext i1 %i.cc to i64
  %i.ce = add nuw i64 %i.br, %i.bf
  %i.cf = add i64 %i.ce, %i.cd                    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.cf, ptr %i.cg, align 8
  %i.ch = or i64 %i.bu, %i.az
  %i.ci = icmp ne i64 %i.ch, 0
  %i.cj = zext i1 %i.ci to i64
  %i.ck = or i64 %i.cb, %i.cj                     ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i64 %i.ck, ptr %i.cl, align 8
  %.not30.i = icmp sgt i64 %i.cf, -1
  br i1 %.not30.i, label %bb.d, label %parts128_mul.exitthread-pre-split

bb.d:                                             ; preds = %record_denormals_used.exit
  %i.cm = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ck, i64 %i.ck) ; 2 uses
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  %i.co = extractvalue { i64, i1 } %i.cm, 0
  store i64 %i.co, ptr %i.cl, align 8
  %i.cp = zext i1 %i.cn to i64
  %i.cq = shl nuw i64 %i.cf, 1
  %i.cr = or disjoint i64 %i.cq, %i.cp
  store i64 %i.cr, ptr %i.cg, align 8
  store i32 %i.ai, ptr %i.af, align 4, !alias.scope !77
  br label %parts128_mul.exitthread-pre-split

bb.e:                                             ; preds = %bb.a
  %i.cs = icmp eq i32 %i.y, 18
  br i1 %i.cs, label %bb.f, label %bb.g, !prof !27

bb.f:                                             ; preds = %bb.e
  %i.ct = load i64, ptr %4, align 4, !noalias !77
  %i.cu = or i64 %i.ct, 257
  store i64 %i.cu, ptr %4, align 4, !noalias !77
  call void @parts128_default_nan(ptr dead_on_unwind nonnull writable sret(%struct.FloatParts128) align 8 %7, ptr noundef nonnull %4)
  br label %parts128_mul.exitthread-pre-split

bb.g:                                             ; preds = %bb.e
  %i.cv = and i32 %i.y, 96
  %.not.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !24

bb.h:                                             ; preds = %bb.g
  call void @parts128_pick_nan(ptr dead_on_unwind nonnull writable sret(%struct.FloatParts128) align 8 %7, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %4)
  br label %parts128_mul.exitthread-pre-split

bb.i:                                             ; preds = %bb.g
  %i.cw = and i32 %i.y, 8
  %.not.i14 = icmp eq i32 %i.cw, 0
  br i1 %.not.i14, label %record_denormals_used.exit15, label %bb.j, !prof !24

bb.j:                                             ; preds = %bb.i
  %i.cx = load i64, ptr %4, align 4, !noalias !77
  %i.cy = or i64 %i.cx, 16384
  store i64 %i.cy, ptr %4, align 4, !noalias !77
  br label %record_denormals_used.exit15

record_denormals_used.exit15:                     ; preds = %bb.i, %bb.j
  %i.cz = and i32 %i.y, 16
  %.not27.i = icmp eq i32 %i.cz, 0
  br i1 %.not27.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %record_denormals_used.exit15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !alias.scope !77
  store i8 4, ptr %7, align 8, !alias.scope !77
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.ac, ptr %i.da, align 1, !alias.scope !77
  br label %parts128_mul.exit

bb.l:                                             ; preds = %record_denormals_used.exit15
  %i.db = and i32 %i.y, 2
  %.not28.i = icmp eq i32 %i.db, 0
  br i1 %.not28.i, label %bb.m, label %bb.n, !prof !27

bb.m:                                             ; preds = %bb.l
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 671, ptr noundef nonnull @__func__.parts128_mul, ptr noundef nonnull @.str.5) #15, !noalias !77
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !alias.scope !77
  store i8 1, ptr %7, align 8, !alias.scope !77
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.ac, ptr %i.dc, align 1, !alias.scope !77
  br label %parts128_mul.exit

parts128_mul.exitthread-pre-split:                ; preds = %bb.h, %bb.f, %bb.d, %record_denormals_used.exit
  %.pr = load i8, ptr %7, align 8
  br label %parts128_mul.exit

parts128_mul.exit:                                ; preds = %parts128_mul.exitthread-pre-split, %bb.k, %bb.n
  %i.dd = phi i8 [ %.pr, %parts128_mul.exitthread-pre-split ], [ 4, %bb.k ], [ 1, %bb.n ] ; 2 uses
  %i.de = zext nneg i8 %i.dd to i32
  %i.df = shl nuw i32 1, %i.de
  %i.dg = and i32 %i.df, 12
  %.not.i16 = icmp eq i32 %i.dg, 0
  br i1 %.not.i16, label %bb.p, label %bb.o, !prof !27

bb.o:                                             ; preds = %parts128_mul.exit
  call fastcc void @parts128_uncanon_normal(ptr noundef nonnull %7, ptr noundef %4, ptr noundef nonnull @float128_params)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre18 = load i64, ptr %.phi.trans.insert17, align 8
  %.phi.trans.insert19 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.pre20 = load i64, ptr %.phi.trans.insert19, align 8
  %i.dh = and i32 %.pre, 32767
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = shl nuw nsw i64 %i.di, 48
  br label %parts128_uncanon.exit

bb.p:                                             ; preds = %parts128_mul.exit
  switch i8 %i.dd, label %bb.s [
    i8 1, label %parts128_uncanon.exit
    i8 4, label %bb.q
    i8 5, label %bb.r
    i8 6, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  br label %parts128_uncanon.exit

bb.r:                                             ; preds = %bb.p, %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dl = load i64, ptr %i.dk, align 8            ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = tail call i64 asm "shrd ${2:b}, $1, $0", "=r,r,{cx}i,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.dl, i32 range(i32 1, -2147483646) 15, i64 %i.dn) #17, !srcloc !25
  %i.dp = lshr i64 %i.dl, 15
  br label %parts128_uncanon.exit

bb.s:                                             ; preds = %bb.p
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 538, ptr noundef nonnull @__func__.parts128_uncanon, ptr noundef null) #15
  unreachable

parts128_uncanon.exit:                            ; preds = %bb.p, %bb.o, %bb.q, %bb.r
  %i.dq = phi i64 [ %.pre20, %bb.o ], [ %i.do, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ]
  %i.dr = phi i64 [ %.pre18, %bb.o ], [ %i.dp, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ]
  %i.ds = phi i64 [ %i.dj, %bb.o ], [ 9223090561878065152, %bb.r ], [ 9223090561878065152, %bb.q ], [ 0, %bb.p ]
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !range !19, !noundef !20
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = shl nuw i64 %i.dv, 63
  %i.dx = or disjoint i64 %i.ds, %i.dw
  %i.dy = and i64 %i.dr, 281474976710655
  %i.dz = or disjoint i64 %i.dx, %i.dy
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.dq, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %i.dz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local { i64, i16 } @floatx80_mul(i64 %0, i16 %1, i64 %2, i16 %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.FloatParts64, align 8       ; 7 uses
  %6 = alloca %struct.FloatParts128, align 8      ; 15 uses
  %7 = alloca %struct.FloatParts128, align 8      ; 12 uses
  %8 = alloca %struct.FloatParts128, align 8      ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %.val31 = load i64, ptr %4, align 4             ; 6 uses
  %i.a = and i64 %.val31, 1572864
  %switch.i10.not = icmp eq i64 %i.a, 1572864
  br i1 %switch.i10.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 1511, ptr noundef nonnull @__func__.floatx80_unpack_canonical, ptr noundef null) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = lshr i64 %.val31, 51
  %i.c = trunc i64 %i.b to i8                     ; 3 uses
  %.not.i35 = icmp sgt i64 %0, -1
  %i.d = and i16 %1, 32767                        ; 4 uses
  br i1 %.not.i35, label %bb.d, label %floatx80_invalid_encoding.exit.thread

bb.d:                                             ; preds = %bb.c
  switch i16 %i.d, label %.split [
    i16 0, label %floatx80_invalid_encoding.exit.thread
    i16 32767, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %.not8.i = icmp eq i64 %0, 0
  br i1 %.not8.i, label %.split57, label %floatx80_invalid_encoding.exit

.split57:                                         ; preds = %bb.e
  %i.e = and i8 %i.c, 2
  %.not9.i = icmp eq i8 %i.e, 0
  br i1 %.not9.i, label %floatx80_unpack_canonical.exit18, label %floatx80_invalid_encoding.exit.thread, !prof !48

.split:                                           ; preds = %bb.d
  %i.f = and i8 %i.c, 8
  %.not7.i = icmp eq i8 %i.f, 0
  br i1 %.not7.i, label %floatx80_unpack_canonical.exit18, label %floatx80_invalid_encoding.exit.thread, !prof !48

floatx80_invalid_encoding.exit:                   ; preds = %bb.e
  %i.g = and i8 %i.c, 4
  %.not10.i = icmp eq i8 %i.g, 0
  br i1 %.not10.i, label %floatx80_unpack_canonical.exit18, label %floatx80_invalid_encoding.exit.thread, !prof !48

floatx80_invalid_encoding.exit.thread:            ; preds = %bb.c, %bb.d, %.split57, %.split, %floatx80_invalid_encoding.exit
  %.pre-phi = phi i16 [ 32767, %floatx80_invalid_encoding.exit ], [ %i.d, %bb.d ], [ 32767, %.split57 ], [ %i.d, %.split ], [ %i.d, %bb.c ] ; 2 uses
  %.lobit = lshr i16 %1, 15
  %i.h = trunc nuw nsw i16 %.lobit to i8
  %i.i = zext nneg i16 %.pre-phi to i32
  store i8 0, ptr %6, align 8
  %.sroa.2.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 4 uses
  store i8 %i.h, ptr %.sroa.2.0..sroa_idx.i11, align 1
  %.sroa.3.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 0, ptr %.sroa.3.0..sroa_idx.i12, align 2
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx.i13, align 4
  %.sroa.5.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %0, ptr %.sroa.5.0..sroa_idx.i14, align 8
  %.sroa.6.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i15, align 8
  %.not.i16 = icmp eq i16 %.pre-phi, 32767
  br i1 %.not.i16, label %bb.g, label %bb.f, !prof !27

bb.f:                                             ; preds = %floatx80_invalid_encoding.exit.thread
  call fastcc void @parts128_canonicalize(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull @floatx80_params)
  br label %bb.j

bb.g:                                             ; preds = %floatx80_invalid_encoding.exit.thread
  %i.j = and i64 %0, 9223372036854775807          ; 3 uses
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx.i14, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call fastcc zeroext i1 @parts_is_snan_frac(i64 noundef %i.j, i64 %.val31)
  %i.m = select i1 %i.l, i8 6, i8 5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = phi i8 [ %i.m, %bb.h ], [ 4, %bb.g ]
  store i8 %i.n, ptr %6, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %.val32 = load i64, ptr %4, align 4             ; 6 uses
  %i.o = and i64 %.val32, 1572864
  %switch.i.not = icmp eq i64 %i.o, 1572864
  br i1 %switch.i.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 1511, ptr noundef nonnull @__func__.floatx80_unpack_canonical, ptr noundef null) #15
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.p = lshr i64 %.val32, 51
  %i.q = trunc i64 %i.p to i8                     ; 3 uses
  %.not.i37 = icmp sgt i64 %2, -1
  %i.r = and i16 %3, 32767                        ; 4 uses
  br i1 %.not.i37, label %bb.m, label %floatx80_invalid_encoding.exit43.thread

bb.m:                                             ; preds = %bb.l
  switch i16 %i.r, label %.split63 [
    i16 0, label %floatx80_invalid_encoding.exit43.thread
    i16 32767, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %.not8.i39 = icmp eq i64 %2, 0
  br i1 %.not8.i39, label %.split65, label %floatx80_invalid_encoding.exit43

.split65:                                         ; preds = %bb.n
  %i.s = and i8 %i.q, 2
  %.not9.i41 = icmp eq i8 %i.s, 0
  br i1 %.not9.i41, label %floatx80_unpack_canonical.exit18, label %floatx80_invalid_encoding.exit43.thread, !prof !62

.split63:                                         ; preds = %bb.m
  %i.t = and i8 %i.q, 8
  %.not7.i42 = icmp eq i8 %i.t, 0
  br i1 %.not7.i42, label %floatx80_unpack_canonical.exit18, label %floatx80_invalid_encoding.exit43.thread, !prof !62

floatx80_invalid_encoding.exit43:                 ; preds = %bb.n
  %i.u = and i8 %i.q, 4
  %.not10.i40 = icmp eq i8 %i.u, 0
  br i1 %.not10.i40, label %floatx80_unpack_canonical.exit18, label %floatx80_invalid_encoding.exit43.thread, !prof !62

floatx80_invalid_encoding.exit43.thread:          ; preds = %bb.l, %bb.m, %.split65, %.split63, %floatx80_invalid_encoding.exit43
  %.pre-phi75 = phi i16 [ 32767, %floatx80_invalid_encoding.exit43 ], [ %i.r, %bb.m ], [ 32767, %.split65 ], [ %i.r, %.split63 ], [ %i.r, %bb.l ] ; 2 uses
end_hunk_1
