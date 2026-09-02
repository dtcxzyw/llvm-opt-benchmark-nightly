Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 187
begin_hunk_0_@cgltf_decode_string:bb.a

bb.o:                                             ; preds = %bb.m
  %i.ao = add nsw i32 %i.af, -55
  br label %cgltf_unhex.exit.1

cgltf_unhex.exit.1:                               ; preds = %bb.o, %bb.n, %cgltf_unhex.exit
  %i.ap = phi i32 [ %i.an, %bb.n ], [ %i.ao, %bb.o ], [ %i.ag, %cgltf_unhex.exit ]
  %i.aq = shl nsw i32 %i.ac, 8
  %i.ar = shl nsw i32 %i.ap, 4
  %i.as = add nsw i32 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.05468, i64 5
  %i.au = load i8, ptr %i.ad, align 1
  %i.av = sext i8 %i.au to i32                    ; 5 uses
  %i.aw = add nsw i32 %i.av, -48                  ; 2 uses
  %i.ax = icmp ult i32 %i.aw, 10
  br i1 %i.ax, label %cgltf_unhex.exit.2, label %bb.p

bb.p:                                             ; preds = %cgltf_unhex.exit.1
  %i.ay = add nsw i32 %i.av, -65
  %i.az = icmp ult i32 %i.ay, 6
  br i1 %i.az, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = add nsw i32 %i.av, -97
  %i.bb = icmp ult i32 %i.ba, 6
  %i.bc = add nsw i32 %i.av, -87
  %i.bd = select i1 %i.bb, i32 %i.bc, i32 -1
  br label %cgltf_unhex.exit.2

bb.r:                                             ; preds = %bb.p
  %i.be = add nsw i32 %i.av, -55
  br label %cgltf_unhex.exit.2

cgltf_unhex.exit.2:                               ; preds = %bb.r, %bb.q, %cgltf_unhex.exit.1
  %i.bf = phi i32 [ %i.bd, %bb.q ], [ %i.be, %bb.r ], [ %i.aw, %cgltf_unhex.exit.1 ]
  %i.bg = add nsw i32 %i.bf, %i.as
  %i.bh = shl nsw i32 %i.bg, 4
  %i.bi = load i8, ptr %i.at, align 1
  %i.bj = sext i8 %i.bi to i32                    ; 5 uses
  %i.bk = add nsw i32 %i.bj, -48                  ; 2 uses
  %i.bl = icmp ult i32 %i.bk, 10
  br i1 %i.bl, label %cgltf_unhex.exit.3, label %bb.s

bb.s:                                             ; preds = %cgltf_unhex.exit.2
  %i.bm = add nsw i32 %i.bj, -65
  %i.bn = icmp ult i32 %i.bm, 6
  br i1 %i.bn, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = add nsw i32 %i.bj, -97
  %i.bp = icmp ult i32 %i.bo, 6
  %i.bq = add nsw i32 %i.bj, -87
  %i.br = select i1 %i.bp, i32 %i.bq, i32 -1
  br label %cgltf_unhex.exit.3

bb.u:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bj, -55
  br label %cgltf_unhex.exit.3

cgltf_unhex.exit.3:                               ; preds = %bb.u, %bb.t, %cgltf_unhex.exit.2
  %i.bt = phi i32 [ %i.br, %bb.t ], [ %i.bs, %bb.u ], [ %i.bk, %cgltf_unhex.exit.2 ]
  %i.bu = add nsw i32 %i.bt, %i.bh                ; 8 uses
  %scevgep = getelementptr i8, ptr %.05468, i64 6 ; 3 uses
  %i.bv = icmp slt i32 %i.bu, 128
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  br i1 %i.bv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %cgltf_unhex.exit.3
  %i.bx = trunc i32 %i.bu to i8
  store i8 %i.bx, ptr %i.e, align 1
  br label %bb.z

bb.w:                                             ; preds = %cgltf_unhex.exit.3
  %i.by = icmp samesign ult i32 %i.bu, 2048
  br i1 %i.by, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bz = lshr i32 %i.bu, 6
  %i.ca = trunc nuw nsw i32 %i.bz to i8
  %i.cb = or disjoint i8 %i.ca, -64
  store i8 %i.cb, ptr %i.e, align 1
  %i.cc = trunc i32 %i.bu to i8
  %i.cd = and i8 %i.cc, 63
  %i.ce = or disjoint i8 %i.cd, -128
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 %i.ce, ptr %i.bw, align 1
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cg = lshr i32 %i.bu, 12
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = or i8 %i.ch, -32
  store i8 %i.ci, ptr %i.e, align 1
  %i.cj = lshr i32 %i.bu, 6
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = and i8 %i.ck, 63
  %i.cm = or disjoint i8 %i.cl, -128
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 %i.cm, ptr %i.bw, align 1
  %i.co = trunc i32 %i.bu to i8
  %i.cp = and i8 %i.co, 63
  %i.cq = or disjoint i8 %i.cp, -128
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  store i8 %i.cq, ptr %i.cn, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %.lr.ph, %bb.x, %bb.y, %bb.v
  %.256 = phi ptr [ %i.g, %.lr.ph ], [ %i.g, %bb.b ], [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %i.g, %bb.f ], [ %i.g, %bb.g ], [ %i.g, %bb.h ], [ %i.g, %bb.i ], [ %scevgep, %bb.x ], [ %scevgep, %bb.y ], [ %scevgep, %bb.v ] ; 3 uses
  %.2 = phi ptr [ %i.e, %.lr.ph ], [ %i.n, %bb.b ], [ %i.o, %bb.c ], [ %i.p, %bb.d ], [ %i.q, %bb.e ], [ %i.r, %bb.f ], [ %i.s, %bb.g ], [ %i.t, %bb.h ], [ %i.u, %bb.i ], [ %i.cf, %bb.x ], [ %i.cr, %bb.y ], [ %i.bw, %bb.v ] ; 2 uses
  %i.cs = tail call i64 @strcspn(ptr noundef nonnull %.256, ptr noundef nonnull @.str.1) #51 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.256, i64 %i.cs ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.2, ptr nonnull align 1 %.256, i64 %i.cs, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %.2, i64 %i.cs ; 3 uses
  %i.cv = load i8, ptr %i.ct, align 1
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.z
  store i8 0, ptr %i.cu, align 1
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = ptrtoint ptr %0 to i64
  %i.cz = sub i64 %i.cx, %i.cy
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %._crit_edge
  %.058 = phi i64 [ %i.cz, %._crit_edge ], [ %i.a, %bb.a ]
  ret i64 %.058
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i64 @cgltf_decode_uri(ptr noundef %0) local_unnamed_addr #13 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.020 = phi ptr [ %0, %bb.a ], [ %.020.be, %.backedge ] ; 5 uses
  %.018 = phi ptr [ %0, %bb.a ], [ %.018.be, %.backedge ] ; 5 uses
  %i.a = load i8, ptr %.018, align 1              ; 2 uses
  switch i8 %i.a, label %.thread45 [
    i8 0, label %bb.l
    i8 37, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.018, i64 1
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = sext i8 %i.c to i32                      ; 5 uses
  %i.e = add nsw i32 %i.d, -48                    ; 2 uses
  %i.f = icmp ult i32 %i.e, 10
  br i1 %i.f, label %cgltf_unhex.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.d, -65
  %i.h = icmp ult i32 %i.g, 6
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %i.d, -55
  br label %cgltf_unhex.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.j = add nsw i32 %i.d, -97
  %i.k = icmp ult i32 %i.j, 6
  %i.l = add nsw i32 %i.d, -87
  %i.m = icmp sgt i8 %i.c, 86
  %or.cond = and i1 %i.m, %i.k
  br i1 %or.cond, label %cgltf_unhex.exit.thread, label %.thread45

cgltf_unhex.exit.thread:                          ; preds = %bb.f, %bb.c, %bb.e
  %i.n = phi i32 [ %i.l, %bb.f ], [ %i.e, %bb.c ], [ %i.i, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.018, i64 2
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = sext i8 %i.p to i32                      ; 4 uses
  %i.r = add nsw i32 %i.q, -48                    ; 2 uses
  %i.s = icmp ult i32 %i.r, 10
  br i1 %i.s, label %bb.j, label %bb.g

bb.g:                                             ; preds = %cgltf_unhex.exit.thread
  %i.t = add nsw i32 %i.q, -65
  %i.u = icmp ult i32 %i.t, 6
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = add nsw i32 %i.q, -55
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.q, -103
  %i.x = icmp ult i32 %i.w, -6
  %i.y = icmp slt i8 %i.p, 87
  %or.cond49 = or i1 %i.y, %i.x
  br i1 %or.cond49, label %.thread45, label %.thread42

.thread42:                                        ; preds = %bb.i
  %1 = add nsw i8 %i.p, -87
  %.tr = trunc i32 %i.n to i8
  %i.z = shl i8 %.tr, 4
  %i.aa = add i8 %1, %i.z
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %cgltf_unhex.exit.thread
  %.ph31 = phi i32 [ %i.r, %cgltf_unhex.exit.thread ], [ %i.v, %bb.h ]
  %i.ab = shl nuw nsw i32 %i.n, 4
  %i.ac = add nuw nsw i32 %.ph31, %i.ab
  %i.ad = trunc i32 %i.ac to i8
  br label %bb.k

bb.k:                                             ; preds = %.thread42, %bb.j
  %storemerge = phi i8 [ %i.aa, %.thread42 ], [ %i.ad, %bb.j ]
  store i8 %storemerge, ptr %.020, align 1
  %.3 = getelementptr inbounds nuw i8, ptr %.018, i64 3
  br label %.backedge

.thread45:                                        ; preds = %bb.i, %bb.f, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %.018, i64 1
  store i8 %i.a, ptr %.020, align 1
  br label %.backedge

.backedge:                                        ; preds = %.thread45, %bb.k
  %.018.be = phi ptr [ %i.ae, %.thread45 ], [ %.3, %bb.k ]
  %.020.be = getelementptr inbounds nuw i8, ptr %.020, i64 1
  br label %bb.b

bb.l:                                             ; preds = %bb.b
  store i8 0, ptr %.020, align 1
  %i.af = ptrtoint ptr %.020 to i64
  %i.ag = ptrtoint ptr %0 to i64
  %i.ah = sub i64 %i.af, %i.ag
  ret i64 %i.ah
}

; Function Attrs: nounwind uwtable
define hidden i32 @cgltf_load_buffers(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not68 = icmp eq ptr %i.o, null
  br i1 %.not68, label %.lr.ph, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.o, ptr %i.h, align 8
  %i.u = load ptr, ptr %i.f, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i32 0, ptr %i.v, align 8
  %.pre = load i64, ptr %i.d, align 8
  %i.w = icmp eq i64 %.pre, 0
  br i1 %i.w, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d, %bb.e, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.y = icmp ne ptr %2, null
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ad = ptrtoint ptr %2 to i64
  %invariant.op = sub i64 1, %i.ad
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.ao
  %.055112 = phi i64 [ 0, %.lr.ph ], [ %i.fi, %bb.ao ] ; 5 uses
  %i.ae = load ptr, ptr %i.x, align 8
  %i.af = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %.055112 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %.not69 = icmp eq ptr %i.ah, null
  br i1 %.not69, label %bb.i, label %bb.ao

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8            ; 8 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.ao, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(6) @.str.2, i64 noundef 5) #51
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.k, label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.an = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.aj, i32 noundef 44) #51 ; 4 uses
  %.not71 = icmp ne ptr %i.an, null
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.aj to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp sgt i64 %i.aq, 6
  %or.cond76 = and i1 %.not71, %i.ar
  br i1 %or.cond76, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 -7
  %i.at = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull dereferenceable(8) @.str.3, i64 noundef 7) #51
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ax = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  %spec.select.i = select i1 %.not.i, ptr @cgltf_default_alloc, ptr %i.ax
  %i.ay = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.az = load ptr, ptr %i.ac, align 8
  %i.ba = call ptr %spec.select.i(ptr noundef %i.az, i64 noundef %i.aw) #54, !inline_history !22 ; 4 uses
  %.not57.i = icmp eq ptr %i.ba, null
  br i1 %.not57.i, label %.thread.sink.split, label %.preheader63.i

.preheader63.i:                                   ; preds = %bb.m
  %.not5872.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not5872.not.i, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader63.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.076.i = phi i64 [ %i.cm, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %.03875.i = phi i32 [ %i.ci, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %.03974.i = phi i32 [ %.140.lcssa.i, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %.04773.i = phi ptr [ %.148.lcssa.i, %._crit_edge.i ], [ %i.bb, %.preheader.i.preheader ] ; 4 uses
  %i.bc = icmp ult i32 %.03875.i, 8
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.04773.i, i64 1 ; 2 uses
  %i.be = load i8, ptr %.04773.i, align 1         ; 2 uses
  %i.bf = sext i8 %i.be to i32                    ; 5 uses
  %i.bg = add nsw i32 %i.bf, -65                  ; 2 uses
  %i.bh = icmp ult i32 %i.bg, 26
  br i1 %i.bh, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.bi = add nsw i32 %i.bf, -97
  %i.bj = icmp ult i32 %i.bi, 26
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = add nsw i32 %i.bf, -71
  br label %.thread.i

bb.p:                                             ; preds = %bb.n
  %i.bl = add nsw i32 %i.bf, -48
  %i.bm = icmp ult i32 %i.bl, 10
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = add nuw nsw i32 %i.bf, 4
  br label %.thread.i

bb.r:                                             ; preds = %bb.p
  switch i8 %i.be, label %bb.z [
    i8 43, label %.thread.i
    i8 47, label %bb.s
  ]

.thread.i:                                        ; preds = %bb.r, %bb.q, %bb.o, %.lr.ph.i
  %.ph.i = phi i32 [ %i.bk, %bb.o ], [ %i.bg, %.lr.ph.i ], [ %i.bn, %bb.q ], [ 62, %bb.r ]
  %i.bo = shl i32 %.03974.i, 6
  %i.bp = or i32 %.ph.i, %i.bo
  br label %.backedge.i

bb.s:                                             ; preds = %bb.r
  %i.bq = shl i32 %.03974.i, 6
  %i.br = or disjoint i32 %i.bq, 63
end_hunk_0
begin_hunk_1_@cgltf_load_buffers:bb.a
  %.1.be.i = add nuw nsw i32 %.03875.i, 6
  %i.bs = icmp samesign ult i32 %.03875.i, 2
  br i1 %i.bs, label %.lr.ph.i.1, label %._crit_edge.i

.lr.ph.i.1:                                       ; preds = %.backedge.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.04773.i, i64 2
  %i.bu = load i8, ptr %i.bd, align 1             ; 2 uses
  %i.bv = sext i8 %i.bu to i32                    ; 5 uses
  %i.bw = add nsw i32 %i.bv, -65                  ; 2 uses
  %i.bx = icmp ult i32 %i.bw, 26
  br i1 %i.bx, label %.thread.i.1, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.1
  %i.by = add nsw i32 %i.bv, -97
  %i.bz = icmp ult i32 %i.by, 26
  br i1 %i.bz, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = add nsw i32 %i.bv, -48
  %i.cb = icmp ult i32 %i.ca, 10
  br i1 %i.cb, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  switch i8 %i.bu, label %bb.z [
    i8 43, label %.thread.i.1
    i8 47, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.cc = shl i32 %.140.be.i, 6
  %i.cd = or disjoint i32 %i.cc, 63
  br label %.backedge.i.1

bb.x:                                             ; preds = %bb.u
  %i.ce = add nuw nsw i32 %i.bv, 4
  br label %.thread.i.1

bb.y:                                             ; preds = %bb.t
  %i.cf = add nsw i32 %i.bv, -71
  br label %.thread.i.1

.thread.i.1:                                      ; preds = %bb.y, %bb.x, %bb.v, %.lr.ph.i.1
  %.ph.i.1 = phi i32 [ %i.cf, %bb.y ], [ %i.bw, %.lr.ph.i.1 ], [ %i.ce, %bb.x ], [ 62, %bb.v ]
  %i.cg = shl i32 %.140.be.i, 6
  %i.ch = or i32 %.ph.i.1, %i.cg
  br label %.backedge.i.1

.backedge.i.1:                                    ; preds = %.thread.i.1, %bb.w
  %.140.be.i.1 = phi i32 [ %i.ch, %.thread.i.1 ], [ %i.cd, %bb.w ]
  %.1.be.i.1 = or disjoint i32 %.03875.i, 12
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.backedge.i, %.backedge.i.1, %.preheader.i
  %.148.lcssa.i = phi ptr [ %.04773.i, %.preheader.i ], [ %i.bd, %.backedge.i ], [ %i.bt, %.backedge.i.1 ]
  %.140.lcssa.i = phi i32 [ %.03974.i, %.preheader.i ], [ %.140.be.i, %.backedge.i ], [ %.140.be.i.1, %.backedge.i.1 ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.03875.i, %.preheader.i ], [ %.1.be.i, %.backedge.i ], [ %.1.be.i.1, %.backedge.i.1 ]
  %i.ci = add i32 %.1.lcssa.i, -8                 ; 2 uses
  %i.cj = lshr i32 %.140.lcssa.i, %i.ci
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.076.i
  store i8 %i.ck, ptr %i.cl, align 1
  %i.cm = add nuw i64 %.076.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cm, %i.aw
  br i1 %exitcond.not.i, label %.loopexit, label %.preheader.i

bb.z:                                             ; preds = %bb.v, %bb.r
  %.not56.i.le = icmp eq ptr %i.ay, null
  %i.cn = select i1 %.not56.i.le, ptr @cgltf_default_free, ptr %i.ay
  %i.co = load ptr, ptr %i.ac, align 8
  call void %i.cn(ptr noundef %i.co, ptr noundef nonnull %i.ba) #54, !inline_history !22
  br label %.thread.sink.split

.loopexit:                                        ; preds = %._crit_edge.i, %.preheader63.i
  store ptr %i.ba, ptr %i.ag, align 8
  %i.cp = load ptr, ptr %i.x, align 8
  %i.cq = getelementptr inbounds nuw [80 x i8], ptr %i.cp, i64 %.055112
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store i32 2, ptr %i.cr, align 8
  br label %bb.ao

bb.aa:                                            ; preds = %bb.j
  %i.cs = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(1) @.str.4) #51
  %i.ct = icmp eq ptr %i.cs, null
  %or.cond = and i1 %i.y, %i.ct
  br i1 %or.cond, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cv = load i64, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cv, ptr %i.a, align 8
  %i.cw = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i78 = icmp eq ptr %i.cw, null
  %spec.select.i79 = select i1 %.not.i78, ptr @cgltf_default_alloc, ptr %i.cw
  %i.cx = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not31.i = icmp eq ptr %i.cx, null
  %i.cy = select i1 %.not31.i, ptr @cgltf_default_free, ptr %i.cx
  %i.cz = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not32.i = icmp eq ptr %i.cz, null
  %i.da = select i1 %.not32.i, ptr @cgltf_default_file_read, ptr %i.cz
  %i.db = load ptr, ptr %i.ac, align 8
  %i.dc = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.aj) #51
  %i.dd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #51
  %i.de = add i64 %i.dc, 1
  %i.df = add i64 %i.de, %i.dd
  %i.dg = call ptr %spec.select.i79(ptr noundef %i.db, i64 noundef %i.df) #54, !inline_history !21 ; 8 uses
  %.not33.i = icmp eq ptr %i.dg, null
  br i1 %.not33.i, label %cgltf_load_buffer_file.exit.thread, label %bb.ac

cgltf_load_buffer_file.exit.thread:               ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread.sink.split

bb.ac:                                            ; preds = %bb.ab
  %i.dh = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 47) #51 ; 3 uses
  %i.di = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 92) #51 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dh, null
  %i.dj = icmp ugt ptr %i.di, %i.dh
  %i.dk = select i1 %.not.i.i, i1 true, i1 %i.dj
  %i.dl = select i1 %i.dk, ptr %i.di, ptr %i.dh   ; 2 uses
  %.not22.i.i = icmp eq ptr %i.dl, null
  br i1 %.not22.i.i, label %cgltf_combine_paths.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dm = ptrtoint ptr %i.dl to i64
  %.reass.reass.reass = add i64 %i.dm, %invariant.op ; 2 uses
  %i.dn = call ptr @strncpy(ptr noundef nonnull %i.dg, ptr noundef nonnull %2, i64 noundef %.reass.reass.reass) #54 ; 0 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.reass.reass.reass
  br label %cgltf_combine_paths.exit.i

cgltf_combine_paths.exit.i:                       ; preds = %bb.ad, %bb.ac
  %.sink.i.i = phi ptr [ %i.do, %bb.ad ], [ %i.dg, %bb.ac ]
  %i.dp = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.sink.i.i, ptr noundef nonnull readonly dereferenceable(1) %i.aj) #54 ; 0 uses
  %i.dq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dg) #51
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dq
  %i.ds = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.aj) #51
  %i.dt = sub i64 0, %i.ds
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %i.dt ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.backedge.i.i, %cgltf_combine_paths.exit.i
  %.020.i.i = phi ptr [ %i.du, %cgltf_combine_paths.exit.i ], [ %.020.be.i.i, %.backedge.i.i ] ; 4 uses
  %.018.i.i = phi ptr [ %i.du, %cgltf_combine_paths.exit.i ], [ %.018.be.i.i, %.backedge.i.i ] ; 5 uses
  %i.dv = load i8, ptr %.018.i.i, align 1         ; 2 uses
  switch i8 %i.dv, label %.thread45.i.i [
    i8 0, label %cgltf_load_buffer_file.exit
    i8 37, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dw = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 1
  %i.dx = load i8, ptr %i.dw, align 1             ; 2 uses
  %i.dy = sext i8 %i.dx to i32                    ; 5 uses
  %i.dz = add nsw i32 %i.dy, -48                  ; 2 uses
  %i.ea = icmp ult i32 %i.dz, 10
  br i1 %i.ea, label %cgltf_unhex.exit.thread.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = add nsw i32 %i.dy, -65
  %i.ec = icmp ult i32 %i.eb, 6
  br i1 %i.ec, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ed = add nsw i32 %i.dy, -55
  br label %cgltf_unhex.exit.thread.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ee = add nsw i32 %i.dy, -97
  %i.ef = icmp ult i32 %i.ee, 6
  %i.eg = add nsw i32 %i.dy, -87
  %i.eh = icmp sgt i8 %i.dx, 86
  %or.cond.i.i = and i1 %i.eh, %i.ef
  br i1 %or.cond.i.i, label %cgltf_unhex.exit.thread.i.i, label %.thread45.i.i

cgltf_unhex.exit.thread.i.i:                      ; preds = %bb.ai, %bb.ah, %bb.af
  %i.ei = phi i32 [ %i.eg, %bb.ai ], [ %i.dz, %bb.af ], [ %i.ed, %bb.ah ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 2
  %i.ek = load i8, ptr %i.ej, align 1             ; 3 uses
  %i.el = sext i8 %i.ek to i32                    ; 4 uses
  %i.em = add nsw i32 %i.el, -48                  ; 2 uses
  %i.en = icmp ult i32 %i.em, 10
  br i1 %i.en, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %cgltf_unhex.exit.thread.i.i
  %i.eo = add nsw i32 %i.el, -65
  %i.ep = icmp ult i32 %i.eo, 6
  br i1 %i.ep, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.eq = add nsw i32 %i.el, -55
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.er = add nsw i32 %i.el, -103
  %i.es = icmp ult i32 %i.er, -6
  %i.et = icmp slt i8 %i.ek, 87
  %or.cond49.i.i = or i1 %i.et, %i.es
  br i1 %or.cond49.i.i, label %.thread45.i.i, label %.thread42.i.i

.thread42.i.i:                                    ; preds = %bb.al
  %3 = add nsw i8 %i.ek, -87
  %.tr.i.i = trunc i32 %i.ei to i8
  %i.eu = shl i8 %.tr.i.i, 4
  %i.ev = add i8 %3, %i.eu
  br label %bb.an

bb.am:                                            ; preds = %bb.ak, %cgltf_unhex.exit.thread.i.i
  %.ph31.i.i = phi i32 [ %i.em, %cgltf_unhex.exit.thread.i.i ], [ %i.eq, %bb.ak ]
  %i.ew = shl nuw nsw i32 %i.ei, 4
  %i.ex = add nuw nsw i32 %.ph31.i.i, %i.ew
  %i.ey = trunc i32 %i.ex to i8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread42.i.i
  %storemerge.i.i = phi i8 [ %i.ev, %.thread42.i.i ], [ %i.ey, %bb.am ]
  store i8 %storemerge.i.i, ptr %.020.i.i, align 1
  %.3.i.i = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 3
  br label %.backedge.i.i

.thread45.i.i:                                    ; preds = %bb.al, %bb.ai, %bb.ae
  %i.ez = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 1
  store i8 %i.dv, ptr %.020.i.i, align 1
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.thread45.i.i, %bb.an
  %.018.be.i.i = phi ptr [ %i.ez, %.thread45.i.i ], [ %.3.i.i, %bb.an ]
  %.020.be.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 1
  br label %bb.ae

cgltf_load_buffer_file.exit:                      ; preds = %bb.ae
  store i8 0, ptr %.020.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  store ptr null, ptr %i.b, align 8
  %i.fa = call i32 %i.da(ptr noundef nonnull %i.z, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #54, !inline_history !21 ; 2 uses
  %i.fb = load ptr, ptr %i.ac, align 8
  call void %i.cy(ptr noundef %i.fb, ptr noundef nonnull %i.dg) #54, !inline_history !21
  %i.fc = icmp eq i32 %i.fa, 0                    ; 2 uses
  %i.fd = load ptr, ptr %i.b, align 8
  %i.fe = select i1 %i.fc, ptr %i.fd, ptr null
  store ptr %i.fe, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ff = load ptr, ptr %i.x, align 8
  %i.fg = getelementptr inbounds nuw [80 x i8], ptr %i.ff, i64 %.055112
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  store i32 1, ptr %i.fh, align 8
  br i1 %i.fc, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %cgltf_load_buffer_file.exit, %bb.i, %.loopexit, %bb.h
  %i.fi = add nuw i64 %.055112, 1                 ; 2 uses
  %i.fj = load i64, ptr %i.d, align 8
  %i.fk = icmp ult i64 %i.fi, %i.fj
  br i1 %i.fk, label %bb.h, label %.thread

.thread.sink.split:                               ; preds = %bb.m, %bb.z, %cgltf_load_buffer_file.exit.thread
  %.sink = phi i32 [ 1, %cgltf_load_buffer_file.exit.thread ], [ 2, %bb.z ], [ 2, %bb.m ]
  %.8.ph = phi i32 [ 8, %cgltf_load_buffer_file.exit.thread ], [ 7, %bb.z ], [ 8, %bb.m ]
  %i.fl = load ptr, ptr %i.x, align 8
  %i.fm = getelementptr inbounds nuw [80 x i8], ptr %i.fl, i64 %.055112
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  store i32 %.sink, ptr %i.fn, align 8
  br label %.thread

.thread:                                          ; preds = %bb.ao, %bb.aa, %cgltf_load_buffer_file.exit, %bb.l, %bb.k, %.thread.sink.split, %bb.b, %bb.g, %bb.f, %bb.a
  %.8 = phi i32 [ 1, %bb.f ], [ 5, %bb.a ], [ 0, %bb.b ], [ %.8.ph, %.thread.sink.split ], [ 0, %bb.g ], [ 2, %bb.k ], [ 2, %bb.l ], [ %i.fa, %cgltf_load_buffer_file.exit ], [ 2, %bb.aa ], [ 0, %bb.ao ]
  ret i32 %.8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 5) i32 @cgltf_validate(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not654 = icmp eq i64 %i.b, 0
  br i1 %.not654, label %.preheader594, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8
  br label %bb.b

.preheader594:                                    ; preds = %.thread481, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not655 = icmp eq i64 %i.f, 0
  br i1 %.not655, label %.preheader592, label %.lr.ph612

.lr.ph612:                                        ; preds = %.preheader594
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8
  br label %bb.t

bb.b:                                             ; preds = %.lr.ph, %.thread481
  %.0328610 = phi i64 [ 0, %.lr.ph ], [ %i.eq, %.thread481 ] ; 2 uses
  %i.i = getelementptr inbounds nuw [288 x i8], ptr %i.d, i64 %.0328610 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.thread486, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load i32, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.thread486, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %i.k, label %bb.f [
    i32 1, label %cgltf_component_size.exit.i
    i32 2, label %cgltf_component_size.exit.i
    i32 3, label %cgltf_component_size.exit.thread.i
    i32 4, label %cgltf_component_size.exit.thread.i
    i32 5, label %bb.e
    i32 6, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  br label %cgltf_component_size.exit.thread.i

bb.f:                                             ; preds = %bb.d
  br label %cgltf_component_size.exit.thread.i

cgltf_component_size.exit.i:                      ; preds = %bb.d, %bb.d
  %i.p = icmp eq i32 %i.n, 5
  br i1 %i.p, label %cgltf_calc_size.exit, label %cgltf_component_size.exit.thread.i

cgltf_component_size.exit.thread.i:               ; preds = %cgltf_component_size.exit.i, %bb.f, %bb.e, %bb.d, %bb.d
  %.0.i21.i = phi i64 [ 1, %cgltf_component_size.exit.i ], [ 0, %bb.f ], [ 4, %bb.e ], [ 2, %bb.d ], [ 2, %bb.d ] ; 3 uses
  switch i32 %i.n, label %bb.j [
    i32 6, label %bb.k
    i32 2, label %cgltf_num_components.exit.i
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.h
    i32 7, label %bb.i
  ]

bb.g:                                             ; preds = %cgltf_component_size.exit.thread.i
  br label %cgltf_num_components.exit.i

bb.h:                                             ; preds = %cgltf_component_size.exit.thread.i, %cgltf_component_size.exit.thread.i
  br label %cgltf_num_components.exit.i

bb.i:                                             ; preds = %cgltf_component_size.exit.thread.i
  br label %cgltf_num_components.exit.i

bb.j:                                             ; preds = %cgltf_component_size.exit.thread.i
  br label %cgltf_num_components.exit.i

bb.k:                                             ; preds = %cgltf_component_size.exit.thread.i
  %i.q = add nsw i64 %.0.i21.i, -1
  %or.cond3.i = icmp ult i64 %i.q, 2
  br i1 %or.cond3.i, label %bb.l, label %cgltf_num_components.exit.i

bb.l:                                             ; preds = %bb.k
  %i.r = mul nuw nsw i64 %.0.i21.i, 12
  br label %cgltf_calc_size.exit

cgltf_num_components.exit.i:                      ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %cgltf_component_size.exit.thread.i
  %phi.call.i = phi i64 [ 9, %bb.k ], [ 1, %bb.j ], [ 16, %bb.i ], [ 3, %bb.g ], [ 4, %bb.h ], [ 2, %cgltf_component_size.exit.thread.i ]
  %i.s = mul nuw nsw i64 %phi.call.i, %.0.i21.i
  br label %cgltf_calc_size.exit

cgltf_calc_size.exit:                             ; preds = %cgltf_component_size.exit.i, %bb.l, %cgltf_num_components.exit.i
  %.0.i = phi i64 [ %i.s, %cgltf_num_components.exit.i ], [ %i.r, %bb.l ], [ 8, %cgltf_component_size.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %cgltf_calc_size.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = add i64 %i.aa, -1
  %i.ac = mul i64 %i.ab, %i.y
  %i.ad = add i64 %i.w, %.0.i
  %i.ae = add i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ag = load i64, ptr %i.af, align 8
  %.not383 = icmp ult i64 %i.ag, %i.ae
  br i1 %.not383, label %.thread486, label %bb.n

bb.n:                                             ; preds = %bb.m, %cgltf_calc_size.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %i.ai = load i32, ptr %i.ah, align 8
  %.not384 = icmp eq i32 %i.ai, 0
  br i1 %.not384, label %.thread481, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  %i.al = load i32, ptr %i.ak, align 8            ; 3 uses
  %switch.tableidx = add i32 %i.al, -1            ; 2 uses
end_hunk_1
begin_hunk_2_@GenMeshTangents:bb.a
  %.sroa.066.0.vec.insert = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fn = shufflevector <2 x float> %.sroa.066.0.vec.insert, <2 x float> %i.fb, <2 x i32> <i32 0, i32 2>
  %foldExtExtBinop = fmul <2 x float> %i.fb, %i.fb
  %i.fo = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.fl, float %i.fo) ; 2 uses
  %i.fq = fcmp une float %i.fp, 0.000000e+00
  br i1 %i.fq, label %bb.s, label %Vector3Normalize.exit

bb.s:                                             ; preds = %bb.r
  %i.fr = extractelement <2 x float> %i.fb, i64 0
  %sqrt.i387 = tail call float @llvm.sqrt.f32(float %i.fp)
  %i.fs = fdiv float 1.000000e+00, %sqrt.i387     ; 3 uses
  %i.ft = fmul float %i.fs, %i.fm
  %.sroa.013.0.vec.insert.i = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fu = fmul float %i.fr, %i.fs
  %.sroa.013.4.vec.insert.i = insertelement <2 x float> %.sroa.013.0.vec.insert.i, float %i.fu, i64 1
  %i.fv = fmul float %i.fs, 0.000000e+00
  br label %Vector3Normalize.exit

Vector3Normalize.exit:                            ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.076.0 = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.q ], [ %.sroa.013.4.vec.insert.i, %bb.s ], [ %i.fn, %bb.r ] ; 2 uses
  %.sroa.11.0 = phi float [ 0.000000e+00, %bb.q ], [ %i.fv, %bb.s ], [ 0.000000e+00, %bb.r ]
  %.sroa.076.0.vec.extract = extractelement <2 x float> %.sroa.076.0, i64 0
  %i.fw = load ptr, ptr %i.k, align 8
  %i.fx = shl nuw nsw i64 %indvars.iv429, 2       ; 4 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fx
  store float %.sroa.076.0.vec.extract, ptr %i.fy, align 4
  %.sroa.076.4.vec.extract = extractelement <2 x float> %.sroa.076.0, i64 1
  %i.fz = load ptr, ptr %i.k, align 8
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.fx
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store float %.sroa.076.4.vec.extract, ptr %i.gb, align 4
  %i.gc = load ptr, ptr %i.k, align 8
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.fx
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store float %.sroa.11.0, ptr %i.ge, align 4
  br label %bb.z

bb.t:                                             ; preds = %.lr.ph426
  %i.gf = extractelement <2 x float> %i.fb, i64 1 ; 6 uses
  %i.gg = fmul float %i.gf, %.sroa.01.4.vec.extract.i
  %i.gh = extractelement <2 x float> %i.fb, i64 0 ; 4 uses
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.gh, float %.sroa.01.0.vec.extract.i, float %i.gg)
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.fd, float %.sroa.11.0.copyload, float %i.gi) ; 2 uses
  %i.gk = fmul float %i.fd, %i.gj
  %i.gl = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = fmul <2 x float> %i.fb, %i.gm
  %i.go = fsub <2 x float> %.sroa.076.0.copyload, %i.gn ; 5 uses
  %i.gp = fsub float %.sroa.11.0.copyload, %i.gk  ; 4 uses
  %foldExtExtBinop453 = fmul <2 x float> %i.go, %i.go
  %i.gq = extractelement <2 x float> %foldExtExtBinop453, i64 1
  %i.gr = extractelement <2 x float> %i.go, i64 0 ; 2 uses
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.gr, float %i.gr, float %i.gq)
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.gp, float %i.gs) ; 2 uses
  %sqrt.i400 = tail call float @llvm.sqrt.f32(float %i.gt) ; 2 uses
  %i.gu = fcmp olt float %sqrt.i400, f0x38D1B717
  br i1 %i.gu, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.gv = tail call float @llvm.fabs.f32(float %i.fd)
  %i.gw = fcmp ogt float %i.gv, 7.070000e-01
  br i1 %i.gw, label %Vector3Normalize.exit408, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gx = fneg float %i.gf                        ; 2 uses
  %.sroa.025.0.vec.insert = insertelement <2 x float> poison, float %i.gx, i64 0
  %i.gy = shufflevector <2 x float> %.sroa.025.0.vec.insert, <2 x float> %i.fb, <2 x i32> <i32 0, i32 2>
  %foldExtExtBinop455 = fmul <2 x float> %i.fb, %i.fb
  %i.gz = extractelement <2 x float> %foldExtExtBinop455, i64 0
  %i.ha = tail call float @llvm.fmuladd.f32(float %i.gf, float %i.gf, float %i.gz) ; 2 uses
  %i.hb = fcmp une float %i.ha, 0.000000e+00
  br i1 %i.hb, label %bb.w, label %Vector3Normalize.exit408

bb.w:                                             ; preds = %bb.v
  %sqrt.i405 = tail call float @llvm.sqrt.f32(float %i.ha)
  %i.hc = fdiv float 1.000000e+00, %sqrt.i405     ; 3 uses
  %i.hd = fmul float %i.hc, %i.gx
  %.sroa.013.0.vec.insert.i406 = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.he = fmul float %i.gh, %i.hc
  %.sroa.013.4.vec.insert.i407 = insertelement <2 x float> %.sroa.013.0.vec.insert.i406, float %i.he, i64 1
  %i.hf = fmul float %i.hc, 0.000000e+00
  br label %Vector3Normalize.exit408

bb.x:                                             ; preds = %bb.t
  %i.hg = fcmp une float %i.gt, 0.000000e+00
  br i1 %i.hg, label %bb.y, label %Vector3Normalize.exit408

bb.y:                                             ; preds = %bb.x
  %i.hh = fdiv float 1.000000e+00, %sqrt.i400     ; 2 uses
  %i.hi = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = fmul <2 x float> %i.go, %i.hj
  %i.hl = fmul float %i.gp, %i.hh
  br label %Vector3Normalize.exit408

Vector3Normalize.exit408:                         ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.sroa.054.0 = phi <2 x float> [ %i.gy, %bb.v ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.u ], [ %.sroa.013.4.vec.insert.i407, %bb.w ], [ %i.hk, %bb.y ], [ %i.go, %bb.x ] ; 2 uses
  %.sroa.12.0 = phi float [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.u ], [ %i.hf, %bb.w ], [ %i.hl, %bb.y ], [ %i.gp, %bb.x ] ; 3 uses
  %.sroa.054.0.vec.extract = extractelement <2 x float> %.sroa.054.0, i64 0 ; 3 uses
  %i.hm = load ptr, ptr %i.k, align 8
  %i.hn = shl nuw nsw i64 %indvars.iv429, 2       ; 4 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hn
  store float %.sroa.054.0.vec.extract, ptr %i.ho, align 4
  %.sroa.054.4.vec.extract = extractelement <2 x float> %.sroa.054.0, i64 1 ; 3 uses
  %i.hp = load ptr, ptr %i.k, align 8
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hn
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  store float %.sroa.054.4.vec.extract, ptr %i.hr, align 4
  %i.hs = load ptr, ptr %i.k, align 8
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hn
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store float %.sroa.12.0, ptr %i.hu, align 4
  %i.hv = fneg float %.sroa.054.4.vec.extract
  %i.hw = fmul float %i.fd, %i.hv
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.gf, float %.sroa.12.0, float %i.hw)
  %i.hy = fneg float %.sroa.12.0
  %i.hz = fmul float %i.gh, %i.hy
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.fd, float %.sroa.054.0.vec.extract, float %i.hz)
  %i.ib = fneg float %.sroa.054.0.vec.extract
  %i.ic = fmul float %i.gf, %i.ib
  %i.id = tail call float @llvm.fmuladd.f32(float %i.gh, float %.sroa.054.4.vec.extract, float %i.ic)
  %i.ie = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv429 ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ie, align 4 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.01.0.vec.extract.i421 = extractelement <2 x float> %.sroa.0.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i422 = extractelement <2 x float> %.sroa.0.0.copyload, i64 1
  %i.if = fmul float %i.ia, %.sroa.01.4.vec.extract.i422
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.hx, float %.sroa.01.0.vec.extract.i421, float %i.if)
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.id, float %.sroa.2.0.copyload, float %i.ig)
  %i.ii = fcmp olt float %i.ih, 0.000000e+00
  %i.ij = select i1 %i.ii, float -1.000000e+00, float 1.000000e+00
  br label %bb.z

bb.z:                                             ; preds = %Vector3Normalize.exit408, %Vector3Normalize.exit
  %.sink450 = phi i64 [ %i.hn, %Vector3Normalize.exit408 ], [ %i.fx, %Vector3Normalize.exit ]
  %.sink = phi float [ %i.ij, %Vector3Normalize.exit408 ], [ 1.000000e+00, %Vector3Normalize.exit ]
  %i.ik = load ptr, ptr %i.k, align 8
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %.sink450
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  store float %.sink, ptr %i.im, align 4
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 2 uses
  %i.in = load i32, ptr %0, align 8               ; 2 uses
  %i.io = sext i32 %i.in to i64
  %i.ip = icmp slt i64 %indvars.iv.next430, %i.io
  br i1 %i.ip, label %.lr.ph426, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.ir = load i32, ptr %i.iq, align 4            ; 2 uses
  %.not351 = icmp eq i32 %i.ir, 0
  %i.is = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.it = shl i32 %.lcssa, 4                      ; 2 uses
  br i1 %.not351, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @rlUpdateVertexBuffer(i32 noundef %i.ir, ptr noundef %i.is, i32 noundef %i.it, i32 noundef 0) #54
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.iu = tail call i32 @rlLoadVertexBuffer(ptr noundef %i.is, i32 noundef %i.it, i1 noundef zeroext false) #54
  %i.iv = load ptr, ptr %i.ex, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store i32 %i.iu, ptr %i.iw, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.iy = load i32, ptr %i.ix, align 8
  %i.iz = tail call zeroext i1 @rlEnableVertexArray(i32 noundef %i.iy) #54 ; 0 uses
  tail call void @rlSetVertexAttribute(i32 noundef 4, i32 noundef 4, i32 noundef 5126, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #54
  tail call void @rlEnableVertexAttribute(i32 noundef 4) #54
  tail call void @rlDisableVertexArray() #54
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.103) #54
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.l, %bb.k, %bb.e
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: nounwind uwtable
define void @DrawModel(ptr nofree noundef readonly byval(%struct.Model) align 8 captures(none) %0, <2 x float> %1, float %2, float noundef %3, i32 %4) local_unnamed_addr #33 {
bb.a:
  %.sroa.06.0.vec.insert = insertelement <2 x float> poison, float %3, i64 0
  %.sroa.06.4.vec.insert = shufflevector <2 x float> %.sroa.06.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  tail call void @DrawModelEx(ptr noundef nonnull byval(%struct.Model) align 8 %0, <2 x float> %1, float %2, <2 x float> <float 0.000000e+00, float 1.000000e+00>, float 0.000000e+00, float noundef 0.000000e+00, <2 x float> %.sroa.06.4.vec.insert, float %3, i32 %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawModelEx(ptr nofree noundef byval(%struct.Model) align 8 captures(none) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, float noundef %5, <2 x float> %6, float %7, i32 %8) local_unnamed_addr #33 {
bb.a:
  %9 = alloca %struct.Material, align 8           ; 7 uses
  %.sroa.3.0.extract.shift = lshr i32 %8, 16
  %.sroa.4.0.extract.shift = lshr i32 %8, 24
  %i.a = fmul float %5, f0x3C8EFA35               ; 2 uses
  %.sroa.061.0.vec.extract.i = extractelement <2 x float> %3, i64 0 ; 2 uses
  %.sroa.061.4.vec.extract.i = extractelement <2 x float> %3, i64 1 ; 3 uses
  %i.b = fmul float %.sroa.061.4.vec.extract.i, %.sroa.061.4.vec.extract.i ; 2 uses
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.061.0.vec.extract.i, float %.sroa.061.0.vec.extract.i, float %i.b)
  %i.d = tail call float @llvm.fmuladd.f32(float %4, float %4, float %i.c) ; 3 uses
  %i.e = fcmp une float %i.d, 1.000000e+00
  %i.f = fcmp une float %i.d, 0.000000e+00
  %or.cond.i = and i1 %i.e, %i.f
  br i1 %or.cond.i, label %bb.b, label %MatrixRotate.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.d)
  %i.g = fdiv float 1.000000e+00, %sqrt.i         ; 2 uses
  %i.h = insertelement <2 x float> poison, float %i.g, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %3, %i.i                ; 2 uses
  %i.k = extractelement <2 x float> %i.j, i64 1   ; 3 uses
  %i.l = fmul float %4, %i.g
  %.pre.i = fmul float %i.k, %i.k
  br label %MatrixRotate.exit

MatrixRotate.exit:                                ; preds = %bb.a, %bb.b
  %.pre-phi.i = phi float [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %.063.i = phi float [ %i.l, %bb.b ], [ %4, %bb.a ] ; 4 uses
  %.062.i = phi float [ %i.k, %bb.b ], [ %.sroa.061.4.vec.extract.i, %bb.a ] ; 2 uses
  %i.m = phi <2 x float> [ %i.j, %bb.b ], [ %3, %bb.a ] ; 4 uses
  %i.n = tail call float @sinf(float noundef %i.a) #54, !noalias !209 ; 2 uses
  %i.o = tail call float @cosf(float noundef %i.a) #54, !noalias !209 ; 4 uses
  %i.p = fsub float 1.000000e+00, %i.o            ; 5 uses
  %i.q = extractelement <2 x float> %i.m, i64 0   ; 2 uses
  %i.r = insertelement <2 x float> poison, float %.063.i, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.s, %i.m              ; 3 uses
  %i.u = insertelement <2 x float> poison, float %.062.i, i64 0
  %i.v = insertelement <2 x float> %i.u, float %.063.i, i64 1
  %i.w = insertelement <2 x float> poison, float %i.n, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x float> %i.v, %i.x              ; 3 uses
  %i.z = fmul float %.062.i, %i.q
  %foldExtExtBinop = fmul <2 x float> %i.m, %i.m
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = fneg <2 x float> %i.y
  %i.ac = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.ad = insertelement <4 x float> %i.ac, float %i.aa, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %i.z, i64 1
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ag = insertelement <4 x float> poison, float %i.p, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aj = insertelement <4 x float> %i.ai, float %i.o, i64 0
  %i.ak = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = shufflevector <4 x float> %i.aj, <4 x float> %i.ak, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.ah, <4 x float> %i.al) ; 4 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %.pre-phi.i, float %i.p, float %i.o)
  %i.ao = fmul float %i.q, %i.n                   ; 2 uses
  %i.ap = extractelement <2 x float> %i.t, i64 1
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.p, float %i.ao)
  %i.ar = fneg float %i.ao
  %i.as = fmul float %.063.i, %.063.i
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.p, float %i.o) ; 2 uses
  %.sroa.030.0.vec.extract = extractelement <2 x float> %1, i64 0
  %.sroa.030.4.vec.extract = extractelement <2 x float> %1, i64 1
  %.sroa.7161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.11165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.15169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.au = shufflevector <2 x float> %6, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1> ; 3 uses
  %i.av = shufflevector <3 x float> <float 0.000000e+00, float 0.000000e+00, float poison>, <3 x float> %i.au, <3 x i32> <i32 0, i32 1, i32 5> ; 3 uses
  %i.aw = shufflevector <4 x float> %i.am, <4 x float> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %i.ax = fmul <3 x float> %i.av, %i.aw
  %i.ay = insertelement <3 x float> poison, float %i.an, i64 0
  %i.az = shufflevector <3 x float> %i.ay, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ba = fmul <3 x float> %i.av, %i.az
  %i.bb = insertelement <3 x float> poison, float %i.aq, i64 0
  %i.bc = shufflevector <3 x float> %i.bb, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bd = fmul <3 x float> %i.av, %i.bc
  %i.be = shufflevector <3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, <3 x float> %i.au, <3 x i32> <i32 0, i32 4, i32 2> ; 3 uses
  %i.bf = shufflevector <4 x float> %i.am, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bg = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.be, <3 x float> %i.bf, <3 x float> %i.ax) ; 2 uses
  %i.bh = insertelement <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, float %7, i64 0 ; 3 uses
  %i.bi = shufflevector <4 x float> %i.am, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.bj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.be, <3 x float> %i.bi, <3 x float> %i.ba) ; 2 uses
  %i.bk = shufflevector <4 x float> %i.am, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.bl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.be, <3 x float> %i.bk, <3 x float> %i.bd) ; 2 uses
  %i.bm = insertelement <3 x float> poison, float %i.at, i64 0
  %i.bn = shufflevector <3 x float> %i.bm, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bo = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bh, <3 x float> %i.bn, <3 x float> %i.bl)
  %i.bp = fadd <3 x float> %i.bo, zeroinitializer ; 4 uses
  %i.bq = insertelement <3 x float> %i.au, float %7, i64 0
  %i.br = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bq, <3 x float> zeroinitializer, <3 x float> <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>)
  %i.bs = fadd <3 x float> %i.br, zeroinitializer ; 4 uses
  %i.bt = extractelement <3 x float> %i.bl, i64 0
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %i.bt)
  %i.bv = fadd float %i.bu, 0.000000e+00          ; 4 uses
  %i.bw = shufflevector <2 x float> %1, <2 x float> poison, <3 x i32> zeroinitializer
  %i.bx = insertelement <2 x float> poison, float %i.p, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = insertelement <2 x float> %i.y, float %i.ar, i64 1
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.by, <2 x float> %i.bz) ; 3 uses
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <3 x i32> zeroinitializer
  %i.cc = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bh, <3 x float> %i.cb, <3 x float> %i.bg)
  %i.cd = fadd <3 x float> %i.cc, zeroinitializer ; 3 uses
  %i.ce = shufflevector <2 x float> %i.ca, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.cf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bh, <3 x float> %i.ce, <3 x float> %i.bj)
  %i.cg = fadd <3 x float> %i.cf, zeroinitializer ; 2 uses
  %i.ch = shufflevector <3 x float> %i.bg, <3 x float> %i.bj, <2 x i32> <i32 0, i32 3>
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> zeroinitializer, <2 x float> %i.ch)
  %i.cj = fadd <2 x float> %i.ci, zeroinitializer ; 3 uses
  %i.ck = fmul <3 x float> %i.cg, zeroinitializer ; 2 uses
  %i.cl = fadd <3 x float> %i.cd, %i.ck
  %i.cm = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bp, <3 x float> zeroinitializer, <3 x float> %i.cl)
  %i.cn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bs, <3 x float> %i.bw, <3 x float> %i.cm) ; 3 uses
  %i.co = extractelement <2 x float> %i.cj, i64 1
  %i.cp = fmul float %i.co, 0.000000e+00          ; 2 uses
  %i.cq = extractelement <2 x float> %i.cj, i64 0 ; 3 uses
  %i.cr = fadd float %i.cq, %i.cp
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.bv, float 0.000000e+00, float %i.cr)
  %i.ct = fadd float %.sroa.030.0.vec.extract, %i.cs
  %i.cu = extractelement <2 x float> %i.cj, i64 1
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cq, float 0.000000e+00, float %i.cu)
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.bv, float 0.000000e+00, float %i.cv)
  %i.cx = fadd float %.sroa.030.4.vec.extract, %i.cw
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cq, float 0.000000e+00, float %i.cp) ; 2 uses
  %i.cz = fadd float %i.bv, %i.cy
  %i.da = fadd float %2, %i.cz
  %i.db = load <4 x float>, ptr %0, align 8       ; 4 uses
  %i.dc = load <4 x float>, ptr %.sroa.7161.0..sroa_idx, align 8 ; 4 uses
  %i.dd = load <4 x float>, ptr %.sroa.11165.0..sroa_idx, align 8 ; 4 uses
  %i.de = load <4 x float>, ptr %.sroa.15169.0..sroa_idx, align 8 ; 4 uses
  %i.df = shufflevector <3 x float> %i.cn, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dg = fmul <4 x float> %i.dc, %i.df
  %i.dh = shufflevector <3 x float> %i.cn, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.dh, <4 x float> %i.dg)
  %i.dj = shufflevector <3 x float> %i.cn, <3 x float> poison, <4 x i32> zeroinitializer
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.dj, <4 x float> %i.di)
  %i.dl = insertelement <4 x float> poison, float %i.ct, i64 0
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> %i.dm, <4 x float> %i.dk)
  store <4 x float> %i.dn, ptr %0, align 8
  %i.do = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cd, <3 x float> zeroinitializer, <3 x float> %i.cg)
  %i.dp = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bp, <3 x float> zeroinitializer, <3 x float> %i.do)
  %i.dq = shufflevector <2 x float> %1, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.dr = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bs, <3 x float> %i.dq, <3 x float> %i.dp) ; 3 uses
  %i.ds = shufflevector <3 x float> %i.dr, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dt = fmul <4 x float> %i.dc, %i.ds
  %i.du = shufflevector <3 x float> %i.dr, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.du, <4 x float> %i.dt)
  %i.dw = shufflevector <3 x float> %i.dr, <3 x float> poison, <4 x i32> zeroinitializer
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.dw, <4 x float> %i.dv)
  %i.dy = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> %i.dz, <4 x float> %i.dx)
  store <4 x float> %i.ea, ptr %.sroa.7161.0..sroa_idx, align 8
  %i.eb = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cd, <3 x float> zeroinitializer, <3 x float> %i.ck) ; 2 uses
  %i.ec = fadd <3 x float> %i.bp, %i.eb
  %i.ed = insertelement <3 x float> poison, float %2, i64 0
  %i.ee = shufflevector <3 x float> %i.ed, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ef = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bs, <3 x float> %i.ee, <3 x float> %i.ec) ; 3 uses
  %i.eg = shufflevector <3 x float> %i.ef, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.eh = fmul <4 x float> %i.dc, %i.eg
  %i.ei = shufflevector <3 x float> %i.ef, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.ei, <4 x float> %i.eh)
  %i.ek = shufflevector <3 x float> %i.ef, <3 x float> poison, <4 x i32> zeroinitializer
  %i.el = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.ek, <4 x float> %i.ej)
  %i.em = insertelement <4 x float> poison, float %i.da, i64 0
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> %i.en, <4 x float> %i.el)
  store <4 x float> %i.eo, ptr %.sroa.11165.0..sroa_idx, align 8
  %i.ep = shufflevector <3 x float> %i.bp, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.eq = insertelement <4 x float> %i.ep, float %i.bv, i64 3
  %i.er = shufflevector <3 x float> %i.eb, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.es = insertelement <4 x float> %i.er, float %i.cy, i64 3
  %i.et = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eq, <4 x float> zeroinitializer, <4 x float> %i.es)
  %i.eu = shufflevector <3 x float> %i.bs, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ev = insertelement <4 x float> %i.eu, float 1.000000e+00, i64 3
  %i.ew = fadd <4 x float> %i.ev, %i.et           ; 4 uses
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ey = fmul <4 x float> %i.dc, %i.ex
  %i.ez = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.ez, <4 x float> %i.ey)
  %i.fb = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.fb, <4 x float> %i.fa)
  %i.fd = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> %i.fd, <4 x float> %i.fc)
  store <4 x float> %i.fe, ptr %.sroa.15169.0..sroa_idx, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fg = load i32, ptr %i.ff, align 8            ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %MatrixRotate.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %9, i64 16
  %10 = trunc i32 %8 to i16                       ; 2 uses
  %11 = and i16 %10, 255
  %12 = lshr i16 %10, 8
  %13 = trunc nuw i32 %.sroa.3.0.extract.shift to i16
  %14 = and i16 %13, 255
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fp = load ptr, ptr %i.fo, align 8            ; 2 uses
  %i.fq = icmp ne ptr %i.fp, null
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fs = load i32, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fu = load ptr, ptr %i.ft, align 8
  %wide.trip.count = zext nneg i32 %i.fg to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.f, %MatrixRotate.exit
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #54
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [40 x i8], ptr %i.fj, i64 %i.fx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %i.fy, i64 40, i1 false)
  %i.fz = load ptr, ptr %i.fm, align 8            ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 20 ; 3 uses
  %.sroa.03.0.copyload = load i8, ptr %i.ga, align 4 ; 2 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 21 ; 3 uses
  %.sroa.55.0.copyload = load i8, ptr %.sroa.55.0..sroa_idx, align 1 ; 2 uses
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 22 ; 3 uses
  %.sroa.68.0.copyload = load i8, ptr %.sroa.68.0..sroa_idx, align 2 ; 2 uses
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 23 ; 3 uses
  %.sroa.711.0.copyload = load i8, ptr %.sroa.711.0..sroa_idx, align 1 ; 2 uses
  %15 = zext i8 %.sroa.03.0.copyload to i16
  %.lhs.trunc = mul nuw i16 %11, %15
  %i.gb = udiv i16 %.lhs.trunc, 255
  %i.gc = trunc nuw i16 %i.gb to i8
  %16 = zext i8 %.sroa.55.0.copyload to i16
  %.lhs.trunc189 = mul nuw i16 %12, %16
  %i.gd = udiv i16 %.lhs.trunc189, 255
  %i.ge = trunc nuw i16 %i.gd to i8
  %17 = zext i8 %.sroa.68.0.copyload to i16
  %.lhs.trunc191 = mul nuw i16 %14, %17
  %i.gf = udiv i16 %.lhs.trunc191, 255
  %i.gg = trunc nuw i16 %i.gf to i8
  %i.gh = zext i8 %.sroa.711.0.copyload to i32
  %i.gi = mul nuw nsw i32 %.sroa.4.0.extract.shift, %i.gh
  %i.gj = udiv i32 %i.gi, 255
  %i.gk = trunc nuw i32 %i.gj to i8
  store i8 %i.gc, ptr %i.ga, align 4
  store i8 %i.ge, ptr %.sroa.55.0..sroa_idx, align 1
  store i8 %i.gg, ptr %.sroa.68.0..sroa_idx, align 2
  store i8 %i.gk, ptr %.sroa.711.0..sroa_idx, align 1
  %i.gl = load ptr, ptr %i.fn, align 8            ; 2 uses
  %.not = icmp eq ptr %i.gl, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 112 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = icmp ne i32 %i.gn, -1
  %or.cond = select i1 %i.go, i1 %i.fq, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gp = load i32, ptr %9, align 8
  tail call void @rlEnableShader(i32 noundef %i.gp) #54
  %i.gq = load i32, ptr %i.gm, align 4
  tail call void @rlSetUniformMatrices(i32 noundef %i.gq, ptr noundef nonnull %i.fp, i32 noundef %i.fs) #54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.gr = getelementptr inbounds nuw [120 x i8], ptr %i.fu, i64 %indvars.iv
  tail call void @DrawMesh(ptr noundef byval(%struct.Mesh) align 8 %i.gr, ptr noundef nonnull byval(%struct.Material) align 8 %9, ptr noundef nonnull byval(%struct.Matrix) align 8 %0)
  store i8 %.sroa.03.0.copyload, ptr %i.ga, align 4
  store i8 %.sroa.55.0.copyload, ptr %.sroa.55.0..sroa_idx, align 1
  store i8 %.sroa.68.0.copyload, ptr %.sroa.68.0..sroa_idx, align 2
  store i8 %.sroa.711.0.copyload, ptr %.sroa.711.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c
}

declare void @rlSetUniformMatrices(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @DrawModelWires(ptr nofree noundef readonly byval(%struct.Model) align 8 captures(none) %0, <2 x float> %1, float %2, float noundef %3, i32 %4) local_unnamed_addr #33 {
bb.a:
  tail call void @rlEnableWireMode() #54
  %.sroa.06.0.vec.insert.i = insertelement <2 x float> poison, float %3, i64 0
  %.sroa.06.4.vec.insert.i = shufflevector <2 x float> %.sroa.06.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  tail call void @DrawModelEx(ptr noundef nonnull byval(%struct.Model) align 8 %0, <2 x float> %1, float %2, <2 x float> <float 0.000000e+00, float 1.000000e+00>, float 0.000000e+00, float noundef 0.000000e+00, <2 x float> %.sroa.06.4.vec.insert.i, float %3, i32 %4)
  tail call void @rlDisableWireMode() #54
  ret void
}

declare void @rlEnableWireMode() local_unnamed_addr #34

declare void @rlDisableWireMode() local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @DrawModelWiresEx(ptr nofree noundef readonly byval(%struct.Model) align 8 captures(none) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, float noundef %5, <2 x float> %6, float %7, i32 %8) local_unnamed_addr #33 {
bb.a:
  tail call void @rlEnableWireMode() #54
  tail call void @DrawModelEx(ptr noundef nonnull byval(%struct.Model) align 8 %0, <2 x float> %1, float %2, <2 x float> %3, float %4, float noundef %5, <2 x float> %6, float %7, i32 %8)
  tail call void @rlDisableWireMode() #54
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawBillboard(ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Texture) align 8 captures(none) %1, <2 x float> %2, float %3, float noundef %4, i32 %5) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load <2 x i32>, ptr %i.a, align 4
  %i.c = sitofp <2 x i32> %i.b to <2 x float>     ; 3 uses
  %i.d = extractelement <2 x float> %i.c, i64 0
  %i.e = extractelement <2 x float> %i.c, i64 1
  %i.f = fdiv float %i.d, %i.e
  %i.g = tail call float @llvm.fabs.f32(float %i.f)
  %i.h = fmul float %4, %i.g                      ; 2 uses
  %.sroa.01.0.vec.insert = insertelement <2 x float> poison, float %i.h, i64 0
  %.sroa.01.4.vec.insert = insertelement <2 x float> %.sroa.01.0.vec.insert, float %4, i64 1
  %i.i = insertelement <2 x float> poison, float %i.h, i64 0
  %i.j = insertelement <2 x float> %i.i, float %4, i64 1
  %i.k = fmul <2 x float> %i.j, splat (float 5.000000e-01)
  tail call void @DrawBillboardPro(ptr noundef nonnull byval(%struct.Camera3D) align 8 %0, ptr noundef nonnull byval(%struct.Texture) align 8 %1, <2 x float> zeroinitializer, <2 x float> %i.c, <2 x float> %2, float %3, <2 x float> <float 0.000000e+00, float 1.000000e+00>, float 0.000000e+00, <2 x float> %.sroa.01.4.vec.insert, <2 x float> %i.k, float noundef 0.000000e+00, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawBillboardRec(ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Texture) align 8 captures(none) %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, float %5, <2 x float> %6, i32 %7) local_unnamed_addr #33 {
bb.a:
  %i.a = fmul <2 x float> %6, splat (float 5.000000e-01)
  tail call void @DrawBillboardPro(ptr noundef nonnull byval(%struct.Camera3D) align 8 %0, ptr noundef nonnull byval(%struct.Texture) align 8 %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, float %5, <2 x float> <float 0.000000e+00, float 1.000000e+00>, float 0.000000e+00, <2 x float> %6, <2 x float> %i.a, float noundef 0.000000e+00, i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawBillboardPro(ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Texture) align 8 captures(none) %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, float %5, <2 x float> %6, float %7, <2 x float> %8, <2 x float> %9, float noundef %10, i32 %11) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0160.0.copyload = load <2 x float>, ptr %0, align 8 ; 2 uses
  %.sroa.2161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2161.0.copyload = load float, ptr %.sroa.2161.0..sroa_idx, align 8
  %.sroa.0158.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 2 uses
  %.sroa.2159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.2159.0.copyload = load float, ptr %.sroa.2159.0..sroa_idx, align 4
  %.sroa.0156.0.copyload = load <2 x float>, ptr %i.b, align 8 ; 2 uses
  %.sroa.2157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2157.0.copyload = load float, ptr %.sroa.2157.0..sroa_idx, align 8 ; 2 uses
  %.sroa.058.4.vec.extract.i = extractelement <2 x float> %.sroa.0156.0.copyload, i64 1 ; 2 uses
  %.sroa.058.0.vec.extract.i = extractelement <2 x float> %.sroa.0156.0.copyload, i64 0 ; 2 uses
  %.sroa.0174.0.vec.extract = extractelement <2 x float> %8, i64 0 ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.0160.0.copyload, %.sroa.0158.0.copyload
  %i.c = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.d = fsub float %.sroa.2161.0.copyload, %.sroa.2159.0.copyload ; 3 uses
  %foldExtExtBinop324 = fsub <2 x float> %.sroa.0160.0.copyload, %.sroa.0158.0.copyload
  %i.e = extractelement <2 x float> %foldExtExtBinop324, i64 1 ; 3 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f)
  %i.h = tail call float @llvm.fmuladd.f32(float %i.d, float %i.d, float %i.g) ; 2 uses
  %sqrt86.i = tail call float @llvm.sqrt.f32(float %i.h)
  %i.i = fcmp oeq float %i.h, 0.000000e+00
  %i.j = fdiv float 1.000000e+00, %sqrt86.i
  %i.k = select i1 %i.i, float 1.000000e+00, float %i.j ; 3 uses
  %i.l = fmul float %i.c, %i.k                    ; 2 uses
  %i.m = fmul float %i.d, %i.k                    ; 2 uses
  %i.n = fmul float %i.e, %i.k                    ; 2 uses
  %i.o = fneg float %i.m
  %i.p = fneg float %i.n
  %i.q = fmul float %.sroa.058.0.vec.extract.i, %i.o
  %i.r = fmul float %.sroa.2157.0.copyload, %i.p
  %i.s = tail call float @llvm.fmuladd.f32(float %.sroa.2157.0.copyload, float %i.l, float %i.q) ; 3 uses
  %i.t = tail call float @llvm.fmuladd.f32(float %.sroa.058.4.vec.extract.i, float %i.m, float %i.r) ; 3 uses
  %i.u = fneg float %i.l
  %i.v = fmul float %.sroa.058.4.vec.extract.i, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %.sroa.058.0.vec.extract.i, float %i.n, float %i.v) ; 3 uses
  %i.x = fmul float %i.s, %i.s
  %i.y = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.x)
  %i.z = tail call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.y) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.z)
  %i.aa = fcmp oeq float %i.z, 0.000000e+00
  %i.ab = fdiv float 1.000000e+00, %sqrt.i
  %i.ac = select i1 %i.aa, float 1.000000e+00, float %i.ab ; 2 uses
  %i.ad = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.s, i64 1
  %i.af = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x float> %i.ae, %i.ag
  %i.ai = fmul float %i.w, %i.ac
  %i.aj = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x float> %i.aj, %i.ah           ; 2 uses
  %i.al = fmul float %.sroa.0174.0.vec.extract, %i.ai ; 2 uses
  %.sroa.0174.4.vec.extract = extractelement <2 x float> %8, i64 1 ; 2 uses
  %i.am = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.an = fmul <2 x float> %6, %i.am              ; 2 uses
  %i.ao = fmul float %7, %.sroa.0174.4.vec.extract ; 2 uses
  %i.ap = fcmp olt float %.sroa.0174.0.vec.extract, 0.000000e+00
  br i1 %i.ap, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %foldExtExtBinop326 = fsub <2 x float> %2, %8
  %.sroa.0194.0.vec.insert = shufflevector <2 x float> %foldExtExtBinop326, <2 x float> %2, <2 x i32> <i32 0, i32 3>
  %.sroa.13.8.vec.extract = extractelement <2 x float> %3, i64 0
  %i.aq = fneg float %.sroa.13.8.vec.extract
  %.sroa.13.8.vec.insert = insertelement <2 x float> %3, float %i.aq, i64 0
  %i.ar = fneg <2 x float> %i.ak
  %i.as = fneg float %i.al
  %.sroa.0167.0.vec.extract = extractelement <2 x float> %9, i64 0
  %i.at = fneg float %.sroa.0167.0.vec.extract
  %.sroa.0167.0.vec.insert = insertelement <2 x float> %9, float %i.at, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0150.0 = phi <2 x float> [ %i.ar, %bb.b ], [ %i.ak, %bb.a ] ; 10 uses
  %.sroa.12.0 = phi float [ %i.as, %bb.b ], [ %i.al, %bb.a ] ; 8 uses
  %.sroa.0167.0 = phi <2 x float> [ %.sroa.0167.0.vec.insert, %bb.b ], [ %9, %bb.a ] ; 3 uses
  %.sroa.0194.0 = phi <2 x float> [ %.sroa.0194.0.vec.insert, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.13.0 = phi <2 x float> [ %.sroa.13.8.vec.insert, %bb.b ], [ %3, %bb.a ] ; 3 uses
  %i.au = fcmp olt float %.sroa.0174.4.vec.extract, 0.000000e+00
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %foldExtExtBinop328 = fsub <2 x float> %.sroa.0194.0, %8
  %.sroa.0194.4.vec.insert = shufflevector <2 x float> %.sroa.0194.0, <2 x float> %foldExtExtBinop328, <2 x i32> <i32 0, i32 3>
  %i.av = fneg <2 x float> %.sroa.13.0
  %.sroa.13.12.vec.insert = shufflevector <2 x float> %.sroa.13.0, <2 x float> %i.av, <2 x i32> <i32 0, i32 3>
  %i.aw = fneg <2 x float> %i.an
  %i.ax = fneg float %i.ao
  %i.ay = fneg <2 x float> %.sroa.0167.0
  %.sroa.0167.4.vec.insert = shufflevector <2 x float> %.sroa.0167.0, <2 x float> %i.ay, <2 x i32> <i32 0, i32 3>
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0167.1 = phi <2 x float> [ %.sroa.0167.4.vec.insert, %bb.d ], [ %.sroa.0167.0, %bb.c ] ; 2 uses
  %.sroa.0185.0 = phi <2 x float> [ %i.aw, %bb.d ], [ %i.an, %bb.c ] ; 8 uses
  %.sroa.9.0 = phi float [ %i.ax, %bb.d ], [ %i.ao, %bb.c ] ; 5 uses
  %.sroa.0194.1 = phi <2 x float> [ %.sroa.0194.4.vec.insert, %bb.d ], [ %.sroa.0194.0, %bb.c ]
  %.sroa.13.1 = phi <2 x float> [ %.sroa.13.12.vec.insert, %bb.d ], [ %.sroa.13.0, %bb.c ]
  %i.az = fcmp une float %10, 0.000000e+00        ; 2 uses
  br i1 %i.az, label %bb.f, label %._crit_edge
end_hunk_2
begin_hunk_3_@cgltf_parse_json_dispersion:bb.a

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.g
  %.1.i = phi i32 [ %i.at, %bb.h ], [ %i.aw, %bb.i ], [ %.016.i, %bb.g ], [ %.016.i, %bb.g ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ax = sext i32 %.1.i to i64
  %i.ay = icmp slt i64 %indvars.iv.next.i, %i.ax
  br i1 %i.ay, label %bb.g, label %cgltf_skip_json.exit

cgltf_skip_json.exit:                             ; preds = %bb.j
  %i.az = trunc nsw i64 %indvars.iv.next.i to i32
  br label %bb.k

bb.k:                                             ; preds = %cgltf_skip_json.exit, %cgltf_skip_json.exit.thread38
  %.13040 = phi i32 [ %i.ak, %cgltf_skip_json.exit.thread38 ], [ %i.az, %cgltf_skip_json.exit ] ; 2 uses
  %i.ba = add nuw nsw i32 %.02744, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, %i.f
  br i1 %exitcond.not, label %cgltf_skip_json.exit.thread, label %.lr.ph

cgltf_skip_json.exit.thread:                      ; preds = %.lr.ph, %bb.c, %bb.k, %bb.g, %bb.b, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ %i.g, %bb.b ], [ -1, %bb.g ], [ -1, %.lr.ph ], [ -1, %bb.c ], [ %.13040, %bb.k ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @_m3dstbi__zbuild_huffman(ptr nofree noundef nonnull captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #46 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %i.c = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod154 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !279

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %i.al = icmp sgt i32 %.pre, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp sgt i32 %i.an, 4
  %or.cond103 = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond103, label %.loopexit70, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  %.old = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.old101 = load i32, ptr %.old, align 8
  %.old102 = icmp sgt i32 %.old101, 4
  br i1 %.old102, label %.loopexit70, label %bb.b

bb.b:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aq = load <8 x i32>, ptr %i.ap, align 4
  %.fr = freeze <8 x i32> %i.aq
  %i.ar = icmp sgt <8 x i32> %.fr, <i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024> ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.at = load <4 x i32>, ptr %i.as, align 4
  %.fr152 = freeze <4 x i32> %i.at
  %i.au = icmp sgt <4 x i32> %.fr152, <i32 2048, i32 4096, i32 8192, i32 16384>
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp sgt i32 %i.aw, 32768
  %i.ay = shufflevector <8 x i1> %i.ar, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.ay, %i.au
  %i.az = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ba = shufflevector <8 x i1> %i.az, <8 x i1> %i.ar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bb = bitcast <8 x i1> %i.ba to i8
  %i.bc = icmp ne i8 %i.bb, 0
  %op.rdx = select i1 %i.bc, i1 true, i1 %i.ax
  br i1 %op.rdx, label %.loopexit70, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %indvars.iv87 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next88, %bb.d ] ; 8 uses
  %.06275 = phi i32 [ 0, %.preheader ], [ %i.bu, %bb.d ] ; 3 uses
  %.06374 = phi i32 [ 0, %.preheader ], [ %i.bv, %bb.d ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv87
  store i32 %.06275, ptr %i.bg, align 4
  %i.bh = trunc i32 %.06275 to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv87
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = trunc i32 %.06374 to i16
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv87
  store i16 %i.bj, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv87
  %i.bm = load i32, ptr %i.bl, align 4            ; 3 uses
  %i.bn = add nsw i32 %i.bm, %.06275              ; 3 uses
  %.not68 = icmp ne i32 %i.bm, 0
  %i.bo = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.bp = shl nuw nsw i32 1, %i.bo
  %.not69.not = icmp sgt i32 %i.bn, %i.bp
  %or.cond = select i1 %.not68, i1 %.not69.not, i1 false
  br i1 %or.cond, label %.loopexit70, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = trunc i64 %indvars.iv87 to i32
  %i.br = sub i32 16, %i.bq
  %i.bs = shl i32 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv87
  store i32 %i.bs, ptr %i.bt, align 4
  %i.bu = shl i32 %i.bn, 1
  %i.bv = add nsw i32 %i.bm, %.06374
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, 16
  br i1 %exitcond90.not, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %i.bw, align 4
  br i1 %i.c, label %.lr.ph81, label %.loopexit70

.lr.ph81:                                         ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %wide.trip.count97 = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph81, %bb.i
  %indvars.iv94 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next95, %bb.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv94
  %i.ca = load i8, ptr %i.bz, align 1             ; 6 uses
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %.not = icmp eq i8 %i.ca, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = zext i8 %i.ca to i64                    ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4            ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cc
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = zext i16 %i.cg to i32
  %i.ci = sub i32 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cc
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = zext i16 %i.ck to i32
  %i.cm = add nsw i32 %i.ci, %i.cl
  %3 = trunc i64 %indvars.iv94 to i16
  %.tr = zext i8 %i.ca to i16
  %4 = shl i16 %.tr, 9
  %5 = or i16 %4, %3
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.bx, i64 %i.cn
  store i8 %i.ca, ptr %i.co, align 1
  %i.cp = trunc i64 %indvars.iv94 to i16
  %i.cq = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.cn
  store i16 %i.cp, ptr %i.cq, align 2
  %i.cr = icmp ult i8 %i.ca, 10
  br i1 %i.cr, label %.lr.ph78, label %.loopexit

.lr.ph78:                                         ; preds = %bb.g
  %trunc.i.i = trunc i32 %i.ce to i16
  %rev.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i)
  %i.cs = zext i16 %rev.i.i to i32
  %i.ct = sub nuw nsw i32 16, %i.cb
  %i.cu = lshr i32 %i.cs, %i.ct
  %i.cv = shl nuw nsw i32 1, %i.cb
  %i.cw = zext nneg i32 %i.cu to i64
  %i.cx = zext nneg i32 %i.cv to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph78, %bb.h
  %indvars.iv91 = phi i64 [ %i.cw, %.lr.ph78 ], [ %indvars.iv.next92, %bb.h ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv91
  store i16 %5, ptr %i.cy, align 2
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, %i.cx ; 2 uses
  %i.cz = icmp samesign ult i64 %indvars.iv.next92, 512
  br i1 %i.cz, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.da = add nsw i32 %i.ce, 1
  store i32 %i.da, ptr %i.cd, align 4
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit70, label %bb.f

.loopexit70:                                      ; preds = %bb.c, %bb.i, %bb.b, %._crit_edge.thread, %._crit_edge, %bb.e
  %.065 = phi i32 [ 1, %bb.e ], [ 0, %bb.b ], [ 1, %bb.i ], [ 0, %._crit_edge ], [ 0, %._crit_edge.thread ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  ret i32 %.065
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @_m3dstbi__create_png_image_raw(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #25 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 5 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = mul i32 %4, %3                           ; 4 uses
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 8 uses
  %i.h = shl i32 %3, %i.d                         ; 18 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_m3dstbi__malloc_mad3.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 2 uses
  br i1 %i.k, label %_m3dstbi__mul2sizes_valid.exit.thread15.i.i, label %_m3dstbi__mul2sizes_valid.exit.i.i

_m3dstbi__mul2sizes_valid.exit.i.i:               ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %_m3dstbi__malloc_mad3.exit.thread, label %_m3dstbi__mul2sizes_valid.exit.thread15.i.i

_m3dstbi__mul2sizes_valid.exit.thread15.i.i:      ; preds = %_m3dstbi__mul2sizes_valid.exit.i.i, %bb.b
  %i.m = mul nuw nsw i32 %5, %4                   ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %_m3dstbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %_m3dstbi__mul2sizes_valid.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %_m3dstbi__malloc_mad3.exit, label %_m3dstbi__mul2sizes_valid.exit12.i.i

_m3dstbi__mul2sizes_valid.exit12.i.i:             ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %_m3dstbi__malloc_mad3.exit.thread, label %_m3dstbi__malloc_mad3.exit

_m3dstbi__malloc_mad3.exit.thread:                ; preds = %_m3dstbi__mul2sizes_valid.exit12.i.i, %_m3dstbi__mul2sizes_valid.exit.i.i, %bb.a, %_m3dstbi__mul2sizes_valid.exit.thread15.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %.loopexit713.sink.split

_m3dstbi__malloc_mad3.exit:                       ; preds = %bb.c, %_m3dstbi__mul2sizes_valid.exit12.i.i
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 2147483648) %i.s) #56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.loopexit713.sink.split, label %bb.d

bb.d:                                             ; preds = %_m3dstbi__malloc_mad3.exit
  %i.v = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %or.cond.not.i.i, label %bb.e, label %.loopexit713.sink.split

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ne i32 %4, 0                        ; 2 uses
  br i1 %i.w, label %_m3dstbi__mul2sizes_valid.exit.i, label %_m3dstbi__mul2sizes_valid.exit.thread15.i

_m3dstbi__mul2sizes_valid.exit.i:                 ; preds = %bb.e
  %i.x = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.x
  br i1 %.not23.i, label %.loopexit713.sink.split, label %_m3dstbi__mul2sizes_valid.exit.thread15.i

_m3dstbi__mul2sizes_valid.exit.thread15.i:        ; preds = %_m3dstbi__mul2sizes_valid.exit.i, %bb.e
  %i.y = mul i32 %i.g, %4                         ; 14 uses
  %i.z = or i32 %i.y, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.z, -1
  br i1 %or.cond.not.i10.i, label %bb.f, label %.loopexit713.sink.split

bb.f:                                             ; preds = %_m3dstbi__mul2sizes_valid.exit.thread15.i
  %i.aa = icmp eq i32 %6, 0
  br i1 %i.aa, label %_m3dstbi__mad3sizes_valid.exit._crit_edge, label %_m3dstbi__mul2sizes_valid.exit12.i

_m3dstbi__mul2sizes_valid.exit12.i:               ; preds = %bb.f
  %i.ab = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.y, %i.ab
  %i.ac = mul i32 %i.y, %6                        ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 2147483640
  %or.cond705 = or i1 %.not.i, %i.ad
  br i1 %or.cond705, label %.loopexit713.sink.split, label %_m3dstbi__mad3sizes_valid.exit._crit_edge

_m3dstbi__mad3sizes_valid.exit._crit_edge:        ; preds = %bb.f, %_m3dstbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ac, %_m3dstbi__mul2sizes_valid.exit12.i ], [ 0, %bb.f ]
  %i.ae = add nsw i32 %.pre-phi, 7
  %i.af = lshr i32 %i.ae, 3                       ; 4 uses
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = mul i32 %i.ag, %5                       ; 2 uses
  %i.ai = load i32, ptr %i.b, align 8
  %i.aj = icmp eq i32 %i.ai, %4
  br i1 %i.aj, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_m3dstbi__mad3sizes_valid.exit._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp eq i32 %i.al, %5
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not597 = icmp eq i32 %2, %i.ah
  br i1 %.not597, label %bb.j, label %.loopexit713.sink.split

bb.i:                                             ; preds = %bb.g, %_m3dstbi__mad3sizes_valid.exit._crit_edge
  %i.an = icmp ult i32 %2, %i.ah
  br i1 %i.an, label %.loopexit713.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.k, label %._crit_edge837.thread, label %.lr.ph836

.lr.ph836:                                        ; preds = %bb.j
  %i.ao = zext i32 %i.e to i64                    ; 10 uses
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = icmp slt i32 %6, 8                      ; 4 uses
  %i.ar = sub i32 %i.c, %i.af
  %narrow = select i1 %i.aq, i32 %i.ar, i32 0
  %.0537.idx = zext i32 %narrow to i64            ; 10 uses
  %i.as = icmp eq i32 %6, 8
  %.not612 = icmp eq i32 %i.g, %3                 ; 3 uses
  %i.at = sext i32 %i.h to i64                    ; 60 uses
  %i.au = sext i32 %i.g to i64                    ; 2 uses
  %i.av = sext i32 %3 to i64                      ; 2 uses
  %or.cond = select i1 %i.aq, i1 true, i1 %.not612
  %.6573753 = add i32 %4, -1                      ; 8 uses
  %.not614754 = icmp eq i32 %.6573753, 0          ; 7 uses
  %wide.trip.count977 = zext i32 %5 to i64
  %i.aw = sub nsw i64 %i.ao, %.0537.idx
  %i.ax = add i32 %4, -2                          ; 2 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = mul nsw i64 %i.at, %i.ay
  %i.ba = zext i32 %i.ax to i64                   ; 3 uses
  %i.bb = mul nsw i64 %i.at, %i.ba
  %i.bc = sub nsw i64 0, %i.at
  %i.bd = add nsw i64 %i.ba, -1
  %i.be = mul i64 %i.bd, %i.at
  %i.bf = add i32 %4, -2                          ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = mul nsw i64 %i.at, %i.bg                ; 2 uses
  %i.bi = add i64 %i.bh, %.0537.idx
  %i.bj = sub i64 %i.bi, %i.ao
  %i.bk = zext i32 %i.bf to i64                   ; 3 uses
  %i.bl = mul nsw i64 %i.at, %i.bk                ; 2 uses
  %i.bm = add i64 %i.bl, %.0537.idx
  %i.bn = sub i64 %i.bm, %i.ao
  %i.bo = sub nsw i64 0, %i.at                    ; 2 uses
  %i.bp = add nsw i64 %i.bk, -1
  %i.bq = mul i64 %i.bp, %i.at
  %i.br = add i32 %4, -2
  %i.bs = zext i32 %i.br to i64                   ; 3 uses
  %i.bt = mul nsw i64 %i.at, %i.bs                ; 2 uses
  %i.bu = add nsw i64 %i.bs, -1
  %i.bv = mul i64 %i.bu, %i.at                    ; 2 uses
  %i.bw = add i64 %i.bt, %.0537.idx
  %i.bx = sub i64 %i.bw, %i.ao
  %i.by = add nsw i64 %i.at, %i.ao
  %i.bz = sub nsw i64 %.0537.idx, %i.by
  %i.ca = add i64 %i.bv, %.0537.idx
  %i.cb = sub i64 %i.ca, %i.ao
  %i.cc = add i32 %4, -2                          ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 3 uses
  %i.ce = mul nsw i64 %i.at, %i.cd
  %i.cf = sub nsw i64 0, %i.at                    ; 2 uses
  %i.cg = add nsw i64 %i.cd, -1
  %i.ch = mul i64 %i.cg, %i.at
  %i.ci = zext i32 %i.cc to i64                   ; 3 uses
  %i.cj = mul nsw i64 %i.at, %i.ci
  %i.ck = add nsw i64 %i.ci, -1
  %i.cl = mul i64 %i.ck, %i.at
  %stride.check1575 = icmp slt i32 %i.h, 0
  %stride.check1528 = icmp slt i32 %i.h, 0
  %stride.check1467 = icmp slt i32 %i.h, 0
  %stride.check1405 = icmp slt i32 %i.h, 0
  %stride.check1356 = icmp slt i32 %i.h, 0
  %stride.check1310 = icmp slt i32 %i.h, 0
  %brmerge.not = and i1 %i.w, %i.a
  %xtraiter1647 = and i32 %4, 7                   ; 3 uses
end_hunk_3
