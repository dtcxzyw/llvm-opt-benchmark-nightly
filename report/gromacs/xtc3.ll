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
  %.06185 = phi i32 [ 0, %.lr.ph86 ], [ %.lcssa114, %.loopexit75 ] ; 7 uses
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
  br i1 %i.z, label %.lr.ph, label %.loopexit75

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
  %.lcssa = phi i32 [ %i.ae, %.critedge.split.loop.exit ], [ %1, %bb.f ] ; 3 uses
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

.loopexit75:                                      ; preds = %bb.k, %insert_value_in_array.exit, %large_instruction_change.exit, %.preheader74
  %.lcssa114 = phi i32 [ %.06185, %large_instruction_change.exit ], [ %.lcssa, %insert_value_in_array.exit ], [ %.lcssa, %.preheader74 ], [ %.lcssa, %bb.k ] ; 2 uses
  %i.bx = icmp slt i32 %.lcssa114, %1
  br i1 %i.bx, label %bb.b, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %.loopexit75, %bb.a
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
  %i.ch = getelementptr i8, ptr %i.cg, i64 12412  ; 7 uses
  %i.ci = mul nuw nsw i64 %wide.trip.count104, 12 ; 4 uses
  %i.cj = getelementptr i8, ptr %0, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 116    ; 7 uses
  %i.cl = getelementptr i8, ptr %0, i64 128       ; 7 uses
  %i.cm = getelementptr i8, ptr %0, i64 %i.ci
  %i.cn = getelementptr i8, ptr %i.cm, i64 120    ; 7 uses
  %i.co = getelementptr i8, ptr %0, i64 132       ; 7 uses
  %i.cp = getelementptr i8, ptr %0, i64 %i.ci
  %i.cq = getelementptr i8, ptr %i.cp, i64 124    ; 7 uses
  %i.cr = shl nsw i64 %i.ce, 2                    ; 2 uses
  %i.cs = getelementptr i8, ptr %0, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 12412  ; 4 uses
  %i.cu = getelementptr i8, ptr %0, i64 %i.cr
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.cf
  %i.cw = getelementptr i8, ptr %i.cv, i64 12412  ; 4 uses
  %i.cx = mul nsw i64 %i.ce, 12                   ; 4 uses
  %i.cy = getelementptr i8, ptr %0, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 124    ; 4 uses
  %i.da = add nsw i64 %i.cx, %i.ci                ; 3 uses
  %i.db = getelementptr i8, ptr %0, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 116    ; 4 uses
  %i.dd = getelementptr i8, ptr %0, i64 %i.cx
  %i.de = getelementptr i8, ptr %i.dd, i64 128    ; 4 uses
  %i.df = getelementptr i8, ptr %0, i64 %i.da
  %i.dg = getelementptr i8, ptr %i.df, i64 120    ; 4 uses
  %i.dh = getelementptr i8, ptr %0, i64 %i.cx
  %i.di = getelementptr i8, ptr %i.dh, i64 132    ; 4 uses
  %i.dj = getelementptr i8, ptr %0, i64 %i.da
  %i.dk = getelementptr i8, ptr %i.dj, i64 124    ; 4 uses
  %bound0 = icmp ult ptr %i.cc, %i.ck
  %bound1 = icmp ult ptr %i.cd, %i.ch
  %found.conflict = and i1 %bound0, %bound1
  %bound0221 = icmp ult ptr %i.cc, %i.cn
  %bound1222 = icmp ult ptr %i.cl, %i.ch
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx = or i1 %found.conflict, %found.conflict223
  %bound0224 = icmp ult ptr %i.cc, %i.cq
  %bound1225 = icmp ult ptr %i.co, %i.ch
  %found.conflict226 = and i1 %bound0224, %bound1225
  %conflict.rdx227 = or i1 %conflict.rdx, %found.conflict226
  %bound0228 = icmp ult ptr %i.cc, %i.cw
  %bound1229 = icmp ult ptr %i.ct, %i.ch
  %found.conflict230 = and i1 %bound0228, %bound1229
  %conflict.rdx231 = or i1 %conflict.rdx227, %found.conflict230
  %bound0232 = icmp ult ptr %i.cc, %i.dc
  %bound1233 = icmp ult ptr %i.cz, %i.ch
  %found.conflict234 = and i1 %bound0232, %bound1233
  %conflict.rdx235 = or i1 %conflict.rdx231, %found.conflict234
  %bound0236 = icmp ult ptr %i.cc, %i.dg
  %bound1237 = icmp ult ptr %i.de, %i.ch
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx239 = or i1 %conflict.rdx235, %found.conflict238
  %bound0240 = icmp ult ptr %i.cc, %i.dk
  %bound1241 = icmp ult ptr %i.di, %i.ch
  %found.conflict242 = and i1 %bound0240, %bound1241
  %conflict.rdx243 = or i1 %conflict.rdx239, %found.conflict242
  %bound0244 = icmp ult ptr %i.cd, %i.cn
  %bound1245 = icmp ult ptr %i.cl, %i.ck
  %found.conflict246 = and i1 %bound0244, %bound1245
  %conflict.rdx247 = or i1 %conflict.rdx243, %found.conflict246
  %bound0248 = icmp ult ptr %i.cd, %i.cq
  %bound1249 = icmp ult ptr %i.co, %i.ck
  %found.conflict250 = and i1 %bound0248, %bound1249
  %conflict.rdx251 = or i1 %conflict.rdx247, %found.conflict250
  %bound0252 = icmp ult ptr %i.cd, %i.cw
  %bound1253 = icmp ult ptr %i.ct, %i.ck
  %found.conflict254 = and i1 %bound0252, %bound1253
  %conflict.rdx255 = or i1 %conflict.rdx251, %found.conflict254
  %bound0256 = icmp ult ptr %i.cd, %i.dc
  %bound1257 = icmp ult ptr %i.cz, %i.ck
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %conflict.rdx255, %found.conflict258
  %bound0260 = icmp ult ptr %i.cd, %i.dg
  %bound1261 = icmp ult ptr %i.de, %i.ck
  %found.conflict262 = and i1 %bound0260, %bound1261
  %conflict.rdx263 = or i1 %conflict.rdx259, %found.conflict262
  %bound0264 = icmp ult ptr %i.cd, %i.dk
  %bound1265 = icmp ult ptr %i.di, %i.ck
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx267 = or i1 %conflict.rdx263, %found.conflict266
  %bound0268 = icmp ult ptr %i.cl, %i.cq
  %bound1269 = icmp ult ptr %i.co, %i.cn
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %conflict.rdx267, %found.conflict270
  %bound0272 = icmp ult ptr %i.cl, %i.cw
  %bound1273 = icmp ult ptr %i.ct, %i.cn
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx275 = or i1 %conflict.rdx271, %found.conflict274
  %bound0276 = icmp ult ptr %i.cl, %i.dc
  %bound1277 = icmp ult ptr %i.cz, %i.cn
  %found.conflict278 = and i1 %bound0276, %bound1277
  %conflict.rdx279 = or i1 %conflict.rdx275, %found.conflict278
  %bound0280 = icmp ult ptr %i.cl, %i.dg
  %bound1281 = icmp ult ptr %i.de, %i.cn
  %found.conflict282 = and i1 %bound0280, %bound1281
  %conflict.rdx283 = or i1 %conflict.rdx279, %found.conflict282
  %bound0284 = icmp ult ptr %i.cl, %i.dk
  %bound1285 = icmp ult ptr %i.di, %i.cn
  %found.conflict286 = and i1 %bound0284, %bound1285
  %conflict.rdx287 = or i1 %conflict.rdx283, %found.conflict286
  %bound0288 = icmp ult ptr %i.co, %i.cw
  %bound1289 = icmp ult ptr %i.ct, %i.cq
  %found.conflict290 = and i1 %bound0288, %bound1289
  %conflict.rdx291 = or i1 %conflict.rdx287, %found.conflict290
  %bound0292 = icmp ult ptr %i.co, %i.dc
  %bound1293 = icmp ult ptr %i.cz, %i.cq
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx295 = or i1 %conflict.rdx291, %found.conflict294
  %bound0296 = icmp ult ptr %i.co, %i.dg
  %bound1297 = icmp ult ptr %i.de, %i.cq
  %found.conflict298 = and i1 %bound0296, %bound1297
  %conflict.rdx299 = or i1 %conflict.rdx295, %found.conflict298
  %bound0300 = icmp ult ptr %i.co, %i.dk
  %bound1301 = icmp ult ptr %i.di, %i.cq
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %conflict.rdx299, %found.conflict302
  br i1 %conflict.rdx303, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count104, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.dl = add nsw i64 %index, %i.ce               ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.dl
  %wide.load = load <8 x i32>, ptr %i.dm, align 4, !tbaa !10, !alias.scope !95
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index
  store <8 x i32> %wide.load, ptr %i.dn, align 4, !tbaa !10, !alias.scope !96, !noalias !97
  %.idx = mul nsw i64 %i.dl, 12
  %i.do = getelementptr inbounds i8, ptr %i.cd, i64 %.idx
  %wide.vec = load <24 x i32>, ptr %i.do, align 4, !tbaa !10
  %.idx306 = mul nuw nsw i64 %index, 12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx306
  store <24 x i32> %wide.vec, ptr %i.dp, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count104
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph89, %middle.block
  %indvars.iv101.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph89 ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count104, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dr = add nsw i64 %indvars.iv101.ph, %i.ce    ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !10
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv101.ph
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !10
  %i.dv = mul nsw i64 %i.dr, 3                    ; 3 uses
  %i.dw = mul nuw nsw i64 %indvars.iv101.ph, 3    ; 3 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.dv
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !10
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dw
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !10
  %i.ea = getelementptr [4 x i8], ptr %i.cd, i64 %i.dv
  %i.eb = getelementptr i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !10
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dw
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 %i.ec, ptr %i.ee, align 4, !tbaa !10
  %i.ef = getelementptr [4 x i8], ptr %i.cd, i64 %i.dv
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !10
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dw
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i32 %i.eh, ptr %i.ej, align 4, !tbaa !10
  %indvars.iv.next102.prol = or disjoint i64 %indvars.iv101.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv101.unr = phi i64 [ %indvars.iv101.ph, %scalar.ph.preheader ], [ %indvars.iv.next102.prol, %scalar.ph.prol ]
end_hunk_0
