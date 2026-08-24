Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/absRefSelect?download=true
inline.NumInlined: 83
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Ga2_StructAnalize:bb.a
  br i1 %i.ag, label %bb.e, label %.critedge4, !llvm.loop !45

.critedge4:                                       ; preds = %bb.e, %bb.f, %.critedge2
  %i.ah = getelementptr i8, ptr %3, i64 4         ; 3 uses
  %.val91119 = load i32, ptr %i.ah, align 4, !tbaa !17 ; 2 uses
  %i.ai = icmp sgt i32 %.val91119, 0
  br i1 %i.ai, label %.lr.ph121, label %.critedge8

.lr.ph121:                                        ; preds = %.critedge4
  %i.aj = getelementptr i8, ptr %3, i64 8
  %.val101151 = load ptr, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %.not76152 = icmp eq ptr %.val101151, null
  br i1 %.not76152, label %.critedge6, label %.lr.ph155

bb.g:                                             ; preds = %.lr.ph155
  %.val101 = load ptr, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %.not76 = icmp eq ptr %.val101, null
  br i1 %.not76, label %.critedge6, label %.lr.ph155, !llvm.loop !46

.lr.ph155:                                        ; preds = %.lr.ph121, %bb.g
  %.val101154 = phi ptr [ %.val101, %bb.g ], [ %.val101151, %.lr.ph121 ]
  %indvars.iv138153 = phi i64 [ %indvars.iv.next139, %bb.g ], [ 0, %.lr.ph121 ] ; 2 uses
  %.val96 = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val96, i64 %indvars.iv138153
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !22
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [12 x i8], ptr %.val101154, i64 %i.am ; 2 uses
  %i.ao = load i64, ptr %i.an, align 4
  %i.ap = or i64 %i.ao, 4611686018427387904
  store i64 %i.ap, ptr %i.an, align 4
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138153, 1 ; 2 uses
  %.val91 = load i32, ptr %i.ah, align 4, !tbaa !17 ; 3 uses
  %i.aq = sext i32 %.val91 to i64
  %i.ar = icmp slt i64 %indvars.iv.next139, %i.aq
  br i1 %i.ar, label %bb.g, label %..critedge6_crit_edge156, !llvm.loop !46

..critedge6_crit_edge156:                         ; preds = %.lr.ph155
  br label %.critedge6, !llvm.loop !46

.critedge6:                                       ; preds = %bb.g, %..critedge6_crit_edge156, %.lr.ph121
  %.val127148 = phi i32 [ %.val91, %..critedge6_crit_edge156 ], [ %.val91119, %.lr.ph121 ], [ %.val91, %bb.g ]
  %i.as = icmp sgt i32 %.val127148, 0
  br i1 %i.as, label %.lr.ph129, label %.critedge8

.lr.ph129:                                        ; preds = %.critedge6
  %i.at = getelementptr i8, ptr %3, i64 8
  %i.au = getelementptr i8, ptr %0, i64 264
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph129, %.critedge10
  %indvars.iv144 = phi i64 [ 0, %.lr.ph129 ], [ %indvars.iv.next145, %.critedge10 ] ; 2 uses
  %.val100 = load ptr, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %.not77 = icmp eq ptr %.val100, null
  br i1 %.not77, label %.critedge8, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val95 = load ptr, ptr %i.at, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.val95, i64 %indvars.iv144
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !22
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [12 x i8], ptr %.val100, i64 %i.ax
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 3 uses
  %i.az = trunc nuw nsw i64 %indvars.iv.next145 to i32
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.az) ; 0 uses
  %.val106 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.bb = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bc = ptrtoint ptr %.val106 to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = sdiv exact i64 %i.bd, 12
  %i.bf = trunc i64 %i.be to i32
  %i.bg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.bf) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.val107 = load ptr, ptr %i.a, align 8, !tbaa !23
  %.val108 = load ptr, ptr %i.au, align 8, !tbaa !47
  %i.bh = getelementptr i8, ptr %.val108, i64 8
  %.val108.val = load ptr, ptr %i.bh, align 8, !tbaa !21 ; 3 uses
  %i.bi = ptrtoint ptr %.val107 to i64
  %i.bj = sub i64 %i.bb, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 12
  %sext.i.i.i = shl i64 %i.bk, 32
  %i.bl = ashr exact i64 %sext.i.i.i, 30
  %i.bm = getelementptr inbounds i8, ptr %.val108.val, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !22 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %.val108.val, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !22 ; 2 uses
  store i32 %i.bq, ptr @Ga2_ObjLeaves.v.0, align 4, !tbaa !17
  %i.br = sext i32 %i.bn to i64
  %i.bs = getelementptr [4 x i8], ptr %.val108.val, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 4
  store ptr %i.bt, ptr @Ga2_ObjLeaves.v.1, align 8, !tbaa !21
  %i.bu = icmp sgt i32 %i.bq, 0
  br i1 %i.bu, label %.lr.ph125, label %.critedge10

.lr.ph125:                                        ; preds = %bb.i, %.sink.split
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %.sink.split ], [ 0, %bb.i ] ; 2 uses
  %.val99 = load ptr, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %.not78 = icmp eq ptr %.val99, null
  br i1 %.not78, label %.critedge10, label %bb.j

bb.j:                                             ; preds = %.lr.ph125
  %Ga2_ObjLeaves.v.val94 = load ptr, ptr @Ga2_ObjLeaves.v.1, align 8, !tbaa !21
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %Ga2_ObjLeaves.v.val94, i64 %indvars.iv141
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !22
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [12 x i8], ptr %.val99, i64 %i.bx ; 2 uses
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  %.val105 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %.val105 to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = sdiv exact i64 %i.cc, 12
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.ce) ; 0 uses
  %i.cg = load i64, ptr %i.by, align 4
  %i.ch = and i64 %i.cg, 4611686019501129728
  switch i64 %i.ch, label %.unreachabledefault [
    i64 4611686019501129728, label %.sink.split
    i64 1073741824, label %bb.k
    i64 4611686018427387904, label %bb.l
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  br label %.sink.split

bb.m:                                             ; preds = %bb.j
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.l, %bb.m, %bb.k
  %.str.9.sink = phi ptr [ @.str.9, %bb.k ], [ @.str.11, %bb.m ], [ @.str.10, %bb.l ], [ @.str.8, %bb.j ]
  %i.ci = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.9.sink) ; 0 uses
  %putchar87 = tail call i32 @putchar(i32 10)     ; 0 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %Ga2_ObjLeaves.v.val = load i32, ptr @Ga2_ObjLeaves.v.0, align 4, !tbaa !17
  %i.cj = sext i32 %Ga2_ObjLeaves.v.val to i64
  %i.ck = icmp slt i64 %indvars.iv.next142, %i.cj
  br i1 %i.ck, label %.lr.ph125, label %.critedge10, !llvm.loop !48

.unreachabledefault:                              ; preds = %bb.j
  unreachable

.critedge10:                                      ; preds = %.sink.split, %.lr.ph125, %bb.i
  %.val = load i32, ptr %i.ah, align 4, !tbaa !17
  %i.cl = sext i32 %.val to i64
  %i.cm = icmp slt i64 %indvars.iv.next145, %i.cl
  br i1 %i.cm, label %bb.h, label %.critedge8, !llvm.loop !49

.critedge8:                                       ; preds = %bb.h, %.critedge10, %.critedge4, %.critedge6
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Rnm_ManFilterSelected(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !17
  %i.d = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val95149 = load i32, ptr %i.d, align 4, !tbaa !17 ; 2 uses
  %i.e = icmp sgt i32 %.val95149, 0
  br i1 %i.e, label %.lr.ph151, label %.critedge

.lr.ph151:                                        ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = getelementptr i8, ptr %0, i64 48
  %i.h = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 32
  %.val105205 = load ptr, ptr %i.i, align 8, !tbaa !23
  %.not206 = icmp eq ptr %.val105205, null
  br i1 %.not206, label %.critedge.loopexit, label %.lr.ph208

bb.b:                                             ; preds = %.critedge2
  %i.j = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %.val105 = load ptr, ptr %i.k, align 8, !tbaa !23
  %.not = icmp eq ptr %.val105, null
  br i1 %.not, label %.critedge.loopexit.loopexit, label %.lr.ph208, !llvm.loop !51

.lr.ph208:                                        ; preds = %.lr.ph151, %bb.b
  %i.l = phi ptr [ %i.j, %bb.b ], [ %i.h, %.lr.ph151 ]
  %indvars.iv164207 = phi i64 [ %indvars.iv.next165, %bb.b ], [ 0, %.lr.ph151 ] ; 2 uses
  %.val100 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val100, i64 %indvars.iv164207
  %i.n = load i32, ptr %i.m, align 4, !tbaa !22
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr i8, ptr %i.l, i64 264
  %.val112 = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.q = getelementptr i8, ptr %.val112, i64 8
  %.val112.val = load ptr, ptr %i.q, align 8, !tbaa !21 ; 3 uses
  %sext.i.i.i = shl nuw i64 %i.o, 32
  %i.r = ashr exact i64 %sext.i.i.i, 30
  %i.s = getelementptr inbounds i8, ptr %.val112.val, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !22
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %.val112.val, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !22   ; 3 uses
  store i32 %i.w, ptr @Ga2_ObjLeaves.v.0, align 4, !tbaa !17
  %i.x = load i32, ptr %i.s, align 4, !tbaa !22
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [4 x i8], ptr %.val112.val, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 4       ; 3 uses
  %i.ab = icmp sgt i32 %i.w, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %.lr.ph208
  %i.ac = sext i32 %i.w to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Rnm_ObjAddToCount.exit.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %Rnm_ObjAddToCount.exit.thread ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !20
  %i.ae = getelementptr i8, ptr %i.ad, i64 32
  %.val104 = load ptr, ptr %i.ae, align 8, !tbaa !23 ; 2 uses
  %.not92 = icmp eq ptr %.val104, null
  br i1 %.not92, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !22
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds [12 x i8], ptr %.val104, i64 %i.ah
  %.val118 = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.aj = getelementptr i8, ptr %.val118, i64 8
  %.val118.val = load ptr, ptr %i.aj, align 8, !tbaa !53
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = getelementptr inbounds i8, ptr %.val118.val, i64 %i.ah ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !55  ; 3 uses
  %i.an = icmp slt i8 %i.am, 16
  br i1 %i.an, label %Rnm_ObjAddToCount.exit, label %Rnm_ObjAddToCount.exit.thread

Rnm_ObjAddToCount.exit:                           ; preds = %bb.c
  %i.ao = add nsw i8 %i.am, 1
  store i8 %i.ao, ptr %i.al, align 1, !tbaa !55
  %i.ap = icmp eq i8 %i.am, 0
  br i1 %i.ap, label %bb.d, label %Rnm_ObjAddToCount.exit.thread

bb.d:                                             ; preds = %Rnm_ObjAddToCount.exit
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !50  ; 6 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !20
  %i.as = getelementptr i8, ptr %i.ar, i64 32
  %.val108 = load ptr, ptr %i.as, align 8, !tbaa !23
  %i.at = ptrtoint ptr %.val108 to i64
  %i.au = sub i64 %i.ak, %i.at
  %i.av = sdiv exact i64 %i.au, 12
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !17 ; 7 uses
  %i.az = load i32, ptr %i.aq, align 8, !tbaa !56
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %i.bb = icmp slt i32 %i.ay, 16
  br i1 %i.bb, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !21 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bd, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bd, i64 noundef 64) #11
  br label %Vec_IntGrow.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bf = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #12
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.h, %bb.g
  %i.bg = phi ptr [ %i.be, %bb.g ], [ %i.bf, %bb.h ]
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.bh = icmp samesign ult i32 %i.ay, 1073741823
  %i.bi = shl nuw nsw i32 %i.ay, 1
  %spec.select.i = select i1 %i.bh, i32 %i.bi, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.ay, %spec.select.i
  br i1 %.not.i9.i, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.bk, null
  %i.bl = zext nneg i32 %spec.select.i to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = tail call ptr @realloc(ptr noundef nonnull %i.bk, i64 noundef %i.bm) #11
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bo = tail call noalias ptr @malloc(i64 noundef %i.bm) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bp = phi ptr [ %i.bn, %bb.k ], [ %i.bo, %bb.l ]
  store ptr %i.bp, ptr %i.bj, align 8, !tbaa !21
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.m, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.m ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.aq, align 8, !tbaa !56
  %.pre = load i32, ptr %i.ax, align 4, !tbaa !17
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.d, %bb.i, %Vec_IntGrow.exit11.sink.split.i
  %i.bq = phi i32 [ %i.ay, %bb.d ], [ %i.ay, %bb.i ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !21
  %i.bt = add nsw i32 %i.bq, 1
  store i32 %i.bt, ptr %i.ax, align 4, !tbaa !17
  %i.bu = sext i32 %i.bq to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bu
  store i32 %i.aw, ptr %i.bv, align 4, !tbaa !22
  br label %Rnm_ObjAddToCount.exit.thread

Rnm_ObjAddToCount.exit.thread:                    ; preds = %bb.c, %Rnm_ObjAddToCount.exit, %Vec_IntPush.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bw = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.bw, label %.lr.ph, label %.critedge2, !llvm.loop !57

.critedge2:                                       ; preds = %Rnm_ObjAddToCount.exit.thread, %.lr.ph, %.lr.ph208
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164207, 1 ; 2 uses
  %.val95 = load i32, ptr %i.d, align 4, !tbaa !17 ; 3 uses
  %i.bx = sext i32 %.val95 to i64
  %i.by = icmp slt i64 %indvars.iv.next165, %i.bx
  br i1 %i.by, label %bb.b, label %.critedge2..critedge.loopexit_crit_edge, !llvm.loop !51

.critedge2..critedge.loopexit_crit_edge:          ; preds = %.critedge2
  store ptr %i.aa, ptr @Ga2_ObjLeaves.v.1, align 8, !tbaa !21
  br label %.critedge.loopexit, !llvm.loop !51

.critedge.loopexit.loopexit:                      ; preds = %bb.b
  store ptr %i.aa, ptr @Ga2_ObjLeaves.v.1, align 8, !tbaa !21
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexit.loopexit, %.critedge2..critedge.loopexit_crit_edge, %.lr.ph151
  %.val93155178 = phi i32 [ %.val95, %.critedge2..critedge.loopexit_crit_edge ], [ %.val95149, %.lr.ph151 ], [ %.val95, %.critedge.loopexit.loopexit ]
  %i.bz = icmp sgt i32 %.val93155178, 0
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.val93155 = phi i1 [ %i.bz, %.critedge.loopexit ], [ false, %bb.a ]
  %i.ca = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #12 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 3 uses
  store i32 0, ptr %i.cb, align 4, !tbaa !17
  store i32 100, ptr %i.ca, align 8, !tbaa !56
  %i.cc = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #12 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !21
  br i1 %.val93155, label %.lr.ph157, label %Vec_IntUniqify.exit

.lr.ph157:                                        ; preds = %.critedge
  %i.ce = getelementptr i8, ptr %1, i64 8
  %i.cf = getelementptr i8, ptr %0, i64 64
  %i.cg = getelementptr i8, ptr %0, i64 48
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph157, %.critedge6
  %i.ch = phi ptr [ %i.cc, %.lr.ph157 ], [ %i.ez, %.critedge6 ] ; 9 uses
  %i.ci = phi i32 [ 100, %.lr.ph157 ], [ %i.fa, %.critedge6 ] ; 13 uses
  %i.cj = phi ptr [ %i.cc, %.lr.ph157 ], [ %i.fb, %.critedge6 ] ; 8 uses
  %i.ck = phi ptr [ %i.cc, %.lr.ph157 ], [ %i.fc, %.critedge6 ] ; 6 uses
  %i.cl = phi i32 [ 100, %.lr.ph157 ], [ %i.fd, %.critedge6 ] ; 9 uses
  %i.cm = phi i32 [ 0, %.lr.ph157 ], [ %i.fe, %.critedge6 ] ; 7 uses
  %indvars.iv170 = phi i64 [ 0, %.lr.ph157 ], [ %indvars.iv.next171, %.critedge6 ] ; 2 uses
  %i.cn = load ptr, ptr %0, align 8, !tbaa !20    ; 4 uses
  %.val98 = load ptr, ptr %i.ce, align 8, !tbaa !21
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.val98, i64 %indvars.iv170
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !22 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cn, i64 32
  %.val103 = load ptr, ptr %i.cq, align 8, !tbaa !23 ; 3 uses
  %i.cr = sext i32 %i.cp to i64                   ; 2 uses
  %.not87 = icmp eq ptr %.val103, null
  br i1 %.not87, label %.critedge4, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cs = getelementptr inbounds [12 x i8], ptr %.val103, i64 %i.cr
  %.val119 = load i64, ptr %i.cs, align 4         ; 2 uses
  %i.ct = and i64 %.val119, 2684354559
  %narrow.i.not.i = icmp eq i64 %i.ct, 2684354559
  br i1 %narrow.i.not.i, label %Gia_ObjIsRo.exit, label %Gia_ObjIsRo.exit.thread

Gia_ObjIsRo.exit:                                 ; preds = %bb.o
  %i.cu = lshr i64 %.val119, 32
  %i.cv = trunc nuw i64 %i.cu to i32
  %i.cw = and i32 %i.cv, 536870911
  %i.cx = getelementptr i8, ptr %i.cn, i64 16
  %.val4.i = load i32, ptr %i.cx, align 8, !tbaa !37
  %i.cy = getelementptr i8, ptr %i.cn, i64 64
  %.val5.i = load ptr, ptr %i.cy, align 8, !tbaa !38
  %i.cz = getelementptr i8, ptr %.val5.i, i64 4
  %.val5.val.i = load i32, ptr %i.cz, align 4, !tbaa !17
  %i.da = sub nsw i32 %.val5.val.i, %.val4.i
  %.not144 = icmp slt i32 %i.cw, %i.da
  br i1 %.not144, label %Gia_ObjIsRo.exit.thread, label %bb.p

bb.p:                                             ; preds = %Gia_ObjIsRo.exit
  %i.db = icmp eq i32 %i.cm, %i.cl
  br i1 %i.db, label %bb.q, label %.critedge6.sink.split

bb.q:                                             ; preds = %bb.p
  %i.dc = icmp slt i32 %i.cl, 16
end_hunk_0
