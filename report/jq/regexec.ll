Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regexec?download=true
inline.NumInlined: 83
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@onig_regset_add:bb.a
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
  %i.w = xor i32 %1, -1
  %i.x = add i32 %i.s, %i.w
  %i.y = add i32 %i.s, -2
  %i.z = sub i32 %i.y, %1
  %xtraiter = and i32 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.f, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next.prol
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.prol
  %i.ac = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !31
  store <2 x ptr> %i.ac, ptr %i.ab, align 8, !tbaa !31
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !219

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.ad = icmp ult i32 %i.z, 3
  br i1 %i.ad, label %.thread76, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv
  %i.ag = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !31
  store <2 x ptr> %i.ag, ptr %i.af, align 8, !tbaa !31
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next.1
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.aj = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !31
  store <2 x ptr> %i.aj, ptr %i.ai, align 8, !tbaa !31
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next.2
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next.1
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !31
  store <2 x ptr> %i.am, ptr %i.al, align 8, !tbaa !31
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next.3
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next.2
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !tbaa !31
  store <2 x ptr> %i.ap, ptr %i.ao, align 8, !tbaa !31
  %i.aq = trunc nuw i64 %indvars.iv.next.3 to i32
  %i.ar = icmp sgt i32 %i.t, %i.aq
  br i1 %i.ar, label %.lr.ph.new, label %.thread76, !llvm.loop !220

.thread76:                                        ; preds = %.lr.ph.new, %.prol.loopexit
  store i32 %i.t, ptr %i.b, align 8, !tbaa !66
  br label %.lr.ph42

bb.m:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.at = load i32, ptr %i.as, align 8, !tbaa !85
  %i.au = and i32 %i.at, 16
  %.not36 = icmp eq i32 %i.au, 0
  br i1 %.not36, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.av = icmp samesign ugt i32 %i.c, 1
  br i1 %i.av, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !97
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !67
  %.not37 = icmp eq ptr %i.ax, %i.az
  br i1 %.not37, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.n, %bb.o
  %i.ba = load ptr, ptr %0, align 8, !tbaa !68
  %i.bb = zext nneg i32 %1 to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.bb
  store ptr %2, ptr %i.bc, align 8, !tbaa !70
  br label %.lr.ph42

bb.p:                                             ; preds = %onig_region_free.exit
  store i32 %i.t, ptr %i.b, align 8, !tbaa !66
  %i.bd = icmp sgt i32 %i.s, 1
  br i1 %i.bd, label %.lr.ph42, label %.loopexit

.lr.ph42:                                         ; preds = %.thread76, %.thread, %bb.p
  %i.be = phi i32 [ %i.c, %.thread ], [ %i.t, %bb.p ], [ %i.t, %.thread76 ] ; 2 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !68    ; 2 uses
  %i.bg = icmp eq i32 %i.be, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %i.bg, label %.lr.ph42.split.us, label %.lr.ph42.split

.lr.ph42.split.us:                                ; preds = %.lr.ph42
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !70 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !133
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %..loopexit_crit_edge.split.us, label %bb.q

bb.q:                                             ; preds = %.lr.ph42.split.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 440
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !134
  %i.bt = icmp ne i32 %i.bs, -1
  %i.bu = zext i1 %i.bt to i32
  br label %..loopexit_crit_edge.split.us

..loopexit_crit_edge.split.us:                    ; preds = %bb.q, %.lr.ph42.split.us
  %not..i.us = phi i32 [ 0, %.lr.ph42.split.us ], [ %i.bu, %bb.q ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !97
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 144 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 152
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !139
  store ptr %i.bw, ptr %i.bl, align 8, !tbaa !67
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !35
  %i.cb = load i32, ptr %i.bx, align 8, !tbaa !136
  %i.cc = lshr i32 %i.cb, 14
  %.lobit.i.us.le = and i32 %i.cc, 1
  store <2 x i32> %i.ca, ptr %i.bh, align 8, !tbaa !35
  store i32 %i.bz, ptr %i.bj, align 8, !tbaa !82
  store i32 %not..i.us, ptr %i.bk, align 4, !tbaa !135
  store i32 %.lobit.i.us.le, ptr %i.bm, align 8, !tbaa !137
  br label %.loopexit

.lr.ph42.split:                                   ; preds = %.lr.ph42
  %.promoted = load i32, ptr %i.bh, align 8, !tbaa !80
  %wide.trip.count = zext nneg i32 %i.be to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph42.split, %update_regset_by_reg.exit
  %indvars.iv60 = phi i64 [ 0, %.lr.ph42.split ], [ %indvars.iv.next61, %update_regset_by_reg.exit ] ; 2 uses
  %i.cd = phi i32 [ %.promoted, %.lr.ph42.split ], [ %i.ci, %update_regset_by_reg.exit ]
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv60
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !70 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 144
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !136 ; 2 uses
  %i.ci = and i32 %i.ch, %i.cd                    ; 3 uses
  %.not.i38 = icmp eq i32 %i.ci, 0
  br i1 %.not.i38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = load i32, ptr %i.bi, align 4, !tbaa !81
  %i.ck = load i32, ptr %i.bj, align 8, !tbaa !82
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 148
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !138
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.cj, i32 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !139
  %.0.i = tail call i32 @llvm.umax.i32(i32 %i.ck, i32 %i.co)
  store i32 %spec.select.i, ptr %i.bi, align 4, !tbaa !81
  store i32 %.0.i, ptr %i.bj, align 8, !tbaa !82
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 136
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !133
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 440
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !134
  %i.cu = icmp eq i32 %i.ct, -1
  br i1 %i.cu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  store i32 0, ptr %i.bk, align 4, !tbaa !135
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cv = and i32 %i.ch, 16384
  %.not40.i = icmp eq i32 %i.cv, 0
  br i1 %.not40.i, label %update_regset_by_reg.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.w
  store i32 1, ptr %i.bm, align 8, !tbaa !137
  br label %update_regset_by_reg.exit

update_regset_by_reg.exit:                        ; preds = %bb.w, %.sink.split.i
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.split, label %bb.r, !llvm.loop !221

..loopexit_crit_edge.split:                       ; preds = %update_regset_by_reg.exit
  store i32 %i.ci, ptr %i.bh, align 8, !tbaa !80
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

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71   ; 7 uses
  tail call void @onig_free(ptr noundef %i.f) #30
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = load i32, ptr %i.h, align 8, !tbaa !37
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %.not11.i = icmp eq ptr %i.l, null
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.l) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %.not12.i = icmp eq ptr %i.n, null
  br i1 %.not12.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.n) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 0, ptr %i.h, align 8, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %onig_region_free.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @history_tree_free(ptr noundef %i.p)
  br label %onig_region_free.exit

onig_region_free.exit:                            ; preds = %bb.h, %bb.i
  tail call void @free(ptr noundef nonnull %i.h) #30
  br label %bb.j

bb.j:                                             ; preds = %onig_region_free.exit, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr %i.a, align 8, !tbaa !66
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !222

._crit_edge:                                      ; preds = %bb.j, %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !68
  tail call void @free(ptr noundef %i.u) #30
  tail call void @free(ptr noundef nonnull %0) #30
  ret void
}

declare void @onig_free(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @onig_regset_number_of_regex(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @onig_regset_get_regex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !66
  %.not = icmp slt i32 %1, %i.c
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !68
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @onig_regset_get_region(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b
end_hunk_0
