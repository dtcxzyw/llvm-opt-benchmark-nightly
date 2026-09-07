Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regexec?download=true
inline.NumInlined: 83
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@onig_regset_add:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !142  ; 2 uses
  %.not31 = icmp slt i32 %i.e, %i.k
  br i1 %.not31, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = shl nsw i32 %i.k, 1                      ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !68
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 4
  %i.p = tail call ptr @realloc(ptr noundef %i.m, i64 noundef %i.o) #29 ; 2 uses
  %.not32 = icmp eq ptr %i.p, null
  br i1 %.not32, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !68
  store i32 %i.l, ptr %i.j, align 4, !tbaa !142
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %calloc.i = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 2 uses
  %i.q = icmp eq ptr %calloc.i, null
  br i1 %i.q, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %0, align 8, !tbaa !68
  %i.s = load i32, ptr %i.d, align 8, !tbaa !66   ; 3 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.t ; 2 uses
  store ptr %1, ptr %i.u, align 8, !tbaa !70
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %calloc.i, ptr %i.v, align 8, !tbaa !71
  %i.w = add nsw i32 %i.s, 1
  store i32 %i.w, ptr %i.d, align 8, !tbaa !66
  %i.x = icmp eq i32 %i.s, 0
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !97
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load <2 x i32>, ptr %i.ab, align 8, !tbaa !35
  %i.ae = load i32, ptr %i.ab, align 8, !tbaa !136
  store <2 x i32> %i.ad, ptr %i.ac, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !139
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !82
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !133
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.am = load i32, ptr %i.al, align 8, !tbaa !134
  %i.an = icmp ne i32 %i.am, -1
  %i.ao = zext i1 %i.an to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %not..i = phi i32 [ 0, %bb.i ], [ %i.ao, %bb.j ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %not..i, ptr %i.ap, align 4, !tbaa !135
  %i.aq = lshr i32 %i.ae, 14
  %.lobit.i = and i32 %i.aq, 1
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !80
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.au = load i32, ptr %i.at, align 8, !tbaa !136 ; 2 uses
  %i.av = and i32 %i.au, %i.as                    ; 2 uses
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !81
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !82
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !138
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !139
  %.0.i = tail call i32 @llvm.umax.i32(i32 %i.az, i32 %i.bd)
  store i32 %spec.select.i, ptr %i.aw, align 4, !tbaa !81
  store i32 %.0.i, ptr %i.ay, align 8, !tbaa !82
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 %i.av, ptr %i.ar, align 8, !tbaa !80
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !133
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !134
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.bk, align 4, !tbaa !135
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bl = and i32 %i.au, 16384
  %.not40.i = icmp eq i32 %i.bl, 0
  br i1 %.not40.i, label %.critedge, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.q, %bb.k
  %.sink.i = phi i32 [ %.lobit.i, %bb.k ], [ 1, %bb.q ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sink.i, ptr %i.bm, align 8, !tbaa !137
  br label %.critedge

.critedge:                                        ; preds = %.sink.split.i, %bb.q, %bb.e, %bb.g, %bb.c, %bb.a
  %.1 = phi i32 [ -5, %bb.e ], [ -30, %bb.a ], [ -5, %bb.g ], [ -30, %bb.c ], [ 0, %bb.q ], [ 0, %.sink.split.i ]
  ret i32 %.1
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -30, 1) i32 @onig_regset_replace(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !66   ; 4 uses
  %.not = icmp slt i32 %1, %i.c
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %0, align 8, !tbaa !68
  %i.f = zext nneg i32 %1 to i64                  ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71   ; 7 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %onig_region_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.i, align 8, !tbaa !37
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  %.not11.i = icmp eq ptr %i.m, null
  br i1 %.not11.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.m) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  %.not12.i = icmp eq ptr %i.o, null
  br i1 %.not12.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.o) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 0, ptr %i.i, align 8, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %history_root_free.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @history_tree_free(ptr noundef %i.q)
  br label %history_root_free.exit.i

history_root_free.exit.i:                         ; preds = %bb.l, %bb.k
  tail call void @free(ptr noundef nonnull %i.i) #30
  %.pre = load i32, ptr %i.b, align 8, !tbaa !66
  br label %onig_region_free.exit

onig_region_free.exit:                            ; preds = %bb.d, %history_root_free.exit.i
  %i.s = phi i32 [ %i.c, %bb.d ], [ %.pre, %history_root_free.exit.i ] ; 4 uses
  %i.t = add nsw i32 %i.s, -1                     ; 6 uses
  %i.u = icmp slt i32 %1, %i.t
  br i1 %i.u, label %.lr.ph, label %bb.p

.lr.ph:                                           ; preds = %onig_region_free.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !68     ; 10 uses
  %3 = xor i32 %1, -1
  %4 = add i32 %i.s, %3
  %i.w = add i32 %i.s, -2
  %i.x = sub i32 %i.w, %1
  %xtraiter = and i32 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.f, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next.prol
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.prol
  %i.aa = load <2 x ptr>, ptr %i.y, align 8, !tbaa !31
  store <2 x ptr> %i.aa, ptr %i.z, align 8, !tbaa !31
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !219

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.ab = icmp ult i32 %i.x, 3
  br i1 %i.ab, label %.thread76, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv
  %i.ae = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !31
  store <2 x ptr> %i.ae, ptr %i.ad, align 8, !tbaa !31
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next.1
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !31
  store <2 x ptr> %i.ah, ptr %i.ag, align 8, !tbaa !31
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next.2
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next.1
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !31
  store <2 x ptr> %i.ak, ptr %i.aj, align 8, !tbaa !31
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next.3
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next.2
  %i.an = load <2 x ptr>, ptr %i.al, align 8, !tbaa !31
  store <2 x ptr> %i.an, ptr %i.am, align 8, !tbaa !31
  %i.ao = trunc nuw i64 %indvars.iv.next.3 to i32
  %i.ap = icmp sgt i32 %i.t, %i.ao
  br i1 %i.ap, label %.lr.ph.new, label %.thread76, !llvm.loop !220

.thread76:                                        ; preds = %.lr.ph.new, %.prol.loopexit
  store i32 %i.t, ptr %i.b, align 8, !tbaa !66
  br label %.lr.ph42

bb.m:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !85
  %i.as = and i32 %i.ar, 16
  %.not36 = icmp eq i32 %i.as, 0
  br i1 %.not36, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.at = icmp samesign ugt i32 %i.c, 1
  br i1 %i.at, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !97
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !67
  %.not37 = icmp eq ptr %i.av, %i.ax
  br i1 %.not37, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.n, %bb.o
  %i.ay = load ptr, ptr %0, align 8, !tbaa !68
  %i.az = zext nneg i32 %1 to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.az
  store ptr %2, ptr %i.ba, align 8, !tbaa !70
  br label %.lr.ph42

bb.p:                                             ; preds = %onig_region_free.exit
  store i32 %i.t, ptr %i.b, align 8, !tbaa !66
  %i.bb = icmp sgt i32 %i.s, 1
  br i1 %i.bb, label %.lr.ph42, label %.loopexit

.lr.ph42:                                         ; preds = %.thread76, %.thread, %bb.p
  %i.bc = phi i32 [ %i.c, %.thread ], [ %i.t, %bb.p ], [ %i.t, %.thread76 ] ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !68    ; 2 uses
  %i.be = icmp eq i32 %i.bc, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %i.be, label %.lr.ph42.split.us, label %.lr.ph42.split

.lr.ph42.split.us:                                ; preds = %.lr.ph42
  %i.bl = load ptr, ptr %i.bd, align 8, !tbaa !70 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 136
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !133
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %..loopexit_crit_edge.split.us, label %bb.q

bb.q:                                             ; preds = %.lr.ph42.split.us
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 440
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !134
  %i.br = icmp ne i32 %i.bq, -1
  %i.bs = zext i1 %i.br to i32
  br label %..loopexit_crit_edge.split.us

..loopexit_crit_edge.split.us:                    ; preds = %.lr.ph42.split.us, %bb.q
  %not..i.us = phi i32 [ 0, %.lr.ph42.split.us ], [ %i.bs, %bb.q ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !97
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 144 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !139
  store ptr %i.bu, ptr %i.bj, align 8, !tbaa !67
  %i.by = load <2 x i32>, ptr %i.bv, align 8, !tbaa !35
  %i.bz = load i32, ptr %i.bv, align 8, !tbaa !136
  %i.ca = lshr i32 %i.bz, 14
  %.lobit.i.us.le = and i32 %i.ca, 1
  store <2 x i32> %i.by, ptr %i.bf, align 8, !tbaa !35
  store i32 %i.bx, ptr %i.bh, align 8, !tbaa !82
  store i32 %not..i.us, ptr %i.bi, align 4, !tbaa !135
  store i32 %.lobit.i.us.le, ptr %i.bk, align 8, !tbaa !137
  br label %.loopexit

.lr.ph42.split:                                   ; preds = %.lr.ph42
  %.promoted = load i32, ptr %i.bf, align 8, !tbaa !80
  %wide.trip.count = zext nneg i32 %i.bc to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph42.split, %update_regset_by_reg.exit
  %indvars.iv60 = phi i64 [ 0, %.lr.ph42.split ], [ %indvars.iv.next61, %update_regset_by_reg.exit ] ; 2 uses
  %i.cb = phi i32 [ %.promoted, %.lr.ph42.split ], [ %i.cg, %update_regset_by_reg.exit ]
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv60
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !70 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 144
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !136 ; 2 uses
  %i.cg = and i32 %i.cf, %i.cb                    ; 3 uses
  %.not.i38 = icmp eq i32 %i.cg, 0
  br i1 %.not.i38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = load i32, ptr %i.bg, align 4, !tbaa !81
  %i.ci = load i32, ptr %i.bh, align 8, !tbaa !82
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 148
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !138
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.ch, i32 %i.ck)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 152
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !139
  %.0.i = tail call i32 @llvm.umax.i32(i32 %i.ci, i32 %i.cm)
  store i32 %spec.select.i, ptr %i.bg, align 4, !tbaa !81
  store i32 %.0.i, ptr %i.bh, align 8, !tbaa !82
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 136
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !133
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 440
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !134
  %i.cs = icmp eq i32 %i.cr, -1
  br i1 %i.cs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  store i32 0, ptr %i.bi, align 4, !tbaa !135
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ct = and i32 %i.cf, 16384
  %.not40.i = icmp eq i32 %i.ct, 0
  br i1 %.not40.i, label %update_regset_by_reg.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.w
  store i32 1, ptr %i.bk, align 8, !tbaa !137
  br label %update_regset_by_reg.exit

update_regset_by_reg.exit:                        ; preds = %bb.w, %.sink.split.i
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.split, label %bb.r, !llvm.loop !221

..loopexit_crit_edge.split:                       ; preds = %update_regset_by_reg.exit
  store i32 %i.cg, ptr %i.bf, align 8, !tbaa !80
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %..loopexit_crit_edge.split.us, %..loopexit_crit_edge.split, %bb.o, %bb.m, %bb.a, %bb.b
  %.032 = phi i32 [ -30, %bb.m ], [ -30, %bb.o ], [ -30, %bb.a ], [ -30, %bb.b ], [ 0, %..loopexit_crit_edge.split ], [ 0, %..loopexit_crit_edge.split.us ], [ 0, %bb.p ]
  ret i32 %.032
}

; Function Attrs: nounwind uwtable
define dso_local void @onig_regset_free(ptr noundef captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge
end_hunk_0
