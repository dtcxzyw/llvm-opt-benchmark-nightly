Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/format?download=true
begin_hunk_0_@utf8len_:bb.a
bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !17
  %i.bb = icmp slt i8 %i.ba, -64
  br i1 %i.bb, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17
  %i.be = icmp slt i8 %i.bd, -64
  br i1 %i.be, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !17
  %i.bh = icmp slt i8 %i.bg, -64
  br i1 %i.bh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bi = icmp eq i8 %i.a, -8
  %i.bj = and i32 %i.aw, 184
  %i.bk = icmp eq i32 %i.bj, 128
  %or.cond39 = and i1 %i.bi, %i.bk
  %spec.select42 = select i1 %or.cond39, i32 0, i32 5
  br label %bb.ad

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %i.bl = and i8 %i.a, -2
  %i.bm = icmp eq i8 %i.bl, -4
  br i1 %i.bm, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !17
  %i.bp = zext i8 %i.bo to i32                    ; 2 uses
  %i.bq = and i32 %i.bp, 192
  %i.br = icmp eq i32 %i.bq, 128
  br i1 %i.br, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = icmp slt i8 %i.bt, -64
  br i1 %i.bu, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !17
  %i.bx = icmp slt i8 %i.bw, -64
  br i1 %i.bx, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !17
  %i.ca = icmp slt i8 %i.bz, -64
  br i1 %i.ca, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !17
  %i.cd = icmp slt i8 %i.cc, -64
  br i1 %i.cd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ce = icmp eq i8 %i.a, -4
  %i.cf = and i32 %i.bp, 188
  %i.cg = icmp eq i32 %i.cf, 128
  %or.cond41 = and i1 %i.ce, %i.cg
  %spec.select43 = select i1 %or.cond41, i32 0, i32 6
  br label %bb.ad

bb.ad:                                            ; preds = %bb.k, %bb.ac, %bb.v, %bb.p, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.j, %bb.h, %bb.d, %bb.a, %.thread
  %.0 = phi i32 [ 0, %bb.y ], [ %., %bb.d ], [ 1, %bb.a ], [ 0, %bb.x ], [ 0, %bb.h ], [ 0, %bb.j ], [ 3, %.thread ], [ 0, %bb.k ], [ 0, %bb.w ], [ %spec.select43, %bb.ac ], [ %spec.select, %bb.p ], [ %spec.select42, %bb.v ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define range(i32 0, 2) i32 @FLAC__format_vorbiscomment_entry_is_legal(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 4 uses
  %.not36 = icmp eq i32 %1, 0
  br i1 %.not36, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.02133 = phi ptr [ %i.e, %bb.c ], [ %0, %bb.a ] ; 3 uses
  %i.c = load i8, ptr %.02133, align 1, !tbaa !17 ; 2 uses
  %.not = icmp eq i8 %i.c, 61
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = add i8 %i.c, -126
  %or.cond = icmp ult i8 %i.d, -94
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.02133, i64 1 ; 3 uses
  %i.f = icmp ult ptr %i.e, %i.b
  br i1 %i.f, label %.lr.ph, label %.critedge, !llvm.loop !36

.critedge:                                        ; preds = %.lr.ph, %bb.c, %bb.a
  %.021.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %bb.c ], [ %.02133, %.lr.ph ] ; 2 uses
  %i.g = icmp eq ptr %.021.lcssa, %i.b
  br i1 %i.g, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.h = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.1 = phi ptr [ %i.h, %bb.d ], [ %i.l, %bb.f ]  ; 4 uses
  %i.i = icmp ult ptr %.1, %i.b
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call fastcc i32 @utf8len_(ptr noundef %.1) ; 2 uses
  %.not29 = icmp eq i32 %i.j, 0
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 %i.k
  br i1 %.not29, label %.loopexit, label %bb.e, !llvm.loop !37

bb.g:                                             ; preds = %bb.e
  %.not28 = icmp eq ptr %.1, %i.b
  %. = zext i1 %.not28 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.f, %bb.g, %.critedge
  %.224 = phi i32 [ 0, %.critedge ], [ 0, %bb.f ], [ %., %bb.g ], [ 0, %bb.b ]
  ret i32 %.224
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @FLAC__format_cuesheet_is_legal(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = icmp ult i64 %i.b, 88200
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not90 = icmp eq ptr %2, null
  br i1 %.not90, label %.loopexit, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.b
  %i.d = urem i64 %i.b, 588
  %.not74 = icmp eq i64 %i.d, 0
  br i1 %.not74, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not89 = icmp eq ptr %2, null
  br i1 %.not89, label %.loopexit, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43   ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.g, label %.split102.us.split.preheader

.thread:                                          ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.i = load i32, ptr %i.h, align 4, !tbaa !43   ; 3 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread, %bb.f
  %.not88 = icmp eq ptr %2, null
  br i1 %.not88, label %.loopexit, label %.loopexit.sink.split

bb.h:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44   ; 2 uses
  %i.m = add i32 %i.i, -1                         ; 3 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !46
  %.not75 = icmp eq i8 %i.q, -86
  br i1 %.not75, label %.split102.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not87 = icmp eq ptr %2, null
  br i1 %.not87, label %.loopexit, label %.loopexit.sink.split

.split102.preheader:                              ; preds = %bb.h
  %i.r = zext i32 %i.m to i64
  %wide.trip.count135 = zext i32 %i.i to i64
  br label %.split102

.split102.us.split.preheader:                     ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !44
  %.pre161 = add i32 %i.f, -1
  %i.s = zext i32 %.pre161 to i64
  %wide.trip.count149 = zext i32 %i.f to i64
  br label %.split102.us.split

.split102.us.split:                               ; preds = %.split102.us.split.preheader, %._crit_edge.split.us.us.a
  %indvars.iv146 = phi i64 [ 0, %.split102.us.split.preheader ], [ %indvars.iv.next147, %._crit_edge.split.us.us.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %indvars.iv146 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i8, ptr %i.u, align 8, !tbaa !46
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %.split104.us, label %bb.j

bb.j:                                             ; preds = %.split102.us.split
  %i.x = icmp samesign ult i64 %indvars.iv146, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 23
  %i.z = load i8, ptr %i.y, align 1, !tbaa !47    ; 3 uses
  %i.aa = icmp eq i8 %i.z, 0                      ; 2 uses
  br i1 %i.x, label %bb.k, label %3

bb.k:                                             ; preds = %bb.j
  br i1 %i.aa, label %.split110.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !50
  %i.af = icmp ugt i8 %i.ae, 1
  br i1 %i.af, label %.split112.us, label %.thread171

3:                                                ; preds = %bb.j
  br i1 %i.aa, label %._crit_edge.split.us.us.a, label %.thread171

._crit_edge.split.us.us.a:                        ; preds = %bb.n, %.thread171, %3
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %.loopexit, label %.split102.us.split, !llvm.loop !38

.thread171:                                       ; preds = %bb.l, %3
  %wide.trip.count140 = zext i8 %i.z to i64
  %exitcond141.peel.not = icmp eq i8 %i.z, 1
  br i1 %exitcond141.peel.not, label %._crit_edge.split.us.us.a, label %.peel.next143

.peel.next143:                                    ; preds = %.thread171
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48
  br label %bb.m

bb.m:                                             ; preds = %.peel.next143, %bb.n
  %indvars.iv137 = phi i64 [ %indvars.iv.next138.a, %bb.n ], [ 1, %.peel.next143 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv137 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !50
  %i.al = zext i8 %i.ak to i32
  %i.am = getelementptr i8, ptr %i.ai, i64 -8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !50
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nuw nsw i32 %i.ao, 1
  %.not80.us.us = icmp eq i32 %i.ap, %i.al
  br i1 %.not80.us.us, label %bb.n, label %.split.us

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next138.a = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not.a = icmp eq i64 %indvars.iv.next138.a, %wide.trip.count140
  br i1 %exitcond141.not.a, label %._crit_edge.split.us.us.a, label %bb.m, !llvm.loop !39

.split102:                                        ; preds = %.split102.preheader, %._crit_edge.split
  %indvars.iv132 = phi i64 [ 0, %.split102.preheader ], [ %indvars.iv.next133, %._crit_edge.split ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %indvars.iv132 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !46  ; 3 uses
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %.split104.us, label %bb.o

.split104.us:                                     ; preds = %.split102, %.split102.us.split
  %.not86 = icmp eq ptr %2, null
  br i1 %.not86, label %.loopexit, label %.loopexit.sink.split

bb.o:                                             ; preds = %.split102
  %i.au = icmp ult i8 %i.as, 100
  %i.av = icmp eq i8 %i.as, -86
  %or.cond = or i1 %i.au, %i.av
  br i1 %or.cond, label %.thread92, label %.split106

.split106:                                        ; preds = %bb.o
  %.not76 = icmp eq ptr %2, null
  br i1 %.not76, label %.loopexit, label %.loopexit.sink.split

.thread92:                                        ; preds = %bb.o
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !51
  %i.ax = urem i64 %i.aw, 588
  %.not77 = icmp eq i64 %i.ax, 0
  br i1 %.not77, label %bb.q, label %.split108

.split108:                                        ; preds = %.thread92
  %.not85 = icmp eq ptr %2, null
  br i1 %.not85, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.split108
  %i.ay = trunc nuw i64 %indvars.iv132 to i32
  %i.az = icmp eq i32 %i.m, %i.ay
  %.str.48..str.49 = select i1 %i.az, ptr @.str.48, ptr @.str.49
  br label %.loopexit.sink.split

bb.q:                                             ; preds = %.thread92
  %i.ba = icmp samesign ult i64 %indvars.iv132, %i.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 23
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !47  ; 3 uses
  %i.bd = icmp eq i8 %i.bc, 0                     ; 2 uses
  br i1 %i.ba, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  br i1 %i.bd, label %.split110.us, label %bb.s

.split110.us:                                     ; preds = %bb.r, %bb.k
  %.not84 = icmp eq ptr %2, null
  br i1 %.not84, label %.loopexit, label %.loopexit.sink.split

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !50
  %i.bi = icmp ugt i8 %i.bh, 1
  br i1 %i.bi, label %.split112.us, label %.lr.ph

.split112.us:                                     ; preds = %bb.s, %bb.l
  %.not83 = icmp eq ptr %2, null
  br i1 %.not83, label %.loopexit, label %.loopexit.sink.split

bb.t:                                             ; preds = %bb.q
  br i1 %i.bd, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !48 ; 2 uses
  %wide.trip.count = zext i8 %i.bc to i64
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !52
  %i.bm = urem i64 %i.bl, 588
  %.not78.peel = icmp eq i64 %i.bm, 0
  br i1 %.not78.peel, label %bb.u, label %.loopexit129

bb.u:                                             ; preds = %.lr.ph
  %exitcond.peel.not = icmp eq i8 %i.bc, 1
  br i1 %exitcond.peel.not, label %._crit_edge.split, label %.peel.next

.peel.next:                                       ; preds = %bb.u, %bb.w
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 1, %bb.u ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %indvars.iv ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !52
  %i.bp = urem i64 %i.bo, 588
  %.not78 = icmp eq i64 %i.bp, 0
  br i1 %.not78, label %bb.v, label %.loopexit129

.loopexit129:                                     ; preds = %.lr.ph, %.peel.next
  %.not82 = icmp eq ptr %2, null
  br i1 %.not82, label %.loopexit, label %.loopexit.sink.split

bb.v:                                             ; preds = %.peel.next
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !50
  %i.bs = zext i8 %i.br to i32
  %i.bt = getelementptr i8, ptr %i.bn, i64 -8
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !50
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add nuw nsw i32 %i.bv, 1
  %.not80 = icmp eq i32 %i.bw, %i.bs
  br i1 %.not80, label %bb.w, label %.split.us

.split.us:                                        ; preds = %bb.v, %bb.m
  %.not81 = icmp eq ptr %2, null
  br i1 %.not81, label %.loopexit, label %.loopexit.sink.split

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.peel.next, !llvm.loop !40

._crit_edge.split:                                ; preds = %bb.w, %bb.u, %bb.t
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %.loopexit, label %.split102, !llvm.loop !38

.loopexit.sink.split:                             ; preds = %.split.us, %.loopexit129, %.split112.us, %.split110.us, %bb.p, %.split106, %.split104.us, %bb.i, %bb.g, %bb.e, %bb.c
  %.str.53.sink = phi ptr [ @.str.52, %.loopexit129 ], [ @.str.51, %.split112.us ], [ @.str.50, %.split110.us ], [ @.str.42, %bb.c ], [ @.str.47, %.split106 ], [ %.str.48..str.49, %bb.p ], [ @.str.46, %.split104.us ], [ @.str.45, %bb.i ], [ @.str.44, %bb.g ], [ @.str.43, %bb.e ], [ @.str.53, %.split.us ]
  store ptr %.str.53.sink, ptr %2, align 8, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.split, %._crit_edge.split.us.us.a, %.loopexit.sink.split, %.split.us, %.loopexit129, %.split112.us, %.split110.us, %.split108, %.split106, %.split104.us, %bb.i, %bb.g, %bb.e, %bb.c
  %.069 = phi i32 [ 0, %.split.us ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %.split106 ], [ 0, %.split108 ], [ 0, %.split110.us ], [ 0, %.split112.us ], [ 0, %.loopexit129 ], [ 0, %.split104.us ], [ 0, %.loopexit.sink.split ], [ 1, %._crit_edge.split.us.us.a ], [ 1, %._crit_edge.split ]
  ret i32 %.069
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @FLAC__format_picture_is_legal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !17    ; 2 uses
  %.not30 = icmp eq i8 %i.c, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.01731, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !17    ; 2 uses
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !53

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %.01731 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.g = add i8 %i.f, -127
  %or.cond = icmp ult i8 %i.g, -95
  br i1 %or.cond, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %.not28 = icmp eq ptr %1, null
  br i1 %.not28, label %.thread, label %.thread.sink.split

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17
  %.not2532 = icmp eq i8 %i.j, 0
  br i1 %.not2532, label %.thread, label %.lr.ph35

.lr.ph35:                                         ; preds = %._crit_edge, %bb.e
  %.01633 = phi ptr [ %i.m, %bb.e ], [ %i.i, %._crit_edge ] ; 2 uses
  %i.k = tail call fastcc i32 @utf8len_(ptr noundef nonnull %.01633) ; 2 uses
  %.not27 = icmp eq i32 %i.k, 0
  br i1 %.not27, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph35
  %.not26 = icmp eq ptr %1, null
  br i1 %.not26, label %.thread, label %.thread.sink.split

bb.e:                                             ; preds = %.lr.ph35
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.01633, i64 %i.l ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17
  %.not25 = icmp eq i8 %i.n, 0
  br i1 %.not25, label %.thread, label %.lr.ph35, !llvm.loop !54

.thread.sink.split:                               ; preds = %bb.d, %bb.c
  %.str.55.sink = phi ptr [ @.str.54, %bb.c ], [ @.str.55, %bb.d ]
  store ptr %.str.55.sink, ptr %1, align 8, !tbaa !19
  br label %.thread

.thread:                                          ; preds = %bb.e, %.thread.sink.split, %._crit_edge, %bb.d, %bb.c
  %.2 = phi i32 [ 0, %bb.c ], [ 1, %._crit_edge ], [ 0, %.thread.sink.split ], [ 0, %bb.d ], [ 1, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(none) uwtable
define hidden range(i32 0, 16) i32 @FLAC__format_get_max_rice_partition_order_from_blocksize(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = and i32 %0, 1
  %.not6 = icmp eq i32 %i.a, 0
  br i1 %.not6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi i32 [ %i.b, %.lr.ph ], [ 0, %bb.a ]
  %.057 = phi i32 [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.b = add i32 %.08, 1                          ; 2 uses
  %i.c = lshr exact i32 %.057, 1
  %i.d = and i32 %.057, 2
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !58

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.e = tail call i32 @llvm.umin.i32(i32 %i.b, i32 15)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.e, %._crit_edge.loopexit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(none) uwtable
define hidden i32 @FLAC__format_get_max_rice_partition_order_from_blocksize_limited_max_and_predictor_order(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %0, %bb.a ], [ %i.b, %bb.b ]    ; 4 uses
  %.not = icmp eq i32 %.0, 0
  %i.a = lshr i32 %1, %.0
  %.not7 = icmp ugt i32 %i.a, %2
  %or.cond = select i1 %.not, i1 true, i1 %.not7
  %i.b = add i32 %.0, -1
  br i1 %or.cond, label %.critedge, label %bb.b, !llvm.loop !59

.critedge:                                        ; preds = %bb.b
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @FLAC__format_entropy_coding_method_partitioned_rice_contents_init(ptr nofree noundef writeonly captures(none) initializes((0, 20)) %0) local_unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @FLAC__format_entropy_coding_method_partitioned_rice_contents_clear(ptr nofree noundef captures(none) initializes((16, 20)) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @FLAC__format_entropy_coding_method_partitioned_rice_contents_ensure_size(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %i.c = icmp ult i32 %i.b, %1
  %.pre = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %i.d = icmp eq ptr %.pre, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = shl nuw i32 1, %1
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 2                      ; 3 uses
  %i.k = tail call ptr @realloc(ptr noundef %.pre, i64 noundef range(i64 -8589934592, 8589934589) %i.j) #17 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %safe_realloc_.exit.thread, label %bb.d

safe_realloc_.exit.thread:                        ; preds = %bb.c
  tail call void @free(ptr noundef %.pre) #16
  store ptr null, ptr %0, align 8, !tbaa !22
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %0, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23   ; 2 uses
  %i.o = tail call ptr @realloc(ptr noundef %i.n, i64 noundef range(i64 -8589934592, 8589934589) %i.j) #17 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %safe_realloc_.exit15.thread, label %bb.e

safe_realloc_.exit15.thread:                      ; preds = %bb.d
  tail call void @free(ptr noundef %i.n) #16
  store ptr null, ptr %i.m, align 8, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.o, ptr %i.m, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.o, i8 noundef 0, i64 noundef range(i64 -8589934592, 8589934589) %i.j, i1 noundef false) #16
  store i32 %1, ptr %i.a, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %safe_realloc_.exit15.thread, %safe_realloc_.exit.thread, %bb.b, %bb.e
  %.0 = phi i32 [ 0, %safe_realloc_.exit15.thread ], [ 0, %safe_realloc_.exit.thread ], [ 1, %bb.e ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind sspstrong memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"", !5, i64 0, !8, i64 8}
!10 = !{!9, !5, i64 0}
!11 = !{!9, !8, i64 8}
!12 = !{!"long", !4, i64 0}
!13 = !{!"", !12, i64 0, !12, i64 8, !5, i64 16}
!14 = !{!13, !12, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.peeled.count", i32 1}
!17 = !{!4, !4, i64 0}
!18 = !{!"p1 omnipotent char", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 int", !8, i64 0}
!21 = !{!"", !20, i64 0, !20, i64 8, !5, i64 16}
!22 = !{!21, !20, i64 0}
!23 = !{!21, !20, i64 8}
!24 = distinct !{!24, !15, !16}
!25 = distinct !{!25, !30}
!26 = distinct !{!26, !15, !16}
!27 = distinct !{!27, !15}
!28 = !{!13, !12, i64 8}
!29 = !{!13, !5, i64 16}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!12, !12, i64 0}
!32 = !{!5, !5, i64 0}
!33 = !{i64 0, i64 8, !31, i64 8, i64 8, !31, i64 16, i64 4, !32}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15, !16}
!40 = distinct !{!40, !15, !16}
!41 = !{!"", !4, i64 0, !12, i64 136, !5, i64 144, !5, i64 148, !8, i64 152}
!42 = !{!41, !12, i64 136}
!43 = !{!41, !5, i64 148}
!44 = !{!41, !8, i64 152}
!45 = !{!"", !12, i64 0, !4, i64 8, !4, i64 9, !5, i64 22, !5, i64 22, !4, i64 23, !8, i64 24}
!46 = !{!45, !4, i64 8}
!47 = !{!45, !4, i64 23}
!48 = !{!45, !8, i64 24}
!49 = !{!"", !12, i64 0, !4, i64 8}
!50 = !{!49, !4, i64 8}
!51 = !{!45, !12, i64 0}
!52 = !{!49, !12, i64 0}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15}
!55 = !{!"", !5, i64 0, !18, i64 8, !18, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !18, i64 48}
!56 = !{!55, !18, i64 8}
!57 = !{!55, !18, i64 16}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = !{!21, !5, i64 16}
end_hunk_0
