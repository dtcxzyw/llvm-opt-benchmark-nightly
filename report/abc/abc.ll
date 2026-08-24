Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abc?download=true
inline.NumInlined: 2413
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Abc_CommandGen:bb.a
  br label %bb.at

bb.ai:                                            ; preds = %bb.ag
  %.not134 = icmp eq i32 %.089, 0
  br i1 %.not134, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @Abc_GenFpga(ptr noundef %i.ay, i32 noundef %.0105, i32 noundef %.0103, i32 noundef %.0111) #37
  br label %bb.at

bb.ak:                                            ; preds = %bb.ai
  %.not135 = icmp eq i32 %.087, 0
  br i1 %.not135, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @Abc_GenOneHot(ptr noundef %i.ay, i32 noundef %.0111) #37
  br label %bb.at

bb.am:                                            ; preds = %bb.ak
  %.not136 = icmp eq i32 %.085, 0
  br i1 %.not136, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @Abc_GenRandom(ptr noundef %i.ay, i32 noundef %.0111) #37
  br label %bb.at

bb.ao:                                            ; preds = %bb.am
  %.not137 = icmp eq i32 %.083, 0
  br i1 %.not137, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @Abc_GenGraph(ptr noundef %i.ay, i32 noundef %.0111) #37
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %.not138 = icmp eq i32 %.099, 0
  br i1 %.not138, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.az = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1953, i32 noundef %.0108, i32 noundef %.0111) ; 0 uses
  tail call void @Abc_GenAdderTree(ptr noundef %i.ay, i32 noundef %.0108, i32 noundef %.0111) #37
  %i.ba = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1954, ptr noundef %i.ay) #37 ; 0 uses
  %i.bb = call i32 @Cmd_CommandExecute(ptr noundef %0, ptr noundef nonnull %i.a) #37 ; 0 uses
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.1955)
  br label %bb.au

bb.at:                                            ; preds = %bb.ab, %bb.af, %bb.aj, %bb.an, %bb.ap, %bb.al, %bb.ah, %bb.ad, %bb.z
  %i.bc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1956, ptr noundef %i.ay) #37 ; 0 uses
  %i.bd = call i32 @Cmd_CommandExecute(ptr noundef %0, ptr noundef nonnull %i.a) #37 ; 0 uses
  br label %bb.au

.loopexit.sink.split:                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c
  %.str.598.sink = phi ptr [ @.str.1018, %bb.g ], [ @.str.1143, %bb.e ], [ @.str.621, %bb.c ], [ @.str.598, %bb.i ]
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull %.str.598.sink)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.j, %bb.h, %bb.f, %bb.d, %.loopexit.sink.split, %bb.v
  %.2113 = phi i32 [ %.0111, %bb.v ], [ %.0111, %.loopexit.sink.split ], [ %.0111, %bb.h ], [ %.0111, %bb.f ], [ %i.h, %bb.d ], [ %.0111, %bb.b ], [ %.0111, %bb.j ]
  %.2110 = phi i32 [ %.0108, %bb.v ], [ %.0108, %.loopexit.sink.split ], [ %.0108, %bb.h ], [ %i.p, %bb.f ], [ %.0108, %bb.d ], [ %.0108, %bb.b ], [ %.0108, %bb.j ]
  %.2107 = phi i32 [ %.0105, %bb.v ], [ %.0105, %.loopexit.sink.split ], [ %i.x, %bb.h ], [ %.0105, %bb.f ], [ %.0105, %bb.d ], [ %.0105, %bb.b ], [ %.0105, %bb.j ]
  %.2 = phi i32 [ %.0103, %bb.v ], [ %.0103, %.loopexit.sink.split ], [ %.0103, %bb.h ], [ %.0103, %bb.f ], [ %.0103, %bb.d ], [ %.0103, %bb.b ], [ %i.af, %bb.j ]
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1957)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1958)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1959, i32 noundef %.2113)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1960, i32 noundef %.2110)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1961, i32 noundef %.2107)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1962, i32 noundef %.2)
  %.not143 = icmp eq i32 %.0101, 0
  %i.be = select i1 %.not143, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1963, ptr noundef nonnull %i.be)
  %.not144 = icmp eq i32 %.099, 0
  %i.bf = select i1 %.not144, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1964, ptr noundef nonnull %i.bf)
  %.not145 = icmp eq i32 %.097, 0
  %i.bg = select i1 %.not145, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1965, ptr noundef nonnull %i.bg)
  %.not146 = icmp eq i32 %.095, 0
  %i.bh = select i1 %.not146, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1966, ptr noundef nonnull %i.bh)
  %.not147 = icmp eq i32 %.093, 0
  %i.bi = select i1 %.not147, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1967, ptr noundef nonnull %i.bi)
  %.not148 = icmp eq i32 %.091, 0
  %i.bj = select i1 %.not148, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1968, ptr noundef nonnull %i.bj)
  %.not149 = icmp eq i32 %.089, 0
  %i.bk = select i1 %.not149, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1969, ptr noundef nonnull %i.bk)
  %.not150 = icmp eq i32 %.083, 0
  %i.bl = select i1 %.not150, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1970, ptr noundef nonnull %i.bl)
  %.not151 = icmp eq i32 %.087, 0
  %i.bm = select i1 %.not151, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1971, ptr noundef nonnull %i.bm)
  %.not152 = icmp eq i32 %.085, 0
  %i.bn = select i1 %.not152, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1972, ptr noundef nonnull %i.bn)
  %.not153 = icmp eq i32 %.0, 0
  %i.bo = select i1 %.not153, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1792, ptr noundef nonnull %i.bo)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.594)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1973)
  br label %bb.au

bb.au:                                            ; preds = %.loopexit, %bb.at, %bb.as, %bb.ar, %bb.x
  %.0114 = phi i32 [ 1, %.loopexit ], [ 0, %bb.x ], [ 0, %bb.at ], [ 0, %bb.ar ], [ 0, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret i32 %.0114
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandGenTF(ptr noundef %0, i32 noundef %1, ptr noundef %2) #8 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  tail call void (...) @Extra_UtilGetoptReset() #37
  br label %.outer

.outer:                                           ; preds = %bb.d, %bb.a
  %.091.ph = phi i32 [ %i.h, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %.089.ph = phi i32 [ %.089.ph224, %bb.d ], [ -1, %bb.a ]
  %.087.ph = phi i32 [ %.087.ph228, %bb.d ], [ 0, %bb.a ]
  %.084.ph = phi ptr [ %.084, %bb.d ], [ null, %bb.a ]
  br label %.outer223

.outer223:                                        ; preds = %.outer, %bb.f
  %.089.ph224 = phi i32 [ %.089.ph, %.outer ], [ %i.p, %bb.f ] ; 6 uses
  %.087.ph225 = phi i32 [ %.087.ph, %.outer ], [ %.087.ph228, %bb.f ]
  %.084.ph226 = phi ptr [ %.084.ph, %.outer ], [ %.084, %bb.f ]
  br label %.outer227

.outer227:                                        ; preds = %.outer223, %bb.i
  %.087.ph228 = phi i32 [ %.087.ph225, %.outer223 ], [ %i.x, %bb.i ] ; 4 uses
  %.084.ph229 = phi ptr [ %.084.ph226, %.outer223 ], [ %.084, %bb.i ]
  br label %bb.b

bb.b:                                             ; preds = %.outer227, %bb.h
  %.084 = phi ptr [ %i.v, %bb.h ], [ %.084.ph229, %.outer227 ] ; 7 uses
  %i.b = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.1975) #37
  switch i32 %i.b, label %.loopexit [
    i32 -1, label %bb.j
    i32 87, label %bb.c
    i32 75, label %bb.e
    i32 65, label %bb.g
    i32 118, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not112 = icmp slt i32 %i.c, %1
  br i1 %.not112, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %2, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.g = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.f, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = add nsw i32 %i.c, 1
  store i32 %i.i, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %.loopexit, label %.outer, !llvm.loop !389

bb.e:                                             ; preds = %bb.b
  %i.k = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not111 = icmp slt i32 %i.k, %1
  br i1 %.not111, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.o = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.n, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = add nsw i32 %i.k, 1
  store i32 %i.q, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %.loopexit, label %.outer223, !llvm.loop !389

bb.g:                                             ; preds = %bb.b
  %i.s = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not110 = icmp slt i32 %i.s, %1
  br i1 %.not110, label %bb.h, label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %2, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !99
  %i.w = add nsw i32 %i.s, 1
  store i32 %i.w, ptr @globalUtilOptind, align 4, !tbaa !47
  br label %bb.b, !llvm.loop !389

bb.i:                                             ; preds = %bb.b
  %i.x = xor i32 %.087.ph228, 1
  br label %.outer227, !llvm.loop !389

bb.j:                                             ; preds = %bb.b
  %i.y = load i32, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.z = icmp eq i32 %1, %i.y
  br i1 %i.z, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp eq i32 %.091.ph, 0
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.1977)
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  switch i32 %.089.ph224, label %bb.n [
    i32 -1, label %bb.o
    i32 6, label %bb.o
    i32 4, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.1978, i32 noundef %.089.ph224)
  br label %.critedge

bb.o:                                             ; preds = %bb.m, %bb.m, %bb.m
  %.not107 = icmp eq ptr %.084, null              ; 2 uses
  br i1 %.not107, label %._crit_edge.thread, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.084) #40 ; 2 uses
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.w
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 0, %.preheader ] ; 2 uses
  %.sroa.7.0141 = phi i32 [ %.sroa.7.1, %bb.w ], [ 0, %.preheader ] ; 4 uses
  %.sroa.0.0140 = phi i32 [ %.sroa.0.1, %bb.w ], [ 0, %.preheader ] ; 4 uses
  %.085139 = phi i32 [ %.186, %bb.w ], [ 0, %.preheader ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.084, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !110 ; 6 uses
  switch i8 %i.ad, label %bb.r [
    i8 40, label %bb.p
    i8 41, label %bb.q
  ]

bb.p:                                             ; preds = %.lr.ph
  %i.ae = add nsw i32 %.sroa.0.0140, 1
  br label %bb.w

bb.q:                                             ; preds = %.lr.ph
  %i.af = add nsw i32 %.sroa.7.0141, 1
  br label %bb.w

bb.r:                                             ; preds = %.lr.ph
  %i.ag = add i8 %i.ad, -49
  %or.cond = icmp ult i8 %i.ag, 9
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %narrow = add nsw i8 %i.ad, -48
  %i.ah = zext nneg i8 %narrow to i32
  %i.ai = add nsw i32 %.085139, %i.ah
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.aj = add i8 %i.ad, -65
  %or.cond114 = icmp ult i8 %i.aj, 26
  br i1 %or.cond114, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ak = zext nneg i8 %i.ad to i32
  %i.al = add i32 %.085139, -55
  %i.am = add i32 %i.al, %i.ak
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.an = sext i8 %i.ad to i32
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.1979, i32 noundef %i.an)
  br label %.critedge

bb.w:                                             ; preds = %bb.p, %bb.s, %bb.u, %bb.q
  %.186 = phi i32 [ %.085139, %bb.p ], [ %.085139, %bb.q ], [ %i.ai, %bb.s ], [ %i.am, %bb.u ] ; 2 uses
  %.sroa.0.1 = phi i32 [ %i.ae, %bb.p ], [ %.sroa.0.0140, %bb.q ], [ %.sroa.0.0140, %bb.s ], [ %.sroa.0.0140, %bb.u ] ; 3 uses
  %.sroa.7.1 = phi i32 [ %.sroa.7.0141, %bb.p ], [ %i.af, %bb.q ], [ %.sroa.7.0141, %bb.s ], [ %.sroa.7.0141, %bb.u ] ; 3 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !390

._crit_edge:                                      ; preds = %bb.w
  %.not108 = icmp eq i32 %.sroa.0.1, %.sroa.7.1
  br i1 %.not108, label %._crit_edge.thread, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.1980, i32 noundef %.sroa.0.1, i32 noundef %.sroa.7.1)
  br label %.critedge

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge, %bb.o
  %.2 = phi i32 [ 0, %bb.o ], [ %.186, %._crit_edge ], [ 0, %.preheader ] ; 2 uses
  %i.ao = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 8 uses
  %i.ap = add i32 %1, -1
  %or.cond.i = icmp ult i32 %i.ap, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %1 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 4 uses
  store i32 0, ptr %i.aq, align 4, !tbaa !46
  store i32 %spec.store.select.i, ptr %i.ao, align 8, !tbaa !45
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge.thread
  %i.ar = sext i32 %spec.store.select.i to i64
  %i.as = shl nsw i64 %i.ar, 2
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.as) #38
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %._crit_edge.thread, %bb.y
  %i.au = phi ptr [ %i.at, %bb.y ], [ null, %._crit_edge.thread ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !42
  %3 = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 2 uses
  %i.aw = icmp slt i32 %3, %1
  br i1 %i.aw, label %.lr.ph145.preheader, label %._crit_edge146.thread

.lr.ph145.preheader:                              ; preds = %Vec_IntAlloc.exit
  %i.ax = sext i32 %3 to i64
  %wide.trip.count = sext i32 %1 to i64
  br label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph145.preheader, %Vec_IntPush.exit
  %i.ay = phi ptr [ %i.au, %.lr.ph145.preheader ], [ %i.bq, %Vec_IntPush.exit ] ; 6 uses
  %i.az = phi i32 [ %spec.store.select.i, %.lr.ph145.preheader ], [ %i.br, %Vec_IntPush.exit ] ; 8 uses
  %i.ba = phi i32 [ 0, %.lr.ph145.preheader ], [ %i.bs, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv167 = phi i64 [ %i.ax, %.lr.ph145.preheader ], [ %indvars.iv.next168, %Vec_IntPush.exit ] ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv167
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !99
  %i.bd = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.bc, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.be = trunc i64 %i.bd to i32
  %i.bf = icmp eq i32 %i.ba, %i.az
  br i1 %i.bf, label %bb.z, label %Vec_IntPush.exit

bb.z:                                             ; preds = %.lr.ph145
  %i.bg = icmp slt i32 %i.az, 16
  br i1 %i.bg, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %.not9.i.i = icmp eq ptr %i.ay, null
  br i1 %.not9.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef 64) #39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ac:                                            ; preds = %bb.aa
  %i.bi = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #38
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ad:                                            ; preds = %bb.z
  %i.bj = icmp samesign ult i32 %i.az, 1073741823
  %i.bk = shl nuw nsw i32 %i.az, 1
  %spec.select.i = select i1 %i.bj, i32 %i.bk, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.az, %spec.select.i
  br i1 %.not.i9.i, label %bb.ae, label %Vec_IntPush.exit

bb.ae:                                            ; preds = %bb.ad
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.bl = zext nneg i32 %spec.select.i to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bn = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.bm) #39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ag:                                            ; preds = %bb.ae
  %i.bo = tail call noalias ptr @malloc(i64 noundef %i.bm) #38
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.af, %bb.ag, %bb.ab, %bb.ac
  %storemerge = phi ptr [ %i.bi, %bb.ac ], [ %i.bh, %bb.ab ], [ %i.bn, %bb.af ], [ %i.bo, %bb.ag ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.ac ], [ 16, %bb.ab ], [ %spec.select.i, %bb.af ], [ %spec.select.i, %bb.ag ] ; 2 uses
  store ptr %storemerge, ptr %i.av, align 8, !tbaa !42
  store i32 %spec.select.sink.i, ptr %i.ao, align 8, !tbaa !45
  %.pre = load i32, ptr %i.aq, align 4, !tbaa !46
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph145, %bb.ad, %Vec_IntGrow.exit11.sink.split.i
  %i.bp = phi i32 [ %i.ba, %.lr.ph145 ], [ %i.az, %bb.ad ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bq = phi ptr [ %i.ay, %.lr.ph145 ], [ %i.ay, %bb.ad ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.br = phi i32 [ %i.az, %.lr.ph145 ], [ %i.az, %bb.ad ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.bs = add nsw i32 %i.bp, 1                    ; 2 uses
  store i32 %i.bs, ptr %i.aq, align 4, !tbaa !46
  %i.bt = sext i32 %i.bp to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bt
  store i32 %i.be, ptr %i.bu, align 4, !tbaa !47
  %indvars.iv.next168 = add nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count
  br i1 %exitcond170.not, label %._crit_edge146, label %.lr.ph145, !llvm.loop !391

._crit_edge146:                                   ; preds = %Vec_IntPush.exit
  %.val117.pre = load i32, ptr %i.aq, align 4, !tbaa !46 ; 2 uses
  %i.bv = icmp slt i32 %.val117.pre, 3
  br i1 %i.bv, label %._crit_edge146.thread, label %bb.ah

._crit_edge146.thread:                            ; preds = %Vec_IntAlloc.exit, %._crit_edge146
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.1981)
  tail call fastcc void @Vec_IntFree(ptr noundef nonnull %i.ao)
  br label %.critedge

bb.ah:                                            ; preds = %._crit_edge146
  %.pre173 = add nsw i32 %.val117.pre, -1         ; 3 uses
  %.not109 = icmp eq i32 %.2, %.pre173
  %or.cond211 = select i1 %.not107, i1 true, i1 %.not109
  br i1 %or.cond211, label %._crit_edge172, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.1982, i32 noundef %.2, i32 noundef %.pre173)
  tail call fastcc void @Vec_IntFree(ptr noundef nonnull %i.ao)
  br label %.critedge

._crit_edge172:                                   ; preds = %bb.ah
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1983, i32 noundef %.pre173, i32 noundef %.091.ph) ; 0 uses
  tail call void @Abc_GenThresh(ptr noundef nonnull @.str.1974, i32 noundef %.091.ph, ptr noundef nonnull %i.ao, i32 noundef %.089.ph224, ptr noundef %.084) #37
  %i.bx = and i32 %.089.ph224, -3
  %or.cond5 = icmp eq i32 %i.bx, 4
  br i1 %or.cond5, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge172
  %i.by = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1984, ptr noundef nonnull @.str.1974, i32 noundef %.089.ph224) #37 ; 0 uses
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge172
  %i.bz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1956, ptr noundef nonnull @.str.1974) #37 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ca = call i32 @Cmd_CommandExecute(ptr noundef %0, ptr noundef nonnull %i.a) #37 ; 0 uses
  call fastcc void @Vec_IntFree(ptr noundef nonnull %i.ao)
  br label %.critedge

.loopexit.sink.split:                             ; preds = %bb.c, %bb.g, %bb.e
  %.str.1976.sink = phi ptr [ @.str.1018, %bb.e ], [ @.str.1976, %bb.g ], [ @.str.927, %bb.c ]
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull %.str.1976.sink)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.d, %.loopexit.sink.split, %bb.j
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1985)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1986)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1987)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1988)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1989)
  %.not113 = icmp eq i32 %.087.ph228, 0
  %i.cb = select i1 %.not113, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1792, ptr noundef nonnull %i.cb)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.594)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1990)
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.x, %.loopexit, %bb.al, %bb.ai, %._crit_edge146.thread, %bb.n, %bb.l
  %.196 = phi i32 [ 1, %.loopexit ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %._crit_edge146.thread ], [ 0, %bb.ai ], [ 0, %bb.al ], [ 0, %bb.x ], [ 0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret i32 %.196
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandGenAT(ptr noundef %0, i32 noundef %1, ptr noundef %2) #8 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  tail call void (...) @Extra_UtilGetoptReset() #37
  br label %.outer

.outer:                                           ; preds = %bb.c, %bb.a
  %.023.ph = phi i32 [ %i.c, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.0.ph = phi i32 [ %.0, %bb.c ], [ 0, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.d
  %.0 = phi i32 [ %i.d, %bb.d ], [ %.0.ph, %.outer ] ; 3 uses
  %i.b = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.1684) #37
  switch i32 %i.b, label %.loopexit [
    i32 -1, label %bb.e
    i32 100, label %bb.c
    i32 118, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = xor i32 %.023.ph, 1
  br label %.outer, !llvm.loop !392

bb.d:                                             ; preds = %bb.b
  %i.d = xor i32 %.0, 1
  br label %bb.b, !llvm.loop !392

bb.e:                                             ; preds = %bb.b
  %i.e = load i32, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.f = icmp eq i32 %1, %i.e
  br i1 %i.f, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 7 uses
  %i.h = add i32 %1, -1
  %or.cond.i = icmp ult i32 %i.h, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %1 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  store i32 0, ptr %i.i, align 4, !tbaa !46
  store i32 %spec.store.select.i, ptr %i.g, align 8, !tbaa !45
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = sext i32 %spec.store.select.i to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #38
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.f, %bb.g
  %i.m = phi ptr [ %i.l, %bb.g ], [ null, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !42
  %3 = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 2 uses
  %i.o = icmp slt i32 %3, %1
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Vec_IntAlloc.exit
  %i.p = sext i32 %3 to i64
  %wide.trip.count = sext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Vec_IntPush.exit
  %i.q = phi ptr [ %i.m, %.lr.ph.preheader ], [ %i.ai, %Vec_IntPush.exit ] ; 6 uses
  %i.r = phi i32 [ %spec.store.select.i, %.lr.ph.preheader ], [ %i.aj, %Vec_IntPush.exit ] ; 8 uses
  %i.s = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ak, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.p, %.lr.ph.preheader ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99
  %i.v = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.u, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.w = trunc i64 %i.v to i32
  %i.x = icmp eq i32 %i.s, %i.r
  br i1 %i.x, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %.lr.ph
  %i.y = icmp slt i32 %i.r, 16
  br i1 %i.y, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.q, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.q, i64 noundef 64) #39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.aa = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #38
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.ab = icmp samesign ult i32 %i.r, 1073741823
  %i.ac = shl nuw nsw i32 %i.r, 1
  %spec.select.i = select i1 %i.ab, i32 %i.ac, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.r, %spec.select.i
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %i.q, null
  %i.ad = zext nneg i32 %spec.select.i to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.ae) #39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.ae) #38
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %storemerge = phi ptr [ %i.aa, %bb.k ], [ %i.z, %bb.j ], [ %i.af, %bb.n ], [ %i.ag, %bb.o ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ] ; 2 uses
  store ptr %storemerge, ptr %i.n, align 8, !tbaa !42
  store i32 %spec.select.sink.i, ptr %i.g, align 8, !tbaa !45
  %.pre = load i32, ptr %i.i, align 4, !tbaa !46
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %i.ah = phi i32 [ %i.s, %.lr.ph ], [ %i.r, %bb.l ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ai = phi ptr [ %i.q, %.lr.ph ], [ %i.q, %bb.l ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.aj = phi i32 [ %i.r, %.lr.ph ], [ %i.r, %bb.l ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ak = add nsw i32 %i.ah, 1                    ; 2 uses
  store i32 %i.ak, ptr %i.i, align 4, !tbaa !46
  %i.al = sext i32 %i.ah to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.al
  store i32 %i.w, ptr %i.am, align 4, !tbaa !47
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !393

._crit_edge:                                      ; preds = %Vec_IntPush.exit, %Vec_IntAlloc.exit
  %.not29 = icmp eq i32 %.023.ph, 0
  br i1 %.not29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  tail call void @Abc_GenATDual(ptr noundef nonnull @.str.1974, ptr noundef nonnull %i.g) #37
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge
  tail call void @Abc_GenAT(ptr noundef nonnull @.str.1974, ptr noundef nonnull %i.g) #37
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.an = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1956, ptr noundef nonnull @.str.1974) #37 ; 0 uses
  %i.ao = call i32 @Cmd_CommandExecute(ptr noundef %0, ptr noundef nonnull %i.a) #37 ; 0 uses
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !42  ; 2 uses
  %.not.i32 = icmp eq ptr %i.ap, null
  br i1 %.not.i32, label %Vec_IntFree.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.ap) #37
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.r, %bb.s
  call void @free(ptr noundef nonnull %i.g) #37
  br label %bb.t

.loopexit:                                        ; preds = %bb.b, %bb.e
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1991)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1992)
  %.not30 = icmp eq i32 %.023.ph, 0
  %i.aq = select i1 %.not30, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1993, ptr noundef nonnull %i.aq)
  %.not31 = icmp eq i32 %.0, 0
  %i.ar = select i1 %.not31, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1792, ptr noundef nonnull %i.ar)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.594)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1994)
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %Vec_IntFree.exit
  %.026 = phi i32 [ 1, %.loopexit ], [ 0, %Vec_IntFree.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret i32 %.026
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandGenPop(ptr noundef %0, i32 noundef %1, ptr noundef %2) #8 {
bb.a:
  tail call void (...) @Extra_UtilGetoptReset() #37
  br label %.outer

.outer:                                           ; preds = %bb.d, %bb.a
  %.025.ph = phi i32 [ %i.g, %bb.d ], [ 10, %bb.a ] ; 4 uses
  %.023.ph = phi i32 [ %.023.ph86, %bb.d ], [ 6, %bb.a ]
  %.0.ph = phi i32 [ %.0, %bb.d ], [ 0, %bb.a ]
  br label %.outer85

.outer85:                                         ; preds = %.outer, %bb.f
  %.023.ph86 = phi i32 [ %.023.ph, %.outer ], [ %i.o, %bb.f ] ; 5 uses
  %.0.ph87 = phi i32 [ %.0.ph, %.outer ], [ %.0, %bb.f ]
  br label %bb.b

bb.b:                                             ; preds = %.outer85, %bb.g
  %.0 = phi i32 [ %i.r, %bb.g ], [ %.0.ph87, %.outer85 ] ; 5 uses
  %i.a = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.1995) #37
  switch i32 %i.a, label %.loopexit [
    i32 -1, label %bb.h
    i32 78, label %bb.c
    i32 75, label %bb.e
    i32 118, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not39 = icmp slt i32 %i.b, %1
  br i1 %.not39, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99
  %i.f = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.e, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = add nsw i32 %i.b, 1
  store i32 %i.h, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.i = icmp slt i32 %i.g, 0
  br i1 %i.i, label %.loopexit, label %.outer, !llvm.loop !394

bb.e:                                             ; preds = %bb.b
  %i.j = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not38 = icmp slt i32 %i.j, %1
  br i1 %.not38, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %2, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.n = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.m, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = add nsw i32 %i.j, 1
  store i32 %i.p, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %.loopexit, label %.outer85, !llvm.loop !394

bb.g:                                             ; preds = %bb.b
  %i.r = xor i32 %.0, 1
  br label %bb.b, !llvm.loop !394

bb.h:                                             ; preds = %bb.b
  %i.s = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 2 uses
  %i.t = add nsw i32 %i.s, 1
  %i.u = icmp eq i32 %1, %i.t
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %2, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.028 = phi ptr [ %i.x, %bb.i ], [ null, %bb.h ]
  %i.y = tail call ptr @Abc_NtkLutCascadeFromPopcountLuts(i32 noundef %.025.ph, i32 noundef %.023.ph86, i32 noundef %.0, ptr noundef %.028) #37 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.k, label %bb.l

end_hunk_0
begin_hunk_1_@Abc_CommandAbc9SplitProve:bb.a
  %i.h = add nsw i32 %i.b, 1
  store i32 %i.h, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.i = icmp slt i32 %i.g, 1
  br i1 %i.i, label %.loopexit, label %.outer, !llvm.loop !1343

bb.f:                                             ; preds = %bb.b
  %i.j = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not73 = icmp slt i32 %i.j, %1
  br i1 %.not73, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.2445)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %2, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.n = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.m, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = add nsw i32 %i.j, 1
  store i32 %i.p, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.q = icmp slt i32 %i.o, 1
  br i1 %i.q, label %.loopexit, label %.outer269, !llvm.loop !1343

bb.i:                                             ; preds = %bb.b
  %i.r = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not72 = icmp slt i32 %i.r, %1
  br i1 %.not72, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.1050)
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %2, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99
  %i.v = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.u, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.w = trunc i64 %i.v to i32                    ; 3 uses
  %i.x = add nsw i32 %i.r, 1
  store i32 %i.x, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.y = icmp slt i32 %i.w, 0
  br i1 %i.y, label %.loopexit, label %.outer276, !llvm.loop !1343

bb.l:                                             ; preds = %bb.b
  %i.z = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not71 = icmp slt i32 %i.z, %1
  br i1 %.not71, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.598)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !99
  %i.ad = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ac, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.ae = trunc i64 %i.ad to i32                  ; 4 uses
  %i.af = add nsw i32 %i.z, 1
  store i32 %i.af, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.ag = add i32 %i.ae, -101
  %or.cond = icmp ult i32 %i.ag, -100
  br i1 %or.cond, label %bb.o, label %.outer282, !llvm.loop !1343

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4875, i32 noundef %i.ae)
  br label %.loopexit

bb.p:                                             ; preds = %bb.b
  %i.ah = xor i32 %.0, 1
  br label %bb.b, !llvm.loop !1343

bb.q:                                             ; preds = %bb.b
  %i.ai = xor i32 %.044.ph288, 1
  br label %.outer287, !llvm.loop !1343

bb.r:                                             ; preds = %bb.b
  %i.aj = xor i32 %.042.ph292, 1
  br label %.outer291, !llvm.loop !1343

bb.s:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !67 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4876)
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.an = getelementptr i8, ptr %i.al, i64 16
  %.val = load i32, ptr %i.an, align 8, !tbaa !54
  %i.ao = icmp sgt i32 %.val, 0
  br i1 %i.ao, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4877)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ap = tail call i32 @Cec_GiaSplitTest(ptr noundef nonnull %i.al, i32 noundef %.054.ph, i32 noundef %.051.ph270, i32 noundef %.048.ph277, i32 noundef %.046.ph283, i32 noundef %.044.ph288, i32 noundef %.042.ph292, i32 noundef %.0) #37
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !127
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 376 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1142
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.at, ptr %i.au, align 8, !tbaa !8
  store ptr null, ptr %i.as, align 8, !tbaa !1142
  br label %bb.x

.loopexit:                                        ; preds = %bb.h, %bb.b, %bb.k, %bb.e, %bb.o, %bb.m, %bb.j, %bb.g, %bb.d
  %.256 = phi i32 [ %.054.ph, %bb.j ], [ %.054.ph, %bb.d ], [ %.054.ph, %bb.o ], [ %.054.ph, %bb.g ], [ %.054.ph, %bb.m ], [ %.054.ph, %bb.k ], [ %.054.ph, %bb.h ], [ %.054.ph, %bb.b ], [ %i.g, %bb.e ]
  %.253 = phi i32 [ %.051.ph270, %bb.j ], [ %.051.ph270, %bb.d ], [ %.051.ph270, %bb.o ], [ %.051.ph270, %bb.g ], [ %.051.ph270, %bb.m ], [ %i.o, %bb.h ], [ %.051.ph270, %bb.b ], [ %.051.ph270, %bb.k ], [ %.051.ph270, %bb.e ]
  %.250 = phi i32 [ %.048.ph277, %bb.j ], [ %.048.ph277, %bb.d ], [ %.048.ph277, %bb.o ], [ %.048.ph277, %bb.g ], [ %.048.ph277, %bb.m ], [ %.048.ph277, %bb.h ], [ %i.w, %bb.k ], [ %.048.ph277, %bb.b ], [ %.048.ph277, %bb.e ]
  %.2 = phi i32 [ %.046.ph283, %bb.j ], [ %.046.ph283, %bb.d ], [ %i.ae, %bb.o ], [ %.046.ph283, %bb.g ], [ %.046.ph283, %bb.m ], [ %.046.ph283, %bb.e ], [ %.046.ph283, %bb.k ], [ %.046.ph283, %bb.b ], [ %.046.ph283, %bb.h ]
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4878)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4879)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4055, i32 noundef %.256)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4880, i32 noundef %.253)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4881, i32 noundef %.250)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4882, i32 noundef %.2)
  %.not75 = icmp eq i32 %.0, 0
  %i.av = select i1 %.not75, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.3081, ptr noundef nonnull %i.av)
  %.not76 = icmp eq i32 %.044.ph288, 0
  %i.aw = select i1 %.not76, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.608, ptr noundef nonnull %i.aw)
  %.not77 = icmp eq i32 %.042.ph292, 0
  %i.ax = select i1 %.not77, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1232, ptr noundef nonnull %i.ax)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.594)
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %bb.w, %bb.v, %bb.t
  %.057 = phi i32 [ 1, %.loopexit ], [ 1, %bb.t ], [ 1, %bb.v ], [ 0, %bb.w ]
  ret i32 %.057
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandAbc9SProve(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1344 ; 3 uses
  tail call void (...) @Extra_UtilGetoptReset() #37
  %wide.trip.count = sext i32 %1 to i64
  %wide.trip.count339 = sext i32 %1 to i64        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.0123 = phi ptr [ null, %bb.a ], [ %.0123.be, %.backedge ] ; 10 uses
  %.0121 = phi ptr [ null, %bb.a ], [ %.0121.be, %.backedge ] ; 11 uses
  %.0119 = phi ptr [ null, %bb.a ], [ %.0119.be, %.backedge ] ; 20 uses
  %.0117 = phi i32 [ 6, %bb.a ], [ %.0117.be, %.backedge ] ; 11 uses
  %.0114 = phi i32 [ 3, %bb.a ], [ %.0114.be, %.backedge ] ; 15 uses
  %.0111 = phi i32 [ 10, %bb.a ], [ %.0111.be, %.backedge ] ; 15 uses
  %.0109 = phi i32 [ 100, %bb.a ], [ %.0109.be, %.backedge ] ; 15 uses
  %.0107 = phi i32 [ 0, %bb.a ], [ %.0107.be, %.backedge ] ; 12 uses
  %.0105 = phi i32 [ 0, %bb.a ], [ %.0105.be, %.backedge ] ; 12 uses
  %.0103 = phi i32 [ 0, %bb.a ], [ %.0103.be, %.backedge ] ; 12 uses
  %.0101 = phi i32 [ 0, %bb.a ], [ %.0101.be, %.backedge ] ; 12 uses
  %i.e = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.4883) #37
  switch i32 %i.e, label %.loopexit [
    i32 -1, label %bb.x
    i32 80, label %bb.c
    i32 84, label %bb.e
    i32 85, label %bb.g
    i32 67, label %bb.i
    i32 87, label %bb.p
    i32 82, label %bb.r
    i32 117, label %bb.t
    i32 115, label %bb.u
    i32 118, label %bb.v
    i32 119, label %bb.w
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not159 = icmp slt i32 %i.f, %1
  br i1 %.not159, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.j = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.i, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = add nsw i32 %i.f, 1
  store i32 %i.l, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.m = add i32 %i.k, -7
  %or.cond = icmp ult i32 %i.m, -6
  br i1 %or.cond, label %.loopexit, label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.q, %bb.h, %bb.f, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %._crit_edge252
  %.0123.be = phi ptr [ %.0123, %bb.w ], [ %.0123, %bb.f ], [ %.0123, %bb.h ], [ %.0123, %._crit_edge252 ], [ %.0123, %bb.q ], [ %i.bh, %bb.s ], [ %.0123, %bb.t ], [ %.0123, %bb.u ], [ %.0123, %bb.v ], [ %.0123, %bb.d ]
  %.0121.be = phi ptr [ %.0121, %bb.w ], [ %.0121, %bb.f ], [ %.0121, %bb.h ], [ %i.an, %._crit_edge252 ], [ %.0121, %bb.q ], [ %.0121, %bb.s ], [ %.0121, %bb.t ], [ %.0121, %bb.u ], [ %.0121, %bb.v ], [ %.0121, %bb.d ]
  %.0119.be = phi ptr [ %.0119, %bb.w ], [ %.0119, %bb.f ], [ %.0119, %bb.h ], [ %i.an, %._crit_edge252 ], [ %.0119, %bb.q ], [ %.0119, %bb.s ], [ %.0119, %bb.t ], [ %.0119, %bb.u ], [ %.0119, %bb.v ], [ %.0119, %bb.d ]
  %.0117.be = phi i32 [ %.0117, %bb.w ], [ %.0117, %bb.f ], [ %.0117, %bb.h ], [ %.0117, %._crit_edge252 ], [ %.0117, %bb.q ], [ %.0117, %bb.s ], [ %.0117, %bb.t ], [ %.0117, %bb.u ], [ %.0117, %bb.v ], [ %i.k, %bb.d ]
  %.0114.be = phi i32 [ %.0114, %bb.w ], [ %i.s, %bb.f ], [ %.0114, %bb.h ], [ %.0114, %._crit_edge252 ], [ %.0114, %bb.q ], [ %.0114, %bb.s ], [ %.0114, %bb.t ], [ %.0114, %bb.u ], [ %.0114, %bb.v ], [ %.0114, %bb.d ]
  %.0111.be = phi i32 [ %.0111, %bb.w ], [ %.0111, %bb.f ], [ %i.aa, %bb.h ], [ %.0111, %._crit_edge252 ], [ %.0111, %bb.q ], [ %.0111, %bb.s ], [ %.0111, %bb.t ], [ %.0111, %bb.u ], [ %.0111, %bb.v ], [ %.0111, %bb.d ]
  %.0109.be = phi i32 [ %.0109, %bb.w ], [ %.0109, %bb.f ], [ %.0109, %bb.h ], [ %.0109, %._crit_edge252 ], [ %i.bb, %bb.q ], [ %.0109, %bb.s ], [ %.0109, %bb.t ], [ %.0109, %bb.u ], [ %.0109, %bb.v ], [ %.0109, %bb.d ]
  %.0107.be = phi i32 [ %.0107, %bb.w ], [ %.0107, %bb.f ], [ %.0107, %bb.h ], [ %.0107, %._crit_edge252 ], [ %.0107, %bb.q ], [ %.0107, %bb.s ], [ %i.bj, %bb.t ], [ %.0107, %bb.u ], [ %.0107, %bb.v ], [ %.0107, %bb.d ]
  %.0105.be = phi i32 [ %.0105, %bb.w ], [ %.0105, %bb.f ], [ %.0105, %bb.h ], [ %.0105, %._crit_edge252 ], [ %.0105, %bb.q ], [ %.0105, %bb.s ], [ %.0105, %bb.t ], [ %.0105, %bb.u ], [ %i.bl, %bb.v ], [ %.0105, %bb.d ]
  %.0103.be = phi i32 [ %i.bm, %bb.w ], [ %.0103, %bb.f ], [ %.0103, %bb.h ], [ %.0103, %._crit_edge252 ], [ %.0103, %bb.q ], [ %.0103, %bb.s ], [ %.0103, %bb.t ], [ %.0103, %bb.u ], [ %.0103, %bb.v ], [ %.0103, %bb.d ]
  %.0101.be = phi i32 [ %.0101, %bb.w ], [ %.0101, %bb.f ], [ %.0101, %bb.h ], [ %.0101, %._crit_edge252 ], [ %.0101, %bb.q ], [ %.0101, %bb.s ], [ %.0101, %bb.t ], [ %i.bk, %bb.u ], [ %.0101, %bb.v ], [ %.0101, %bb.d ]
  br label %bb.b, !llvm.loop !1345

bb.e:                                             ; preds = %bb.b
  %i.n = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not158 = icmp slt i32 %i.n, %1
  br i1 %.not158, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %2, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !99
  %i.r = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.q, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.s = trunc i64 %i.r to i32                    ; 3 uses
  %i.t = add nsw i32 %i.n, 1
  store i32 %i.t, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.u = icmp slt i32 %i.s, 1
  br i1 %i.u, label %.loopexit, label %.backedge

bb.g:                                             ; preds = %bb.b
  %i.v = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not157 = icmp slt i32 %i.v, %1
  br i1 %.not157, label %bb.h, label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %2, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !99
  %i.z = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.y, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %i.ab = add nsw i32 %i.v, 1
  store i32 %i.ab, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.ac = icmp slt i32 %i.aa, 1
  br i1 %i.ac, label %.loopexit, label %.backedge

bb.i:                                             ; preds = %bb.b
  %i.ad = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 2 uses
  %.not155 = icmp slt i32 %i.ad, %1
  br i1 %.not155, label %bb.j, label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.i
  %.not156 = icmp eq ptr %.0119, null
  br i1 %.not156, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %.0119) #37
  %.pre = load i32, ptr @globalUtilOptind, align 4, !tbaa !47
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ae = phi i32 [ %i.ad, %bb.j ], [ %.pre, %bb.k ] ; 2 uses
  %i.af = icmp slt i32 %i.ae, %1
  br i1 %i.af, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.ag = sext i32 %i.ae to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.ag, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0248 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.am, %.lr.ph ]
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #40
  %i.ak = trunc i64 %i.aj to i32
  %i.al = add i32 %.0248, 1
  %i.am = add i32 %i.al, %i.ak                    ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1346

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %3 = add nsw i32 %i.am, 1
  %4 = sext i32 %3 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %.0.lcssa = phi i64 [ 1, %bb.l ], [ %4, %._crit_edge.loopexit ]
  %i.an = tail call noalias ptr @malloc(i64 noundef %.0.lcssa) #38 ; 7 uses
  store i8 0, ptr %i.an, align 1, !tbaa !110
  %5 = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 2 uses
  %6 = icmp slt i32 %5, %1
  br i1 %6, label %bb.m, label %._crit_edge252

bb.m:                                             ; preds = %._crit_edge
  %i.ao = sext i32 %5 to i64                      ; 3 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !99
  %i.ar = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) %i.aq) #37 ; 0 uses
  %indvars.iv.next337.peel = add nsw i64 %i.ao, 1 ; 2 uses
  %exitcond340.peel.not = icmp eq i64 %indvars.iv.next337.peel, %wide.trip.count339
  br i1 %exitcond340.peel.not, label %._crit_edge252, label %.lr.ph251

.lr.ph251:                                        ; preds = %bb.m, %bb.o
  %indvars.iv336 = phi i64 [ %indvars.iv.next337, %bb.o ], [ %indvars.iv.next337.peel, %bb.m ] ; 3 uses
  %i.as = icmp sgt i64 %indvars.iv336, %i.ao
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph251
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.an)
  %endptr = getelementptr inbounds i8, ptr %i.an, i64 %strlen
  store i16 32, ptr %endptr, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph251
  %i.at = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv336
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !99
  %i.av = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) %i.au) #37 ; 0 uses
  %indvars.iv.next337 = add nsw i64 %indvars.iv336, 1 ; 2 uses
  %exitcond340.not = icmp eq i64 %indvars.iv.next337, %wide.trip.count339
  br i1 %exitcond340.not, label %._crit_edge252, label %.lr.ph251, !llvm.loop !1347

._crit_edge252:                                   ; preds = %bb.o, %bb.m, %._crit_edge
  store i32 %1, ptr @globalUtilOptind, align 4, !tbaa !47
  br label %.backedge

bb.p:                                             ; preds = %bb.b
  %i.aw = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not154 = icmp slt i32 %i.aw, %1
  br i1 %.not154, label %bb.q, label %.loopexit.sink.split

bb.q:                                             ; preds = %bb.p
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !99
  %i.ba = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.az, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.bb = trunc i64 %i.ba to i32                  ; 3 uses
  %i.bc = add nsw i32 %i.aw, 1
  store i32 %i.bc, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.bd = icmp slt i32 %i.bb, 1
  br i1 %i.bd, label %.loopexit, label %.backedge

bb.r:                                             ; preds = %bb.b
  %i.be = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not153 = icmp slt i32 %i.be, %1
  br i1 %.not153, label %bb.s, label %.loopexit.sink.split

bb.s:                                             ; preds = %bb.r
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !99
  %i.bi = add nsw i32 %i.be, 1
  store i32 %i.bi, ptr @globalUtilOptind, align 4, !tbaa !47
  br label %.backedge

bb.t:                                             ; preds = %bb.b
  %i.bj = xor i32 %.0107, 1
  br label %.backedge

bb.u:                                             ; preds = %bb.b
  %i.bk = xor i32 %.0101, 1
  br label %.backedge

bb.v:                                             ; preds = %bb.b
  %i.bl = xor i32 %.0105, 1
  br label %.backedge

bb.w:                                             ; preds = %bb.b
  %i.bm = xor i32 %.0103, 1
  br label %.backedge

bb.x:                                             ; preds = %bb.b
  %.not143 = icmp eq i32 %.0107, 0                ; 3 uses
  br i1 %.not143, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = icmp eq ptr %i.d, null
  br i1 %i.bn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4887)
  %.not152 = icmp eq ptr %.0119, null
  br i1 %.not152, label %bb.aq, label %.sink.split

bb.aa:                                            ; preds = %bb.y
  %i.bo = tail call ptr @Wlc_NtkBitBlast(ptr noundef nonnull %i.d, ptr noundef null) #37 ; 6 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4888)
  %.not151 = icmp eq ptr %.0119, null
  br i1 %.not151, label %bb.aq, label %.sink.split

bb.ac:                                            ; preds = %bb.aa
  %i.bq = getelementptr i8, ptr %i.bo, i64 16
  %.val = load i32, ptr %i.bq, align 8, !tbaa !54
  %i.br = getelementptr i8, ptr %i.bo, i64 72
  %.val164 = load ptr, ptr %i.br, align 8, !tbaa !66
  %i.bs = getelementptr i8, ptr %.val164, i64 4
  %.val164.val = load i32, ptr %i.bs, align 4, !tbaa !46
  %i.bt = sub nsw i32 %.val164.val, %.val
  %i.bu = and i32 %i.bt, 1
  %.not146 = icmp eq i32 %i.bu, 0
  br i1 %.not146, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4889)
  tail call void @Gia_ManStop(ptr noundef nonnull %i.bo) #37
  %.not150 = icmp eq ptr %.0119, null
  br i1 %.not150, label %bb.aq, label %.sink.split

bb.ae:                                            ; preds = %bb.ac
  %i.bv = tail call ptr @Gia_ManTransformMiter2(ptr noundef nonnull %i.bo) #37
  tail call void @Gia_ManStop(ptr noundef nonnull %i.bo) #37
  br label %bb.ah

bb.af:                                            ; preds = %bb.x
  %.not144 = icmp eq ptr %.0121, null
  br i1 %.not144, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4890)
  %.not145 = icmp eq ptr %.0119, null
  br i1 %.not145, label %bb.aq, label %.sink.split

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %.0125 = phi ptr [ %i.bv, %bb.ae ], [ %i.b, %bb.af ] ; 6 uses
  %i.bw = icmp eq ptr %.0125, null
  br i1 %i.bw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4891)
  %.not149 = icmp eq ptr %.0119, null
  br i1 %.not149, label %bb.aq, label %.sink.split

bb.aj:                                            ; preds = %bb.ah
  %i.bx = getelementptr i8, ptr %.0125, i64 16
  %.0125.val = load i32, ptr %i.bx, align 8, !tbaa !54
  %i.by = icmp eq i32 %.0125.val, 0
  br i1 %i.by, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4892)
  br i1 %.not143, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @Gia_ManStop(ptr noundef nonnull %.0125) #37
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.not148 = icmp eq ptr %.0119, null
  br i1 %.not148, label %bb.aq, label %.sink.split

bb.an:                                            ; preds = %bb.aj
  %i.bz = tail call i32 @Cec_GiaProveTest(ptr noundef nonnull %.0125, i32 noundef %.0117, i32 noundef %.0114, i32 noundef %.0111, i32 noundef %.0109, i32 noundef %.0107, ptr noundef %i.d, i32 noundef %.0105, i32 noundef %.0103, i32 noundef %.0101, ptr noundef %.0123, ptr noundef %.0121) #37
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !127
  %i.cb = getelementptr inbounds nuw i8, ptr %.0125, i64 384
  tail call void @Abc_FrameReplaceCex(ptr noundef %0, ptr noundef nonnull %i.cb)
  br i1 %.not143, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @Gia_ManStop(ptr noundef nonnull %.0125) #37
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.not147 = icmp eq ptr %.0119, null
  br i1 %.not147, label %bb.aq, label %.sink.split

.loopexit.sink.split:                             ; preds = %bb.r, %bb.p, %bb.i, %bb.g, %bb.e, %bb.c
  %.str.4886.sink = phi ptr [ @.str.4377, %bb.p ], [ @.str.4885, %bb.i ], [ @.str.4884, %bb.g ], [ @.str.2445, %bb.e ], [ @.str.4389, %bb.c ], [ @.str.4886, %bb.r ]
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull %.str.4886.sink)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.q, %bb.h, %bb.f, %bb.d, %.loopexit.sink.split
  %.2116 = phi i32 [ %.0114, %.loopexit.sink.split ], [ %.0114, %bb.b ], [ %.0114, %bb.q ], [ %.0114, %bb.h ], [ %i.s, %bb.f ], [ %.0114, %bb.d ]
  %.2113 = phi i32 [ %.0111, %.loopexit.sink.split ], [ %.0111, %bb.b ], [ %.0111, %bb.q ], [ %i.aa, %bb.h ], [ %.0111, %bb.f ], [ %.0111, %bb.d ]
  %.2 = phi i32 [ %.0109, %.loopexit.sink.split ], [ %.0109, %bb.b ], [ %i.bb, %bb.q ], [ %.0109, %bb.h ], [ %.0109, %bb.f ], [ %.0109, %bb.d ]
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4893)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4894)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4895, i32 noundef %.0117)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4896, i32 noundef %.2116)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4897, i32 noundef %.2113)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4898, i32 noundef %.2)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4899)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4900)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4901)
  %.not160 = icmp eq i32 %.0101, 0
  %i.cc = select i1 %.not160, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.3081, ptr noundef nonnull %i.cc)
  %.not161 = icmp eq i32 %.0105, 0
  %i.cd = select i1 %.not161, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.608, ptr noundef nonnull %i.cd)
  %.not162 = icmp eq i32 %.0103, 0
  %i.ce = select i1 %.not162, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1232, ptr noundef nonnull %i.ce)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.594)
  %.not163 = icmp eq ptr %.0119, null
  br i1 %.not163, label %bb.aq, label %.sink.split

.sink.split:                                      ; preds = %.loopexit, %bb.ap, %bb.am, %bb.ai, %bb.ag, %bb.ad, %bb.ab, %bb.z
  %.0126.ph = phi i32 [ 0, %bb.ap ], [ 1, %bb.ai ], [ 1, %bb.ag ], [ 1, %bb.ad ], [ 1, %bb.z ], [ 1, %bb.am ], [ 1, %bb.ab ], [ 1, %.loopexit ]
  tail call void @free(ptr noundef nonnull %.0119) #37
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split, %.loopexit, %bb.ap, %bb.am, %bb.ai, %bb.ag, %bb.ad, %bb.ab, %bb.z
  %.0126 = phi i32 [ 1, %bb.ab ], [ 1, %bb.ad ], [ 1, %bb.ag ], [ 1, %bb.ai ], [ 1, %bb.am ], [ 0, %bb.ap ], [ 1, %.loopexit ], [ 1, %bb.z ], [ %.0126.ph, %.sink.split ]
  ret i32 %.0126
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandAbc9SProve2(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1344 ; 3 uses
end_hunk_1
begin_hunk_2_@Abc_CommandAbc9QVar:bb.a
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99
  %i.f = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.e, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = add nsw i32 %i.b, 1
  store i32 %i.h, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.i = icmp slt i32 %i.g, 0
  br i1 %i.i, label %.loopexit, label %.outer, !llvm.loop !1383

bb.f:                                             ; preds = %bb.b
  %i.j = xor i32 %.026.ph92, 1
  br label %.outer91, !llvm.loop !1383

bb.g:                                             ; preds = %bb.b
  %i.k = xor i32 %.024.ph96, 1
  br label %.outer95, !llvm.loop !1383

bb.h:                                             ; preds = %bb.b
  %i.l = xor i32 %.0, 1
  br label %bb.b, !llvm.loop !1383

bb.i:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67   ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.5042)
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.p = getelementptr i8, ptr %i.n, i64 16
  %.val = load i32, ptr %i.p, align 8, !tbaa !54
  %.not36 = icmp eq i32 %.val, 0
  br i1 %.not36, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.2203)
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.q = icmp sgt i32 %.028.ph, 0
  br i1 %i.q, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.r = getelementptr i8, ptr %i.n, i64 64
  %.val42 = load ptr, ptr %i.r, align 8, !tbaa !69
  %i.s = getelementptr i8, ptr %.val42, i64 4
  %.val42.val = load i32, ptr %i.s, align 4, !tbaa !46
  %i.t = icmp slt i32 %.028.ph, %.val42.val
  br i1 %i.t, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.2205)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.u = tail call ptr @Gia_QbfQuantifyAll(ptr noundef nonnull %i.n, i32 noundef %.028.ph, i32 noundef %.026.ph92, i32 noundef %.024.ph96) #37
  tail call void @Abc_FrameUpdateGia(ptr noundef nonnull %0, ptr noundef %i.u)
  br label %bb.q

.loopexit:                                        ; preds = %bb.b, %bb.e, %bb.d
  %.2 = phi i32 [ %.028.ph, %bb.d ], [ %.028.ph, %bb.b ], [ %i.g, %bb.e ]
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5074)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5075)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2208, i32 noundef %.2)
  %.not38 = icmp eq i32 %.026.ph92, 0
  %i.v = select i1 %.not38, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5076, ptr noundef nonnull %i.v)
  %.not39 = icmp eq i32 %.024.ph96, 0
  %i.w = select i1 %.not39, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5077, ptr noundef nonnull %i.w)
  %.not40 = icmp eq i32 %.0, 0
  %i.x = select i1 %.not40, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2211, ptr noundef nonnull %i.x)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.594)
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %bb.p, %bb.o, %bb.l, %bb.j
  %.030 = phi i32 [ 1, %.loopexit ], [ 1, %bb.j ], [ 1, %bb.l ], [ 0, %bb.p ], [ 1, %bb.o ]
  ret i32 %.030
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandAbc9GenQbf(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) #8 {
bb.a:
  tail call void (...) @Extra_UtilGetoptReset() #37
  br label %.outer

.outer:                                           ; preds = %bb.e, %bb.a
  %.053.ph = phi i32 [ %i.g, %bb.e ], [ 1, %bb.a ] ; 9 uses
  %.050.ph = phi i32 [ %.050.ph248, %bb.e ], [ 1, %bb.a ]
  %.048.ph = phi i32 [ %.048.ph254, %bb.e ], [ 6, %bb.a ]
  %.046.ph = phi ptr [ %.046.ph259, %bb.e ], [ null, %bb.a ]
  %.044.ph = phi i32 [ %.044.ph263, %bb.e ], [ 0, %bb.a ]
  %.0.ph = phi i32 [ %.0, %bb.e ], [ 0, %bb.a ]
  br label %.outer247

.outer247:                                        ; preds = %.outer, %bb.k
  %.050.ph248 = phi i32 [ %.050.ph, %.outer ], [ %i.w, %bb.k ] ; 11 uses
  %.048.ph249 = phi i32 [ %.048.ph, %.outer ], [ %.048.ph254, %bb.k ]
  %.046.ph250 = phi ptr [ %.046.ph, %.outer ], [ %.046.ph259, %bb.k ]
  %.044.ph251 = phi i32 [ %.044.ph, %.outer ], [ %.044.ph263, %bb.k ]
  %.0.ph252 = phi i32 [ %.0.ph, %.outer ], [ %.0, %bb.k ]
  br label %.outer253

.outer253:                                        ; preds = %.outer247, %bb.h
  %.048.ph254 = phi i32 [ %.048.ph249, %.outer247 ], [ %i.o, %bb.h ] ; 12 uses
  %.046.ph255 = phi ptr [ %.046.ph250, %.outer247 ], [ %.046.ph259, %bb.h ]
  %.044.ph256 = phi i32 [ %.044.ph251, %.outer247 ], [ %.044.ph263, %bb.h ]
  %.0.ph257 = phi i32 [ %.0.ph252, %.outer247 ], [ %.0, %bb.h ]
  br label %.outer258

.outer258:                                        ; preds = %.outer253, %Abc_UtilStrsav.exit
  %.046.ph259 = phi ptr [ %.046.ph255, %.outer253 ], [ %i.ag, %Abc_UtilStrsav.exit ] ; 6 uses
  %.044.ph260 = phi i32 [ %.044.ph256, %.outer253 ], [ %.044.ph263, %Abc_UtilStrsav.exit ]
  %.0.ph261 = phi i32 [ %.0.ph257, %.outer253 ], [ %.0, %Abc_UtilStrsav.exit ]
  br label %.outer262

.outer262:                                        ; preds = %.outer258, %bb.o
  %.044.ph263 = phi i32 [ %.044.ph260, %.outer258 ], [ %i.aj, %bb.o ] ; 7 uses
  %.0.ph264 = phi i32 [ %.0.ph261, %.outer258 ], [ %.0, %bb.o ]
  br label %bb.b

bb.b:                                             ; preds = %.outer262, %bb.p
  %.0 = phi i32 [ %i.ak, %bb.p ], [ %.0.ph264, %.outer262 ] ; 8 uses
  %i.a = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.5078) #37
  switch i32 %i.a, label %.loopexit [
    i32 -1, label %bb.q
    i32 70, label %bb.c
    i32 75, label %bb.f
    i32 78, label %bb.i
    i32 83, label %bb.l
    i32 111, label %bb.o
    i32 118, label %bb.p
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not75 = icmp slt i32 %i.b, %1
  br i1 %.not75, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.610)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99
  %i.f = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.e, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = add nsw i32 %i.b, 1
  store i32 %i.h, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.i = icmp slt i32 %i.g, 0
  br i1 %i.i, label %.loopexit, label %.outer, !llvm.loop !1384

bb.f:                                             ; preds = %bb.b
  %i.j = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not74 = icmp slt i32 %i.j, %1
  br i1 %.not74, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.1018)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %2, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.n = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.m, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = add nsw i32 %i.j, 1
  store i32 %i.p, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %.loopexit, label %.outer253, !llvm.loop !1384

bb.i:                                             ; preds = %bb.b
  %i.r = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not73 = icmp slt i32 %i.r, %1
  br i1 %.not73, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.621)
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %2, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99
  %i.v = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.u, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.w = trunc i64 %i.v to i32                    ; 3 uses
  %i.x = add nsw i32 %i.r, 1
  store i32 %i.x, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.y = icmp slt i32 %i.w, 0
  br i1 %i.y, label %.loopexit, label %.outer247, !llvm.loop !1384

bb.l:                                             ; preds = %bb.b
  %i.z = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not72 = icmp slt i32 %i.z, %1
  br i1 %.not72, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4981)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !99 ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit.thread, label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit.thread:                       ; preds = %bb.n
  %i.ad = add nsw i32 %i.z, 1
  store i32 %i.ad, ptr @globalUtilOptind, align 4, !tbaa !47
  br label %.loopexit

Abc_UtilStrsav.exit:                              ; preds = %bb.n
  %i.ae = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ac) #40
  %i.af = add i64 %i.ae, 1
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #38 ; 2 uses
  %i.ah = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull readonly dereferenceable(1) %i.ac) #37 ; 0 uses
  %3 = load i32, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.ai = add nsw i32 %3, 1
  store i32 %i.ai, ptr @globalUtilOptind, align 4, !tbaa !47
  br label %.outer258, !llvm.loop !1384

bb.o:                                             ; preds = %bb.b
  %i.aj = xor i32 %.044.ph263, 1
  br label %.outer262, !llvm.loop !1384

bb.p:                                             ; preds = %bb.b
  %i.ak = xor i32 %.0, 1
  br label %bb.b, !llvm.loop !1384

bb.q:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !67 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.5042)
  br label %bb.aa

bb.s:                                             ; preds = %bb.q
  %i.ao = getelementptr i8, ptr %i.am, i64 16
  %.val79 = load i32, ptr %i.ao, align 8, !tbaa !54 ; 3 uses
  %i.ap = icmp eq i32 %.val79, 0
  br i1 %i.ap, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.5079)
  br label %bb.aa

bb.u:                                             ; preds = %bb.s
  %i.aq = mul nuw nsw i32 %.048.ph254, %.050.ph248 ; 2 uses
  %i.ar = icmp slt i32 %.val79, %i.aq
  br i1 %i.ar, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.5080, i32 noundef %.val79, i32 noundef %i.aq)
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.as = icmp ne i32 %.053.ph, 1
  %i.at = icmp ne i32 %.050.ph248, 1
  %or.cond = or i1 %i.as, %i.at
  br i1 %or.cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.5081)
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.au = tail call ptr @Gia_GenQbfMiter(ptr noundef nonnull %i.am, i32 noundef 1, i32 noundef 1, i32 noundef %.048.ph254, ptr noundef %.046.ph259, i32 noundef %.044.ph263, i32 noundef %.0) #37
  tail call void @Abc_FrameUpdateGia(ptr noundef nonnull %0, ptr noundef %i.au)
  %.not71 = icmp eq ptr %.046.ph259, null
  br i1 %.not71, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @free(ptr noundef nonnull %.046.ph259) #37
  br label %bb.aa

.loopexit:                                        ; preds = %bb.k, %bb.b, %bb.h, %bb.e, %Abc_UtilStrsav.exit.thread, %bb.m, %bb.j, %bb.g, %bb.d
  %.255 = phi i32 [ %.053.ph, %bb.j ], [ %.053.ph, %bb.d ], [ %.053.ph, %Abc_UtilStrsav.exit.thread ], [ %.053.ph, %bb.g ], [ %.053.ph, %bb.m ], [ %.053.ph, %bb.h ], [ %.053.ph, %bb.k ], [ %.053.ph, %bb.b ], [ %i.g, %bb.e ]
  %.252 = phi i32 [ %.050.ph248, %bb.j ], [ %.050.ph248, %bb.d ], [ %.050.ph248, %Abc_UtilStrsav.exit.thread ], [ %.050.ph248, %bb.g ], [ %.050.ph248, %bb.m ], [ %i.w, %bb.k ], [ %.050.ph248, %bb.b ], [ %.050.ph248, %bb.h ], [ %.050.ph248, %bb.e ]
  %.2 = phi i32 [ %.048.ph254, %bb.j ], [ %.048.ph254, %bb.d ], [ %.048.ph254, %Abc_UtilStrsav.exit.thread ], [ %.048.ph254, %bb.g ], [ %.048.ph254, %bb.m ], [ %.048.ph254, %bb.k ], [ %i.o, %bb.h ], [ %.048.ph254, %bb.b ], [ %.048.ph254, %bb.e ]
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5082)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5083)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5084, i32 noundef %.255)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5085, i32 noundef %.2)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5086, i32 noundef %.252)
  %.not76 = icmp eq i32 %.044.ph263, 0
  %i.av = select i1 %.not76, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5087, ptr noundef nonnull %i.av)
  %.not77 = icmp eq i32 %.0, 0
  %i.aw = select i1 %.not77, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2211, ptr noundef nonnull %i.aw)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.594)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %.loopexit, %bb.x, %bb.v, %bb.t, %bb.r
  %.056 = phi i32 [ 1, %.loopexit ], [ 1, %bb.r ], [ 1, %bb.t ], [ 1, %bb.v ], [ 1, %bb.x ], [ 0, %bb.y ], [ 0, %bb.z ]
  ret i32 %.056
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandAbc9GenLutCas(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) #8 {
bb.a:
  tail call void (...) @Extra_UtilGetoptReset() #37
  br label %.outer

.outer:                                           ; preds = %bb.d, %bb.a
  %.083.ph = phi i32 [ %i.g, %bb.d ], [ 0, %bb.a ] ; 7 uses
  %.080.ph = phi i32 [ %.080.ph260, %bb.d ], [ 2, %bb.a ]
  %.077.ph = phi i32 [ %.077.ph266, %bb.d ], [ 6, %bb.a ]
  %.075.ph = phi i32 [ %.075.ph271, %bb.d ], [ 0, %bb.a ]
  %.073.ph = phi i32 [ %.073.ph275, %bb.d ], [ 0, %bb.a ]
  %.0.ph = phi ptr [ %.0, %bb.d ], [ null, %bb.a ]
  br label %.outer259

.outer259:                                        ; preds = %.outer, %bb.f
  %.080.ph260 = phi i32 [ %.080.ph, %.outer ], [ %i.o, %bb.f ] ; 13 uses
  %.077.ph261 = phi i32 [ %.077.ph, %.outer ], [ %.077.ph266, %bb.f ]
  %.075.ph262 = phi i32 [ %.075.ph, %.outer ], [ %.075.ph271, %bb.f ]
  %.073.ph263 = phi i32 [ %.073.ph, %.outer ], [ %.073.ph275, %bb.f ]
  %.0.ph264 = phi ptr [ %.0.ph, %.outer ], [ %.0, %bb.f ]
  br label %.outer265

.outer265:                                        ; preds = %.outer259, %bb.h
  %.077.ph266 = phi i32 [ %.077.ph261, %.outer259 ], [ %i.w, %bb.h ] ; 17 uses
  %.075.ph267 = phi i32 [ %.075.ph262, %.outer259 ], [ %.075.ph271, %bb.h ]
  %.073.ph268 = phi i32 [ %.073.ph263, %.outer259 ], [ %.073.ph275, %bb.h ]
  %.0.ph269 = phi ptr [ %.0.ph264, %.outer259 ], [ %.0, %bb.h ]
  br label %.outer270

.outer270:                                        ; preds = %.outer265, %bb.j
  %.075.ph271 = phi i32 [ %.075.ph267, %.outer265 ], [ %i.ae, %bb.j ] ; 9 uses
  %.073.ph272 = phi i32 [ %.073.ph268, %.outer265 ], [ %.073.ph275, %bb.j ]
  %.0.ph273 = phi ptr [ %.0.ph269, %.outer265 ], [ %.0, %bb.j ]
  br label %.outer274

.outer274:                                        ; preds = %.outer270, %bb.m
  %.073.ph275 = phi i32 [ %.073.ph272, %.outer270 ], [ %i.am, %bb.m ] ; 7 uses
  %.0.ph276 = phi ptr [ %.0.ph273, %.outer270 ], [ %.0, %bb.m ]
  br label %bb.b

bb.b:                                             ; preds = %.outer274, %bb.l
  %.0 = phi ptr [ %i.ak, %bb.l ], [ %.0.ph276, %.outer274 ] ; 11 uses
  %i.a = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.5088) #37
  switch i32 %i.a, label %.loopexit [
    i32 -1, label %bb.n
    i32 78, label %bb.c
    i32 77, label %bb.e
    i32 75, label %bb.g
    i32 83, label %bb.i
    i32 80, label %bb.k
    i32 118, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not112 = icmp slt i32 %i.b, %1
  br i1 %.not112, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99
  %i.f = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.e, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = add nsw i32 %i.b, 1
  store i32 %i.h, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.i = icmp slt i32 %i.g, 0
  br i1 %i.i, label %.loopexit, label %.outer, !llvm.loop !1385

bb.e:                                             ; preds = %bb.b
  %i.j = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not111 = icmp slt i32 %i.j, %1
  br i1 %.not111, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %2, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.n = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.m, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = add nsw i32 %i.j, 1
  store i32 %i.p, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %.loopexit, label %.outer259, !llvm.loop !1385

bb.g:                                             ; preds = %bb.b
  %i.r = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not110 = icmp slt i32 %i.r, %1
  br i1 %.not110, label %bb.h, label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %2, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99
  %i.v = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.u, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.w = trunc i64 %i.v to i32                    ; 3 uses
  %i.x = add nsw i32 %i.r, 1
  store i32 %i.x, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.y = icmp slt i32 %i.w, 0
  br i1 %i.y, label %.loopexit, label %.outer265, !llvm.loop !1385

bb.i:                                             ; preds = %bb.b
  %i.z = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not109 = icmp slt i32 %i.z, %1
  br i1 %.not109, label %bb.j, label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !99
  %i.ad = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ac, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.ae = trunc i64 %i.ad to i32                  ; 3 uses
  %i.af = add nsw i32 %i.z, 1
  store i32 %i.af, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.ag = icmp slt i32 %i.ae, 0
  br i1 %i.ag, label %.loopexit, label %.outer270, !llvm.loop !1385
end_hunk_2
begin_hunk_3_@Abc_CommandAbc9GenPrefix:bb.a
bb.e:                                             ; preds = %bb.b
  %i.o = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not90 = icmp slt i32 %i.o, %1
  br i1 %.not90, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %2, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !99
  %i.s = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.r, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.t = trunc i64 %i.s to i32                    ; 3 uses
  %i.u = add nsw i32 %i.o, 1
  store i32 %i.u, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.v = icmp slt i32 %i.t, 0
  br i1 %i.v, label %.loopexit, label %.backedge

bb.g:                                             ; preds = %bb.b
  %i.w = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not89 = icmp slt i32 %i.w, %1
  br i1 %.not89, label %bb.h, label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %2, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !99
  %i.aa = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.z, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.ab = trunc i64 %i.aa to i32                  ; 3 uses
  %i.ac = add nsw i32 %i.w, 1
  store i32 %i.ac, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.ad = icmp slt i32 %i.ab, 0
  br i1 %i.ad, label %.loopexit, label %.backedge

bb.i:                                             ; preds = %bb.b
  %i.ae = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not88 = icmp slt i32 %i.ae, %1
  br i1 %.not88, label %bb.j, label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.i
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %2, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !99
  %i.ai = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ah, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.aj = trunc i64 %i.ai to i32                  ; 3 uses
  %i.ak = add nsw i32 %i.ae, 1
  store i32 %i.ak, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.al = icmp slt i32 %i.aj, 0
  br i1 %i.al, label %.loopexit, label %.backedge

bb.k:                                             ; preds = %bb.b
  %i.am = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not87 = icmp slt i32 %i.am, %1
  br i1 %.not87, label %bb.l, label %.loopexit.sink.split

bb.l:                                             ; preds = %bb.k
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %2, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !99
  %i.aq = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ap, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.ar = trunc i64 %i.aq to i32                  ; 3 uses
  %i.as = add nsw i32 %i.am, 1
  store i32 %i.as, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.at = icmp slt i32 %i.ar, 0
  br i1 %i.at, label %.loopexit, label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.p, %bb.o, %bb.n, %bb.m
  %.066.be = phi i32 [ %i.l, %bb.d ], [ %.066, %bb.f ], [ %.066, %bb.h ], [ %.066, %bb.j ], [ %.066, %bb.l ], [ %.066, %bb.m ], [ %.066, %bb.n ], [ %.066, %bb.o ], [ %.066, %bb.p ]
  %.063.be = phi i32 [ %.063, %bb.d ], [ %i.t, %bb.f ], [ %.063, %bb.h ], [ %.063, %bb.j ], [ %.063, %bb.l ], [ %.063, %bb.m ], [ %.063, %bb.n ], [ %.063, %bb.o ], [ %.063, %bb.p ]
  %.060.be = phi i32 [ %.060, %bb.d ], [ %.060, %bb.f ], [ %i.ab, %bb.h ], [ %.060, %bb.j ], [ %.060, %bb.l ], [ %.060, %bb.m ], [ %.060, %bb.n ], [ %.060, %bb.o ], [ %.060, %bb.p ]
  %.057.be = phi i32 [ %.057, %bb.d ], [ %.057, %bb.f ], [ %.057, %bb.h ], [ %i.aj, %bb.j ], [ %.057, %bb.l ], [ %.057, %bb.m ], [ %.057, %bb.n ], [ %.057, %bb.o ], [ %.057, %bb.p ]
  %.055.be = phi i32 [ %.055, %bb.d ], [ %.055, %bb.f ], [ %.055, %bb.h ], [ %.055, %bb.j ], [ %i.ar, %bb.l ], [ %.055, %bb.m ], [ %.055, %bb.n ], [ %.055, %bb.o ], [ %.055, %bb.p ]
  %.053.be = phi i32 [ %.053, %bb.d ], [ %.053, %bb.f ], [ %.053, %bb.h ], [ %.053, %bb.j ], [ %.053, %bb.l ], [ %i.au, %bb.m ], [ %.053, %bb.n ], [ %.053, %bb.o ], [ %.053, %bb.p ]
  %.051.be = phi i32 [ %.051, %bb.d ], [ %.051, %bb.f ], [ %.051, %bb.h ], [ %.051, %bb.j ], [ %.051, %bb.l ], [ %.051, %bb.m ], [ %i.av, %bb.n ], [ %.051, %bb.o ], [ %.051, %bb.p ]
  %.049.be = phi i32 [ %.049, %bb.d ], [ %.049, %bb.f ], [ %.049, %bb.h ], [ %.049, %bb.j ], [ %.049, %bb.l ], [ %.049, %bb.m ], [ %.049, %bb.n ], [ %.049, %bb.o ], [ %i.ax, %bb.p ]
  %.0.be = phi i32 [ %.0, %bb.d ], [ %.0, %bb.f ], [ %.0, %bb.h ], [ %.0, %bb.j ], [ %.0, %bb.l ], [ %.0, %bb.m ], [ %.0, %bb.n ], [ %i.aw, %bb.o ], [ %.0, %bb.p ]
  br label %bb.b, !llvm.loop !1508

bb.m:                                             ; preds = %bb.b
  %i.au = xor i32 %.053, 1
  br label %.backedge

bb.n:                                             ; preds = %bb.b
  %i.av = xor i32 %.051, 1
  br label %.backedge

bb.o:                                             ; preds = %bb.b
  %i.aw = xor i32 %.0, 1
  br label %.backedge

bb.p:                                             ; preds = %bb.b
  %i.ax = xor i32 %.049, 1
  br label %.backedge

bb.q:                                             ; preds = %bb.b
  %i.ay = icmp eq i32 %.066, 0
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.5535)
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i32 0, ptr %i.b, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i32 0, ptr %i.c, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i32 0, ptr %i.d, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  store i32 0, ptr %i.e, align 4, !tbaa !47
  %i.az = call ptr @adder_return_array(i32 noundef %.066, i32 noundef %.063, i32 noundef %.0, i32 noundef %.060, i32 noundef %.057, i32 noundef %.055, i32 noundef %.049, i32 noundef %.053, i32 noundef %.051, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #37 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5536, i32 noundef %.066, i32 noundef %.063) ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !47
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !47
  %i.be = load i32, ptr %i.c, align 4, !tbaa !47
  %i.bf = load i32, ptr %i.d, align 4, !tbaa !47
  %i.bg = load i32, ptr %i.e, align 4, !tbaa !47
  %i.bh = call ptr @Gia_ManDupFromArray(ptr noundef nonnull %i.az, i32 noundef %i.bc, i32 noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bf, i32 noundef %i.bg) #37
  call void @Abc_FrameUpdateGia(ptr noundef %0, ptr noundef %i.bh)
  call void @free(ptr noundef nonnull %i.az) #37
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.w

.loopexit.sink.split:                             ; preds = %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.str.579.sink = phi ptr [ @.str.1050, %bb.i ], [ @.str.596, %bb.g ], [ @.str.610, %bb.e ], [ @.str.621, %bb.c ], [ @.str.579, %bb.k ]
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull %.str.579.sink)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %.loopexit.sink.split
  %.268 = phi i32 [ %.066, %.loopexit.sink.split ], [ %.066, %bb.j ], [ %.066, %bb.h ], [ %.066, %bb.f ], [ %i.l, %bb.d ], [ %.066, %bb.b ], [ %.066, %bb.l ]
  %.265 = phi i32 [ %.063, %.loopexit.sink.split ], [ %.063, %bb.j ], [ %.063, %bb.h ], [ %i.t, %bb.f ], [ %.063, %bb.d ], [ %.063, %bb.b ], [ %.063, %bb.l ]
  %.262 = phi i32 [ %.060, %.loopexit.sink.split ], [ %.060, %bb.j ], [ %i.ab, %bb.h ], [ %.060, %bb.f ], [ %.060, %bb.d ], [ %.060, %bb.b ], [ %.060, %bb.l ]
  %.259 = phi i32 [ %.057, %.loopexit.sink.split ], [ %i.aj, %bb.j ], [ %.057, %bb.h ], [ %.057, %bb.f ], [ %.057, %bb.d ], [ %.057, %bb.b ], [ %.057, %bb.l ]
  %.2 = phi i32 [ %.055, %.loopexit.sink.split ], [ %.055, %bb.j ], [ %.055, %bb.h ], [ %.055, %bb.f ], [ %.055, %bb.d ], [ %.055, %bb.b ], [ %i.ar, %bb.l ]
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5537)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5538)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5539, i32 noundef %.268)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5540, i32 noundef %.265)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5541, i32 noundef %.262)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5542, i32 noundef %.259)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5543, i32 noundef %.2)
  %.not92 = icmp eq i32 %.053, 0
  %i.bi = select i1 %.not92, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5544, ptr noundef nonnull %i.bi)
  %.not93 = icmp eq i32 %.051, 0
  %i.bj = select i1 %.not93, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5545, ptr noundef nonnull %i.bj)
  %.not94 = icmp eq i32 %.0, 0
  %i.bk = select i1 %.not94, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5546, ptr noundef nonnull %i.bk)
  %.not95 = icmp eq i32 %.049, 0
  %i.bl = select i1 %.not95, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5547, ptr noundef nonnull %i.bl)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5548)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5549)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5550)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5551)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5552)
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %bb.v, %bb.r
  %.069 = phi i32 [ 1, %.loopexit ], [ 0, %bb.r ], [ 0, %bb.v ]
  ret i32 %.069
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandAbc9Window(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) #8 {
bb.a:
  tail call void (...) @Extra_UtilGetoptReset() #37
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.025 = phi i32 [ 0, %bb.a ], [ %i.b, %bb.c ]   ; 3 uses
  %i.a = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.712) #37
  switch i32 %i.a, label %bb.t [
    i32 -1, label %bb.d
    i32 118, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = xor i32 %.025, 1
  br label %bb.b, !llvm.loop !1509

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.5553)
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %i.f = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 2 uses
  %i.g = icmp eq i32 %1, %i.f
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5554, i32 noundef 6, i32 noundef 30) ; 0 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !67
  tail call void @Gia_ManExploreCutsTest(ptr noundef %i.i, i32 noundef 6, i32 noundef 30, i32 noundef %.025) #37
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %.not30 = icmp sgt i32 %1, %i.f
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.5555)
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  store i32 0, ptr %i.k, align 4, !tbaa !46
  store i32 100, ptr %i.j, align 8, !tbaa !45
  %i.l = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #38 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !42
  %3 = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 2 uses
  %4 = icmp slt i32 %3, %1
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %5 = sext i32 %3 to i64
  %wide.trip.count = sext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Vec_IntPush.exit
  %i.n = phi ptr [ %i.l, %.lr.ph.preheader ], [ %i.af, %Vec_IntPush.exit ] ; 6 uses
  %i.o = phi i32 [ 100, %.lr.ph.preheader ], [ %i.ag, %Vec_IntPush.exit ] ; 8 uses
  %i.p = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ah, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %5, %.lr.ph.preheader ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !99
  %i.s = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.r, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.t = trunc i64 %i.s to i32
  %i.u = icmp eq i32 %i.p, %i.o
  br i1 %i.u, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %.lr.ph
  %i.v = icmp slt i32 %i.o, 16
  br i1 %i.v, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not9.i.i = icmp eq ptr %i.n, null
  br i1 %.not9.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.n, i64 noundef 64) #39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.x = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #38
  br label %Vec_IntGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.k
  %i.y = icmp samesign ult i32 %i.o, 1073741823
  %i.z = shl nuw nsw i32 %i.o, 1
  %spec.select.i = select i1 %i.y, i32 %i.z, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.o, %spec.select.i
  br i1 %.not.i9.i, label %bb.p, label %Vec_IntPush.exit

bb.p:                                             ; preds = %bb.o
  %.not9.i10.i = icmp eq ptr %i.n, null
  %i.aa = zext nneg i32 %spec.select.i to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.n, i64 noundef %i.ab) #39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.p
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ab) #38
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.q, %bb.r, %bb.m, %bb.n
  %storemerge = phi ptr [ %i.x, %bb.n ], [ %i.w, %bb.m ], [ %i.ac, %bb.q ], [ %i.ad, %bb.r ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select.i, %bb.q ], [ %spec.select.i, %bb.r ] ; 2 uses
  store ptr %storemerge, ptr %i.m, align 8, !tbaa !42
  store i32 %spec.select.sink.i, ptr %i.j, align 8, !tbaa !45
  %.pre = load i32, ptr %i.k, align 4, !tbaa !46
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph, %bb.o, %Vec_IntGrow.exit11.sink.split.i
  %i.ae = phi i32 [ %i.p, %.lr.ph ], [ %i.o, %bb.o ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.af = phi ptr [ %i.n, %.lr.ph ], [ %i.n, %bb.o ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ag = phi i32 [ %i.o, %.lr.ph ], [ %i.o, %bb.o ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ah = add nsw i32 %i.ae, 1                    ; 2 uses
  store i32 %i.ah, ptr %i.k, align 4, !tbaa !46
  %i.ai = sext i32 %i.ae to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ai
  store i32 %i.t, ptr %i.aj, align 4, !tbaa !47
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1510

._crit_edge.loopexit:                             ; preds = %Vec_IntPush.exit
  %.pre36 = load ptr, ptr %i.c, align 8, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %6 = phi ptr [ %.pre36, %._crit_edge.loopexit ], [ %i.d, %bb.j ]
  %i.ak = tail call ptr @Gia_ManDupWindow(ptr noundef %6, ptr noundef nonnull %i.j) #37
  tail call void @Abc_FrameUpdateGia(ptr noundef nonnull %0, ptr noundef %i.ak)
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !42  ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.al) #37
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %bb.s
  tail call void @free(ptr noundef nonnull %i.j) #37
  br label %bb.u

bb.t:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5556)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5557)
  %.not31 = icmp eq i32 %.025, 0
  %i.am = select i1 %.not31, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5016, ptr noundef nonnull %i.am)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.796)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.5558)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %Vec_IntFree.exit, %bb.i, %bb.g, %bb.e
  %.0 = phi i32 [ 1, %bb.t ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %Vec_IntFree.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandAbc9FunAbs(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) #8 {
bb.a:
  tail call void (...) @Extra_UtilGetoptReset() #37
  br label %.outer

.outer:                                           ; preds = %bb.d, %bb.a
  %.059.ph = phi i32 [ %i.g, %bb.d ], [ 6, %bb.a ] ; 9 uses
  %.057.ph = phi i32 [ %.057.ph175, %bb.d ], [ 0, %bb.a ]
  %.055.ph = phi i32 [ %.055.ph180, %bb.d ], [ 0, %bb.a ]
  %.053.ph = phi i32 [ %.053.ph184, %bb.d ], [ 0, %bb.a ]
  %.052.ph = phi i32 [ %.052, %bb.d ], [ 0, %bb.a ]
  br label %.outer174

.outer174:                                        ; preds = %.outer, %bb.f
  %.057.ph175 = phi i32 [ %.057.ph, %.outer ], [ %i.o, %bb.f ] ; 6 uses
  %.055.ph176 = phi i32 [ %.055.ph, %.outer ], [ %.055.ph180, %bb.f ]
  %.053.ph177 = phi i32 [ %.053.ph, %.outer ], [ %.053.ph184, %bb.f ]
  %.052.ph178 = phi i32 [ %.052.ph, %.outer ], [ %.052, %bb.f ]
  br label %.outer179

.outer179:                                        ; preds = %.outer174, %bb.g
  %.055.ph180 = phi i32 [ %.055.ph176, %.outer174 ], [ %i.r, %bb.g ] ; 5 uses
  %.053.ph181 = phi i32 [ %.053.ph177, %.outer174 ], [ %.053.ph184, %bb.g ]
  %.052.ph182 = phi i32 [ %.052.ph178, %.outer174 ], [ %.052, %bb.g ]
  br label %.outer183

.outer183:                                        ; preds = %.outer179, %bb.h
  %.053.ph184 = phi i32 [ %.053.ph181, %.outer179 ], [ %i.s, %bb.h ] ; 6 uses
  %.052.ph185 = phi i32 [ %.052.ph182, %.outer179 ], [ %.052, %bb.h ]
  br label %bb.b

bb.b:                                             ; preds = %.outer183, %bb.i
  %.052 = phi i32 [ %i.t, %bb.i ], [ %.052.ph185, %.outer183 ] ; 7 uses
  %i.a = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.5559) #37
  switch i32 %i.a, label %.loopexit [
    i32 -1, label %bb.j
    i32 75, label %bb.c
    i32 82, label %bb.e
    i32 101, label %bb.g
    i32 112, label %bb.h
    i32 118, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not80 = icmp slt i32 %i.b, %1
  br i1 %.not80, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99
  %i.f = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.e, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = add nsw i32 %i.b, 1
  store i32 %i.h, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.i = icmp slt i32 %i.g, 0
  br i1 %i.i, label %.loopexit, label %.outer, !llvm.loop !1511

bb.e:                                             ; preds = %bb.b
  %i.j = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not79 = icmp slt i32 %i.j, %1
  br i1 %.not79, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %2, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.n = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.m, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = add nsw i32 %i.j, 1
  store i32 %i.p, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %.loopexit, label %.outer174, !llvm.loop !1511

bb.g:                                             ; preds = %bb.b
  %i.r = xor i32 %.055.ph180, 1
  br label %.outer179, !llvm.loop !1511

bb.h:                                             ; preds = %bb.b
  %i.s = xor i32 %.053.ph184, 1
  br label %.outer183, !llvm.loop !1511

bb.i:                                             ; preds = %bb.b
  %i.t = xor i32 %.052, 1
  br label %bb.b, !llvm.loop !1511

bb.j:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67   ; 6 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.5560)
  br label %bb.aj

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val = load i32, ptr %i.x, align 8, !tbaa !54  ; 2 uses
  %i.y = getelementptr i8, ptr %i.v, i64 72
  %.val84 = load ptr, ptr %i.y, align 8, !tbaa !66
  %i.z = getelementptr i8, ptr %.val84, i64 4
  %.val84.val = load i32, ptr %i.z, align 4, !tbaa !46
  %i.aa = sub nsw i32 %.val84.val, %.val
  %.not73 = icmp eq i32 %i.aa, 1
  %.not74 = icmp eq i32 %.val, 0
  %or.cond = and i1 %.not74, %.not73
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.5561)
  br label %bb.aj

bb.n:                                             ; preds = %bb.l
  %i.ab = getelementptr i8, ptr %i.v, i64 64
  %.val89 = load ptr, ptr %i.ab, align 8, !tbaa !69
  %i.ac = getelementptr i8, ptr %.val89, i64 4
  %.val89.val = load i32, ptr %i.ac, align 4, !tbaa !46 ; 2 uses
  %.not75 = icmp slt i32 %.059.ph, %.val89.val
  br i1 %.not75, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.5562, i32 noundef %.059.ph, i32 noundef %.val89.val)
  br label %bb.aj

bb.p:                                             ; preds = %bb.n
  %.not76 = icmp eq i32 %.057.ph175, 0
  br i1 %.not76, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @Gia_ManCofClassRand(ptr noundef nonnull %i.v, i32 noundef %.059.ph, i32 noundef %.057.ph175) #37
  br label %bb.aj

bb.r:                                             ; preds = %bb.p
  %.not77 = icmp eq i32 %.055.ph180, 0
  br i1 %.not77, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @Gia_ManCofClassEnum(ptr noundef nonnull %i.v, i32 noundef %.059.ph) #37
  br label %bb.aj

bb.t:                                             ; preds = %bb.r
  %i.ad = load i32, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.ae = icmp eq i32 %1, %i.ad
  br i1 %i.ae, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.af = tail call fastcc ptr @Vec_IntStartNatural(i32 noundef %.059.ph)
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5563, i32 noundef %.059.ph) ; 0 uses
  br label %bb.af

bb.v:                                             ; preds = %bb.t
  %i.ah = tail call fastcc ptr @Vec_IntAlloc(i32 noundef %1) ; 6 uses
  %i.ai = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %1
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.am = sext i32 %i.ai to i64
  %wide.trip.count = sext i32 %1 to i64
  %.pre = load i32, ptr %i.ak, align 4, !tbaa !46
  %.pre128 = load i32, ptr %i.ah, align 8, !tbaa !45
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %i.an = phi i32 [ %.pre128, %.lr.ph ], [ %i.bg, %Vec_IntPush.exit ] ; 7 uses
  %i.ao = phi i32 [ %.pre, %.lr.ph ], [ %i.bi, %Vec_IntPush.exit ]
  %indvars.iv = phi i64 [ %i.am, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv
end_hunk_3
