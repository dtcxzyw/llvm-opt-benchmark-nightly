Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/gzlib?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0_@zng_gz_error:bb.a
bb.bg:                                            ; preds = %bb.bf
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @182, i64 %i.b) #12, !nosanitize !13
  br label %bb.bh, !nosanitize !13

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.ao = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ap = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.ae, i64 noundef %i.am, ptr noundef nonnull @.str.4, ptr noundef %i.ao, ptr noundef nonnull @.str.5, ptr noundef nonnull %2) #12 ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.ac, %bb.bh, %bb.as
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare hidden void @zng_free_aligned(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zng_gzopen(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !func_sanitize !47 {
bb.a:
  %i.a = call fastcc ptr @gz_open(ptr noundef %0, i32 noundef -1, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @gz_open(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 !func_sanitize !49 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %gz_state_init.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call noalias noundef dereferenceable_or_null(240) ptr @malloc(i64 noundef 240) #15 ; 27 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %gz_state_init.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64                 ; 43 uses
  %i.e = and i64 %i.d, 7
  %i.f = icmp eq i64 %i.e, 0                      ; 39 uses
  br i1 %i.f, label %bb.e, label %bb.d, !prof !14, !nosanitize !13

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @218, i64 %i.d) #12, !nosanitize !13
  br label %bb.e, !nosanitize !13

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64, !nosanitize !13 ; 6 uses
  %i.i = and i64 %i.h, 7, !nosanitize !13
  %i.j = icmp eq i64 %i.i, 0, !nosanitize !13     ; 4 uses
  br i1 %i.j, label %bb.g, label %bb.f, !prof !14, !nosanitize !13

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @219, i64 %i.h) #12, !nosanitize !13
  br label %bb.g, !nosanitize !13

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64, !nosanitize !13 ; 2 uses
  %i.m = and i64 %i.l, 7, !nosanitize !13
  %i.n = icmp eq i64 %i.m, 0, !nosanitize !13
  br i1 %i.n, label %bb.i, label %bb.h, !prof !14, !nosanitize !13

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @221, i64 %i.l) #12, !nosanitize !13
  br label %bb.i, !nosanitize !13

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr null, ptr %i.k, align 8, !tbaa !50
  br i1 %i.f, label %bb.k, label %bb.j, !prof !14, !nosanitize !13

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @222, i64 %i.d) #12, !nosanitize !13
  br label %bb.k, !nosanitize !13

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.j, label %bb.m, label %bb.l, !prof !14, !nosanitize !13

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @223, i64 %i.h) #12, !nosanitize !13
  br label %bb.m, !nosanitize !13

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr null, ptr %i.o, align 8, !tbaa !51
  br i1 %i.f, label %bb.o, label %bb.n, !prof !14, !nosanitize !13

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @224, i64 %i.d) #12, !nosanitize !13
  br label %bb.o, !nosanitize !13

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.j, label %bb.q, label %bb.p, !prof !14, !nosanitize !13

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @225, i64 %i.h) #12, !nosanitize !13
  br label %bb.q, !nosanitize !13

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store ptr null, ptr %i.p, align 8, !tbaa !52
  br i1 %i.f, label %bb.s, label %bb.r, !prof !14, !nosanitize !13

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @226, i64 %i.d) #12, !nosanitize !13
  br label %bb.s, !nosanitize !13

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %i.j, label %.critedge.i, label %bb.t, !prof !14, !nosanitize !13

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @227, i64 %i.h) #12, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @229, i64 %i.h) #12, !nosanitize !13
  br label %.critedge.i, !nosanitize !13

.critedge.i:                                      ; preds = %bb.t, %bb.s
  store ptr null, ptr %i.g, align 8, !tbaa !53
  br i1 %i.f, label %.critedge86, label %bb.u, !prof !14, !nosanitize !13

bb.u:                                             ; preds = %.critedge.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @230, i64 %i.d) #12, !nosanitize !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.q, align 8, !tbaa !29
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @231, i64 %i.d) #12, !nosanitize !13
  br label %bb.v, !nosanitize !13

.critedge86:                                      ; preds = %.critedge.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.r, align 8, !tbaa !29
  br label %bb.v

bb.v:                                             ; preds = %.critedge86, %bb.u
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 131072, ptr %i.s, align 4, !tbaa !22
  br i1 %i.f, label %.critedge90, label %bb.w, !prof !14, !nosanitize !13

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @232, i64 %i.d) #12, !nosanitize !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr null, ptr %i.t, align 8, !tbaa !27
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @233, i64 %i.d) #12, !nosanitize !13
  br label %bb.x, !nosanitize !13

.critedge90:                                      ; preds = %bb.v
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr null, ptr %i.u, align 8, !tbaa !27
  br label %bb.x

bb.x:                                             ; preds = %.critedge90, %bb.w
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr null, ptr %i.v, align 8, !tbaa !28
  br i1 %i.f, label %bb.z, label %bb.y, !prof !14, !nosanitize !13

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @234, i64 %i.d) #12, !nosanitize !13
  br label %bb.z, !nosanitize !13

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  store i32 0, ptr %i.w, align 8, !tbaa !24
  br i1 %i.f, label %bb.ab, label %bb.aa, !prof !14, !nosanitize !13

bb.aa:                                            ; preds = %bb.z
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @235, i64 %i.d) #12, !nosanitize !13
  br label %bb.ab, !nosanitize !13

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 11 uses
  store i32 0, ptr %i.x, align 8, !tbaa !23
  br i1 %i.f, label %bb.ad, label %bb.ac, !prof !14, !nosanitize !13

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @236, i64 %i.d) #12, !nosanitize !13
  br label %bb.ad, !nosanitize !13

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  store i32 -1, ptr %i.y, align 8, !tbaa !54
  br i1 %i.f, label %bb.af, label %bb.ae, !prof !14, !nosanitize !13

bb.ae:                                            ; preds = %bb.ad
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @237, i64 %i.d) #12, !nosanitize !13
  br label %bb.af, !nosanitize !13

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 5 uses
  store i32 0, ptr %i.z, align 4, !tbaa !55
  br i1 %i.f, label %gz_state_init.exit, label %bb.ag, !prof !14, !nosanitize !13

bb.ag:                                            ; preds = %bb.af
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @238, i64 %i.d) #12, !nosanitize !13
  br label %gz_state_init.exit, !nosanitize !13

gz_state_init.exit:                               ; preds = %bb.ag, %bb.af
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr null, ptr %i.aa, align 8, !tbaa !30
  br label %bb.ah

bb.ah:                                            ; preds = %.backedge, %gz_state_init.exit
  %.056 = phi ptr [ %2, %gz_state_init.exit ], [ %i.ag, %.backedge ] ; 6 uses
  %.054 = phi i32 [ 0, %gz_state_init.exit ], [ %.155, %.backedge ] ; 12 uses
  %.0 = phi i32 [ 0, %gz_state_init.exit ], [ %.1, %.backedge ] ; 12 uses
  %.not84 = icmp eq ptr %.056, null, !nosanitize !13
  br i1 %.not84, label %bb.ai, label %bb.aj, !prof !25, !nosanitize !13

bb.ai:                                            ; preds = %bb.ah
  %i.ab = ptrtoint ptr %.056 to i64, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @184, i64 %i.ab) #12, !nosanitize !13
  %3 = load i8, ptr %.056, align 4294967296, !tbaa !56 ; 2 uses
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %bb.bs, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ac = load i8, ptr %.056, align 1, !tbaa !56  ; 2 uses
  %.not.a = icmp eq i8 %i.ac, 0
  br i1 %.not.a, label %bb.bs, label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %4 = phi i8 [ %i.ac, %bb.aj ], [ %3, %bb.ai ]   ; 3 uses
  %i.ad = add i8 %4, -48
  %or.cond = icmp ult i8 %i.ad, 10
  br i1 %or.cond, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.ae = zext nneg i8 %4 to i32
  %i.af = add nsw i32 %i.ae, -48
  br i1 %i.f, label %bb.an, label %bb.am, !prof !14, !nosanitize !13

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @185, i64 %i.d) #12, !nosanitize !13
  br label %bb.an, !nosanitize !13

bb.an:                                            ; preds = %bb.al, %bb.am
  store i32 %i.af, ptr %i.y, align 8, !tbaa !54
  br label %bb.bq

bb.ao:                                            ; preds = %bb.ak
  switch i8 %4, label %bb.bq [
    i8 114, label %bb.ap
    i8 119, label %bb.as
    i8 97, label %bb.av
    i8 43, label %bb.ay
    i8 84, label %bb.bn
    i8 101, label %bb.az
    i8 120, label %bb.ba
    i8 102, label %bb.bb
    i8 104, label %bb.be
    i8 82, label %bb.bh
    i8 70, label %bb.bk
  ]

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.f, label %bb.ar, label %bb.aq, !prof !14, !nosanitize !13

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @186, i64 %i.d) #12, !nosanitize !13
  br label %bb.ar, !nosanitize !13

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  store i32 7247, ptr %i.x, align 8, !tbaa !23
  br label %bb.bq

bb.as:                                            ; preds = %bb.ao
  br i1 %i.f, label %bb.au, label %bb.at, !prof !14, !nosanitize !13

bb.at:                                            ; preds = %bb.as
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @187, i64 %i.d) #12, !nosanitize !13
  br label %bb.au, !nosanitize !13

bb.au:                                            ; preds = %bb.as, %bb.at
  store i32 31153, ptr %i.x, align 8, !tbaa !23
  br label %bb.bq

bb.av:                                            ; preds = %bb.ao
  br i1 %i.f, label %bb.ax, label %bb.aw, !prof !14, !nosanitize !13

bb.aw:                                            ; preds = %bb.av
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @188, i64 %i.d) #12, !nosanitize !13
  br label %bb.ax, !nosanitize !13

bb.ax:                                            ; preds = %bb.av, %bb.aw
  store i32 1, ptr %i.x, align 8, !tbaa !23
  br label %bb.bq

bb.ay:                                            ; preds = %bb.ao
  call void @free(ptr noundef %i.b) #12
  br label %gz_state_init.exit.thread

bb.az:                                            ; preds = %bb.ao
  br label %bb.bq

bb.ba:                                            ; preds = %bb.ao
  br label %bb.bq

bb.bb:                                            ; preds = %bb.ao
  br i1 %i.f, label %bb.bd, label %bb.bc, !prof !14, !nosanitize !13

bb.bc:                                            ; preds = %bb.bb
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @189, i64 %i.d) #12, !nosanitize !13
  br label %bb.bd, !nosanitize !13

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  store i32 1, ptr %i.z, align 4, !tbaa !55
  br label %bb.bq

bb.be:                                            ; preds = %bb.ao
  br i1 %i.f, label %bb.bg, label %bb.bf, !prof !14, !nosanitize !13

bb.bf:                                            ; preds = %bb.be
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @190, i64 %i.d) #12, !nosanitize !13
  br label %bb.bg, !nosanitize !13

bb.bg:                                            ; preds = %bb.be, %bb.bf
  store i32 2, ptr %i.z, align 4, !tbaa !55
  br label %bb.bq

bb.bh:                                            ; preds = %bb.ao
  br i1 %i.f, label %bb.bj, label %bb.bi, !prof !14, !nosanitize !13

bb.bi:                                            ; preds = %bb.bh
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @191, i64 %i.d) #12, !nosanitize !13
  br label %bb.bj, !nosanitize !13

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  store i32 3, ptr %i.z, align 4, !tbaa !55
  br label %bb.bq

bb.bk:                                            ; preds = %bb.ao
  br i1 %i.f, label %bb.bm, label %bb.bl, !prof !14, !nosanitize !13

bb.bl:                                            ; preds = %bb.bk
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @192, i64 %i.d) #12, !nosanitize !13
  br label %bb.bm, !nosanitize !13

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  store i32 4, ptr %i.z, align 4, !tbaa !55
  br label %bb.bq

bb.bn:                                            ; preds = %bb.ao
  br i1 %i.f, label %bb.bp, label %bb.bo, !prof !14, !nosanitize !13

bb.bo:                                            ; preds = %bb.bn
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @193, i64 %i.d) #12, !nosanitize !13
  br label %bb.bp, !nosanitize !13

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  store i32 1, ptr %i.w, align 8, !tbaa !24
  br label %bb.bq

bb.bq:                                            ; preds = %bb.ar, %bb.au, %bb.ax, %bb.az, %bb.ba, %bb.bd, %bb.bg, %bb.bj, %bb.bm, %bb.bp, %bb.ao, %bb.an
  %.155 = phi i32 [ %.054, %bb.an ], [ %.054, %bb.ao ], [ %.054, %bb.ar ], [ %.054, %bb.au ], [ %.054, %bb.ax ], [ %.054, %bb.bp ], [ 1, %bb.az ], [ %.054, %bb.ba ], [ %.054, %bb.bd ], [ %.054, %bb.bg ], [ %.054, %bb.bj ], [ %.054, %bb.bm ]
  %.1 = phi i32 [ %.0, %bb.an ], [ %.0, %bb.ao ], [ %.0, %bb.ar ], [ %.0, %bb.au ], [ %.0, %bb.ax ], [ %.0, %bb.bp ], [ %.0, %bb.az ], [ 1, %bb.ba ], [ %.0, %bb.bd ], [ %.0, %bb.bg ], [ %.0, %bb.bj ], [ %.0, %bb.bm ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.056, i64 1
  %.not65 = icmp eq ptr %.056, inttoptr (i64 -1 to ptr)
  br i1 %.not65, label %bb.br, label %.backedge, !prof !25, !nosanitize !13

bb.br:                                            ; preds = %bb.bq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @194, i64 -1, i64 0) #12, !nosanitize !13
  br label %.backedge, !nosanitize !13

.backedge:                                        ; preds = %bb.br, %bb.bq
  br label %bb.ah, !llvm.loop !48

bb.bs:                                            ; preds = %bb.aj, %bb.ai
  br i1 %i.f, label %bb.bu, label %bb.bt, !prof !14, !nosanitize !13

bb.bt:                                            ; preds = %bb.bs
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @195, i64 %i.d) #12, !nosanitize !13
  br label %bb.bu, !nosanitize !13

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.ah = load i32, ptr %i.x, align 8, !tbaa !23
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void @free(ptr noundef nonnull %i.b) #12
  br label %gz_state_init.exit.thread

bb.bw:                                            ; preds = %bb.bu
  br i1 %i.f, label %bb.by, label %bb.bx, !prof !14, !nosanitize !13

bb.bx:                                            ; preds = %bb.bw
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @196, i64 %i.d) #12, !nosanitize !13
  br label %bb.by, !nosanitize !13

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.aj = load i32, ptr %i.x, align 8, !tbaa !23
  %i.ak = icmp eq i32 %i.aj, 7247
  br i1 %i.ak, label %bb.bz, label %bb.cg

bb.bz:                                            ; preds = %bb.by
  br i1 %i.f, label %bb.cb, label %bb.ca, !prof !14, !nosanitize !13

bb.ca:                                            ; preds = %bb.bz
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @197, i64 %i.d) #12, !nosanitize !13
  br label %bb.cb, !nosanitize !13

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %i.al = load i32, ptr %i.w, align 8, !tbaa !24
  %.not62 = icmp eq i32 %i.al, 0
  br i1 %.not62, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @free(ptr noundef nonnull %i.b) #12
  br label %gz_state_init.exit.thread

bb.cd:                                            ; preds = %bb.cb
  br i1 %i.f, label %bb.cf, label %bb.ce, !prof !14, !nosanitize !13

bb.ce:                                            ; preds = %bb.cd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @198, i64 %i.d) #12, !nosanitize !13
  br label %bb.cf, !nosanitize !13

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  store i32 1, ptr %i.w, align 8, !tbaa !24
  br label %bb.cg

bb.cg:                                            ; preds = %bb.by, %bb.cf
  %i.am = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13 ; 3 uses
  %i.an = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.am, i64 1), !nosanitize !13 ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 0, !nosanitize !13 ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.an, 1, !nosanitize !13 ; 2 uses
  br i1 %i.ap, label %bb.ch, label %bb.ci, !prof !25, !nosanitize !13

bb.ch:                                            ; preds = %bb.cg
  call void @__ubsan_handle_add_overflow(ptr nonnull @200, i64 %i.am, i64 1) #14, !nosanitize !13
  br label %bb.ci, !nosanitize !13

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.aq = call noalias ptr @malloc(i64 noundef %i.ao) #15
  br i1 %i.f, label %bb.ck, label %bb.cj, !prof !14, !nosanitize !13

bb.cj:                                            ; preds = %bb.ci
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @201, i64 %i.d) #12, !nosanitize !13
  br label %bb.ck, !nosanitize !13

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !33
  br i1 %i.f, label %bb.cm, label %bb.cl, !prof !14, !nosanitize !13

bb.cl:                                            ; preds = %bb.ck
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @202, i64 %i.d) #12, !nosanitize !13
  br label %bb.cm, !nosanitize !13

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !33
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  call void @free(ptr noundef nonnull %i.b) #12
  br label %gz_state_init.exit.thread

bb.co:                                            ; preds = %bb.cm
  br i1 %i.f, label %bb.cq, label %bb.cp, !prof !14, !nosanitize !13

bb.cp:                                            ; preds = %bb.co
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @203, i64 %i.d) #12, !nosanitize !13
  br label %bb.cq, !nosanitize !13

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !33
  br i1 %i.ap, label %bb.cr, label %bb.cs, !prof !25, !nosanitize !13

bb.cr:                                            ; preds = %bb.cq
  call void @__ubsan_handle_add_overflow(ptr nonnull @204, i64 %i.am, i64 1) #14, !nosanitize !13
  br label %bb.cs, !nosanitize !13

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.av = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.au, i64 noundef %i.ao, ptr noundef nonnull @.str.6, ptr noundef nonnull %0) #12 ; 0 uses
  %.not63 = icmp eq i32 %.054, 0
  %i.aw = select i1 %.not63, i32 0, i32 524288    ; 2 uses
  br i1 %i.f, label %bb.cu, label %bb.ct, !prof !14, !nosanitize !13

bb.ct:                                            ; preds = %bb.cs
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @205, i64 %i.d) #12, !nosanitize !13
  br label %bb.cu, !nosanitize !13

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %i.ax = load i32, ptr %i.x, align 8, !tbaa !23
  %i.ay = icmp eq i32 %i.ax, 7247
  br i1 %i.ay, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not64 = icmp eq i32 %.0, 0
  %i.az = select i1 %.not64, i32 65, i32 193
  br i1 %i.f, label %bb.cx, label %bb.cw, !prof !14, !nosanitize !13

bb.cw:                                            ; preds = %bb.cv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @206, i64 %i.d) #12, !nosanitize !13
  br label %bb.cx, !nosanitize !13

bb.cx:                                            ; preds = %bb.cv, %bb.cw
  %i.ba = load i32, ptr %i.x, align 8, !tbaa !23
  %i.bb = icmp eq i32 %i.ba, 31153
  %i.bc = select i1 %i.bb, i32 512, i32 1024
  %i.bd = or disjoint i32 %i.az, %i.bc
  %i.be = or disjoint i32 %i.bd, %i.aw
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cu, %bb.cx
  %i.bf = phi i32 [ %i.be, %bb.cx ], [ %i.aw, %bb.cu ]
  %i.bg = icmp sgt i32 %1, -1
  br i1 %i.bg, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.bh = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %i.bf, i32 noundef 438) #12
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz
  %i.bi = phi i32 [ %i.bh, %bb.cz ], [ %1, %bb.cy ]
  br i1 %i.f, label %bb.dc, label %bb.db, !prof !14, !nosanitize !13

bb.db:                                            ; preds = %bb.da
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @207, i64 %i.d) #12, !nosanitize !13
  br label %bb.dc, !nosanitize !13

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 5 uses
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !34
  br i1 %i.f, label %bb.de, label %bb.dd, !prof !14, !nosanitize !13

bb.dd:                                            ; preds = %bb.dc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @208, i64 %i.d) #12, !nosanitize !13
  br label %bb.de, !nosanitize !13

bb.de:                                            ; preds = %bb.dc, %bb.dd
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !34
  %i.bl = icmp eq i32 %i.bk, -1
  br i1 %i.bl, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  br i1 %i.f, label %bb.dh, label %bb.dg, !prof !14, !nosanitize !13

bb.dg:                                            ; preds = %bb.df
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @209, i64 %i.d) #12, !nosanitize !13
  br label %bb.dh, !nosanitize !13

bb.dh:                                            ; preds = %bb.df, %bb.dg
  %i.bm = load ptr, ptr %i.ar, align 8, !tbaa !33
  call void @free(ptr noundef %i.bm) #12
  call void @free(ptr noundef nonnull %i.b) #12
  br label %gz_state_init.exit.thread

bb.di:                                            ; preds = %bb.de
  br i1 %i.f, label %bb.dk, label %bb.dj, !prof !14, !nosanitize !13

bb.dj:                                            ; preds = %bb.di
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @210, i64 %i.d) #12, !nosanitize !13
  br label %bb.dk, !nosanitize !13

bb.dk:                                            ; preds = %bb.di, %bb.dj
  %i.bn = load i32, ptr %i.x, align 8, !tbaa !23
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %bb.dk
  br i1 %i.f, label %.critedge, label %bb.dm, !prof !14, !nosanitize !13

bb.dm:                                            ; preds = %bb.dl
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @211, i64 %i.d) #12, !nosanitize !13
  %i.bp = load i32, ptr %i.bj, align 4, !tbaa !34
end_hunk_0
