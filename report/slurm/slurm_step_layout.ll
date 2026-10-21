Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/slurm_step_layout?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@_task_layout_topo:bb.a
  %.pre116 = add nuw nsw i32 %.04970, 1           ; 3 uses
  br i1 %.not86, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %.preheader56
  br i1 %.045.fr, label %.lr.ph61.split.us.preheader, label %.lr.ph61.split.preheader

.lr.ph61.split.preheader:                         ; preds = %.lr.ph61
  %i.s = icmp ult i32 %.04771, %.pre105
  br i1 %i.s, label %.lr.ph22, label %.critedge

.lr.ph61.split.us.preheader:                      ; preds = %.lr.ph61
  %i.t = load i32, ptr %i.m, align 8              ; 3 uses
  %i.u = icmp ult i32 %.04771, %i.t
  br i1 %i.u, label %.lr.ph37, label %.critedge

.lr.ph61.split.us:                                ; preds = %.lr.ph37
  %i.v = icmp ult i32 %i.ae, %i.al
  br i1 %i.v, label %.lr.ph37, label %.critedge, !llvm.loop !47

.lr.ph37:                                         ; preds = %.lr.ph61.split.us.preheader, %.lr.ph61.split.us
  %.14859.us36 = phi i32 [ %i.ae, %.lr.ph61.split.us ], [ %.04771, %.lr.ph61.split.us.preheader ]
  %.060.us35 = phi i1 [ %spec.select.us, %.lr.ph61.split.us ], [ false, %.lr.ph61.split.us.preheader ]
  %indvars.iv9734 = phi i64 [ %indvars.iv.next98, %.lr.ph61.split.us ], [ 0, %.lr.ph61.split.us.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv9734
  %i.x = load i32, ptr %i.w, align 4
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds [2 x i8], ptr %2, i64 %i.y
  %i.aa = load ptr, ptr %i.o, align 8
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.y ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = add i16 %i.ac, 1
  store i16 %i.ad, ptr %i.ab, align 2
  %i.ae = add nuw nsw i32 %.14859.us36, 1         ; 4 uses
  %i.af = load i16, ptr %i.z, align 2
  %i.ag = zext i16 %i.af to i32
  %i.ah = icmp samesign ult i32 %.pre116, %i.ag
  %spec.select.us = select i1 %i.ah, i1 true, i1 %.060.us35 ; 3 uses
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv9734, 1 ; 2 uses
  %i.ai = load i32, ptr %i.b, align 8             ; 5 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next98, %i.aj
  %i.al = load i32, ptr %i.m, align 8             ; 5 uses
  br i1 %i.ak, label %.lr.ph61.split.us, label %..critedge.loopexit_crit_edge, !llvm.loop !47

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph37
  br label %.critedge, !llvm.loop !47

.preheader:                                       ; preds = %.critedge, %._crit_edge
  %i.am = phi i32 [ %.pre108, %._crit_edge ], [ %i.bm, %.critedge ]
  %.not87 = icmp eq i32 %i.am, 0
  br i1 %.not87, label %._crit_edge82, label %.lr.ph81

.lr.ph81:                                         ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre109 = load ptr, ptr %i.an, align 8
  br label %bb.d

.lr.ph61.split:                                   ; preds = %bb.c
  %i.ap = icmp ult i32 %.2, %i.bi
  br i1 %i.ap, label %.lr.ph22, label %.critedge, !llvm.loop !47

.lr.ph22:                                         ; preds = %.lr.ph61.split.preheader, %.lr.ph61.split
  %.1485921 = phi i32 [ %.2, %.lr.ph61.split ], [ %.04771, %.lr.ph61.split.preheader ] ; 2 uses
  %.06020 = phi i1 [ %.1, %.lr.ph61.split ], [ false, %.lr.ph61.split.preheader ] ; 2 uses
  %indvars.iv9519 = phi i64 [ %indvars.iv.next96, %.lr.ph61.split ], [ 0, %.lr.ph61.split.preheader ] ; 2 uses
  %i.aq = phi i32 [ %i.bi, %.lr.ph61.split ], [ %.pre105, %.lr.ph61.split.preheader ]
  %i.ar = phi i32 [ %i.bh, %.lr.ph61.split ], [ %i.q, %.lr.ph61.split.preheader ]
  %.pre10511218 = phi i32 [ %.pre105111, %.lr.ph61.split ], [ %.pre105, %.lr.ph61.split.preheader ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv9519
  %i.at = load i32, ptr %i.as, align 4
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds [2 x i8], ptr %2, i64 %i.au ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = zext i16 %i.aw to i32
  %i.ay = icmp samesign ult i32 %.04970, %i.ax
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph22
  %i.az = load ptr, ptr %i.o, align 8
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.au ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = add i16 %i.bb, 1
  store i16 %i.bc, ptr %i.ba, align 2
  %i.bd = add nuw nsw i32 %.1485921, 1
  %i.be = load i16, ptr %i.av, align 2
  %i.bf = zext i16 %i.be to i32
  %i.bg = icmp samesign ult i32 %.pre116, %i.bf
  %spec.select = select i1 %i.bg, i1 true, i1 %.06020
  %.pre = load i32, ptr %i.m, align 8             ; 2 uses
  %.pre106 = load i32, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph22
  %.pre105111 = phi i32 [ %.pre10511218, %.lr.ph22 ], [ %.pre, %bb.b ] ; 3 uses
  %i.bh = phi i32 [ %i.ar, %.lr.ph22 ], [ %.pre106, %bb.b ] ; 6 uses
  %i.bi = phi i32 [ %i.aq, %.lr.ph22 ], [ %.pre, %bb.b ] ; 4 uses
  %.2 = phi i32 [ %.1485921, %.lr.ph22 ], [ %i.bd, %bb.b ] ; 4 uses
  %.1 = phi i1 [ %.06020, %.lr.ph22 ], [ %spec.select, %bb.b ] ; 3 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv9519, 1 ; 2 uses
  %i.bj = zext i32 %i.bh to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next96, %i.bj
  br i1 %i.bk, label %.lr.ph61.split, label %..critedge.loopexit1_crit_edge, !llvm.loop !47

..critedge.loopexit1_crit_edge:                   ; preds = %bb.c
  br label %.critedge, !llvm.loop !47

.critedge:                                        ; preds = %.lr.ph61.split, %.lr.ph61.split.us, %.lr.ph61.split.preheader, %..critedge.loopexit1_crit_edge, %.lr.ph61.split.us.preheader, %.preheader56, %..critedge.loopexit_crit_edge
  %.pre105113 = phi i32 [ %i.al, %.lr.ph61.split.us ], [ %.pre105, %.preheader56 ], [ %i.al, %..critedge.loopexit_crit_edge ], [ %i.t, %.lr.ph61.split.us.preheader ], [ %.pre105, %.lr.ph61.split.preheader ], [ %.pre105111, %..critedge.loopexit1_crit_edge ], [ %.pre105111, %.lr.ph61.split ]
  %i.bl = phi i32 [ %i.al, %.lr.ph61.split.us ], [ %i.p, %.preheader56 ], [ %i.al, %..critedge.loopexit_crit_edge ], [ %i.t, %.lr.ph61.split.us.preheader ], [ %.pre105, %.lr.ph61.split.preheader ], [ %i.bi, %..critedge.loopexit1_crit_edge ], [ %i.bi, %.lr.ph61.split ] ; 2 uses
  %i.bm = phi i32 [ %i.ai, %.lr.ph61.split.us ], [ %i.q, %.preheader56 ], [ %i.ai, %..critedge.loopexit_crit_edge ], [ %i.q, %.lr.ph61.split.us.preheader ], [ %i.q, %.lr.ph61.split.preheader ], [ %i.bh, %..critedge.loopexit1_crit_edge ], [ %i.bh, %.lr.ph61.split ] ; 2 uses
  %i.bn = phi i32 [ %i.ai, %.lr.ph61.split.us ], [ 0, %.preheader56 ], [ %i.ai, %..critedge.loopexit_crit_edge ], [ %i.r, %.lr.ph61.split.us.preheader ], [ %i.r, %.lr.ph61.split.preheader ], [ %i.bh, %..critedge.loopexit1_crit_edge ], [ %i.bh, %.lr.ph61.split ]
  %.148.lcssa = phi i32 [ %i.ae, %.lr.ph61.split.us ], [ %.04771, %.preheader56 ], [ %i.ae, %..critedge.loopexit_crit_edge ], [ %.04771, %.lr.ph61.split.us.preheader ], [ %.04771, %.lr.ph61.split.preheader ], [ %.2, %..critedge.loopexit1_crit_edge ], [ %.2, %.lr.ph61.split ] ; 2 uses
  %.0.lcssa = phi i1 [ %spec.select.us, %.lr.ph61.split.us ], [ false, %.preheader56 ], [ %spec.select.us, %..critedge.loopexit_crit_edge ], [ false, %.lr.ph61.split.us.preheader ], [ false, %.lr.ph61.split.preheader ], [ %.1, %..critedge.loopexit1_crit_edge ], [ %.1, %.lr.ph61.split ]
  %not..0.lcssa = xor i1 %.0.lcssa, true
  %spec.select55 = or i1 %.045.fr, %not..0.lcssa
  %i.bo = icmp ult i32 %.148.lcssa, %i.bl
  br i1 %i.bo, label %.preheader56, label %.preheader, !llvm.loop !48

bb.d:                                             ; preds = %.lr.ph81, %._crit_edge77
  %i.bp = phi ptr [ %.pre109, %.lr.ph81 ], [ %i.cm, %._crit_edge77 ]
  %indvars.iv102 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next103, %._crit_edge77 ] ; 2 uses
  %.380 = phi i32 [ 0, %.lr.ph81 ], [ %.4.lcssa, %._crit_edge77 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv102
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = sext i32 %i.br to i64                   ; 5 uses
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = zext i16 %i.bu to i64
  %i.bw = tail call ptr @slurm_xcalloc(i64 noundef %i.bv, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 803, ptr noundef nonnull @__func__._task_layout_topo) #8
  %i.bx = load ptr, ptr %i.ao, align 8
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.bs
  store ptr %i.bw, ptr %i.by, align 8
  %i.bz = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.bs
  %i.cb = load i16, ptr %i.ca, align 2
  %.not88 = icmp eq i16 %i.cb, 0
  br i1 %.not88, label %._crit_edge77, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.d, %.lr.ph76
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.lr.ph76 ], [ 0, %bb.d ] ; 2 uses
  %.474 = phi i32 [ %i.cg, %.lr.ph76 ], [ %.380, %bb.d ] ; 2 uses
  %i.cc = load ptr, ptr %i.ao, align 8
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.bs
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv99
  store i32 %.474, ptr %i.cf, align 4
  %i.cg = add nsw i32 %.474, 1                    ; 2 uses
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.ch = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %i.bs
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = zext i16 %i.cj to i64
  %i.cl = icmp samesign ult i64 %indvars.iv.next100, %i.ck
  br i1 %i.cl, label %.lr.ph76, label %._crit_edge77, !llvm.loop !49

._crit_edge77:                                    ; preds = %.lr.ph76, %bb.d
  %i.cm = phi ptr [ %i.bz, %bb.d ], [ %i.ch, %.lr.ph76 ]
  %.4.lcssa = phi i32 [ %.380, %bb.d ], [ %i.cg, %.lr.ph76 ]
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.cn = load i32, ptr %i.b, align 8
  %i.co = zext i32 %i.cn to i64
  %i.cp = icmp samesign ult i64 %indvars.iv.next103, %i.co
  br i1 %i.cp, label %bb.d, label %._crit_edge82, !llvm.loop !50

._crit_edge82:                                    ; preds = %._crit_edge77, %.preheader
  call void @slurm_xfree(ptr noundef nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_task_layout_block(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr @_task_layout_block.select_params, align 2 ; 2 uses
  %i.b = icmp eq i16 %i.a, -2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1200), align 8 ; 2 uses
  store i16 %i.c, ptr @_task_layout_block.select_params, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i16 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = and i32 %i.f, 8388608
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %.critedge99

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %i.f, 4194304
  %.not94 = icmp ne i32 %i.h, 0
  %i.i = and i16 %i.d, 512
  %.not95.not = icmp eq i16 %i.i, 0
  %or.cond = select i1 %.not94, i1 true, i1 %.not95.not
  br i1 %or.cond, label %.critedge97, label %.critedge99

.critedge99:                                      ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %.not150 = icmp eq i32 %i.l, 0
  %.pre187.pre = load i32, ptr %i.j, align 8      ; 2 uses
  br i1 %.not150, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge99
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.n = phi i32 [ %i.l, %.lr.ph ], [ %i.y, %bb.h ] ; 2 uses
  %i.o = phi i32 [ %.pre187.pre, %.lr.ph ], [ %i.z, %bb.h ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.085105 = phi i32 [ 0, %.lr.ph ], [ %.186, %bb.h ] ; 4 uses
  %i.p = icmp ult i32 %.085105, %i.o
  br i1 %i.p, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.s = load i16, ptr %i.r, align 2              ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.u = load i16, ptr %i.t, align 2
  %i.v = icmp ult i16 %i.s, %i.u
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = add nuw i16 %i.s, 1
  store i16 %i.w, ptr %i.r, align 2
  %i.x = add nuw nsw i32 %.085105, 1
  %.pre = load i32, ptr %i.j, align 8
  %.pre182 = load i32, ptr %i.k, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.y = phi i32 [ %.pre182, %bb.g ], [ %i.n, %bb.f ] ; 3 uses
  %i.z = phi i32 [ %.pre, %bb.g ], [ %i.o, %bb.f ] ; 2 uses
  %.186 = phi i32 [ %i.x, %bb.g ], [ %.085105, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = zext i32 %i.y to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.e, label %.critedge, !llvm.loop !51

.critedge:                                        ; preds = %bb.e, %bb.h
  %.pre187 = phi i32 [ %i.z, %bb.h ], [ %i.o, %bb.e ] ; 2 uses
  %i.ac = phi i32 [ %i.y, %bb.h ], [ %i.n, %bb.e ] ; 2 uses
  %.085.lcssa = phi i32 [ %.186, %bb.h ], [ %.085105, %bb.e ] ; 2 uses
  %.not151 = icmp eq i32 %i.ac, 0
  br i1 %.not151, label %.critedge2, label %.lr.ph115

.lr.ph115:                                        ; preds = %.critedge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph115, %.critedge4
  %i.ae = phi i32 [ %i.ac, %.lr.ph115 ], [ %i.ax, %.critedge4 ] ; 2 uses
  %2 = phi i32 [ %.pre187, %.lr.ph115 ], [ %3, %.critedge4 ] ; 3 uses
  %indvars.iv165 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next166, %.critedge4 ] ; 4 uses
  %.2114 = phi i32 [ %.085.lcssa, %.lr.ph115 ], [ %.3.lcssa, %.critedge4 ] ; 4 uses
  %i.af = icmp ult i32 %.2114, %2
  br i1 %i.af, label %.preheader103, label %.critedge2

.preheader103:                                    ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv165 ; 2 uses
  %i.ah = load ptr, ptr %i.ad, align 8
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv165 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2            ; 2 uses
  %i.ak = load i16, ptr %i.ag, align 2
  %i.al = icmp ult i16 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph109, label %.critedge4

.lr.ph109:                                        ; preds = %.preheader103, %bb.j
  %i.am = phi i16 [ %i.au, %bb.j ], [ %i.aj, %.preheader103 ]
  %i.an = phi ptr [ %i.at, %bb.j ], [ %i.ai, %.preheader103 ]
  %.3108 = phi i32 [ %i.ar, %bb.j ], [ %.2114, %.preheader103 ] ; 3 uses
  %i.ao = load i32, ptr %i.j, align 8             ; 2 uses
  %i.ap = icmp ult i32 %.3108, %i.ao
  br i1 %i.ap, label %bb.j, label %.critedge4.loopexit

bb.j:                                             ; preds = %.lr.ph109
  %i.aq = add nuw i16 %i.am, 1
  store i16 %i.aq, ptr %i.an, align 2
  %i.ar = add nuw nsw i32 %.3108, 1               ; 2 uses
  %i.as = load ptr, ptr %i.ad, align 8
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv165 ; 2 uses
  %i.au = load i16, ptr %i.at, align 2            ; 2 uses
  %i.av = load i16, ptr %i.ag, align 2
  %i.aw = icmp ult i16 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph109, label %..critedge4.loopexit_crit_edge, !llvm.loop !52

..critedge4.loopexit_crit_edge:                   ; preds = %bb.j
  %.pre183.pre = load i32, ptr %i.j, align 8
  br label %.critedge4.loopexit, !llvm.loop !52

.critedge4.loopexit:                              ; preds = %.lr.ph109, %..critedge4.loopexit_crit_edge
  %.pre183 = phi i32 [ %.pre183.pre, %..critedge4.loopexit_crit_edge ], [ %i.ao, %.lr.ph109 ]
  %.3.lcssa.ph = phi i32 [ %i.ar, %..critedge4.loopexit_crit_edge ], [ %.3108, %.lr.ph109 ]
  %.pre183.a = load i32, ptr %i.k, align 8
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.preheader103
  %i.ax = phi i32 [ %i.ae, %.preheader103 ], [ %.pre183.a, %.critedge4.loopexit ] ; 3 uses
  %3 = phi i32 [ %2, %.preheader103 ], [ %.pre183, %.critedge4.loopexit ] ; 2 uses
  %.3.lcssa = phi i32 [ %.2114, %.preheader103 ], [ %.3.lcssa.ph, %.critedge4.loopexit ] ; 2 uses
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next166, %i.ay
  br i1 %i.az, label %bb.i, label %.critedge2, !llvm.loop !53

.critedge2:                                       ; preds = %bb.i, %.critedge4, %.critedge99, %.critedge
  %i.ba = phi i32 [ 0, %.critedge ], [ 0, %.critedge99 ], [ %i.ae, %bb.i ], [ %i.ax, %.critedge4 ] ; 4 uses
  %.2.lcssa.a = phi i32 [ %.pre187, %.critedge ], [ %.pre187.pre, %.critedge99 ], [ %2, %bb.i ], [ %3, %.critedge4 ] ; 2 uses
  %.2.lcssa = phi i32 [ %.085.lcssa, %.critedge ], [ 0, %.critedge99 ], [ %.2114, %bb.i ], [ %.3.lcssa, %.critedge4 ] ; 2 uses
  %i.bb = icmp ult i32 %.2.lcssa, %.2.lcssa.a
  br i1 %i.bb, label %.preheader101.lr.ph, label %.loopexit

.preheader101.lr.ph:                              ; preds = %.critedge2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.not152 = icmp eq i32 %i.ba, 0
  br i1 %.not152, label %.preheader101.us, label %.preheader101

.preheader101.us:                                 ; preds = %.preheader101.lr.ph, %.preheader101.us
  br label %.preheader101.us

.preheader101:                                    ; preds = %.preheader101.lr.ph, %.critedge6
  %i.bd = phi i32 [ %i.bs, %.critedge6 ], [ %i.ba, %.preheader101.lr.ph ] ; 2 uses
  %i.be = phi i32 [ %i.bt, %.critedge6 ], [ %.2.lcssa.a, %.preheader101.lr.ph ]
  %i.bf = phi i32 [ %i.bu, %.critedge6 ], [ %i.ba, %.preheader101.lr.ph ] ; 2 uses
  %.4125 = phi i32 [ %.5.lcssa, %.critedge6 ], [ %.2.lcssa, %.preheader101.lr.ph ] ; 4 uses
  %.not153 = icmp eq i32 %i.bf, 0
  br i1 %.not153, label %.critedge6, label %.lr.ph121.preheader

.lr.ph121.preheader:                              ; preds = %.preheader101
  %i.bg = load i32, ptr %i.j, align 8             ; 2 uses
  %i.bh = icmp ult i32 %.4125, %i.bg
  br i1 %i.bh, label %.lr.ph30, label %.critedge6

.lr.ph121:                                        ; preds = %.lr.ph30
  %i.bi = icmp ult i32 %i.bn, %i.br
  br i1 %i.bi, label %.lr.ph30, label %.critedge6, !llvm.loop !54

.lr.ph30:                                         ; preds = %.lr.ph121.preheader, %.lr.ph121
  %.512029 = phi i32 [ %i.bn, %.lr.ph121 ], [ %.4125, %.lr.ph121.preheader ]
  %indvars.iv16828 = phi i64 [ %indvars.iv.next169, %.lr.ph121 ], [ 0, %.lr.ph121.preheader ] ; 2 uses
  %i.bj = load ptr, ptr %i.bc, align 8
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %indvars.iv16828 ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = add i16 %i.bl, 1
  store i16 %i.bm, ptr %i.bk, align 2
  %i.bn = add nuw nsw i32 %.512029, 1             ; 4 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv16828, 1 ; 2 uses
  %i.bo = load i32, ptr %i.k, align 8             ; 5 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next169, %i.bp
  %i.br = load i32, ptr %i.j, align 8             ; 3 uses
  br i1 %i.bq, label %.lr.ph121, label %..critedge6.loopexit_crit_edge, !llvm.loop !54

..critedge6.loopexit_crit_edge:                   ; preds = %.lr.ph30
  br label %.critedge6, !llvm.loop !54

.critedge6:                                       ; preds = %.lr.ph121, %.lr.ph121.preheader, %..critedge6.loopexit_crit_edge, %.preheader101
  %i.bs = phi i32 [ %i.bd, %.preheader101 ], [ %i.bo, %..critedge6.loopexit_crit_edge ], [ %i.bd, %.lr.ph121.preheader ], [ %i.bo, %.lr.ph121 ] ; 2 uses
  %i.bt = phi i32 [ %i.be, %.preheader101 ], [ %i.br, %..critedge6.loopexit_crit_edge ], [ %i.bg, %.lr.ph121.preheader ], [ %i.br, %.lr.ph121 ] ; 2 uses
  %i.bu = phi i32 [ 0, %.preheader101 ], [ %i.bo, %..critedge6.loopexit_crit_edge ], [ %i.bf, %.lr.ph121.preheader ], [ %i.bo, %.lr.ph121 ]
  %.5.lcssa = phi i32 [ %.4125, %.preheader101 ], [ %i.bn, %..critedge6.loopexit_crit_edge ], [ %.4125, %.lr.ph121.preheader ], [ %i.bn, %.lr.ph121 ] ; 2 uses
  %i.bv = icmp ult i32 %.5.lcssa, %i.bt
  br i1 %i.bv, label %.preheader101, label %.loopexit, !llvm.loop !55

.critedge97:                                      ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bx = load i32, ptr %i.bw, align 8            ; 3 uses
  %.not154 = icmp eq i32 %i.bx, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br i1 %.not154, label %.critedge97..loopexit_crit_edge, label %.preheader.lr.ph

.critedge97..loopexit_crit_edge:                  ; preds = %.critedge97
  %.pre189.a = load i32, ptr %.phi.trans.insert, align 8
  br label %.loopexit

.preheader.lr.ph:                                 ; preds = %.critedge97
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bz = load i32, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.not155 = icmp eq i32 %i.bz, 0
  br i1 %.not155, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.preheader.us
  br label %.preheader.us

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge8
  %.pre186 = phi i32 [ %.pre186195, %.critedge8 ], [ %i.bx, %.preheader.lr.ph ] ; 6 uses
  %i.ca = phi i32 [ %i.dn, %.critedge8 ], [ %i.bx, %.preheader.lr.ph ]
  %i.cb = phi i32 [ %i.do, %.critedge8 ], [ %i.bz, %.preheader.lr.ph ] ; 4 uses
  %i.cc = phi i32 [ %i.dp, %.critedge8 ], [ %i.bz, %.preheader.lr.ph ] ; 3 uses
  %.082140 = phi i1 [ %spec.select100, %.critedge8 ], [ false, %.preheader.lr.ph ]
  %.6139 = phi i32 [ %.7.lcssa, %.critedge8 ], [ 0, %.preheader.lr.ph ] ; 7 uses
  %.087138 = phi i32 [ %.pre198, %.critedge8 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.082.fr = freeze i1 %.082140                   ; 2 uses
  %.not157 = icmp eq i32 %i.cc, 0
  %.pre198 = add nuw nsw i32 %.087138, 1          ; 3 uses
  br i1 %.not157, label %.critedge8, label %.lr.ph129

.lr.ph129:                                        ; preds = %.preheader
  br i1 %.082.fr, label %.lr.ph129.split.us.preheader, label %.lr.ph129.split.preheader

.lr.ph129.split.preheader:                        ; preds = %.lr.ph129
  %i.cd = icmp ult i32 %.6139, %.pre186
  br i1 %i.cd, label %.lr.ph38, label %.critedge8

.lr.ph129.split.us.preheader:                     ; preds = %.lr.ph129
  %i.ce = load i32, ptr %i.bw, align 8            ; 3 uses
  %i.cf = icmp ult i32 %.6139, %i.ce
  br i1 %i.cf, label %.lr.ph54, label %.critedge8

.lr.ph129.split.us:                               ; preds = %.lr.ph54
  %i.cg = icmp ult i32 %i.cm, %i.ct
  br i1 %i.cg, label %.lr.ph54, label %.critedge8, !llvm.loop !56

.lr.ph54:                                         ; preds = %.lr.ph129.split.us.preheader, %.lr.ph129.split.us
  %.7127.us53 = phi i32 [ %i.cm, %.lr.ph129.split.us ], [ %.6139, %.lr.ph129.split.us.preheader ]
  %.0128.us52 = phi i1 [ %spec.select.us, %.lr.ph129.split.us ], [ false, %.lr.ph129.split.us.preheader ]
  %indvars.iv17351 = phi i64 [ %indvars.iv.next174, %.lr.ph129.split.us ], [ 0, %.lr.ph129.split.us.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv17351
  %i.ci = load ptr, ptr %i.by, align 8
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv17351 ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = add i16 %i.ck, 1
  store i16 %i.cl, ptr %i.cj, align 2
  %i.cm = add nuw nsw i32 %.7127.us53, 1          ; 4 uses
  %i.cn = load i16, ptr %i.ch, align 2
  %i.co = zext i16 %i.cn to i32
  %i.cp = icmp samesign ult i32 %.pre198, %i.co
  %spec.select.us = select i1 %i.cp, i1 true, i1 %.0128.us52 ; 3 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv17351, 1 ; 2 uses
  %i.cq = load i32, ptr %.phi.trans.insert, align 8 ; 5 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = icmp samesign ult i64 %indvars.iv.next174, %i.cr
  %i.ct = load i32, ptr %i.bw, align 8            ; 5 uses
  br i1 %i.cs, label %.lr.ph129.split.us, label %..critedge8.loopexit_crit_edge, !llvm.loop !56

..critedge8.loopexit_crit_edge:                   ; preds = %.lr.ph54
  br label %.critedge8, !llvm.loop !56

.lr.ph129.split:                                  ; preds = %bb.l
  %i.cu = icmp ult i32 %.8, %i.dk
  br i1 %i.cu, label %.lr.ph38, label %.critedge8, !llvm.loop !56

.lr.ph38:                                         ; preds = %.lr.ph129.split.preheader, %.lr.ph129.split
  %.712737 = phi i32 [ %.8, %.lr.ph129.split ], [ %.6139, %.lr.ph129.split.preheader ] ; 2 uses
  %.012836 = phi i1 [ %.1, %.lr.ph129.split ], [ false, %.lr.ph129.split.preheader ] ; 2 uses
  %indvars.iv17135 = phi i64 [ %indvars.iv.next172, %.lr.ph129.split ], [ 0, %.lr.ph129.split.preheader ] ; 3 uses
  %i.cv = phi i32 [ %i.dk, %.lr.ph129.split ], [ %.pre186, %.lr.ph129.split.preheader ]
  %i.cw = phi i32 [ %i.dj, %.lr.ph129.split ], [ %i.cb, %.lr.ph129.split.preheader ]
  %.pre18619434 = phi i32 [ %.pre186193, %.lr.ph129.split ], [ %.pre186, %.lr.ph129.split.preheader ]
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv17135 ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = zext i16 %i.cy to i32
  %i.da = icmp samesign ult i32 %.087138, %i.cz
  br i1 %i.da, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph38
  %i.db = load ptr, ptr %i.by, align 8
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %indvars.iv17135 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = add i16 %i.dd, 1
  store i16 %i.de, ptr %i.dc, align 2
  %i.df = add nuw nsw i32 %.712737, 1
  %i.dg = load i16, ptr %i.cx, align 2
  %i.dh = zext i16 %i.dg to i32
  %i.di = icmp samesign ult i32 %.pre198, %i.dh
  %spec.select = select i1 %i.di, i1 true, i1 %.012836
  %.pre185 = load i32, ptr %i.bw, align 8         ; 2 uses
  %.pre187.a = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph38
  %.pre186193 = phi i32 [ %.pre18619434, %.lr.ph38 ], [ %.pre185, %bb.k ] ; 3 uses
  %i.dj = phi i32 [ %i.cw, %.lr.ph38 ], [ %.pre187.a, %bb.k ] ; 6 uses
  %i.dk = phi i32 [ %i.cv, %.lr.ph38 ], [ %.pre185, %bb.k ] ; 4 uses
  %.8 = phi i32 [ %.712737, %.lr.ph38 ], [ %i.df, %bb.k ] ; 4 uses
  %.1 = phi i1 [ %.012836, %.lr.ph38 ], [ %spec.select, %bb.k ] ; 3 uses
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv17135, 1 ; 2 uses
  %i.dl = zext i32 %i.dj to i64
  %i.dm = icmp samesign ult i64 %indvars.iv.next172, %i.dl
  br i1 %i.dm, label %.lr.ph129.split, label %..critedge8.loopexit1_crit_edge, !llvm.loop !56

..critedge8.loopexit1_crit_edge:                  ; preds = %bb.l
  br label %.critedge8, !llvm.loop !56

.critedge8:                                       ; preds = %.lr.ph129.split, %.lr.ph129.split.us, %.lr.ph129.split.preheader, %..critedge8.loopexit1_crit_edge, %.lr.ph129.split.us.preheader, %.preheader, %..critedge8.loopexit_crit_edge
  %.pre186195 = phi i32 [ %i.ct, %.lr.ph129.split.us ], [ %.pre186, %.preheader ], [ %i.ct, %..critedge8.loopexit_crit_edge ], [ %i.ce, %.lr.ph129.split.us.preheader ], [ %.pre186, %.lr.ph129.split.preheader ], [ %.pre186193, %..critedge8.loopexit1_crit_edge ], [ %.pre186193, %.lr.ph129.split ]
  %i.dn = phi i32 [ %i.ct, %.lr.ph129.split.us ], [ %i.ca, %.preheader ], [ %i.ct, %..critedge8.loopexit_crit_edge ], [ %i.ce, %.lr.ph129.split.us.preheader ], [ %.pre186, %.lr.ph129.split.preheader ], [ %i.dk, %..critedge8.loopexit1_crit_edge ], [ %i.dk, %.lr.ph129.split ] ; 2 uses
  %i.do = phi i32 [ %i.cq, %.lr.ph129.split.us ], [ %i.cb, %.preheader ], [ %i.cq, %..critedge8.loopexit_crit_edge ], [ %i.cb, %.lr.ph129.split.us.preheader ], [ %i.cb, %.lr.ph129.split.preheader ], [ %i.dj, %..critedge8.loopexit1_crit_edge ], [ %i.dj, %.lr.ph129.split ] ; 2 uses
  %i.dp = phi i32 [ %i.cq, %.lr.ph129.split.us ], [ 0, %.preheader ], [ %i.cq, %..critedge8.loopexit_crit_edge ], [ %i.cc, %.lr.ph129.split.us.preheader ], [ %i.cc, %.lr.ph129.split.preheader ], [ %i.dj, %..critedge8.loopexit1_crit_edge ], [ %i.dj, %.lr.ph129.split ]
  %.7.lcssa = phi i32 [ %i.cm, %.lr.ph129.split.us ], [ %.6139, %.preheader ], [ %i.cm, %..critedge8.loopexit_crit_edge ], [ %.6139, %.lr.ph129.split.us.preheader ], [ %.6139, %.lr.ph129.split.preheader ], [ %.8, %..critedge8.loopexit1_crit_edge ], [ %.8, %.lr.ph129.split ] ; 2 uses
  %.0.lcssa = phi i1 [ %spec.select.us, %.lr.ph129.split.us ], [ false, %.preheader ], [ %spec.select.us, %..critedge8.loopexit_crit_edge ], [ false, %.lr.ph129.split.us.preheader ], [ false, %.lr.ph129.split.preheader ], [ %.1, %..critedge8.loopexit1_crit_edge ], [ %.1, %.lr.ph129.split ]
  %not..0.lcssa = xor i1 %.0.lcssa, true
  %spec.select100 = or i1 %.082.fr, %not..0.lcssa
  %i.dq = icmp ult i32 %.7.lcssa, %i.dn
  br i1 %i.dq, label %.preheader, label %.loopexit, !llvm.loop !57

.loopexit:                                        ; preds = %.critedge6, %.critedge8, %.critedge97..loopexit_crit_edge, %.critedge2
  %i.dr = phi i32 [ %.pre189.a, %.critedge97..loopexit_crit_edge ], [ %i.do, %.critedge8 ], [ %i.ba, %.critedge2 ], [ %i.bs, %.critedge6 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not158 = icmp eq i32 %i.dr, 0
  br i1 %.not158, label %._crit_edge149, label %.lr.ph148

.lr.ph148:                                        ; preds = %.loopexit
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre190 = load ptr, ptr %i.dt, align 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph148, %._crit_edge
  %i.dv = phi ptr [ %.pre190, %.lr.ph148 ], [ %i.ep, %._crit_edge ]
  %indvars.iv178 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next179, %._crit_edge ] ; 6 uses
  %.9146 = phi i32 [ 0, %.lr.ph148 ], [ %.10.lcssa, %._crit_edge ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv178
  %i.dx = load i16, ptr %i.dw, align 2
  %i.dy = zext i16 %i.dx to i64
  %i.dz = tail call ptr @slurm_xcalloc(i64 noundef %i.dy, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 755, ptr noundef nonnull @__func__._task_layout_block) #8
  %i.ea = load ptr, ptr %i.du, align 8
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv178
  store ptr %i.dz, ptr %i.eb, align 8
  %i.ec = load ptr, ptr %i.dt, align 8            ; 2 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %indvars.iv178
  %i.ee = load i16, ptr %i.ed, align 2
  %.not159 = icmp eq i16 %i.ee, 0
  br i1 %.not159, label %._crit_edge, label %.lr.ph143

end_hunk_0
