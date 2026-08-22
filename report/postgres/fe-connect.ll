Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/fe-connect?download=true
inline.NumInlined: 99
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@pqParseProtocolVersion:bb.a

bb.b:                                             ; preds = %bb.a
  store i32 196610, ptr %1, align 4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.302) #24
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 196608, ptr %1, align 4
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.303) #24
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 196610, ptr %1, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @libpq_append_conn_error(ptr noundef %2, ptr noundef nonnull @.str.16, ptr noundef %3, ptr noundef nonnull %0) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ true, %bb.d ], [ true, %bb.f ], [ false, %bb.g ]
  ret i1 %.0
}

declare ptr @pg_encoding_to_char(i32 noundef) local_unnamed_addr #1

declare i32 @pg_get_encoding_from_locale(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef ptr @PQconndefaults() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.PQExpBufferData, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  call void @initPQExpBuffer(ptr noundef nonnull %0) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc ptr @conninfo_init(ptr noundef %0) ; 6 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call fastcc zeroext i1 @conninfo_add_defaults(ptr noundef %i.d, ptr noundef null)
  br i1 %i.e, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.f = load ptr, ptr %i.d, align 8
  %.not7.i = icmp eq ptr %i.f, null
  br i1 %.not7.i, label %PQconninfoFree.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.08.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.d, %.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.08.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  call void @free(ptr noundef %i.h) #23
  %i.i = getelementptr inbounds nuw i8, ptr %.08.i, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %PQconninfoFree.exit, label %.lr.ph.i, !llvm.loop !5

PQconninfoFree.exit:                              ; preds = %.lr.ph.i, %.preheader.i
  call void @free(ptr noundef nonnull %i.d) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %PQconninfoFree.exit, %bb.b
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %PQconninfoFree.exit ], [ null, %bb.b ]
  call void @termPQExpBuffer(ptr noundef nonnull %0) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.05 = phi ptr [ %.0, %bb.d ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  ret ptr %.05
}

declare void @initPQExpBuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @conninfo_init(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(2968) ptr @malloc(i64 noundef 2968) #26 ; 55 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.preheader30.preheader

.preheader30.preheader:                           ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 16 dereferenceable(56) @PQconninfoOptions, i64 56, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 64), i64 56, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 128), i64 56, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 192), i64 56, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 256), i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 320), i64 56, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 384), i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 448), i64 56, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 512), i64 56, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 576), i64 56, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 640), i64 56, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 704), i64 56, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 768), i64 56, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 728
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 832), i64 56, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 896), i64 56, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 840
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 960), i64 56, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 1024), i64 56, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 1088), i64 56, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 1152), i64 56, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1064
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 1216), i64 56, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 1280), i64 56, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 1344), i64 56, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 1408), i64 56, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 1472), i64 56, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 1536), i64 56, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 1400
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 1600), i64 56, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1456
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 1664), i64 56, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 1512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 1728), i64 56, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 1568
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 1792), i64 56, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 1624
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 1856), i64 56, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1680
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 1920), i64 56, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1736
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 1984), i64 56, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 1792
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 2048), i64 56, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 1848
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 2112), i64 56, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1904
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 2176), i64 56, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 1960
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 2240), i64 56, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 2016
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 2304), i64 56, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 2072
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 2368), i64 56, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 2128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 2432), i64 56, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 2184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 2496), i64 56, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 2240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 2560), i64 56, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 2296
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 2624), i64 56, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 2352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 2688), i64 56, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 2408
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.as, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 2752), i64 56, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 2464
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 2816), i64 56, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 2520
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.au, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 2880), i64 56, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 2576
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.av, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 2944), i64 56, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 2632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 3008), i64 56, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 2688
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 3072), i64 56, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 2744
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ay, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 3136), i64 56, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 2800
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.az, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 3200), i64 56, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 2856
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @PQconninfoOptions, i64 3264), i64 56, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 2912
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.bb, i8 0, i64 56, i1 false)
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @libpq_append_error(ptr noundef nonnull %0, ptr noundef nonnull @.str) #23
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader30.preheader, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @conninfo_add_defaults(ptr nofree noundef nonnull captures(address) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.passwd, align 8             ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %i.c = alloca [1024 x i8], align 16             ; 13 uses
  %i.d = alloca i8, align 1                       ; 10 uses
  %3 = alloca %struct.stat, align 8               ; 6 uses
  %i.e = alloca [1024 x i8], align 16             ; 6 uses
  %i.f = load ptr, ptr %0, align 8                ; 3 uses
  %.not9.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not9.i.i.i, label %conninfo_getval.exit42.thread.i, label %.lr.ph.i.i.i

conninfo_getval.exit42.thread.i:                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i8 0, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  br label %bb.d

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.k, %bb.b ], [ %i.f, %bb.a ]
  %.010.i.i.i = phi ptr [ %i.j, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(8) @.str.116) #24
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %conninfo_find.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %conninfo_getval.exit.i, label %.lr.ph.i.i.i, !llvm.loop !10

conninfo_find.exit.i.i:                           ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  br label %conninfo_getval.exit.i

conninfo_getval.exit.i:                           ; preds = %bb.b, %conninfo_find.exit.i.i
  %i.n = phi ptr [ %i.m, %conninfo_find.exit.i.i ], [ null, %bb.b ] ; 2 uses
  br label %.lr.ph.i.i38.i

.lr.ph.i.i38.i:                                   ; preds = %bb.c, %conninfo_getval.exit.i
  %i.o = phi ptr [ %i.s, %bb.c ], [ %i.f, %conninfo_getval.exit.i ]
  %.010.i.i39.i = phi ptr [ %i.r, %bb.c ], [ %0, %conninfo_getval.exit.i ] ; 2 uses
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull readonly dereferenceable(12) @.str.119) #24
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %conninfo_find.exit.i41.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i38.i
  %i.r = getelementptr inbounds nuw i8, ptr %.010.i.i39.i, i64 56 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not.i.i40.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i40.i, label %conninfo_getval.exit42.i, label %.lr.ph.i.i38.i, !llvm.loop !10

conninfo_find.exit.i41.i:                         ; preds = %.lr.ph.i.i38.i
  %i.t = getelementptr inbounds nuw i8, ptr %.010.i.i39.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  br label %conninfo_getval.exit42.i

conninfo_getval.exit42.i:                         ; preds = %bb.c, %conninfo_find.exit.i41.i
  %i.v = phi ptr [ %i.u, %conninfo_find.exit.i41.i ], [ null, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i8 0, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.w = icmp eq ptr %i.n, null
  br i1 %i.w, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %conninfo_getval.exit42.i, %conninfo_getval.exit42.thread.i
  %i.x = phi ptr [ null, %conninfo_getval.exit42.thread.i ], [ %i.v, %conninfo_getval.exit42.i ]
  %i.y = tail call ptr @getenv(ptr noundef nonnull @.str.117) #23 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %parseServiceInfo.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.d, %conninfo_getval.exit42.i
  %.02644.i = phi ptr [ %i.y, %bb.d ], [ %i.n, %conninfo_getval.exit42.i ] ; 3 uses
  %i.aa = phi ptr [ %i.x, %bb.d ], [ %i.v, %conninfo_getval.exit42.i ] ; 2 uses
  %i.ab = icmp ne ptr %i.aa, null                 ; 2 uses
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread.i
  %i.ac = call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.aa, i64 noundef 1024) #23 ; 0 uses
  br label %bb.m

bb.f:                                             ; preds = %.thread.i
  %i.ad = tail call ptr @getenv(ptr noundef nonnull @.str.120) #23 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.ad, i64 noundef 1024) #23 ; 0 uses
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.af = tail call ptr @getenv(ptr noundef nonnull @.str.114) #23 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i8, ptr %i.af, align 1
  %.not11.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not11.i.i, label %bb.j, label %pqGetHomeDirectory.exit.thread.i

pqGetHomeDirectory.exit.thread.i:                 ; preds = %bb.i
  %i.ah = call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %i.af, i64 noundef 1024) #23 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ai = tail call i32 @geteuid() #23
  %i.aj = call i32 @getpwuid_r(i32 noundef %i.ai, ptr noundef nonnull %2, ptr noundef nonnull %i.b, i64 noundef 1024, ptr noundef nonnull %i.a) #23
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.am = icmp ne ptr %i.al, null
  %or.cond.i.i = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %or.cond.i.i, label %pqGetHomeDirectory.exit.thread46.i, label %pqGetHomeDirectory.exit.i

pqGetHomeDirectory.exit.thread46.i:               ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %i.ao, i64 noundef 1024) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.k

pqGetHomeDirectory.exit.i:                        ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.thread47.i

bb.k:                                             ; preds = %pqGetHomeDirectory.exit.thread46.i, %pqGetHomeDirectory.exit.thread.i
  %i.aq = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.c, i64 noundef 1024, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.281) #23 ; 0 uses
  %i.ar = call i32 @stat(ptr noundef nonnull %i.c, ptr noundef nonnull %3) #23
  %.not33.i = icmp eq i32 %i.ar, 0
  br i1 %.not33.i, label %bb.l, label %.thread47.i

.thread47.i:                                      ; preds = %bb.k, %pqGetHomeDirectory.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g, %bb.e
  %i.as = call fastcc i32 @parseServiceFile(ptr noundef %i.c, ptr noundef %.02644.i, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.d) ; 2 uses
  %i.at = load i8, ptr %i.d, align 1, !range !12, !noundef !13
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = icmp ne i32 %i.as, 0
  %or.cond.i = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond.i, label %parseServiceInfo.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread47.i
  %i.aw = call ptr @getenv(ptr noundef nonnull @.str.283) #23 ; 2 uses
  %.not34.i = icmp eq ptr %i.aw, null
  %spec.select.i = select i1 %.not34.i, ptr @.str.284, ptr %i.aw
  %i.ax = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.c, i64 noundef 1024, ptr noundef nonnull @.str.282, ptr noundef nonnull %spec.select.i) #23 ; 0 uses
  %i.ay = call i32 @stat(ptr noundef nonnull %i.c, ptr noundef nonnull %3) #23
  %.not35.i = icmp eq i32 %i.ay, 0
  br i1 %.not35.i, label %bb.o, label %.thread63.i

bb.o:                                             ; preds = %bb.n
  %i.az = call fastcc i32 @parseServiceFile(ptr noundef %i.c, ptr noundef %.02644.i, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.d) ; 2 uses
  %.not36.i = icmp eq i32 %i.az, 0
  br i1 %.not36.i, label %bb.p, label %parseServiceInfo.exit

bb.p:                                             ; preds = %bb.o
  %i.ba = load i8, ptr %i.d, align 1, !range !12, !noundef !13
  %i.bb = trunc nuw i8 %i.ba to i1                ; 2 uses
  %or.cond3.i = and i1 %i.ab, %i.bb
  br i1 %or.cond3.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bc = call fastcc ptr @conninfo_storeval(ptr noundef nonnull %0, ptr noundef nonnull @.str.119, ptr noundef nonnull %i.c, ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.bd = icmp eq ptr %i.bc, null
  %spec.select66.i = select i1 %i.bd, i32 3, i32 0
  br label %parseServiceInfo.exit

bb.r:                                             ; preds = %bb.p
  br i1 %i.bb, label %parseServiceInfo.exit.thread, label %.thread63.i

.thread63.i:                                      ; preds = %bb.r, %bb.n
  call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %1, ptr noundef nonnull @.str.285, ptr noundef nonnull %.02644.i) #23
end_hunk_0
begin_hunk_1_@conninfo_uri_parse_params:bb.a
  tail call void @free(ptr noundef %i.ag) #23
  store ptr %i.aa, ptr %i.af, align 8
  br i1 %.045, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef %.050) #23
  tail call void @free(ptr noundef %.249) #23
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ah = load i8, ptr %.1, align 1               ; 2 uses
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %.thread, label %.preheader

.thread:                                          ; preds = %bb.z, %bb.j, %bb.a, %bb.w, %bb.v, %bb.l, %bb.g, %bb.d
  %.not80 = phi i1 [ false, %bb.d ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.l ], [ false, %bb.g ], [ true, %bb.a ], [ %.not174.not, %bb.j ], [ %.not174.not, %bb.z ]
  ret i1 %.not80
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @conninfo_uri_decode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %i.b = add i64 %i.a, 1
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #26 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.preheader67

.preheader67:                                     ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1                 ; 2 uses
  %i.f = icmp eq i8 %i.e, 32
  br i1 %i.f, label %.lr.ph, label %.preheader.preheader

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %1, ptr noundef nonnull @.str) #23
  br label %.critedge

.lr.ph:                                           ; preds = %.preheader67, %.lr.ph
  %.03773 = phi ptr [ %i.g, %.lr.ph ], [ %0, %.preheader67 ]
  %i.g = getelementptr i8, ptr %.03773, i64 1     ; 3 uses
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = icmp eq i8 %i.h, 32
  br i1 %i.i, label %.lr.ph, label %.preheader.preheader, !llvm.loop !52

.preheader.preheader:                             ; preds = %.lr.ph, %.preheader67
  %.ph = phi i8 [ %i.e, %.preheader67 ], [ %i.h, %.lr.ph ]
  %.1.ph = phi ptr [ %0, %.preheader67 ], [ %i.g, %.lr.ph ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.m
  %i.j = phi i8 [ %.pre, %bb.m ], [ %.ph, %.preheader.preheader ] ; 3 uses
  %.040 = phi ptr [ %.242, %bb.m ], [ %i.c, %.preheader.preheader ] ; 3 uses
  %.1 = phi ptr [ %.4, %bb.m ], [ %.1.ph, %.preheader.preheader ] ; 5 uses
  switch i8 %i.j, label %bb.c [
    i8 37, label %bb.d
    i8 32, label %.lr.ph76
    i8 0, label %._crit_edge
  ]

bb.c:                                             ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %bb.m

bb.d:                                             ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.n = load i8, ptr %i.l, align 1               ; 4 uses
  %i.o = zext nneg i8 %i.n to i32
  %i.p = add i8 %i.n, -48
  %or.cond.i = icmp ult i8 %i.p, 10
  br i1 %or.cond.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add i8 %i.n, -65
  %or.cond5.i = icmp ult i8 %i.q, 6
  br i1 %or.cond5.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add i8 %i.n, -97
  %or.cond8.i = icmp ult i8 %i.r, 6
  br i1 %or.cond8.i, label %bb.g, label %get_hexdigit.exit

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.sink21.i = phi i32 [ -48, %bb.d ], [ -55, %bb.e ], [ -87, %bb.f ]
  %i.s = add nsw i32 %.sink21.i, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.u = load i8, ptr %i.m, align 1               ; 4 uses
  %i.v = zext nneg i8 %i.u to i32
  %i.w = add i8 %i.u, -48
  %or.cond.i51 = icmp ult i8 %i.w, 10
  br i1 %or.cond.i51, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = add i8 %i.u, -65
  %or.cond5.i52 = icmp ult i8 %i.x, 6
  br i1 %or.cond5.i52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add i8 %i.u, -97
  %or.cond8.i53 = icmp ult i8 %i.y, 6
  br i1 %or.cond8.i53, label %bb.j, label %get_hexdigit.exit

get_hexdigit.exit:                                ; preds = %bb.i, %bb.f
  tail call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %1, ptr noundef nonnull @.str.274, ptr noundef nonnull %0) #23
  tail call void @free(ptr noundef %i.c) #23
  br label %.critedge

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.sink21.i56 = phi i32 [ -48, %bb.g ], [ -55, %bb.h ], [ -87, %bb.i ]
  %i.z = add nsw i32 %.sink21.i56, %i.v
  %i.aa = shl nsw i32 %i.s, 4
  %i.ab = or i32 %i.z, %i.aa                      ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %1, ptr noundef nonnull @.str.275, ptr noundef nonnull %0) #23
  tail call void @free(ptr noundef %i.c) #23
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.ad = trunc i32 %i.ab to i8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
  %storemerge = phi i8 [ %i.ad, %bb.l ], [ %i.j, %bb.c ]
  %.4 = phi ptr [ %i.t, %bb.l ], [ %i.k, %bb.c ]  ; 2 uses
  %.242 = getelementptr inbounds nuw i8, ptr %.040, i64 1
  store i8 %storemerge, ptr %.040, align 1
  %.pre = load i8, ptr %.4, align 1
  br label %.preheader

._crit_edge:                                      ; preds = %.preheader, %.lr.ph76
  %i.ae = phi i8 [ %i.ag, %.lr.ph76 ], [ %i.j, %.preheader ]
  %.not50 = icmp eq i8 %i.ae, 0
  br i1 %.not50, label %bb.o, label %bb.n

.lr.ph76:                                         ; preds = %.preheader, %.lr.ph76
  %.075 = phi ptr [ %i.af, %.lr.ph76 ], [ %.1, %.preheader ]
  %i.af = getelementptr i8, ptr %.075, i64 1      ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 32
  br i1 %i.ah, label %.lr.ph76, label %._crit_edge, !llvm.loop !53

bb.n:                                             ; preds = %._crit_edge
  tail call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %1, ptr noundef nonnull @.str.276, ptr noundef nonnull %0) #23
  tail call void @free(ptr noundef %i.c) #23
  br label %.critedge

bb.o:                                             ; preds = %._crit_edge
  store i8 0, ptr %.040, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %get_hexdigit.exit, %bb.o, %bb.n, %bb.b
  %.346 = phi ptr [ null, %bb.b ], [ null, %bb.n ], [ %i.c, %bb.o ], [ null, %get_hexdigit.exit ], [ null, %bb.k ]
  ret ptr %.346
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @parseServiceFile(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3, ptr nofree noundef nonnull captures(none) initializes((0, 1)) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %4, align 1
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.286) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.preheader125

.preheader125:                                    ; preds = %bb.a
  %i.d = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.b) ; 2 uses
  %.not144 = icmp eq ptr %i.d, null
  br i1 %.not144, label %.thread119, label %.lr.ph146

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %3, ptr noundef nonnull @.str.287, ptr noundef nonnull %0) #23
  br label %bb.x

.lr.ph146:                                        ; preds = %.preheader125, %.critedge2.thread
  %i.e = phi ptr [ %i.bj, %.critedge2.thread ], [ %i.d, %.preheader125 ] ; 5 uses
  %.092145 = phi i32 [ %i.f, %.critedge2.thread ], [ 0, %.preheader125 ]
  %i.f = add i32 %.092145, 1                      ; 6 uses
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #24 ; 3 uses
  %i.h = icmp ugt i64 %i.g, 1022
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph146
  call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %3, ptr noundef nonnull @.str.288, i32 noundef %i.f, ptr noundef nonnull %0) #23
  br label %.thread119.thread

bb.d:                                             ; preds = %.lr.ph146
  %.not151 = icmp eq i64 %i.g, 0
  br i1 %.not151, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %5 = trunc nuw nsw i64 %i.g to i32
  %i.i = tail call ptr @__ctype_b_loc() #25
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.087135 = phi i32 [ %5, %.lr.ph ], [ %7, %bb.f ] ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %6 = zext nneg i32 %.087135 to i64
  %i.k = getelementptr i8, ptr %i.e, i64 %6
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2
  %i.q = and i16 %i.p, 8192
  %.not102 = icmp eq i16 %i.q, 0
  br i1 %.not102, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %7 = add nsw i32 %.087135, -1                   ; 2 uses
  %8 = zext nneg i32 %7 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %8
  store i8 0, ptr %i.r, align 1
  %i.s = icmp sgt i32 %.087135, 1
  br i1 %i.s, label %bb.e, label %.critedge, !llvm.loop !54

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.d
  %i.t = load i8, ptr %i.e, align 1               ; 2 uses
  %.not103137 = icmp eq i8 %i.t, 0
  br i1 %.not103137, label %.critedge2.thread, label %.lr.ph139

.lr.ph139:                                        ; preds = %.critedge
  %i.u = tail call ptr @__ctype_b_loc() #25
  %i.v = load ptr, ptr %i.u, align 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph139, %bb.h
  %i.w = phi i8 [ %i.t, %.lr.ph139 ], [ %i.ac, %bb.h ] ; 2 uses
  %.089138 = phi ptr [ %i.e, %.lr.ph139 ], [ %i.ab, %bb.h ] ; 8 uses
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = and i16 %i.z, 8192
  %.not104 = icmp eq i16 %i.aa, 0
  br i1 %.not104, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.089138, i64 1 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %.not103 = icmp eq i8 %i.ac, 0
  br i1 %.not103, label %.critedge2.thread, label %bb.g, !llvm.loop !55

.critedge2:                                       ; preds = %bb.g
  switch i8 %i.w, label %bb.m [
    i8 91, label %bb.i
    i8 35, label %.critedge2.thread
  ]

bb.i:                                             ; preds = %.critedge2
  %i.ad = load i8, ptr %4, align 1, !range !12, !noundef !13
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.thread119, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.089138, i64 1
  %i.ag = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 2 uses
  %i.ah = call i32 @strncmp(ptr noundef nonnull %i.af, ptr noundef nonnull %1, i64 noundef %i.ag) #24
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %.089138, i64 %i.ag
  %i.ak = getelementptr i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 93
  br i1 %i.am, label %.critedge2.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %.critedge2.thread.sink.split

bb.m:                                             ; preds = %.critedge2
  %i.an = load i8, ptr %4, align 1, !range !12, !noundef !13
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.n, label %.critedge2.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.089138, i32 noundef 61) #24 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %3, ptr noundef nonnull @.str.289, ptr noundef nonnull %0, i32 noundef %i.f) #23
  br label %.thread119.thread

bb.p:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 0, ptr %i.ap, align 1
  %i.as = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.089138, ptr noundef nonnull dereferenceable(8) @.str.116) #24
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %3, ptr noundef nonnull @.str.290, ptr noundef nonnull %0, i32 noundef %i.f) #23
  br label %.thread119.thread

bb.r:                                             ; preds = %bb.p
  %i.au = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.089138, ptr noundef nonnull dereferenceable(12) @.str.119) #24
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.s, label %.preheader124

.preheader124:                                    ; preds = %bb.r
  %i.aw = load ptr, ptr %2, align 8               ; 2 uses
  %.not105.not140 = icmp eq ptr %i.aw, null
  br i1 %.not105.not140, label %.critedge111, label %.lr.ph142.preheader

.lr.ph142.preheader:                              ; preds = %.preheader124
  %i.ax = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(1) %.089138) #24
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph142._crit_edge, label %.lr.ph208

bb.s:                                             ; preds = %bb.r
  call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %3, ptr noundef nonnull @.str.291, ptr noundef nonnull %0, i32 noundef %i.f) #23
  br label %.thread119.thread

.lr.ph208:                                        ; preds = %.lr.ph142.preheader, %.lr.ph142
  %.090141207 = phi i32 [ %i.az, %.lr.ph142 ], [ 0, %.lr.ph142.preheader ]
  %i.az = add i32 %.090141207, 1                  ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [56 x i8], ptr %2, i64 %i.ba ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not105.not = icmp eq ptr %i.bc, null
  br i1 %.not105.not, label %.critedge111, label %.lr.ph142, !llvm.loop !56

.lr.ph142:                                        ; preds = %.lr.ph208
  %i.bd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bc, ptr noundef nonnull dereferenceable(1) %.089138) #24
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph142._crit_edge, label %.lr.ph208, !llvm.loop !56

.lr.ph142._crit_edge:                             ; preds = %.lr.ph142, %.lr.ph142.preheader
  %.lcssa197 = phi ptr [ %2, %.lr.ph142.preheader ], [ %i.bb, %.lr.ph142 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.lcssa197, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.t, label %.critedge2.thread

bb.t:                                             ; preds = %.lr.ph142._crit_edge
  %i.bi = call noalias ptr @strdup(ptr noundef nonnull %i.ar) #23 ; 2 uses
  store ptr %i.bi, ptr %i.bf, align 8
  %.not106 = icmp eq ptr %i.bi, null
  br i1 %.not106, label %bb.u, label %.critedge2.thread

bb.u:                                             ; preds = %bb.t
  call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %3, ptr noundef nonnull @.str) #23
  br label %.thread119.thread

.critedge111:                                     ; preds = %.preheader124, %.lr.ph208
  call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %3, ptr noundef nonnull @.str.289, ptr noundef nonnull %0, i32 noundef %i.f) #23
  br label %.thread119.thread

.critedge2.thread.sink.split:                     ; preds = %bb.k, %bb.l
  %.sink = phi i8 [ 0, %bb.l ], [ 1, %bb.k ]
  store i8 %.sink, ptr %4, align 1
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %bb.h, %.critedge2.thread.sink.split, %.critedge, %.lr.ph142._crit_edge, %bb.t, %bb.m, %.critedge2
  %i.bj = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.b) ; 2 uses
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %.thread119, label %.lr.ph146

.thread119:                                       ; preds = %.critedge2.thread, %bb.i, %.preheader125
  %i.bk = load i8, ptr %4, align 1, !range !12, !noundef !13
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.preheader, label %.thread119.thread

.preheader:                                       ; preds = %.thread119
  %i.bm = load ptr, ptr %2, align 8               ; 2 uses
  %.not107148 = icmp eq ptr %i.bm, null
  br i1 %.not107148, label %.thread119.thread, label %.lr.ph150.preheader

.lr.ph150.preheader:                              ; preds = %.preheader
  %i.bn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(12) @.str.119) #24
  %.not108209 = icmp eq i32 %i.bn, 0
  br i1 %.not108209, label %.lr.ph150._crit_edge, label %.lr.ph211

.lr.ph211:                                        ; preds = %.lr.ph150.preheader, %.lr.ph150
  %.191149210 = phi i32 [ %i.bo, %.lr.ph150 ], [ 0, %.lr.ph150.preheader ]
  %i.bo = add i32 %.191149210, 1                  ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [56 x i8], ptr %2, i64 %i.bp ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not107 = icmp eq ptr %i.br, null
  br i1 %.not107, label %.thread119.thread, label %.lr.ph150, !llvm.loop !57

.lr.ph150:                                        ; preds = %.lr.ph211
  %i.bs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.br, ptr noundef nonnull dereferenceable(12) @.str.119) #24
  %.not108 = icmp eq i32 %i.bs, 0
  br i1 %.not108, label %.lr.ph150._crit_edge, label %.lr.ph211, !llvm.loop !57

.lr.ph150._crit_edge:                             ; preds = %.lr.ph150, %.lr.ph150.preheader
  %.lcssa = phi ptr [ %2, %.lr.ph150.preheader ], [ %i.bq, %.lr.ph150 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %.not109 = icmp eq ptr %i.bu, null
  br i1 %.not109, label %bb.v, label %.thread119.thread

bb.v:                                             ; preds = %.lr.ph150._crit_edge
  %i.bv = call noalias ptr @strdup(ptr noundef nonnull %0) #23 ; 2 uses
  store ptr %i.bv, ptr %i.bt, align 8
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.w, label %.thread119.thread

bb.w:                                             ; preds = %bb.v
  call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %3, ptr noundef nonnull @.str) #23
  br label %.thread119.thread

.thread119.thread:                                ; preds = %.lr.ph211, %.preheader, %.critedge111, %bb.u, %bb.s, %bb.q, %bb.o, %bb.c, %.lr.ph150._crit_edge, %bb.w, %bb.v, %.thread119
  %.5 = phi i32 [ 0, %.lr.ph150._crit_edge ], [ 3, %bb.w ], [ 0, %bb.v ], [ 2, %bb.c ], [ 0, %.thread119 ], [ 3, %.critedge111 ], [ 3, %bb.u ], [ 3, %bb.s ], [ 3, %bb.q ], [ 3, %bb.o ], [ 0, %.preheader ], [ 0, %.lr.ph211 ]
  %i.bx = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.thread119.thread, %bb.b
  %.095 = phi i32 [ 1, %bb.b ], [ %.5, %.thread119.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.095
end_hunk_1
