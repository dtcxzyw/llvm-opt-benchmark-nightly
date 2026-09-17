Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/reg?download=true
inline.NumInlined: 418
inline.NumDeleted: 139
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@regdom_intersect:bb.a
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91
  br i1 %exitcond92.not, label %._crit_edge74, label %.lr.ph.us, !llvm.loop !235

._crit_edge74:                                    ; preds = %._crit_edge.us
  %.not = icmp eq i32 %spec.select.us, 0
  br i1 %.not, label %._crit_edge74.thread, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %._crit_edge74
  %i.n = zext i32 %spec.select.us to i64
  %i.o = mul nuw nsw i64 %i.n, 96
  %i.p = add nuw nsw i64 %i.o, 32
  %i.q = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 412316860353) %i.p, i32 noundef range(i32 256, 0) 3520) #25 ; 7 uses
  %.not62 = icmp eq ptr %i.q, null
  br i1 %.not62, label %._crit_edge74.thread, label %.preheader

.preheader:                                       ; preds = %_kzalloc_noprof.exit
  %i.r = load i32, ptr %i.d, align 8              ; 2 uses
  %.not82 = icmp eq i32 %i.r, 0
  br i1 %.not82, label %._crit_edge79.split, label %.lr.ph78

.lr.ph78:                                         ; preds = %.preheader
  %i.s = getelementptr i8, ptr %0, i64 28
  %i.t = getelementptr i8, ptr %1, i64 16
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %.not83 = icmp eq i32 %i.u, 0
  %i.v = getelementptr i8, ptr %1, i64 28
  %i.w = getelementptr i8, ptr %i.q, i64 28       ; 2 uses
  %i.x = getelementptr i8, ptr %i.q, i64 16       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  br i1 %.not83, label %._crit_edge79.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph78
  %wide.trip.count101 = zext i32 %i.r to i64
  %wide.trip.count96 = zext i32 %i.u to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv98 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next99, %._crit_edge ] ; 2 uses
  %i.ad = getelementptr [96 x i8], ptr %i.s, i64 %indvars.iv98
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %add_rule.exit
  %indvars.iv93 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next94, %add_rule.exit ] ; 2 uses
  %i.ae = getelementptr [96 x i8], ptr %i.v, i64 %indvars.iv93
  %i.af = call fastcc i32 @reg_rules_intersect(ptr noundef %0, ptr noundef %1, ptr noundef %i.ad, ptr noundef %i.ae, ptr noundef nonnull %2) #21, !srcloc !240
  %.not63 = icmp eq i32 %i.af, 0
  br i1 %.not63, label %bb.d, label %add_rule.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %i.x, align 8             ; 4 uses
  %.not27.i = icmp eq i32 %i.ag, 0
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ah = load i32, ptr %i.y, align 4
  %i.ai = load i32, ptr %i.z, align 4             ; 2 uses
  %i.aj = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ak = load i32, ptr %2, align 4               ; 2 uses
  %i.al = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.am = load i32, ptr %i.ac, align 4            ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %rule_contains.exit17.thread.i, %.lr.ph.i
  %.026.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bp, %rule_contains.exit17.thread.i ] ; 2 uses
  %i.an = sext i32 %.026.i to i64
  %i.ao = getelementptr [96 x i8], ptr %i.w, i64 %i.an ; 11 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 84
  %i.aq = load i32, ptr %i.ap, align 8
  %.not.i.i = icmp eq i32 %i.aq, %i.ah
  br i1 %.not.i.i, label %bb.f, label %rule_contains.exit17.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr i8, ptr %i.ao, i64 12
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp ugt i32 %i.as, %i.ai
  br i1 %i.at, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr i8, ptr %i.ao, i64 16
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = icmp ugt i32 %i.av, %i.aj
  br i1 %i.aw, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.ao, align 4
  %i.ay = icmp ugt i32 %i.ax, %i.ak
  br i1 %i.ay, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr i8, ptr %i.ao, i64 4
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = icmp ult i32 %i.ba, %i.al
  br i1 %i.bb, label %.thread.i, label %rule_contains.exit.i

rule_contains.exit.i:                             ; preds = %bb.i
  %i.bc = getelementptr i8, ptr %i.ao, i64 8
  %i.bd = load i32, ptr %i.bc, align 4
  %.not.i = icmp ult i32 %i.bd, %i.am
  br i1 %.not.i, label %.thread.i, label %add_rule.exit

.thread.i:                                        ; preds = %rule_contains.exit.i, %bb.i, %bb.h, %bb.g, %bb.f
  %i.be = icmp ugt i32 %i.ai, %i.as
  br i1 %i.be, label %rule_contains.exit17.thread.i, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.bf = getelementptr i8, ptr %i.ao, i64 16
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = icmp ugt i32 %i.aj, %i.bg
  br i1 %i.bh, label %rule_contains.exit17.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load i32, ptr %i.ao, align 4
  %i.bj = icmp ugt i32 %i.ak, %i.bi
  br i1 %i.bj, label %rule_contains.exit17.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr i8, ptr %i.ao, i64 4
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = icmp ult i32 %i.al, %i.bl
  br i1 %i.bm, label %rule_contains.exit17.thread.i, label %rule_contains.exit17.i

rule_contains.exit17.i:                           ; preds = %bb.l
  %i.bn = getelementptr i8, ptr %i.ao, i64 8
  %i.bo = load i32, ptr %i.bn, align 4
  %.not21.i = icmp ult i32 %i.am, %i.bo
  br i1 %.not21.i, label %rule_contains.exit17.thread.i, label %bb.m

bb.m:                                             ; preds = %rule_contains.exit17.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(96) %i.ao, ptr noundef nonnull readonly align 4 dereferenceable(96) %2, i64 96, i1 false)
  br label %add_rule.exit

rule_contains.exit17.thread.i:                    ; preds = %rule_contains.exit17.i, %bb.l, %bb.k, %bb.j, %.thread.i, %bb.e
  %i.bp = add nuw i32 %.026.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bp, %i.ag
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !236

._crit_edge.i:                                    ; preds = %rule_contains.exit17.thread.i, %bb.d
  %i.bq = zext i32 %i.ag to i64
  %i.br = getelementptr [96 x i8], ptr %i.w, i64 %i.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(96) %i.br, ptr noundef nonnull readonly align 4 dereferenceable(96) %2, i64 96, i1 false)
  %i.bs = add i32 %i.ag, 1
  store i32 %i.bs, ptr %i.x, align 8
  br label %add_rule.exit

add_rule.exit:                                    ; preds = %rule_contains.exit.i, %._crit_edge.i, %bb.m, %bb.c
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %._crit_edge, label %bb.c, !llvm.loop !237

._crit_edge:                                      ; preds = %add_rule.exit
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %._crit_edge79.split, label %.lr.ph, !llvm.loop !238

._crit_edge79.split:                              ; preds = %._crit_edge, %.lr.ph78, %.preheader
  %i.bt = getelementptr i8, ptr %i.q, i64 20
  store i8 57, ptr %i.bt, align 4
  %i.bu = getelementptr i8, ptr %i.q, i64 21
  store i8 56, ptr %i.bu, align 1
  %i.bv = getelementptr i8, ptr %0, i64 24
  %i.bw = load i32, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr i8, ptr %1, i64 24
  %i.by = load i32, ptr %i.bx, align 8
  %.not.i65 = icmp eq i32 %i.bw, %i.by
  %..i = select i1 %.not.i65, i32 %i.bw, i32 0
  %i.bz = getelementptr i8, ptr %i.q, i64 24
  store i32 %..i, ptr %i.bz, align 8
  br label %._crit_edge74.thread

._crit_edge74.thread:                             ; preds = %.lr.ph73, %.preheader66, %_kzalloc_noprof.exit, %._crit_edge74, %bb.a, %._crit_edge79.split
  %.0 = phi ptr [ %i.q, %._crit_edge79.split ], [ null, %._crit_edge74 ], [ null, %bb.a ], [ null, %_kzalloc_noprof.exit ], [ null, %.preheader66 ], [ null, %.lr.ph73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @print_rd_rules(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !annotation !24
  %i.e = getelementptr i8, ptr %0, i64 28         ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.f = phi i32 [ %i.d, %.lr.ph ], [ %i.aw, %bb.k ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 96
  %i.g = getelementptr i8, ptr %i.e, i64 %.idx    ; 7 uses
  %i.h = getelementptr i8, ptr %i.g, i64 84       ; 2 uses
  %i.i = load i32, ptr %i.h, align 4              ; 5 uses
  %i.j = and i32 %i.i, 2048
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i32 %i.f to i64
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.k) ; 2 uses
  %i.l = add nuw nsw i64 %umin, 1                 ; 2 uses
  %xtraiter = and i64 %i.l, 7                     ; 3 uses
  %i.m = icmp samesign ult i64 %umin, 7
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %i.l, 8589934584
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.7, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.7, %bb.d ]
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %bb.d, !llvm.loop !0

.unr-lcssa:                                       ; preds = %bb.d
  %indvars.iv.next.i.i.6 = or disjoint i64 %indvars.iv.i.i, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.c
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.i.7, %.unr-lcssa ]
  %lcmp.mod44 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod44)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %bb.e ], [ %indvars.iv.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.e ], [ 0, %.epil.preheader ]
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.e, !llvm.loop !241

.epilog-lcssa:                                    ; preds = %bb.e, %.unr-lcssa
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.6, %.unr-lcssa ], [ %indvars.iv.i.i.epil, %bb.e ] ; 5 uses
  %1 = getelementptr i8, ptr %i.g, i64 8
  %2 = load i32, ptr %1, align 4
  %i.n = trunc nuw i64 %indvars.iv.i.i.lcssa to i32
  %i.o = icmp eq i32 %i.f, %i.n
  br i1 %i.o, label %reg_get_max_bandwidth.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.epilog-lcssa
  %.not.i.i26 = icmp eq i64 %indvars.iv.i.i.lcssa, 0
  %.pre.i.i27 = load i32, ptr %i.g, align 4       ; 2 uses
  br i1 %.not.i.i26, label %.preheader.i.i._crit_edge, label %.lr.ph30

.preheader.i.i:                                   ; preds = %.lr.ph30
  %.not.i.i = icmp eq i64 %i.p, 0
  %.pre.i.i = load i32, ptr %i.q, align 4         ; 2 uses
  br i1 %.not.i.i, label %.preheader.i.i._crit_edge, label %.lr.ph30, !llvm.loop !1

.lr.ph30:                                         ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.pre.i.i29 = phi i32 [ %.pre.i.i, %.preheader.i.i ], [ %.pre.i.i27, %.preheader.i.i.preheader ] ; 2 uses
  %indvars.iv40.i.i28 = phi i64 [ %i.p, %.preheader.i.i ], [ %indvars.iv.i.i.lcssa, %.preheader.i.i.preheader ]
  %i.p = add nsw i64 %indvars.iv40.i.i28, -1      ; 3 uses
  %i.q = getelementptr [96 x i8], ptr %i.e, i64 %i.p ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp ult i32 %i.s, %.pre.i.i29
  br i1 %i.t, label %._crit_edge31, label %.preheader.i.i, !llvm.loop !1

._crit_edge31:                                    ; preds = %.lr.ph30
  br label %.preheader.i.i._crit_edge, !llvm.loop !1

.preheader.i.i._crit_edge:                        ; preds = %.preheader.i.i, %._crit_edge31, %.preheader.i.i.preheader
  %.pre.i.i.lcssa = phi i32 [ %.pre.i.i29, %._crit_edge31 ], [ %.pre.i.i27, %.preheader.i.i.preheader ], [ %.pre.i.i, %.preheader.i.i ]
  %i.u = add i32 %i.f, -1
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp samesign ult i64 %indvars.iv.i.i.lcssa, %i.v
  br i1 %i.w, label %.lr.ph36, label %._crit_edge.i.i

bb.f:                                             ; preds = %.lr.ph36
  %i.x = icmp samesign ult i64 %indvars.iv.next45.i.i, %i.v
  br i1 %i.x, label %.lr.ph36, label %._crit_edge.i.i, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %bb.f, %.preheader.i.i._crit_edge
  %.133.i.i.lcssa = phi ptr [ %i.g, %.preheader.i.i._crit_edge ], [ %i.y, %bb.f ]
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.133.i.i.lcssa, i64 4
  %.pre47.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  br label %split.i.i

.lr.ph36:                                         ; preds = %.preheader.i.i._crit_edge, %bb.f
  %.133.i.i34 = phi ptr [ %i.y, %bb.f ], [ %i.g, %.preheader.i.i._crit_edge ]
  %indvars.iv44.i.i33 = phi i64 [ %indvars.iv.next45.i.i, %bb.f ], [ %indvars.iv.i.i.lcssa, %.preheader.i.i._crit_edge ]
  %indvars.iv.next45.i.i = add nuw nsw i64 %indvars.iv44.i.i33, 1 ; 3 uses
  %i.y = getelementptr [96 x i8], ptr %i.e, i64 %indvars.iv.next45.i.i ; 3 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr i8, ptr %.133.i.i34, i64 4
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = icmp ugt i32 %i.z, %i.ab
  br i1 %i.ac, label %split.i.i, label %bb.f, !llvm.loop !2

split.i.i:                                        ; preds = %.lr.ph36, %._crit_edge.i.i
  %i.ad = phi i32 [ %.pre47.i.i, %._crit_edge.i.i ], [ %i.ab, %.lr.ph36 ]
  %i.ae = sub i32 %i.ad, %.pre.i.i.lcssa
  br label %reg_get_max_bandwidth.exit

reg_get_max_bandwidth.exit:                       ; preds = %.epilog-lcssa, %split.i.i
  %.034.i.i = phi i32 [ %i.ae, %split.i.i ], [ 0, %.epilog-lcssa ] ; 2 uses
  %i.af = and i32 %i.i, 262144
  %.not.i = icmp eq i32 %i.af, 0
  %i.ag = call i32 @llvm.umin.i32(i32 %.034.i.i, i32 160000)
  %.0.i = select i1 %.not.i, i32 %.034.i.i, i32 %i.ag ; 2 uses
  %i.ah = and i32 %i.i, 65536
  %.not31.i = icmp eq i32 %i.ah, 0
  %i.ai = call i32 @llvm.umin.i32(i32 %.0.i, i32 80000)
  %.1.i = select i1 %.not31.i, i32 %.0.i, i32 %i.ai ; 2 uses
  %i.aj = and i32 %i.i, 32768
  %.not32.i = icmp eq i32 %i.aj, 0
  %i.ak = call i32 @llvm.umin.i32(i32 %.1.i, i32 40000)
  %.2.i = select i1 %.not32.i, i32 %.1.i, i32 %i.ak ; 2 uses
  %i.al = and i32 %i.i, 24576
  %or.cond.not.i = icmp eq i32 %i.al, 24576
  %i.am = call i32 @llvm.umin.i32(i32 %.2.i, i32 20000)
  %.3.i = select i1 %or.cond.not.i, i32 %i.am, i32 %.2.i
  %i.an = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.28, i32 noundef %2, i32 noundef %.3.i) #20 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %3 = getelementptr i8, ptr %i.g, i64 8
  %4 = load i32, ptr %3, align 4
  %i.ao = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.29, i32 noundef %4) #20 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %reg_get_max_bandwidth.exit
  %i.ap = load i32, ptr %i.h, align 4
  %i.aq = and i32 %i.ap, 16
  %.not14 = icmp eq i32 %i.aq, 0
  br i1 %.not14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr i8, ptr %i.g, i64 88
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = udiv i32 %i.as, 1000
  %i.au = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %i.at) #20 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.av = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull @.str.31) #20 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i32, ptr %i.c, align 8             ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = icmp samesign ult i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %bb.b, label %._crit_edge, !llvm.loop !242

._crit_edge:                                      ; preds = %bb.k, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 -22, 1) i32 @reg_rules_intersect(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef captures(none) initializes((0, 8)) %4) unnamed_addr #18 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 12
  %i.b = getelementptr i8, ptr %3, i64 12
  %i.c = getelementptr i8, ptr %4, i64 12
  %i.d = getelementptr i8, ptr %2, i64 20         ; 2 uses
  %i.e = getelementptr i8, ptr %3, i64 20         ; 2 uses
  %i.f = getelementptr i8, ptr %4, i64 20         ; 3 uses
  %i.g = load i32, ptr %2, align 4
  %i.h = load i32, ptr %3, align 4
  %i.i = tail call i32 @llvm.umax.i32(i32 %i.g, i32 %i.h) ; 4 uses
  store i32 %i.i, ptr %4, align 4
  %i.j = getelementptr i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr i8, ptr %3, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.m) ; 3 uses
  %i.o = getelementptr i8, ptr %4, i64 4
  store i32 %i.n, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr i8, ptr %3, i64 8
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr i8, ptr %2, i64 84         ; 3 uses
  %i.u = load i32, ptr %i.t, align 4              ; 5 uses
  %i.v = and i32 %i.u, 2048
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 28         ; 3 uses
  %i.z = zext i32 %i.x to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.c ], [ 0, %bb.b ] ; 8 uses
  %i.aa = icmp samesign uge i64 %indvars.iv.i.i, %i.z
  %i.ab = getelementptr [96 x i8], ptr %i.y, i64 %indvars.iv.i.i
  %i.ac = icmp eq ptr %2, %i.ab
  %or.cond.i.i = or i1 %i.aa, %i.ac
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %or.cond.i.i, label %bb.d, label %bb.c, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  %i.ad = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ae = icmp eq i32 %i.x, %i.ad
  br i1 %i.ae, label %reg_get_max_bandwidth.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.d
  %.not.i.i160 = icmp eq i64 %indvars.iv.i.i, 0
  %.pre.i.i161 = load i32, ptr %2, align 4        ; 2 uses
  br i1 %.not.i.i160, label %.preheader.i.i._crit_edge, label %.lr.ph

.preheader.i.i:                                   ; preds = %.lr.ph
  %.not.i.i = icmp eq i64 %i.af, 0
  %.pre.i.i = load i32, ptr %i.ag, align 4        ; 2 uses
  br i1 %.not.i.i, label %.preheader.i.i._crit_edge, label %.lr.ph, !llvm.loop !1

.lr.ph:                                           ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.pre.i.i163 = phi i32 [ %.pre.i.i, %.preheader.i.i ], [ %.pre.i.i161, %.preheader.i.i.preheader ] ; 2 uses
  %indvars.iv40.i.i162 = phi i64 [ %i.af, %.preheader.i.i ], [ %indvars.iv.i.i, %.preheader.i.i.preheader ]
  %i.af = add nsw i64 %indvars.iv40.i.i162, -1    ; 3 uses
  %i.ag = getelementptr [96 x i8], ptr %i.y, i64 %i.af ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp ult i32 %i.ai, %.pre.i.i163
  br i1 %i.aj, label %._crit_edge, label %.preheader.i.i, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph
  br label %.preheader.i.i._crit_edge, !llvm.loop !1

.preheader.i.i._crit_edge:                        ; preds = %.preheader.i.i, %._crit_edge, %.preheader.i.i.preheader
  %.pre.i.i.lcssa = phi i32 [ %.pre.i.i163, %._crit_edge ], [ %.pre.i.i161, %.preheader.i.i.preheader ], [ %.pre.i.i, %.preheader.i.i ]
  %i.ak = add i32 %i.x, -1
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = icmp samesign ult i64 %indvars.iv.i.i, %i.al
  br i1 %i.am, label %.lr.ph168, label %._crit_edge.i.i

bb.e:                                             ; preds = %.lr.ph168
  %i.an = icmp samesign ult i64 %indvars.iv.next45.i.i, %i.al
  br i1 %i.an, label %.lr.ph168, label %._crit_edge.i.i, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %bb.e, %.preheader.i.i._crit_edge
  %.133.i.i.lcssa = phi ptr [ %2, %.preheader.i.i._crit_edge ], [ %i.ao, %bb.e ]
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.133.i.i.lcssa, i64 4
  %.pre47.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  br label %split.i.i

.lr.ph168:                                        ; preds = %.preheader.i.i._crit_edge, %bb.e
  %.133.i.i166 = phi ptr [ %i.ao, %bb.e ], [ %2, %.preheader.i.i._crit_edge ]
  %indvars.iv44.i.i165 = phi i64 [ %indvars.iv.next45.i.i, %bb.e ], [ %indvars.iv.i.i, %.preheader.i.i._crit_edge ]
  %indvars.iv.next45.i.i = add nuw nsw i64 %indvars.iv44.i.i165, 1 ; 3 uses
  %i.ao = getelementptr [96 x i8], ptr %i.y, i64 %indvars.iv.next45.i.i ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr i8, ptr %.133.i.i166, i64 4
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = icmp ugt i32 %i.ap, %i.ar
  br i1 %i.as, label %split.i.i, label %bb.e, !llvm.loop !2

split.i.i:                                        ; preds = %.lr.ph168, %._crit_edge.i.i
  %i.at = phi i32 [ %.pre47.i.i, %._crit_edge.i.i ], [ %i.ar, %.lr.ph168 ]
  %i.au = sub i32 %i.at, %.pre.i.i.lcssa
  br label %reg_get_max_bandwidth.exit

reg_get_max_bandwidth.exit:                       ; preds = %bb.d, %split.i.i
  %.034.i.i = phi i32 [ %i.au, %split.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.av = and i32 %i.u, 262144
  %.not.i = icmp eq i32 %i.av, 0
  %i.aw = tail call i32 @llvm.umin.i32(i32 %.034.i.i, i32 160000)
  %.0.i = select i1 %.not.i, i32 %.034.i.i, i32 %i.aw ; 2 uses
  %i.ax = and i32 %i.u, 65536
  %.not31.i = icmp eq i32 %i.ax, 0
  %i.ay = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 80000)
  %.1.i = select i1 %.not31.i, i32 %.0.i, i32 %i.ay ; 2 uses
  %i.az = and i32 %i.u, 32768
  %.not32.i = icmp eq i32 %i.az, 0
  %i.ba = tail call i32 @llvm.umin.i32(i32 %.1.i, i32 40000)
  %.2.i = select i1 %.not32.i, i32 %.1.i, i32 %i.ba ; 2 uses
  %i.bb = and i32 %i.u, 24576
  %or.cond.not.i = icmp eq i32 %i.bb, 24576
  %i.bc = tail call i32 @llvm.umin.i32(i32 %.2.i, i32 20000)
  %.3.i = select i1 %or.cond.not.i, i32 %i.bc, i32 %.2.i
  br label %bb.f

bb.f:                                             ; preds = %reg_get_max_bandwidth.exit, %bb.a
  %.0106 = phi i32 [ %.3.i, %reg_get_max_bandwidth.exit ], [ %i.q, %bb.a ]
  %i.bd = getelementptr i8, ptr %3, i64 84        ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4            ; 5 uses
  %i.bf = and i32 %i.be, 2048
  %.not109 = icmp eq i32 %i.bf, 0
  br i1 %.not109, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8            ; 3 uses
  %i.bi = getelementptr i8, ptr %1, i64 28        ; 3 uses
  %i.bj = zext i32 %i.bh to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.i.i112 = phi i64 [ %indvars.iv.next.i.i114, %bb.h ], [ 0, %bb.g ] ; 8 uses
  %i.bk = icmp samesign uge i64 %indvars.iv.i.i112, %i.bj
  %i.bl = getelementptr [96 x i8], ptr %i.bi, i64 %indvars.iv.i.i112
  %i.bm = icmp eq ptr %3, %i.bl
  %or.cond.i.i113 = or i1 %i.bk, %i.bm
  %indvars.iv.next.i.i114 = add nuw nsw i64 %indvars.iv.i.i112, 1
  br i1 %or.cond.i.i113, label %bb.i, label %bb.h, !llvm.loop !0

bb.i:                                             ; preds = %bb.h
  %i.bn = trunc nuw i64 %indvars.iv.i.i112 to i32
  %i.bo = icmp eq i32 %i.bh, %i.bn
  br i1 %i.bo, label %reg_get_max_bandwidth.exit136, label %.preheader.i.i115.preheader

.preheader.i.i115.preheader:                      ; preds = %bb.i
  %.not.i.i118170 = icmp eq i64 %indvars.iv.i.i112, 0
  %.pre.i.i119171 = load i32, ptr %3, align 4     ; 2 uses
  br i1 %.not.i.i118170, label %.preheader.i.i115._crit_edge, label %.lr.ph174

.preheader.i.i115:                                ; preds = %.lr.ph174
  %.not.i.i118 = icmp eq i64 %i.bp, 0
  %.pre.i.i119 = load i32, ptr %i.bq, align 4     ; 2 uses
  br i1 %.not.i.i118, label %.preheader.i.i115._crit_edge, label %.lr.ph174, !llvm.loop !1
end_hunk_0
