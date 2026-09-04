Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/xtc3?download=true
inline.NumInlined: 116
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@buffer_large:bb.a
  %i.ar = shl nuw nsw i32 %i.aq, 1
  %i.as = add nuw nsw i32 %i.ar, 2
  br label %positive_int.exit83

positive_int.exit83:                              ; preds = %bb.h, %bb.i, %bb.j
  %.0.i82 = phi i32 [ %i.ao, %bb.h ], [ %i.as, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.at = getelementptr i8, ptr %i.h, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !10
  %i.av = sub nsw i32 %i.s, %i.au                 ; 4 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %positive_int.exit83
  %i.ax = shl nuw i32 %i.av, 1
  %i.ay = add i32 %i.ax, -1
  br label %positive_int.exit85

bb.l:                                             ; preds = %positive_int.exit83
  %i.az = icmp slt i32 %i.av, 0
  br i1 %i.az, label %bb.m, label %positive_int.exit85

bb.m:                                             ; preds = %bb.l
  %i.ba = xor i32 %i.av, -1
  %i.bb = shl nuw nsw i32 %i.ba, 1
  %i.bc = add nuw nsw i32 %i.bb, 2
  br label %positive_int.exit85

positive_int.exit85:                              ; preds = %bb.k, %bb.l, %bb.m
  %.0.i84 = phi i32 [ %i.ay, %bb.k ], [ %i.bc, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %spec.select.i86 = tail call i32 @llvm.umax.i32(i32 %.0.i82, i32 %.0.i)
  %.1.i87 = tail call i32 @llvm.umax.i32(i32 %.0.i84, i32 %spec.select.i86)
  %i.bd = uitofp i32 %.1.i87 to double            ; 2 uses
  %i.be = fmul nnan double %i.bd, 1.500000e+00
  %i.bf = fcmp olt double %i.be, %i.w             ; 2 uses
  %spec.select = select i1 %i.bf, double %i.bd, double %i.w
  %spec.select80 = zext i1 %i.bf to i32
  br label %bb.n

bb.n:                                             ; preds = %positive_int.exit85, %bb.c
  %.sroa.0101.0 = phi i32 [ %.0.i, %positive_int.exit85 ], [ 0, %bb.c ]
  %.sroa.6103.0 = phi i32 [ %.0.i82, %positive_int.exit85 ], [ 0, %bb.c ]
  %.sroa.9105.0 = phi i32 [ %.0.i84, %positive_int.exit85 ], [ 0, %bb.c ]
  %.177 = phi double [ %spec.select, %positive_int.exit85 ], [ %i.w, %bb.c ]
  %.1 = phi i32 [ %spec.select80, %positive_int.exit85 ], [ 0, %bb.c ] ; 2 uses
  %i.bg = icmp sgt i32 %i.b, 0
  br i1 %i.bg, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n
  %.pre = load i32, ptr %i.d, align 8, !tbaa !14
  br label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.bh = sub nsw i32 %2, %i.a
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bi ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !10
  %i.bl = sub nsw i32 %i.i, %i.bk                 ; 4 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bn = shl nuw i32 %i.bl, 1
  %i.bo = add i32 %i.bn, -1
  br label %positive_int.exit89

bb.q:                                             ; preds = %bb.o
  %i.bp = icmp slt i32 %i.bl, 0
  br i1 %i.bp, label %bb.r, label %positive_int.exit89

bb.r:                                             ; preds = %bb.q
  %i.bq = xor i32 %i.bl, -1
  %i.br = shl nuw nsw i32 %i.bq, 1
  %i.bs = add nuw nsw i32 %i.br, 2
  br label %positive_int.exit89

positive_int.exit89:                              ; preds = %bb.p, %bb.q, %bb.r
  %.0.i88 = phi i32 [ %i.bo, %bb.p ], [ %i.bs, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bj, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !10
  %i.bv = sub nsw i32 %i.n, %i.bu                 ; 4 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %positive_int.exit89
  %i.bx = shl nuw i32 %i.bv, 1
  %i.by = add i32 %i.bx, -1
  br label %positive_int.exit91

bb.t:                                             ; preds = %positive_int.exit89
  %i.bz = icmp slt i32 %i.bv, 0
  br i1 %i.bz, label %bb.u, label %positive_int.exit91

bb.u:                                             ; preds = %bb.t
  %i.ca = xor i32 %i.bv, -1
  %i.cb = shl nuw nsw i32 %i.ca, 1
  %i.cc = add nuw nsw i32 %i.cb, 2
  br label %positive_int.exit91

positive_int.exit91:                              ; preds = %bb.s, %bb.t, %bb.u
  %.0.i90 = phi i32 [ %i.by, %bb.s ], [ %i.cc, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bj, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !10
  %i.cf = sub nsw i32 %i.s, %i.ce                 ; 4 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %positive_int.exit91
  %i.ch = shl nuw i32 %i.cf, 1
  %i.ci = add i32 %i.ch, -1
  br label %positive_int.exit93

bb.w:                                             ; preds = %positive_int.exit91
  %i.cj = icmp slt i32 %i.cf, 0
  br i1 %i.cj, label %bb.x, label %positive_int.exit93

bb.x:                                             ; preds = %bb.w
  %i.ck = xor i32 %i.cf, -1
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = add nuw nsw i32 %i.cl, 2
  br label %positive_int.exit93

positive_int.exit93:                              ; preds = %bb.v, %bb.w, %bb.x
  %.0.i92 = phi i32 [ %i.ci, %bb.v ], [ %i.cm, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %spec.select.i94 = tail call i32 @llvm.umax.i32(i32 %.0.i90, i32 %.0.i88)
  %.1.i95 = tail call i32 @llvm.umax.i32(i32 %.0.i92, i32 %spec.select.i94)
  %i.cn = uitofp i32 %.1.i95 to double
  %i.co = fmul nnan double %i.cn, 1.500000e+00
  %i.cp = fcmp olt double %i.co, %.177
  %.pre120 = load i32, ptr %i.d, align 8, !tbaa !14 ; 2 uses
  br i1 %i.cp, label %.thread, label %bb.y

.thread:                                          ; preds = %positive_int.exit93
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 12412
  %i.cr = sext i32 %.pre120 to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cr
  store i32 2, ptr %i.cs, align 4, !tbaa !10
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.cu = load i32, ptr %i.d, align 8, !tbaa !14
  %i.cv = mul nsw i32 %i.cu, 3
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cw ; 3 uses
  store i32 %.0.i88, ptr %i.cx, align 4, !tbaa !10
  %i.cy = getelementptr i8, ptr %i.cx, i64 4
  store i32 %.0.i90, ptr %i.cy, align 4, !tbaa !10
  %i.cz = getelementptr i8, ptr %i.cx, i64 8
  store i32 %.0.i92, ptr %i.cz, align 4, !tbaa !10
  br label %bb.ab

bb.y:                                             ; preds = %._crit_edge, %positive_int.exit93
  %i.da = phi i32 [ %.pre, %._crit_edge ], [ %.pre120, %positive_int.exit93 ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 12412
  %i.dc = sext i32 %i.da to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dc
  store i32 %.1, ptr %i.dd, align 4, !tbaa !10
  %i.de = icmp eq i32 %.1, 0
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.dg = load i32, ptr %i.d, align 8, !tbaa !14
  %i.dh = mul nsw i32 %i.dg, 3
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.di ; 4 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 4      ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dj, i64 8      ; 2 uses
  br i1 %i.de, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.l, ptr %i.dj, align 4, !tbaa !10
  store i32 %i.q, ptr %i.dk, align 4, !tbaa !10
  store i32 %i.v, ptr %i.dl, align 4, !tbaa !10
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i32 %.sroa.0101.0, ptr %i.dj, align 4, !tbaa !10
  store i32 %.sroa.6103.0, ptr %i.dk, align 4, !tbaa !10
  store i32 %.sroa.9105.0, ptr %i.dl, align 4, !tbaa !10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread, %bb.z
  %i.dm = load i32, ptr %i.d, align 8, !tbaa !14
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.d, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_large(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph86, label %._crit_edge

.lr.ph86:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12412 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16508 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph86, %.loopexit75
  %.06185 = phi i32 [ 0, %.lr.ph86 ], [ %.lcssa, %.loopexit75 ] ; 6 uses
  %i.i = zext i32 %.06185 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10   ; 4 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !15
  %.not.i = icmp eq i32 %i.k, %i.l
  br i1 %.not.i, label %large_instruction_change.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.k, ptr %i.c, align 4, !tbaa !15
  %switch.selectcmp.i = icmp eq i32 %i.k, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 7, i32 8
  %switch.selectcmp12.i = icmp eq i32 %i.k, 0
  %switch.select13.i = select i1 %switch.selectcmp12.i, i32 6, i32 %switch.select.i
  %i.m = load i32, ptr %i.d, align 4, !tbaa !10   ; 2 uses
  %i.n = add nsw i32 %i.m, 1                      ; 4 uses
  store i32 %i.n, ptr %i.d, align 4, !tbaa !10
  %i.o = load i32, ptr %i.e, align 4, !tbaa !10
  %.not.i.i.i = icmp slt i32 %i.m, %i.o
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !19 ; 2 uses
  br i1 %.not.i.i.i, label %insert_value_in_array.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = sdiv i32 %i.n, 2
  %i.q = add nsw i32 %i.p, %i.n                   ; 2 uses
  store i32 %i.q, ptr %i.e, align 4, !tbaa !10
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 2
  %i.t = tail call ptr @Ptngc_warnrealloc_x(ptr noundef %.pre.i.i, i64 noundef %i.s, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !19
  %.pre1.i.i = load i32, ptr %i.d, align 8, !tbaa !10
  br label %insert_value_in_array.exit.i

insert_value_in_array.exit.i:                     ; preds = %bb.d, %bb.c
  %i.u = phi i32 [ %i.n, %bb.c ], [ %.pre1.i.i, %bb.d ]
  %i.v = phi ptr [ %.pre.i.i, %bb.c ], [ %i.t, %bb.d ]
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr [4 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  store i32 %switch.select13.i, ptr %i.y, align 4, !tbaa !10
  br label %large_instruction_change.exit

large_instruction_change.exit:                    ; preds = %bb.b, %insert_value_in_array.exit.i
  %i.z = icmp slt i32 %.06185, %1
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %large_instruction_change.exit
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !10
  %i.ab = sub i32 %1, %.06185                     ; 2 uses
  %wide.trip.count = zext i32 %i.ab to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.i
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ac = load i32, ptr %gep, align 4, !tbaa !10
  %i.ad = icmp eq i32 %i.ac, %i.aa
  br i1 %i.ad, label %bb.f, label %.critedge.split.loop.exit

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.e, !llvm.loop !80

.critedge.split.loop.exit:                        ; preds = %bb.e
  %indvars92.le = trunc i64 %indvars.iv to i32    ; 2 uses
  %i.ae = add nuw nsw i32 %.06185, %indvars92.le
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.critedge.split.loop.exit
  %.060.lcssa = phi i32 [ %indvars92.le, %.critedge.split.loop.exit ], [ %i.ab, %bb.f ] ; 5 uses
  %.lcssa = phi i32 [ %i.ae, %.critedge.split.loop.exit ], [ %1, %bb.f ] ; 2 uses
  %i.af = icmp samesign ult i32 %.060.lcssa, 3
  br i1 %i.af, label %.preheader74, label %bb.h

.preheader74:                                     ; preds = %.critedge
  %.not90 = icmp eq i32 %.060.lcssa, 0
  br i1 %.not90, label %.loopexit75, label %.lr.ph84

.lr.ph84:                                         ; preds = %.preheader74, %insert_value_in_array.exit
  %.05983 = phi i32 [ %i.au, %insert_value_in_array.exit ], [ 0, %.preheader74 ] ; 2 uses
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !10  ; 2 uses
  %i.ah = add nsw i32 %i.ag, 1                    ; 4 uses
  store i32 %i.ah, ptr %i.d, align 4, !tbaa !10
  %i.ai = load i32, ptr %i.e, align 4, !tbaa !10
  %.not.i.i = icmp slt i32 %i.ag, %i.ai
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !19  ; 2 uses
  br i1 %.not.i.i, label %insert_value_in_array.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph84
  %i.aj = sdiv i32 %i.ah, 2
  %i.ak = add nsw i32 %i.aj, %i.ah                ; 2 uses
  store i32 %i.ak, ptr %i.e, align 4, !tbaa !10
  %i.al = sext i32 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 2
  %i.an = tail call ptr @Ptngc_warnrealloc_x(ptr noundef %.pre.i, i64 noundef %i.am, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !19
  %.pre1.i = load i32, ptr %i.d, align 8, !tbaa !10
  br label %insert_value_in_array.exit

insert_value_in_array.exit:                       ; preds = %.lr.ph84, %bb.g
  %i.ao = phi i32 [ %i.ah, %.lr.ph84 ], [ %.pre1.i, %bb.g ]
  %i.ap = phi ptr [ %.pre.i, %.lr.ph84 ], [ %i.an, %bb.g ]
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr [4 x i8], ptr %i.ap, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -4
  store i32 2, ptr %i.as, align 4, !tbaa !10
  %i.at = add nuw nsw i32 %.05983, %.06185
  tail call fastcc void @write_three_large(ptr noundef %0, i32 noundef %i.at)
  %i.au = add nuw i32 %.05983, 1                  ; 2 uses
  %exitcond94.not = icmp eq i32 %i.au, %.060.lcssa
  br i1 %exitcond94.not, label %.loopexit75, label %.lr.ph84, !llvm.loop !81

bb.h:                                             ; preds = %.critedge
  %i.av = load i32, ptr %i.d, align 4, !tbaa !10  ; 2 uses
  %i.aw = add nsw i32 %i.av, 1                    ; 4 uses
  store i32 %i.aw, ptr %i.d, align 4, !tbaa !10
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !10
  %.not.i.i66 = icmp slt i32 %i.av, %i.ax
  %.pre.i67 = load ptr, ptr %0, align 8, !tbaa !19 ; 2 uses
  br i1 %.not.i.i66, label %insert_value_in_array.exit69, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = sdiv i32 %i.aw, 2
  %i.az = add nsw i32 %i.ay, %i.aw                ; 2 uses
  store i32 %i.az, ptr %i.e, align 4, !tbaa !10
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 2
  %i.bc = tail call ptr @Ptngc_warnrealloc_x(ptr noundef %.pre.i67, i64 noundef %i.bb, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !19
  %.pre1.i68 = load i32, ptr %i.d, align 8, !tbaa !10
  br label %insert_value_in_array.exit69

insert_value_in_array.exit69:                     ; preds = %bb.h, %bb.i
  %i.bd = phi i32 [ %i.aw, %bb.h ], [ %.pre1.i68, %bb.i ]
  %i.be = phi ptr [ %.pre.i67, %bb.h ], [ %i.bc, %bb.i ]
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  store i32 5, ptr %i.bh, align 4, !tbaa !10
  %i.bi = load i32, ptr %i.g, align 8, !tbaa !10  ; 2 uses
  %i.bj = add nsw i32 %i.bi, 1                    ; 4 uses
  store i32 %i.bj, ptr %i.g, align 8, !tbaa !10
  %i.bk = load i32, ptr %i.h, align 4, !tbaa !10
  %.not.i.i70 = icmp slt i32 %i.bi, %i.bk
  %.pre.i71 = load ptr, ptr %i.f, align 8, !tbaa !19 ; 2 uses
  br i1 %.not.i.i70, label %insert_value_in_array.exit73, label %bb.j

bb.j:                                             ; preds = %insert_value_in_array.exit69
  %i.bl = sdiv i32 %i.bj, 2
  %i.bm = add nsw i32 %i.bl, %i.bj                ; 2 uses
  store i32 %i.bm, ptr %i.h, align 4, !tbaa !10
  %i.bn = sext i32 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 2
  %i.bp = tail call ptr @Ptngc_warnrealloc_x(ptr noundef %.pre.i71, i64 noundef %i.bo, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.bp, ptr %i.f, align 8, !tbaa !19
  %.pre1.i72 = load i32, ptr %i.g, align 8, !tbaa !10
  br label %insert_value_in_array.exit73

insert_value_in_array.exit73:                     ; preds = %insert_value_in_array.exit69, %bb.j
  %i.bq = phi i32 [ %i.bj, %insert_value_in_array.exit69 ], [ %.pre1.i72, %bb.j ]
  %i.br = phi ptr [ %.pre.i71, %insert_value_in_array.exit69 ], [ %i.bp, %bb.j ]
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  store i32 %.060.lcssa, ptr %i.bu, align 4, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %insert_value_in_array.exit73, %bb.k
  %.182 = phi i32 [ 0, %insert_value_in_array.exit73 ], [ %i.bw, %bb.k ] ; 2 uses
  %i.bv = add nuw nsw i32 %.182, %.06185
  tail call fastcc void @write_three_large(ptr noundef %0, i32 noundef %i.bv)
  %i.bw = add nuw i32 %.182, 1                    ; 2 uses
  %exitcond93.not = icmp eq i32 %i.bw, %.060.lcssa
  br i1 %exitcond93.not, label %.loopexit75, label %bb.k, !llvm.loop !82

.loopexit75:                                      ; preds = %bb.k, %insert_value_in_array.exit, %.preheader74
  %i.bx = icmp slt i32 %.lcssa, %1
  br i1 %i.bx, label %bb.b, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %large_instruction_change.exit, %.loopexit75, %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq i32 %i.bz, %1
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ca = sub nsw i32 %i.bz, %1                   ; 7 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph89, label %.loopexit

.lr.ph89:                                         ; preds = %.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 12412 ; 15 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 27 uses
  %i.ce = sext i32 %1 to i64                      ; 6 uses
  %wide.trip.count104 = zext nneg i32 %i.ca to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %i.ca, 88
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph89
  %i.cf = shl nuw nsw i64 %wide.trip.count104, 2  ; 2 uses
  %i.cg = getelementptr i8, ptr %0, i64 %i.cf
  %scevgep = getelementptr i8, ptr %i.cg, i64 12412 ; 7 uses
  %i.ch = mul nuw nsw i64 %wide.trip.count104, 12 ; 5 uses
  %i.ci = getelementptr i8, ptr %0, i64 %i.ch
  %scevgep125 = getelementptr i8, ptr %i.ci, i64 116 ; 7 uses
  %scevgep126 = getelementptr i8, ptr %0, i64 128 ; 7 uses
  %i.cj = getelementptr i8, ptr %0, i64 %i.ch
  %scevgep127 = getelementptr i8, ptr %i.cj, i64 120 ; 7 uses
  %scevgep128 = getelementptr i8, ptr %0, i64 132 ; 7 uses
  %i.ck = getelementptr i8, ptr %0, i64 %i.ch
  %scevgep129 = getelementptr i8, ptr %i.ck, i64 124 ; 7 uses
  %i.cl = shl nsw i64 %i.ce, 2                    ; 2 uses
  %i.cm = getelementptr i8, ptr %0, i64 %i.cl
  %scevgep130 = getelementptr i8, ptr %i.cm, i64 12412 ; 4 uses
  %i.cn = getelementptr i8, ptr %0, i64 %i.cl
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.cf
  %scevgep131 = getelementptr i8, ptr %i.co, i64 12412 ; 4 uses
  %i.cp = mul nsw i64 %i.ce, 12                   ; 5 uses
  %i.cq = getelementptr i8, ptr %0, i64 %i.cp
  %scevgep132 = getelementptr i8, ptr %i.cq, i64 124 ; 4 uses
  %i.cr = add nsw i64 %i.cp, %i.ch                ; 2 uses
  %i.cs = getelementptr i8, ptr %0, i64 %i.cr
  %scevgep133 = getelementptr i8, ptr %i.cs, i64 116 ; 4 uses
  %i.ct = getelementptr i8, ptr %0, i64 %i.cp
  %scevgep134 = getelementptr i8, ptr %i.ct, i64 128 ; 4 uses
  %i.cu = getelementptr i8, ptr %0, i64 %i.cr
  %scevgep135 = getelementptr i8, ptr %i.cu, i64 120 ; 4 uses
  %i.cv = getelementptr i8, ptr %0, i64 %i.cp
  %scevgep136 = getelementptr i8, ptr %i.cv, i64 132 ; 4 uses
  %i.cw = getelementptr i8, ptr %0, i64 %i.cp
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.ch
  %scevgep137 = getelementptr i8, ptr %i.cx, i64 124 ; 4 uses
  %bound0 = icmp ult ptr %i.cc, %scevgep125
  %bound1 = icmp ult ptr %i.cd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0138 = icmp ult ptr %i.cc, %scevgep127
  %bound1139 = icmp ult ptr %scevgep126, %scevgep
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx = or i1 %found.conflict, %found.conflict140
  %bound0141 = icmp ult ptr %i.cc, %scevgep129
  %bound1142 = icmp ult ptr %scevgep128, %scevgep
  %found.conflict143 = and i1 %bound0141, %bound1142
  %conflict.rdx144 = or i1 %conflict.rdx, %found.conflict143
  %bound0145 = icmp ult ptr %i.cc, %scevgep131
  %bound1146 = icmp ult ptr %scevgep130, %scevgep
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx148 = or i1 %conflict.rdx144, %found.conflict147
  %bound0149 = icmp ult ptr %i.cc, %scevgep133
  %bound1150 = icmp ult ptr %scevgep132, %scevgep
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx152 = or i1 %conflict.rdx148, %found.conflict151
  %bound0153 = icmp ult ptr %i.cc, %scevgep135
  %bound1154 = icmp ult ptr %scevgep134, %scevgep
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %conflict.rdx152, %found.conflict155
  %bound0157 = icmp ult ptr %i.cc, %scevgep137
  %bound1158 = icmp ult ptr %scevgep136, %scevgep
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %conflict.rdx156, %found.conflict159
  %bound0161 = icmp ult ptr %i.cd, %scevgep127
  %bound1162 = icmp ult ptr %scevgep126, %scevgep125
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx160, %found.conflict163
  %bound0165 = icmp ult ptr %i.cd, %scevgep129
  %bound1166 = icmp ult ptr %scevgep128, %scevgep125
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  %bound0169 = icmp ult ptr %i.cd, %scevgep131
  %bound1170 = icmp ult ptr %scevgep130, %scevgep125
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx172 = or i1 %conflict.rdx168, %found.conflict171
  %bound0173 = icmp ult ptr %i.cd, %scevgep133
  %bound1174 = icmp ult ptr %scevgep132, %scevgep125
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx176 = or i1 %conflict.rdx172, %found.conflict175
  %bound0177 = icmp ult ptr %i.cd, %scevgep135
  %bound1178 = icmp ult ptr %scevgep134, %scevgep125
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %conflict.rdx176, %found.conflict179
  %bound0181 = icmp ult ptr %i.cd, %scevgep137
  %bound1182 = icmp ult ptr %scevgep136, %scevgep125
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  %bound0185 = icmp ult ptr %scevgep126, %scevgep129
  %bound1186 = icmp ult ptr %scevgep128, %scevgep127
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx184, %found.conflict187
  %bound0189 = icmp ult ptr %scevgep126, %scevgep131
  %bound1190 = icmp ult ptr %scevgep130, %scevgep127
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx188, %found.conflict191
  %bound0193 = icmp ult ptr %scevgep126, %scevgep133
  %bound1194 = icmp ult ptr %scevgep132, %scevgep127
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %conflict.rdx192, %found.conflict195
  %bound0197 = icmp ult ptr %scevgep126, %scevgep135
  %bound1198 = icmp ult ptr %scevgep134, %scevgep127
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %conflict.rdx196, %found.conflict199
  %bound0201 = icmp ult ptr %scevgep126, %scevgep137
  %bound1202 = icmp ult ptr %scevgep136, %scevgep127
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %conflict.rdx200, %found.conflict203
  %bound0205 = icmp ult ptr %scevgep128, %scevgep131
  %bound1206 = icmp ult ptr %scevgep130, %scevgep129
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %conflict.rdx204, %found.conflict207
  %bound0209 = icmp ult ptr %scevgep128, %scevgep133
  %bound1210 = icmp ult ptr %scevgep132, %scevgep129
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %conflict.rdx208, %found.conflict211
  %bound0213 = icmp ult ptr %scevgep128, %scevgep135
  %bound1214 = icmp ult ptr %scevgep134, %scevgep129
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx216 = or i1 %conflict.rdx212, %found.conflict215
  %bound0217 = icmp ult ptr %scevgep128, %scevgep137
  %bound1218 = icmp ult ptr %scevgep136, %scevgep129
  %found.conflict219 = and i1 %bound0217, %bound1218
  %conflict.rdx220 = or i1 %conflict.rdx216, %found.conflict219
  br i1 %conflict.rdx220, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count104, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cy = add nsw i64 %index, %i.ce               ; 2 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cy
  %wide.load = load <8 x i32>, ptr %i.cz, align 4, !tbaa !10, !alias.scope !95
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index
  store <8 x i32> %wide.load, ptr %i.da, align 4, !tbaa !10, !alias.scope !96, !noalias !97
  %.idx = mul nsw i64 %i.cy, 12
  %i.db = getelementptr inbounds i8, ptr %i.cd, i64 %.idx
  %wide.vec = load <24 x i32>, ptr %i.db, align 4, !tbaa !10
  %.idx223 = mul nuw nsw i64 %index, 12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx223
  store <24 x i32> %wide.vec, ptr %i.dc, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count104
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph89, %middle.block
  %indvars.iv101.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph89 ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count104, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.de = add nsw i64 %indvars.iv101.ph, %i.ce    ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !10
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv101.ph
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !10
  %i.di = mul nsw i64 %i.de, 3                    ; 3 uses
  %i.dj = mul nuw nsw i64 %indvars.iv101.ph, 3    ; 3 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.di
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !10
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dj
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !10
  %i.dn = getelementptr [4 x i8], ptr %i.cd, i64 %i.di
  %i.do = getelementptr i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !10
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dj
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i32 %i.dp, ptr %i.dr, align 4, !tbaa !10
  %i.ds = getelementptr [4 x i8], ptr %i.cd, i64 %i.di
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !10
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dj
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i32 %i.du, ptr %i.dw, align 4, !tbaa !10
  %indvars.iv.next102.prol = or disjoint i64 %indvars.iv101.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
end_hunk_0
