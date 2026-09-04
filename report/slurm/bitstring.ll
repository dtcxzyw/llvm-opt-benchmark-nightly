Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/bitstring?download=true
inline.NumInlined: 49
inline.NumDeleted: 6
begin_hunk_0_@bitstr2inx:bb.a
bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.02941 = phi i64 [ %.029.ph43, %.lr.ph ], [ %i.n, %bb.e ] ; 7 uses
  %i.j = ashr i64 %.02941, 6
  %i.k = getelementptr [8 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.not35 = icmp eq i64 %i.m, 0
  br i1 %.not35, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = add i64 %.02941, 64                      ; 2 uses
  %i.o = icmp slt i64 %i.n, %i.i
  br i1 %i.o, label %bb.d, label %.outer._crit_edge, !llvm.loop !50

bb.f:                                             ; preds = %bb.d
  %i.p = and i64 %.02941, 63
  %i.q = shl nuw i64 1, %i.p
  %i.r = and i64 %i.m, %i.q
  %.not36 = icmp eq i64 %i.r, 0
  %.pre50 = add nsw i64 %.02941, 1                ; 4 uses
  br i1 %.not36, label %.outer, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.f
  %i.s = icmp slt i64 %.pre50, %i.i
  br i1 %i.s, label %.lr.ph67, label %.critedge

.preheader:                                       ; preds = %.lr.ph67
  %i.t = add nsw i64 %i.v, 1                      ; 3 uses
  %i.u = icmp slt i64 %i.t, %i.i
  br i1 %i.u, label %.lr.ph67, label %.critedge, !llvm.loop !51

.lr.ph67:                                         ; preds = %.preheader.preheader, %.preheader
  %i.v = phi i64 [ %i.t, %.preheader ], [ %.pre50, %.preheader.preheader ] ; 6 uses
  %.13066 = phi i64 [ %i.v, %.preheader ], [ %.02941, %.preheader.preheader ]
  %i.w = ashr i64 %i.v, 6
  %i.x = getelementptr [8 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.v, 63
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.z, %i.ab
  %.not37 = icmp eq i64 %i.ac, 0
  br i1 %.not37, label %..critedge_crit_edge, label %.preheader, !llvm.loop !51

..critedge_crit_edge:                             ; preds = %.lr.ph67
  br label %.critedge, !llvm.loop !51

.critedge:                                        ; preds = %.preheader, %..critedge_crit_edge, %.preheader.preheader
  %.130.lcssa = phi i64 [ %.02941, %.preheader.preheader ], [ %.13066, %..critedge_crit_edge ], [ %i.v, %.preheader ]
  %.lcssa64 = phi i64 [ %.pre50, %.preheader.preheader ], [ %i.v, %..critedge_crit_edge ], [ %i.t, %.preheader ]
  %i.ad = trunc i64 %.02941 to i32
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.0.ph44 ; 2 uses
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = trunc i64 %.130.lcssa to i32
  %i.ag = add nsw i64 %.0.ph44, 2
  %i.ah = getelementptr i8, ptr %i.ae, i64 4
  store i32 %i.af, ptr %i.ah, align 4
  %.pre = load i64, ptr %i.b, align 8
  br label %.outer

.outer:                                           ; preds = %bb.f, %.critedge
  %.pre-phi = phi i64 [ %.lcssa64, %.critedge ], [ %.pre50, %bb.f ] ; 2 uses
  %i.ai = phi i64 [ %.pre, %.critedge ], [ %i.i, %bb.f ] ; 2 uses
  %.1 = phi i64 [ %i.ag, %.critedge ], [ %.0.ph44, %bb.f ] ; 2 uses
  %i.aj = icmp slt i64 %.pre-phi, %i.ai
  br i1 %i.aj, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !50

.outer._crit_edge:                                ; preds = %.outer, %bb.e, %bb.c
  %.0.ph.lcssa = phi i64 [ %.0.ph44, %bb.e ], [ 0, %bb.c ], [ %.1, %.outer ]
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.0.ph.lcssa
  store i32 -1, ptr %i.ak, align 4
  br label %bb.g

bb.g:                                             ; preds = %.outer._crit_edge, %bb.b
  %.031 = phi ptr [ %i.f, %.outer._crit_edge ], [ %i.a, %bb.b ]
  ret ptr %.031
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_bit_fmt_hexmask(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  br i1 %1, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i, label %bit_fls.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.01925.i.in.i = phi i64 [ %.01925.i.i, %bb.d ], [ %i.b, %bb.b ] ; 3 uses
  %.01925.i.i = add nsw i64 %.01925.i.in.i, -1    ; 5 uses
  %i.d = lshr i64 %.01925.i.i, 6                  ; 2 uses
  %i.e = lshr i64 %.01925.i.in.i, 6
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %.lr.ph33.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %.01925.i.i, 63
  %i.k = shl nuw i64 1, %i.j
  %i.l = and i64 %i.i, %i.k
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.d, label %bit_fls.exit

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ugt i64 %.01925.i.in.i, 1
  br i1 %i.m, label %.lr.ph.i.i, label %bit_fls.exit, !llvm.loop !6

.lr.ph33.i.i:                                     ; preds = %.lr.ph.i.i, %.outer.i.i
  %.120.ph39.i.i = phi i64 [ %i.v, %.outer.i.i ], [ %.01925.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.n = shl i64 %.120.ph39.i.i, 26
  %sext.i.i = add i64 %i.n, 8589934592
  %i.o = ashr i64 %sext.i.i, 32
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.outer.i.i, label %.lr.ph33.split.i.i

.lr.ph33.split.i.i:                               ; preds = %.lr.ph33.i.i
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.t = sub nsw i64 %.120.ph39.i.i, %i.s         ; 2 uses
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %.lr.ph33.split.split.i.i, label %bit_fls.exit, !llvm.loop !7

.lr.ph33.split.split.i.i:                         ; preds = %.lr.ph33.split.i.i, %.lr.ph33.split.split.i.i
  br label %.lr.ph33.split.split.i.i

.outer.i.i:                                       ; preds = %.lr.ph33.i.i
  %i.v = add nsw i64 %.120.ph39.i.i, -64
  %i.w = icmp sgt i64 %.120.ph39.i.i, 63
  br i1 %i.w, label %.lr.ph33.i.i, label %bit_fls.exit, !llvm.loop !7

bit_fls.exit:                                     ; preds = %bb.c, %bb.d, %.outer.i.i, %bb.b, %.lr.ph33.split.i.i
  %.021.i.i = phi i64 [ -1, %bb.b ], [ %i.t, %.lr.ph33.split.i.i ], [ -1, %.outer.i.i ], [ -1, %bb.d ], [ %.01925.i.i, %bb.c ]
  %i.x = add nsw i64 %.021.i.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bit_fls.exit
  %.061 = phi i64 [ %i.x, %bit_fls.exit ], [ %i.b, %bb.a ] ; 8 uses
  %.not = icmp eq i64 %.061, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @xstrdup(ptr noundef nonnull @.str.10) #16
  br label %.loopexit83

bb.g:                                             ; preds = %bb.e
  %i.z = add nsw i64 %.061, 3
  %i.aa = sdiv i64 %i.z, 4                        ; 2 uses
  %i.ab = add nsw i64 %i.aa, 3
  %i.ac = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.ab, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.3, i32 noundef 1540, ptr noundef nonnull @__func__._bit_fmt_hexmask) #16 ; 5 uses
  store i8 48, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 120, ptr %i.ad, align 1
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.aa  ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 2
  store i8 0, ptr %i.af, align 1
  %i.ag = icmp sgt i64 %.061, 0
  br i1 %i.ag, label %.lr.ph.preheader, label %.loopexit83

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %i.ae, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.06391 = phi i64 [ %.1, %.loopexit ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %.06690 = phi ptr [ %.268, %.loopexit ], [ %i.ah, %.lr.ph.preheader ] ; 3 uses
  %i.ai = add i64 %.06391, 64                     ; 2 uses
  %.not75 = icmp ugt i64 %i.ai, %.061
  %i.aj = ashr i64 %.06391, 6
  %i.ak = getelementptr [8 x i8], ptr %0, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 16     ; 2 uses
  br i1 %.not75, label %bb.h, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %.06289 = phi i64 [ %i.aw, %.preheader ], [ 0, %.lr.ph ] ; 2 uses
  %.16788 = phi ptr [ %i.av, %.preheader ], [ %.06690, %.lr.ph ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.06289
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @hexmask_lookup, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1
  store i8 %i.as, ptr %.16788, align 1
  %i.at = getelementptr inbounds i8, ptr %.16788, i64 -1
  %i.au = load i8, ptr %i.aq, align 1
  store i8 %i.au, ptr %i.at, align 1
  %i.av = getelementptr inbounds i8, ptr %.16788, i64 -2 ; 2 uses
  %i.aw = add nuw nsw i64 %.06289, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, 8
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !52

bb.h:                                             ; preds = %.lr.ph
  %i.ax = load i64, ptr %i.al, align 8
  %i.ay = and i64 %.06391, 63
  %i.az = lshr i64 %i.ax, %i.ay
  %2 = trunc i64 %i.az to i32
  %spec.select = and i32 %2, 1                    ; 3 uses
  %i.ba = add nsw i64 %.06391, 1                  ; 3 uses
  %i.bb = icmp slt i64 %i.ba, %.061
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = ashr i64 %i.ba, 6
  %i.bd = getelementptr [8 x i8], ptr %0, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = and i64 %i.ba, 63
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = and i64 %i.bf, %i.bh
  %.not77 = icmp eq i64 %i.bi, 0
  %3 = or disjoint i32 %spec.select, 2
  %spec.select80 = select i1 %.not77, i32 %spec.select, i32 %3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.165 = phi i32 [ %spec.select, %bb.h ], [ %spec.select80, %bb.i ] ; 3 uses
  %i.bj = add nsw i64 %.06391, 2                  ; 3 uses
  %i.bk = icmp slt i64 %i.bj, %.061
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = ashr i64 %i.bj, 6
  %i.bm = getelementptr [8 x i8], ptr %0, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = and i64 %i.bj, 63
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = and i64 %i.bo, %i.bq
  %.not78 = icmp eq i64 %i.br, 0
  %4 = or i32 %.165, 4
  %spec.select81 = select i1 %.not78, i32 %.165, i32 %4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2 = phi i32 [ %.165, %bb.j ], [ %spec.select81, %bb.k ] ; 3 uses
  %i.bs = add nsw i64 %.06391, 3                  ; 3 uses
  %i.bt = icmp slt i64 %i.bs, %.061
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = ashr i64 %i.bs, 6
  %i.bv = getelementptr [8 x i8], ptr %0, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = and i64 %i.bs, 63
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = and i64 %i.bx, %i.bz
  %.not79 = icmp eq i64 %i.ca, 0
  %5 = or i32 %.2, 8
  %spec.select82 = select i1 %.not79, i32 %.2, i32 %5
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3 = phi i32 [ %.2, %bb.l ], [ %spec.select82, %bb.m ] ; 2 uses
  %i.cb = add nsw i64 %.06391, 4
  %6 = and i32 %.3, 254
  %i.cc = icmp samesign ult i32 %6, 10
  %7 = trunc nuw nsw i32 %.3 to i8                ; 2 uses
  %i.cd = or i8 %7, 48
  %i.ce = add nuw nsw i8 %7, 55
  %.4 = select i1 %i.cc, i8 %i.cd, i8 %i.ce
  %i.cf = getelementptr inbounds i8, ptr %.06690, i64 -1
  store i8 %.4, ptr %.06690, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.n
  %.268 = phi ptr [ %i.cf, %bb.n ], [ %i.av, %.preheader ]
  %.1 = phi i64 [ %i.cb, %bb.n ], [ %i.ai, %.preheader ] ; 2 uses
  %i.cg = icmp slt i64 %.1, %.061
  br i1 %i.cg, label %.lr.ph, label %.loopexit83, !llvm.loop !53

.loopexit83:                                      ; preds = %.loopexit, %bb.g, %bb.f
  %.0 = phi ptr [ %i.y, %bb.f ], [ %i.ac, %bb.g ], [ %i.ac, %.loopexit ]
  ret ptr %.0
}

declare i32 @xstrncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bit_consolidate(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 7 uses
  %.not17.i = icmp ult i64 %i.b, 64
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.c = phi i64 [ %i.k, %.lr.ph.i ], [ 64, %bb.a ] ; 3 uses
  %.019.i = phi i32 [ %i.j, %.lr.ph.i ], [ 0, %bb.a ]
  %.01418.i = phi i64 [ %i.c, %.lr.ph.i ], [ 0, %bb.a ]
  %i.d = ashr exact i64 %.01418.i, 3
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.g)
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = add nuw nsw i32 %.019.i, %i.i            ; 2 uses
  %i.k = add i64 %i.c, 64                         ; 2 uses
  %.not.i = icmp ugt i64 %i.k, %i.b
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.014.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.c, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.j, %.lr.ph.i ] ; 2 uses
  %i.l = icmp slt i64 %.014.lcssa.i, %i.b
  br i1 %i.l, label %bb.b, label %bit_set_count.exit

bb.b:                                             ; preds = %._crit_edge.i
  %i.m = and i64 %i.b, 63
  %notmask.i = shl nsw i64 -1, %i.m
  %i.n = xor i64 %notmask.i, -1
  %i.o = ashr exact i64 %.014.lcssa.i, 3
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, %i.n
  %i.t = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.s)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = add nuw nsw i32 %.0.lcssa.i, %i.u
  br label %bit_set_count.exit

bit_set_count.exit:                               ; preds = %._crit_edge.i, %bb.b
  %.1.i = phi i32 [ %i.v, %bb.b ], [ %.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.not = icmp eq i32 %.1.i, 0
  br i1 %.not, label %bit_nset.exit, label %bb.c

bb.c:                                             ; preds = %bit_set_count.exit
  %i.w = sext i32 %.1.i to i64                    ; 4 uses
  %i.x = icmp sgt i64 %i.b, %i.w
  br i1 %i.x, label %bb.d, label %bit_nset.exit

bb.d:                                             ; preds = %bb.c
  %i.y = add nsw i64 %i.b, -1                     ; 3 uses
  %i.z = and i64 %i.w, -9223372036854775801
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i10, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %.lr.ph.i10, %bb.d
  %.017.lcssa.i = phi i64 [ %i.w, %bb.d ], [ %i.ab, %.lr.ph.i10 ] ; 5 uses
  %.not1823.i.not = icmp sgt i64 %i.b, %.017.lcssa.i
  br i1 %.not1823.i.not, label %.lr.ph25.i, label %.critedge2.i

.lr.ph.i10:                                       ; preds = %bb.d, %.lr.ph.i10
  %.01722.i = phi i64 [ %i.ab, %.lr.ph.i10 ], [ %i.w, %bb.d ] ; 4 uses
  %i.ab = add nsw i64 %.01722.i, 1                ; 3 uses
  %i.ac = and i64 %.01722.i, 63
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = xor i64 %i.ad, -1
  %i.af = ashr i64 %.01722.i, 6
  %i.ag = getelementptr [8 x i8], ptr %0, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 16     ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = and i64 %i.ai, %i.ae
  store i64 %i.aj, ptr %i.ah, align 8
  %.not.i11 = icmp slt i64 %.01722.i, %i.y
  %i.ak = and i64 %i.ab, -9223372036854775801
  %i.al = icmp sgt i64 %i.ak, 0
  %or.cond.i = and i1 %.not.i11, %i.al
  br i1 %or.cond.i, label %.lr.ph.i10, label %.critedge.preheader.i, !llvm.loop !0

.lr.ph25.i:                                       ; preds = %.critedge.preheader.i, %.critedge.i
  %.024.i = phi i64 [ %i.ap, %.critedge.i ], [ %i.y, %.critedge.preheader.i ] ; 6 uses
  %i.am = add nsw i64 %.024.i, 1
  %i.an = and i64 %i.am, -9223372036854775801
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.critedge.i, label %.critedge2.i

.critedge.i:                                      ; preds = %.lr.ph25.i
  %i.ap = add nsw i64 %.024.i, -1                 ; 2 uses
  %i.aq = and i64 %.024.i, 63
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = xor i64 %i.ar, -1
  %i.at = ashr i64 %.024.i, 6
  %i.au = getelementptr [8 x i8], ptr %0, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 16     ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = and i64 %i.aw, %i.as
  store i64 %i.ax, ptr %i.av, align 8
  %.not18.not.i = icmp sgt i64 %.024.i, %.017.lcssa.i
  br i1 %.not18.not.i, label %.lr.ph25.i, label %.critedge2.i, !llvm.loop !1

.critedge2.i:                                     ; preds = %.critedge.i, %.lr.ph25.i, %.critedge.preheader.i
  %.0.lcssa.i9 = phi i64 [ %i.y, %.critedge.preheader.i ], [ %.024.i, %.lr.ph25.i ], [ %i.ap, %.critedge.i ] ; 2 uses
  %i.ay = icmp sgt i64 %.0.lcssa.i9, %.017.lcssa.i
  br i1 %i.ay, label %bb.e, label %bit_nclear.exit

bb.e:                                             ; preds = %.critedge2.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = ashr i64 %.017.lcssa.i, 3
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  %reass.sub = sub i64 %.0.lcssa.i9, %.017.lcssa.i
  %i.bc = add i64 %reass.sub, 1
  %i.bd = lshr i64 %i.bc, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bb, i8 0, i64 %i.bd, i1 false)
  br label %bit_nclear.exit

bit_nclear.exit:                                  ; preds = %.critedge2.i, %bb.e
  %.not1823.i16 = icmp slt i32 %.1.i, 1
  br i1 %.not1823.i16, label %bit_nset.exit, label %.lr.ph25.i17.preheader

.lr.ph25.i17.preheader:                           ; preds = %bit_nclear.exit
  %i.be = add nsw i32 %.1.i, -1
  %i.bf = zext nneg i32 %i.be to i64
  br label %.lr.ph25.i17

.lr.ph25.i17:                                     ; preds = %.lr.ph25.i17.preheader, %.critedge.i22
  %.024.i18 = phi i64 [ %i.bi, %.critedge.i22 ], [ %i.bf, %.lr.ph25.i17.preheader ] ; 6 uses
  %i.bg = add nuw nsw i64 %.024.i18, 1            ; 2 uses
  %i.bh = and i64 %i.bg, -9223372036854775801
  %.not29 = icmp eq i64 %i.bh, 0
  br i1 %.not29, label %.critedge2.i19, label %.critedge.i22

.critedge.i22:                                    ; preds = %.lr.ph25.i17
  %i.bi = add nsw i64 %.024.i18, -1
  %i.bj = and i64 %.024.i18, 63
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = ashr i64 %.024.i18, 6
  %i.bm = getelementptr [8 x i8], ptr %0, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 16     ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = or i64 %i.bo, %i.bk
  store i64 %i.bp, ptr %i.bn, align 8
  %.not18.not.i23 = icmp sgt i64 %.024.i18, 0
  br i1 %.not18.not.i23, label %.lr.ph25.i17, label %bit_nset.exit, !llvm.loop !3

.critedge2.i19:                                   ; preds = %.lr.ph25.i17
  %.not30 = icmp eq i64 %.024.i18, 0
  br i1 %.not30, label %bit_nset.exit, label %bb.f

bb.f:                                             ; preds = %.critedge2.i19
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = lshr exact i64 %i.bg, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i8 -1, i64 %i.br, i1 false)
  br label %bit_nset.exit

bit_nset.exit:                                    ; preds = %.critedge.i22, %bit_nclear.exit, %bb.f, %.critedge2.i19, %bb.c, %bit_set_count.exit
  ret void
}

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
