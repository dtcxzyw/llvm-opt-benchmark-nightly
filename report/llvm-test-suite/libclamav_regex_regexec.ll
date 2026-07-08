inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@sslow:bb.a
  ]

bb.k:                                             ; preds = %bb.j
  %i.ad = load i32, ptr %i.p, align 8, !tbaa !22
  %i.ae = and i32 %i.ad, 8
  %.not112 = icmp eq i32 %i.ae, 0
  br i1 %.not112, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.o, align 8, !tbaa !35
  %i.ag = and i32 %i.af, 2
  %.not113 = icmp eq i32 %i.ag, 0
  br i1 %.not113, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !42
  %i.ai = add nsw i32 %i.ah, %.097
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.m, %bb.l
  %.1100 = phi i32 [ %i.ac, %bb.m ], [ %.099, %bb.l ], [ %.099, %bb.j ], [ %.099, %bb.k ] ; 4 uses
  %.198 = phi i32 [ %i.ai, %bb.m ], [ %.097, %bb.l ], [ %.097, %bb.j ], [ %.097, %bb.k ] ; 2 uses
  %i.aj = icmp sgt i32 %.198, 0
  br i1 %i.aj, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.n, %.preheader
  %.1103 = phi i64 [ %i.ak, %.preheader ], [ %.0102, %bb.n ] ; 2 uses
  %.2 = phi i32 [ %i.al, %.preheader ], [ %.198, %bb.n ] ; 2 uses
  %i.ak = tail call fastcc i64 @sstep(ptr noundef %i.k, i64 noundef %3, i64 noundef %4, i64 noundef %.1103, i32 noundef %.1100, i64 noundef %.1103) ; 2 uses
  %i.al = add nsw i32 %.2, -1
  %.old17 = icmp samesign ugt i32 %.2, 1
  br i1 %.old17, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.n
  %.2104 = phi i64 [ %.0102, %bb.n ], [ %i.ak, %.preheader ] ; 4 uses
  %i.am = icmp eq i32 %.1100, 129
  br i1 %i.am, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %.not114 = icmp eq i32 %.0106, 128
  br i1 %.not114, label %.thread.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = tail call ptr @__ctype_b_loc() #16      ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !43
  %i.ap = sext i32 %.0106 to i64                  ; 2 uses
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !45
  %i.as = and i16 %i.ar, 8
  %i.at = icmp eq i16 %i.as, 0
  %i.au = icmp ne i32 %.0106, 95
  %or.cond.not117 = select i1 %i.at, i1 %i.au, i1 false
  %i.av = icmp ne i32 %i.w, 128
  %or.cond3 = select i1 %or.cond.not117, i1 %i.av, i1 false
  br i1 %or.cond3, label %bb.r, label %.thread124

bb.q:                                             ; preds = %.loopexit
  %.old2.not = icmp eq i32 %i.w, 128
  br i1 %.old2.not, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q
  %.pre134 = tail call ptr @__ctype_b_loc() #16
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.p
  %.pre-phi135 = phi ptr [ %.pre134, %._crit_edge ], [ %i.an, %bb.p ]
  %i.aw = load ptr, ptr %.pre-phi135, align 8, !tbaa !43
  %i.ax = sext i32 %i.w to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !45
  %i.ba = and i16 %i.az, 8
  %i.bb = icmp ne i16 %i.ba, 0
  %i.bc = icmp eq i32 %i.w, 95
  %or.cond6 = select i1 %i.bb, i1 true, i1 %i.bc
  %spec.select = select i1 %or.cond6, i32 133, i32 %.1100
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2101 = phi i32 [ 129, %bb.q ], [ %spec.select, %bb.r ] ; 2 uses
  %.not118 = icmp eq i32 %.0106, 128
  br i1 %.not118, label %.thread, label %..thread124_crit_edge

..thread124_crit_edge:                            ; preds = %bb.s
  %.pre = tail call ptr @__ctype_b_loc() #16
  %.pre132 = sext i32 %.0106 to i64
  br label %.thread124

.thread124:                                       ; preds = %..thread124_crit_edge, %bb.p
  %.pre-phi133 = phi i64 [ %.pre132, %..thread124_crit_edge ], [ %i.ap, %bb.p ]
  %.pre-phi = phi ptr [ %.pre, %..thread124_crit_edge ], [ %i.an, %bb.p ]
  %.2101127 = phi i32 [ %.2101, %..thread124_crit_edge ], [ %.1100, %bb.p ] ; 4 uses
  %i.bd = load ptr, ptr %.pre-phi, align 8, !tbaa !43 ; 2 uses
  %i.be = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %.pre-phi133
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !45
  %i.bg = and i16 %i.bf, 8
  %i.bh = icmp ne i16 %i.bg, 0
  %i.bi = icmp eq i32 %.0106, 95
  %or.cond9 = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond9, label %bb.t, label %.thread

bb.t:                                             ; preds = %.thread124
  %i.bj = icmp eq i32 %.2101127, 130
  br i1 %i.bj, label %.thread128, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not119 = icmp eq i32 %i.w, 128
  br i1 %.not119, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = sext i32 %i.w to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !45
  %i.bn = and i16 %i.bm, 8
  %i.bo = icmp ne i16 %i.bn, 0
  %i.bp = icmp eq i32 %i.w, 95
  %or.cond12 = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond12, label %.thread, label %.thread128

.thread:                                          ; preds = %.thread124, %bb.v, %bb.u, %bb.s
  %.3 = phi i32 [ %.2101, %bb.s ], [ %.2101127, %bb.v ], [ %.2101127, %bb.u ], [ %.2101127, %.thread124 ]
  %i.bq = icmp eq i32 %.3, 133
  br i1 %i.bq, label %.thread128, label %.thread.thread

.thread128:                                       ; preds = %bb.v, %bb.t, %.thread
  %.3131 = phi i32 [ 133, %.thread ], [ 134, %bb.t ], [ 134, %bb.v ]
  %i.br = tail call fastcc i64 @sstep(ptr noundef %i.k, i64 noundef %3, i64 noundef %4, i64 noundef %.2104, i32 noundef %.3131, i64 noundef %.2104)
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.o, %.thread, %.thread128
  %.3105 = phi i64 [ %i.br, %.thread128 ], [ %.2104, %.thread ], [ %.2104, %bb.o ] ; 3 uses
  %i.bs = and i64 %.3105, %i.s
  %.not120 = icmp eq i64 %i.bs, 0
  %spec.select121 = select i1 %.not120, ptr %.0, ptr %.0107 ; 2 uses
  %i.bt = icmp eq i64 %.3105, %i.b
  %i.bu = icmp eq ptr %.0107, %2
  %or.cond = or i1 %i.bu, %i.bt
  br i1 %or.cond, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread.thread
  %i.bv = tail call fastcc i64 @sstep(ptr noundef %i.k, i64 noundef %3, i64 noundef %4, i64 noundef %.3105, i32 noundef %i.w, i64 noundef %i.b)
  %i.bw = getelementptr inbounds nuw i8, ptr %.0107, i64 1
  br label %bb.d

bb.x:                                             ; preds = %.thread.thread
  ret ptr %spec.select121
}

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @sdissect(ptr noundef nonnull %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i64 %3, %4
  br i1 %i.a, label %.lr.ph171, label %._crit_edge172

.lr.ph171:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph171, %bb.n
  %.0142169 = phi ptr [ %1, %.lr.ph171 ], [ %.1143, %bb.n ] ; 17 uses
  %.0146168 = phi i64 [ %3, %.lr.ph171 ], [ %i.s, %bb.n ] ; 12 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.0146168
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50   ; 8 uses
  %i.i = trunc i64 %i.h to i32
  %trunc = and i32 %i.i, -134217728
  switch i32 %trunc, label %.loopexit [
    i32 1207959552, label %bb.c
    i32 1476395008, label %bb.c
    i32 2013265920, label %.preheader156
  ]

.preheader156:                                    ; preds = %bb.b
  %i.j = and i64 %i.h, 4160749568
  %.not161 = icmp eq i64 %i.j, 2415919104
  br i1 %.not161, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = and i64 %i.h, 134217727
  %i.l = add i64 %i.k, %.0146168
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader156, %.lr.ph
  %i.m = phi i64 [ %i.q, %.lr.ph ], [ %i.h, %.preheader156 ]
  %.0144162 = phi i64 [ %i.o, %.lr.ph ], [ %.0146168, %.preheader156 ]
  %i.n = and i64 %i.m, 134217727
  %i.o = add i64 %i.n, %.0144162                  ; 3 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !50   ; 2 uses
  %i.r = and i64 %i.q, 4160749568
  %.not = icmp eq i64 %i.r, 2415919104
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !73

.loopexit:                                        ; preds = %.lr.ph, %.preheader156, %bb.c, %bb.b
  %.1145 = phi i64 [ %.0146168, %bb.b ], [ %i.l, %bb.c ], [ %.0146168, %.preheader156 ], [ %i.o, %.lr.ph ] ; 5 uses
  %i.s = add nsw i64 %.1145, 1                    ; 8 uses
  %5 = and i64 %i.h, 4160749568
  %6 = add nsw i64 %5, -134217728
  %7 = lshr exact i64 %6, 27
  switch i64 %7, label %bb.n [
    i64 13, label %bb.m
    i64 1, label %bb.d
    i64 12, label %bb.l
    i64 14, label %.preheader
    i64 8, label %.preheader154
    i64 10, label %.preheader155
    i64 4, label %bb.e
    i64 5, label %bb.e
  ]

bb.d:                                             ; preds = %.loopexit
  %i.t = getelementptr inbounds nuw i8, ptr %.0142169, i64 1
  br label %bb.n

bb.e:                                             ; preds = %.loopexit, %.loopexit
  %i.u = getelementptr inbounds nuw i8, ptr %.0142169, i64 1
  br label %bb.n

.preheader155:                                    ; preds = %.loopexit, %.preheader155
  %.0140 = phi ptr [ %i.y, %.preheader155 ], [ %2, %.loopexit ]
  %i.v = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %.0140, i64 noundef %.0146168, i64 noundef %i.s) ; 6 uses
  %i.w = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %i.v, ptr noundef %2, i64 noundef %i.s, i64 noundef %4)
  %i.x = icmp eq ptr %i.w, %2
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 -1
  br i1 %i.x, label %bb.f, label %.preheader155

bb.f:                                             ; preds = %.preheader155
  %i.z = add nsw i64 %.0146168, 1                 ; 2 uses
  %i.aa = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.v, i64 noundef %i.z, i64 noundef %.1145)
  %.not151 = icmp eq ptr %i.aa, null
  br i1 %.not151, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call fastcc ptr @sdissect(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.v, i64 noundef %i.z, i64 noundef %.1145) ; 0 uses
  br label %bb.n

.preheader154:                                    ; preds = %.loopexit, %.preheader154
  %.1141 = phi ptr [ %i.af, %.preheader154 ], [ %2, %.loopexit ]
  %i.ac = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %.1141, i64 noundef %.0146168, i64 noundef %i.s) ; 4 uses
  %i.ad = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %i.ac, ptr noundef %2, i64 noundef %i.s, i64 noundef %4)
  %i.ae = icmp eq ptr %i.ad, %2
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -1
  br i1 %i.ae, label %bb.h, label %.preheader154

bb.h:                                             ; preds = %.preheader154
  %i.ag = add nsw i64 %.0146168, 1                ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0136 = phi ptr [ %.0142169, %bb.h ], [ %i.ah, %bb.i ] ; 5 uses
  %.0 = phi ptr [ %.0142169, %bb.h ], [ %.0136, %bb.i ]
  %i.ah = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %.0136, ptr noundef %i.ac, i64 noundef %i.ag, i64 noundef %.1145) ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null                 ; 3 uses
  %i.aj = icmp eq ptr %i.ah, %.0136
  %or.cond = or i1 %i.ai, %i.aj
  br i1 %or.cond, label %bb.j, label %bb.i

bb.j:                                             ; preds = %bb.i
  %spec.select = select i1 %i.ai, ptr %.0, ptr %.0136
  %spec.select152 = select i1 %i.ai, ptr %.0136, ptr %i.ah
  %i.ak = tail call fastcc ptr @sdissect(ptr noundef %0, ptr noundef %spec.select, ptr noundef %spec.select152, i64 noundef %i.ag, i64 noundef %.1145) ; 0 uses
  br label %bb.n

.preheader:                                       ; preds = %.loopexit, %.preheader
  %.2 = phi ptr [ %i.ao, %.preheader ], [ %2, %.loopexit ]
  %i.al = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %.2, i64 noundef %.0146168, i64 noundef %i.s) ; 8 uses
  %i.am = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %i.al, ptr noundef %2, i64 noundef %i.s, i64 noundef %4)
  %i.an = icmp eq ptr %i.am, %2
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 -1
  br i1 %i.an, label %bb.k, label %.preheader

bb.k:                                             ; preds = %.preheader
  %i.ap = and i64 %i.h, 134217727
  %i.aq = add nsw i64 %.0146168, -1
  %i.ar = add i64 %i.aq, %i.ap                    ; 3 uses
  %.0139163 = add nsw i64 %.0146168, 1            ; 2 uses
  %i.as = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.al, i64 noundef %.0139163, i64 noundef %i.ar)
  %i.at = icmp eq ptr %i.as, %i.al
  br i1 %i.at, label %._crit_edge, label %.lr.ph165

.lr.ph165:                                        ; preds = %bb.k, %.lr.ph165
  %.0137164 = phi i64 [ %spec.select153, %.lr.ph165 ], [ %i.ar, %bb.k ] ; 3 uses
  %i.au = add nsw i64 %.0137164, 1                ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !50
  %i.ax = and i64 %i.aw, 134217727                ; 2 uses
  %i.ay = add i64 %i.ax, %i.au                    ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !50
  %i.bb = and i64 %i.ba, 4160749568
  %i.bc = icmp eq i64 %i.bb, 2281701376
  %i.bd = add i64 %i.ax, %.0137164
  %spec.select153 = select i1 %i.bc, i64 %i.bd, i64 %i.ay ; 3 uses
  %.0139 = add nsw i64 %.0137164, 2               ; 2 uses
  %i.be = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.al, i64 noundef %.0139, i64 noundef %spec.select153)
  %i.bf = icmp eq ptr %i.be, %i.al
  br i1 %i.bf, label %._crit_edge, label %.lr.ph165

._crit_edge:                                      ; preds = %.lr.ph165, %bb.k
  %.0137.lcssa = phi i64 [ %i.ar, %bb.k ], [ %spec.select153, %.lr.ph165 ]
  %.0139.lcssa = phi i64 [ %.0139163, %bb.k ], [ %.0139, %.lr.ph165 ]
  %i.bg = tail call fastcc ptr @sdissect(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.al, i64 noundef %.0139.lcssa, i64 noundef %.0137.lcssa) ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %.loopexit
  %i.bh = and i64 %i.h, 134217727
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.bj = ptrtoint ptr %.0142169 to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bh
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !23
  br label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.bo = and i64 %i.h, 134217727
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.bq = ptrtoint ptr %.0142169 to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bo
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.bs, ptr %i.bv, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.e, %bb.j, %._crit_edge, %bb.l, %bb.m, %.loopexit
  %.1143 = phi ptr [ %.0142169, %.loopexit ], [ %.0142169, %bb.m ], [ %i.t, %bb.d ], [ %.0142169, %bb.l ], [ %i.al, %._crit_edge ], [ %i.ac, %bb.j ], [ %i.u, %bb.e ], [ %i.v, %bb.f ], [ %i.v, %bb.g ] ; 2 uses
  %i.bw = icmp slt i64 %i.s, %4
  br i1 %i.bw, label %bb.b, label %._crit_edge172, !llvm.loop !74

._crit_edge172:                                   ; preds = %bb.n, %bb.a
  %.0142.lcssa = phi ptr [ %1, %bb.a ], [ %.1143, %bb.n ]
  ret ptr %.0142.lcssa
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @sbackref(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = icmp slt i64 %3, %4
  br i1 %i.g, label %.lr.ph.lr.ph.lr.ph, label %.loopexit438

.lr.ph.lr.ph.lr.ph:                               ; preds = %bb.a, %tailrecurse.outer.backedge
  %.tr274.ph596 = phi i32 [ %.tr274.ph282590, %tailrecurse.outer.backedge ], [ %6, %bb.a ]
  %.tr273.ph595 = phi i64 [ %.tr273.ph.be, %tailrecurse.outer.backedge ], [ %5, %bb.a ] ; 10 uses
  %.tr271.ph594 = phi i64 [ %i.dr, %tailrecurse.outer.backedge ], [ %3, %bb.a ]
  %.tr269.ph593 = phi ptr [ %.0234343, %tailrecurse.outer.backedge ], [ %1, %bb.a ]
  br label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.lr.ph.lr.ph.lr.ph, %tailrecurse.outer279
  %.tr274.ph282590 = phi i32 [ %.tr274.ph596, %.lr.ph.lr.ph.lr.ph ], [ %.0230, %tailrecurse.outer279 ] ; 10 uses
  %.tr271.ph281589 = phi i64 [ %.tr271.ph594, %.lr.ph.lr.ph.lr.ph ], [ %i.eq, %tailrecurse.outer279 ]
  %.tr269.ph280588 = phi ptr [ %.tr269.ph593, %.lr.ph.lr.ph.lr.ph ], [ %i.er, %tailrecurse.outer279 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %tailrecurse
  %.tr271586 = phi i64 [ %.tr271.ph281589, %.lr.ph.lr.ph ], [ %i.ev, %tailrecurse ]
  %.tr269585 = phi ptr [ %.tr269.ph280588, %.lr.ph.lr.ph ], [ %.0234343, %tailrecurse ]
  %i.h = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit275
  %.0234343 = phi ptr [ %.tr269585, %.lr.ph ], [ %.1235, %.loopexit275 ] ; 52 uses
  %.0236342 = phi i64 [ %.tr271586, %.lr.ph ], [ %i.dp, %.loopexit275 ] ; 16 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.0236342
  %i.n = load i64, ptr %i.m, align 8, !tbaa !50   ; 3 uses
  %7 = and i64 %i.n, 4160749568
  %8 = add nsw i64 %7, -268435456
  %9 = lshr exact i64 %8, 27
  switch i64 %9, label %bb.ak [
    i64 0, label %bb.c
    i64 3, label %bb.e
    i64 4, label %bb.g
    i64 1, label %bb.i
    i64 2, label %bb.n
    i64 17, label %bb.s
    i64 18, label %bb.aa
    i64 10, label %.loopexit275
    i64 14, label %bb.ai
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq ptr %.0234343, %2
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.0234343, i64 1
  %i.q = load i8, ptr %.0234343, align 1, !tbaa !27
  %i.r = trunc i64 %i.n to i8
  %.not265 = icmp eq i8 %i.q, %i.r
  br i1 %.not265, label %.loopexit275, label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.s = icmp eq ptr %.0234343, %2
  br i1 %i.s, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.0234343, i64 1
  br label %.loopexit275

bb.g:                                             ; preds = %bb.b
  %i.u = icmp eq ptr %.0234343, %2
  br i1 %i.u, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.w = and i64 %i.n, 134217727
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %.0234343, i64 1
  %i.aa = load i8, ptr %.0234343, align 1, !tbaa !27
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !78
  %i.ag = and i8 %i.af, %i.ad
  %.not264 = icmp eq i8 %i.ag, 0
  br i1 %.not264, label %.loopexit, label %.loopexit275

bb.i:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.ai = icmp eq ptr %.0234343, %i.ah
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !35
  %i.ak = and i32 %i.aj, 1
  %.not262 = icmp eq i32 %i.ak, 0
  br i1 %.not262, label %.loopexit275, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.am = icmp ult ptr %.0234343, %i.al
  br i1 %i.am, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds i8, ptr %.0234343, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !27
  %i.ap = icmp eq i8 %i.ao, 10
  br i1 %i.ap, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.aq = load i32, ptr %i.k, align 8, !tbaa !22
  %i.ar = and i32 %i.aq, 8
  %.not263 = icmp eq i32 %i.ar, 0
  br i1 %.not263, label %.loopexit, label %.loopexit275

bb.n:                                             ; preds = %bb.b
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.at = icmp eq ptr %.0234343, %i.as
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = load i32, ptr %i.b, align 8, !tbaa !35
  %i.av = and i32 %i.au, 2
  %.not260 = icmp eq i32 %i.av, 0
  br i1 %.not260, label %.loopexit275, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aw = icmp ult ptr %.0234343, %i.as
  br i1 %i.aw, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.ax = load i8, ptr %.0234343, align 1, !tbaa !27
  %i.ay = icmp eq i8 %i.ax, 10
  br i1 %i.ay, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.az = load i32, ptr %i.k, align 8, !tbaa !22
  %i.ba = and i32 %i.az, 8
  %.not261 = icmp eq i32 %i.ba, 0
  br i1 %.not261, label %.loopexit, label %.loopexit275

bb.s:                                             ; preds = %bb.b
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.bc = icmp eq ptr %.0234343, %i.bb
  br i1 %i.bc, label %bb.t, label %._crit_edge415

._crit_edge415:                                   ; preds = %bb.s
  %.pre416 = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bd = load i32, ptr %i.b, align 8, !tbaa !35
  %i.be = and i32 %i.bd, 1
  %.not256 = icmp eq i32 %i.be, 0
  %.pre417 = load ptr, ptr %i.a, align 8, !tbaa !40 ; 2 uses
  br i1 %.not256, label %._crit_edge414, label %bb.u

bb.u:                                             ; preds = %._crit_edge415, %bb.t
  %i.bf = phi ptr [ %.pre416, %._crit_edge415 ], [ %.pre417, %bb.t ] ; 3 uses
  %i.bg = icmp ult ptr %.0234343, %i.bf
  br i1 %i.bg, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds i8, ptr %.0234343, i64 -1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !27
  %i.bj = icmp eq i8 %i.bi, 10
  br i1 %i.bj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bk = load i32, ptr %i.k, align 8, !tbaa !22
  %i.bl = and i32 %i.bk, 8
  %.not257 = icmp eq i32 %i.bl, 0
  br i1 %.not257, label %bb.x, label %._crit_edge414

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.bm = icmp ugt ptr %.0234343, %i.bb
  br i1 %i.bm, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.bn = tail call ptr @__ctype_b_loc() #16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !43
  %i.bp = getelementptr inbounds i8, ptr %.0234343, i64 -1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !27  ; 2 uses
  %i.br = sext i8 %i.bq to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !45
  %i.bu = and i16 %i.bt, 8
  %.not258 = icmp ne i16 %i.bu, 0
  %i.bv = icmp eq i8 %i.bq, 95
  %or.cond = or i1 %i.bv, %.not258
  br i1 %or.cond, label %.loopexit, label %._crit_edge414

._crit_edge414:                                   ; preds = %bb.t, %bb.y, %bb.w
  %i.bw = phi ptr [ %i.bf, %bb.w ], [ %i.bf, %bb.y ], [ %.pre417, %bb.t ]
  %i.bx = icmp ult ptr %.0234343, %i.bw
  br i1 %i.bx, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %._crit_edge414
  %i.by = tail call ptr @__ctype_b_loc() #16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !43
  %i.ca = load i8, ptr %.0234343, align 1, !tbaa !27 ; 2 uses
  %i.cb = sext i8 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !45
  %i.ce = and i16 %i.cd, 8
  %.not259 = icmp ne i16 %i.ce, 0
  %i.cf = icmp eq i8 %i.ca, 95
  %or.cond266 = or i1 %i.cf, %.not259
  br i1 %or.cond266, label %.loopexit275, label %.loopexit

bb.aa:                                            ; preds = %bb.b
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.ch = icmp eq ptr %.0234343, %i.cg
  br i1 %i.ch, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ci = load i32, ptr %i.b, align 8, !tbaa !35
  %i.cj = and i32 %i.ci, 2
  %.not252 = icmp eq i32 %i.cj, 0
  br i1 %.not252, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ck = icmp ult ptr %.0234343, %i.cg
  br i1 %i.ck, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.cl = load i8, ptr %.0234343, align 1, !tbaa !27 ; 3 uses
  %i.cm = icmp eq i8 %i.cl, 10
  br i1 %i.cm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cn = load i32, ptr %i.k, align 8, !tbaa !22
  %i.co = and i32 %i.cn, 8
  %.not253 = icmp eq i32 %i.co, 0
  br i1 %.not253, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cp = tail call ptr @__ctype_b_loc() #16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !43
  %i.cr = sext i8 %i.cl to i64
  %i.cs = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !45
  %i.cu = and i16 %i.ct, 8
  %.not254 = icmp ne i16 %i.cu, 0
  %i.cv = icmp eq i8 %i.cl, 95
  %or.cond267 = or i1 %i.cv, %.not254
  br i1 %or.cond267, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ab
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.cx = icmp ugt ptr %.0234343, %i.cw
  br i1 %i.cx, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.cy = tail call ptr @__ctype_b_loc() #16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !43
  %i.da = getelementptr inbounds i8, ptr %.0234343, i64 -1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !27  ; 2 uses
  %i.dc = sext i8 %i.db to i64
  %i.dd = getelementptr inbounds [2 x i8], ptr %i.cz, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !45
  %i.df = and i16 %i.de, 8
  %.not255 = icmp ne i16 %i.df, 0
  %i.dg = icmp eq i8 %i.db, 95
  %or.cond268 = or i1 %i.dg, %.not255
  br i1 %or.cond268, label %.loopexit275, label %.loopexit

bb.ai:                                            ; preds = %bb.b
  %i.dh = add nsw i64 %.0236342, 1                ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !50
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.1237 = phi i64 [ %i.dh, %bb.ai ], [ %i.dl, %bb.aj ]
  %.0228 = phi i64 [ %i.dj, %bb.ai ], [ %i.dn, %bb.aj ]
  %i.dk = and i64 %.0228, 134217727
  %i.dl = add i64 %i.dk, %.1237                   ; 3 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !50 ; 2 uses
  %i.do = and i64 %i.dn, 4160749568
  %.not251 = icmp eq i64 %i.do, 2415919104
  br i1 %.not251, label %.loopexit275, label %bb.aj, !llvm.loop !79

.loopexit275:                                     ; preds = %bb.aj, %bb.b, %bb.f, %bb.d, %bb.h, %bb.j, %bb.m, %bb.o, %bb.r, %bb.z, %bb.ah
  %.2 = phi i64 [ %.0236342, %bb.ah ], [ %.0236342, %bb.d ], [ %.0236342, %bb.f ], [ %.0236342, %bb.h ], [ %.0236342, %bb.m ], [ %.0236342, %bb.j ], [ %.0236342, %bb.r ], [ %.0236342, %bb.o ], [ %.0236342, %bb.z ], [ %.0236342, %bb.b ], [ %i.dl, %bb.aj ]
  %.1235 = phi ptr [ %.0234343, %bb.ah ], [ %i.p, %bb.d ], [ %i.t, %bb.f ], [ %i.z, %bb.h ], [ %.0234343, %bb.m ], [ %.0234343, %bb.j ], [ %.0234343, %bb.r ], [ %.0234343, %bb.o ], [ %.0234343, %bb.z ], [ %.0234343, %bb.b ], [ %.0234343, %bb.aj ] ; 2 uses
  %i.dp = add nsw i64 %.2, 1                      ; 2 uses
  %i.dq = icmp slt i64 %i.dp, %4
  br i1 %i.dq, label %bb.b, label %.loopexit438, !llvm.loop !80

.loopexit438:                                     ; preds = %tailrecurse.outer.backedge, %tailrecurse.outer279, %tailrecurse, %.loopexit275, %bb.a
  %.0234.lcssa.ph = phi ptr [ %i.er, %tailrecurse.outer279 ], [ %.1235, %.loopexit275 ], [ %.0234343, %tailrecurse ], [ %1, %bb.a ], [ %.0234343, %tailrecurse.outer.backedge ] ; 2 uses
  %.not244 = icmp eq ptr %.0234.lcssa.ph, %2
  %.0234. = select i1 %.not244, ptr %.0234.lcssa.ph, ptr null
  br label %.loopexit

bb.ak:                                            ; preds = %bb.b
  %i.dr = add nsw i64 %.0236342, 1                ; 8 uses
  %i.ds = load ptr, ptr %0, align 8, !tbaa !31
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !72 ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.du, i64 %.0236342
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !50 ; 7 uses
  %10 = and i64 %i.dw, 4160749568
  %11 = add nsw i64 %10, -939524096
  %12 = lshr exact i64 %11, 27
  switch i64 %12, label %.loopexit [
    i64 0, label %bb.al
    i64 4, label %bb.ar
    i64 2, label %bb.as
    i64 3, label %bb.at
    i64 8, label %bb.ax
    i64 6, label %bb.az
    i64 7, label %bb.bb
  ]

bb.al:                                            ; preds = %bb.ak
  %i.dx = and i64 %i.dw, 134217727                ; 2 uses
  %i.dy = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %i.dx ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !25 ; 3 uses
  %i.ec = icmp eq i64 %i.eb, -1
  br i1 %i.ec, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ed = load i64, ptr %i.dz, align 8, !tbaa !23 ; 3 uses
  %i.ee = sub nsw i64 %i.eb, %i.ed                ; 3 uses
  %i.ef = icmp eq i64 %i.eb, %i.ed
  br i1 %i.ef, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.eg = add nsw i32 %.tr274.ph282590, 1
  %i.eh = icmp sgt i32 %.tr274.ph282590, 100
  br i1 %i.eh, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0230 = phi i32 [ %i.eg, %bb.an ], [ %.tr274.ph282590, %bb.am ]
  %i.ei = sub i64 0, %i.ee
  %i.ej = getelementptr inbounds i8, ptr %2, i64 %i.ei
  %i.ek = icmp ugt ptr %.0234343, %i.ej
  br i1 %i.ek, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.el = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 %i.ed
  %bcmp = tail call i32 @bcmp(ptr %.0234343, ptr %i.em, i64 %i.ee)
  %.not249 = icmp eq i32 %bcmp, 0
  br i1 %.not249, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ap
  %i.en = or disjoint i64 %i.dx, 1073741824
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.preheader
  %.3 = phi i64 [ %i.eq, %bb.aq ], [ %.0236342, %.preheader ] ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.du, i64 %.3
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !50
  %.not250 = icmp eq i64 %i.ep, %i.en
  %i.eq = add nsw i64 %.3, 1                      ; 3 uses
  br i1 %.not250, label %tailrecurse.outer279, label %bb.aq, !llvm.loop !81

tailrecurse.outer279:                             ; preds = %bb.aq
  %i.er = getelementptr inbounds nuw i8, ptr %.0234343, i64 %i.ee ; 2 uses
  %i.es = icmp slt i64 %i.eq, %4
  br i1 %i.es, label %.lr.ph.lr.ph, label %.loopexit438

bb.ar:                                            ; preds = %bb.ak
  %i.et = tail call fastcc ptr @sbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.dr, i64 noundef %4, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not248 = icmp eq ptr %i.et, null
  br i1 %.not248, label %tailrecurse, label %.loopexit

tailrecurse:                                      ; preds = %bb.ar
  %i.eu = and i64 %i.dw, 134217727
  %i.ev = add i64 %i.eu, %i.dr                    ; 2 uses
  %i.ew = icmp slt i64 %i.ev, %4
  br i1 %i.ew, label %.lr.ph, label %.loopexit438

bb.as:                                            ; preds = %bb.ak
  %i.ex = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.ey = add nsw i64 %.tr273.ph595, 1            ; 2 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.ey
  store ptr %.0234343, ptr %i.ez, align 8, !tbaa !82
  br label %tailrecurse.outer.backedge

tailrecurse.outer.backedge:                       ; preds = %bb.as, %bb.au, %bb.aw
  %.tr273.ph.be = phi i64 [ %i.fk, %bb.aw ], [ %i.ff, %bb.au ], [ %i.ey, %bb.as ]
  %i.fa = icmp slt i64 %i.dr, %4
  br i1 %i.fa, label %.lr.ph.lr.ph.lr.ph, label %.loopexit438

bb.at:                                            ; preds = %bb.ak
  %i.fb = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %.tr273.ph595 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !82
  %i.fe = icmp eq ptr %.0234343, %i.fd
  br i1 %i.fe, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ff = add nsw i64 %.tr273.ph595, -1
  br label %tailrecurse.outer.backedge

bb.av:                                            ; preds = %bb.at
  store ptr %.0234343, ptr %i.fc, align 8, !tbaa !82
  %i.fg = and i64 %i.dw, 134217727
  %i.fh = sub i64 %i.dr, %i.fg
  %i.fi = tail call fastcc ptr @sbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.fh, i64 noundef %4, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.fk = add nsw i64 %.tr273.ph595, -1
  br label %tailrecurse.outer.backedge

bb.ax:                                            ; preds = %bb.ak
  %i.fl = and i64 %i.dw, 134217727
  %i.fm = add i64 %.0236342, -1
  %i.fn = add i64 %i.fm, %i.fl                    ; 2 uses
  %i.fo = tail call fastcc ptr @sbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.dr, i64 noundef %i.fn, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not247346 = icmp eq ptr %i.fo, null
  br i1 %.not247346, label %.lr.ph349, label %.loopexit

.lr.ph349:                                        ; preds = %bb.ax, %bb.ay
  %.0231347 = phi i64 [ %spec.select, %bb.ay ], [ %i.fn, %bb.ax ] ; 4 uses
  %i.fp = load ptr, ptr %0, align 8, !tbaa !31
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !72 ; 3 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %.0231347
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !50
  %i.fu = and i64 %i.ft, 4160749568
  %i.fv = icmp eq i64 %i.fu, 2415919104
  br i1 %i.fv, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph349
  %i.fw = add nsw i64 %.0231347, 1                ; 2 uses
  %i.fx = add nsw i64 %.0231347, 2
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.fw
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !50
  %i.ga = and i64 %i.fz, 134217727                ; 2 uses
  %i.gb = add i64 %i.ga, %i.fw                    ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.gb
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !50
  %i.ge = and i64 %i.gd, 4160749568
  %i.gf = icmp eq i64 %i.ge, 2281701376
  %i.gg = add i64 %i.ga, %.0231347
  %spec.select = select i1 %i.gf, i64 %i.gg, i64 %i.gb ; 2 uses
  %i.gh = tail call fastcc ptr @sbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.fx, i64 noundef %spec.select, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not247 = icmp eq ptr %i.gh, null
  br i1 %.not247, label %.lr.ph349, label %.loopexit

bb.az:                                            ; preds = %bb.ak
  %i.gi = and i64 %i.dw, 134217727                ; 2 uses
  %i.gj = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %i.gi ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !23
  %i.gm = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.gn = ptrtoint ptr %.0234343 to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  store i64 %i.gp, ptr %i.gk, align 8, !tbaa !23
  %i.gq = tail call fastcc ptr @sbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.dr, i64 noundef %4, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not246 = icmp eq ptr %i.gq, null
  br i1 %.not246, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.gr = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.gi
  store i64 %i.gl, ptr %i.gs, align 8, !tbaa !23
  br label %.loopexit

bb.bb:                                            ; preds = %bb.ak
  %i.gt = and i64 %i.dw, 134217727                ; 2 uses
  %i.gu = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %i.gt
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !25
  %i.gy = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.gz = ptrtoint ptr %.0234343 to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha
  store i64 %i.hb, ptr %i.gw, align 8, !tbaa !25
  %i.hc = tail call fastcc ptr @sbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.dr, i64 noundef %4, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not245 = icmp eq ptr %i.hc, null
  br i1 %.not245, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %bb.bb
  %i.hd = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.gt
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store i64 %i.gx, ptr %i.hf, align 8, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %bb.av, %bb.ap, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.ar, %bb.ac, %bb.af, %bb.ag, %bb.ah, %bb.x, %bb.y, %._crit_edge414, %bb.z, %bb.p, %bb.q, %bb.r, %bb.k, %bb.l, %bb.m, %bb.g, %bb.h, %bb.e, %bb.c, %bb.d, %bb.ay, %.lr.ph349, %bb.ax, %bb.bb, %bb.az, %.loopexit438, %bb.bc, %bb.ba
  %.0 = phi ptr [ %i.hc, %bb.bb ], [ %.0234., %.loopexit438 ], [ undef, %bb.ak ], [ null, %bb.ba ], [ %i.gq, %bb.az ], [ null, %bb.bc ], [ null, %.lr.ph349 ], [ null, %bb.ac ], [ %i.fo, %bb.ax ], [ null, %bb.ap ], [ %i.gh, %bb.ay ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.r ], [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.z ], [ null, %._crit_edge414 ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.ah ], [ null, %bb.ag ], [ null, %bb.af ], [ %i.et, %bb.ar ], [ null, %bb.al ], [ null, %bb.an ], [ null, %bb.ao ], [ %i.fi, %bb.av ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @sstep(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3, i32 noundef range(i32 -128, 135) %4, i64 noundef %5) unnamed_addr #7 {
bb.a:
  %.not131 = icmp eq i64 %1, %2
  br i1 %.not131, label %._crit_edge137, label %.lr.ph136

.lr.ph136:                                        ; preds = %bb.a
  %i.a = shl nuw i64 1, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.d = icmp sgt i32 %4, 127                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = and i32 %4, 255
  %i.g = zext nneg i32 %i.f to i64
  %i.h = icmp eq i32 %4, 134
  %i.i = icmp eq i32 %4, 133
  %i.j = and i32 %4, -2
  %or.cond3 = icmp eq i32 %i.j, 130
  %i.k = and i32 %4, -3
  %or.cond = icmp eq i32 %i.k, 129
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph136, %bb.ad
  %.0134 = phi i64 [ %5, %.lr.ph136 ], [ %.1, %bb.ad ] ; 37 uses
  %.0116133 = phi i64 [ %i.a, %.lr.ph136 ], [ %i.dg, %bb.ad ] ; 50 uses
  %.0118132 = phi i64 [ %1, %.lr.ph136 ], [ %i.df, %bb.ad ] ; 30 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.0118132 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !50   ; 7 uses
  %6 = and i64 %i.m, 4160749568
  %7 = add nsw i64 %6, -134217728
  %8 = lshr exact i64 %7, 27
  switch i64 %8, label %bb.ad [
    i64 17, label %bb.ac
    i64 1, label %bb.c
    i64 2, label %bb.e
    i64 3, label %bb.g
    i64 18, label %bb.i
    i64 19, label %bb.k
    i64 4, label %bb.m
    i64 5, label %bb.o
    i64 6, label %bb.r
    i64 7, label %bb.r
    i64 8, label %bb.s
    i64 9, label %bb.t
    i64 10, label %bb.v
    i64 11, label %bb.w
    i64 12, label %bb.x
    i64 13, label %bb.x
    i64 14, label %bb.y
    i64 15, label %bb.z
    i64 16, label %bb.aa
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = trunc i64 %i.m to i8
  %i.o = sext i8 %i.n to i32
  %i.p = icmp eq i32 %4, %i.o
  br i1 %i.p, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.q = and i64 %.0116133, %3
  %i.r = shl i64 %i.q, 1
  %i.s = or i64 %i.r, %.0134
  br label %bb.ad

bb.e:                                             ; preds = %bb.b
  br i1 %or.cond, label %bb.f, label %bb.ad

bb.f:                                             ; preds = %bb.e
  %i.t = and i64 %.0116133, %3
  %i.u = shl i64 %i.t, 1
  %i.v = or i64 %i.u, %.0134
  br label %bb.ad

bb.g:                                             ; preds = %bb.b
  br i1 %or.cond3, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %bb.g
  %i.w = and i64 %.0116133, %3
  %i.x = shl i64 %i.w, 1
  %i.y = or i64 %i.x, %.0134
  br label %bb.ad

bb.i:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.j, label %bb.ad

bb.j:                                             ; preds = %bb.i
  %i.z = and i64 %.0116133, %3
  %i.aa = shl i64 %i.z, 1
  %i.ab = or i64 %i.aa, %.0134
  br label %bb.ad

bb.k:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.l, label %bb.ad

bb.l:                                             ; preds = %bb.k
  %i.ac = and i64 %.0116133, %3
  %i.ad = shl i64 %i.ac, 1
  %i.ae = or i64 %i.ad, %.0134
  br label %bb.ad

bb.m:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.ad, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = and i64 %.0116133, %3
  %i.ag = shl i64 %i.af, 1
  %i.ah = or i64 %i.ag, %.0134
  br label %bb.ad

bb.o:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.ad, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.aj = and i64 %i.m, 134217727
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !76
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.g
  %i.an = load i8, ptr %i.am, align 1, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !78
  %i.aq = and i8 %i.ap, %i.an
  %.not127 = icmp eq i8 %i.aq, 0
  br i1 %.not127, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = and i64 %.0116133, %3
  %i.as = shl i64 %i.ar, 1
  %i.at = or i64 %i.as, %.0134
  br label %bb.ad

bb.r:                                             ; preds = %bb.b, %bb.b
  %i.au = and i64 %.0134, %.0116133
  %i.av = shl i64 %i.au, 1
  %i.aw = or i64 %i.av, %.0134
  br label %bb.ad

bb.s:                                             ; preds = %bb.b
  %i.ax = and i64 %.0134, %.0116133
  %i.ay = shl i64 %i.ax, 1
  %i.az = or i64 %i.ay, %.0134
  br label %bb.ad

bb.t:                                             ; preds = %bb.b
  %i.ba = and i64 %.0134, %.0116133
  %i.bb = shl i64 %i.ba, 1
  %i.bc = or i64 %i.bb, %.0134                    ; 3 uses
  %i.bd = and i64 %i.m, 134217727                 ; 3 uses
  %i.be = lshr i64 %.0116133, %i.bd               ; 2 uses
  %i.bf = and i64 %i.be, %i.bc
  %.not125 = icmp ne i64 %i.bf, 0
  %i.bg = and i64 %i.bc, %.0116133
  %i.bh = lshr i64 %i.bg, %i.bd
  %i.bi = or i64 %i.bh, %i.bc                     ; 3 uses
  %i.bj = and i64 %i.bi, %i.be
  %.not126 = icmp eq i64 %i.bj, 0
  %or.cond128 = select i1 %.not125, i1 true, i1 %.not126
  br i1 %or.cond128, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.neg = xor i64 %i.bd, -1
  %i.bk = add i64 %.0118132, %.neg                ; 2 uses
  %i.bl = shl nuw i64 1, %i.bk
  br label %bb.ad

bb.v:                                             ; preds = %bb.b
  %i.bm = and i64 %.0134, %.0116133
  %i.bn = shl i64 %i.bm, 1
  %i.bo = or i64 %i.bn, %.0134                    ; 2 uses
  %i.bp = and i64 %i.bo, %.0116133
  %i.bq = and i64 %i.m, 134217727
  %i.br = shl i64 %i.bp, %i.bq
  %i.bs = or i64 %i.br, %i.bo
  br label %bb.ad

bb.w:                                             ; preds = %bb.b
  %i.bt = and i64 %.0134, %.0116133
  %i.bu = shl i64 %i.bt, 1
  %i.bv = or i64 %i.bu, %.0134
  br label %bb.ad

bb.x:                                             ; preds = %bb.b, %bb.b
  %i.bw = and i64 %.0134, %.0116133
  %i.bx = shl i64 %i.bw, 1
  %i.by = or i64 %i.bx, %.0134
  br label %bb.ad

bb.y:                                             ; preds = %bb.b
  %i.bz = and i64 %.0134, %.0116133
  %i.ca = shl i64 %i.bz, 1
  %i.cb = or i64 %i.ca, %.0134                    ; 2 uses
  %i.cc = and i64 %i.cb, %.0116133
  %i.cd = and i64 %i.m, 134217727
  %i.ce = shl i64 %i.cc, %i.cd
  %i.cf = or i64 %i.ce, %i.cb
  br label %bb.ad

bb.z:                                             ; preds = %bb.b
  %i.cg = and i64 %.0134, %.0116133               ; 2 uses
  %.not123 = icmp eq i64 %i.cg, 0
  br i1 %.not123, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %bb.z
  %i.ch = getelementptr i8, ptr %i.l, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !50 ; 2 uses
  %i.cj = and i64 %i.ci, 4160749568
  %.not124129 = icmp eq i64 %i.cj, 2415919104
  br i1 %.not124129, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.ck = phi i64 [ %i.co, %.lr.ph ], [ %i.ci, %.preheader ]
  %.0115130 = phi i64 [ %i.cm, %.lr.ph ], [ 1, %.preheader ]
  %i.cl = and i64 %i.ck, 134217727
  %i.cm = add i64 %i.cl, %.0115130                ; 3 uses
  %i.cn = getelementptr [8 x i8], ptr %i.l, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !50 ; 2 uses
  %i.cp = and i64 %i.co, 4160749568
  %.not124 = icmp eq i64 %i.cp, 2415919104
  br i1 %.not124, label %._crit_edge, label %.lr.ph, !llvm.loop !83

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.0115.lcssa = phi i64 [ 1, %.preheader ], [ %i.cm, %.lr.ph ]
  %i.cq = shl i64 %i.cg, %.0115.lcssa
  %i.cr = or i64 %i.cq, %.0134
  br label %bb.ad

bb.aa:                                            ; preds = %bb.b
  %i.cs = and i64 %.0134, %.0116133
  %i.ct = shl i64 %i.cs, 1
  %i.cu = or i64 %i.ct, %.0134                    ; 3 uses
  %i.cv = and i64 %i.m, 134217727                 ; 2 uses
  %i.cw = getelementptr [8 x i8], ptr %i.l, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !50
  %i.cy = and i64 %i.cx, 4160749568
  %.not122 = icmp eq i64 %i.cy, 2415919104
  br i1 %.not122, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = and i64 %i.cu, %.0116133
  %i.da = shl i64 %i.cz, %i.cv
  %i.db = or i64 %i.da, %i.cu
  br label %bb.ad

bb.ac:                                            ; preds = %bb.b
  %i.dc = and i64 %.0134, %.0116133
  %i.dd = shl i64 %i.dc, 1
  %i.de = or i64 %i.dd, %.0134
  br label %bb.ad

bb.ad:                                            ; preds = %bb.r, %bb.s, %bb.v, %bb.w, %bb.x, %bb.y, %bb.ac, %bb.d, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %bb.i, %bb.l, %bb.k, %bb.n, %bb.m, %bb.q, %bb.p, %bb.o, %bb.u, %bb.t, %._crit_edge, %bb.z, %bb.ab, %bb.aa, %bb.b
end_hunk_0
begin_hunk_1_@lslow:bb.a

._crit_edge138:                                   ; preds = %bb.l
  %.pre139 = load ptr, ptr %0, align 8, !tbaa !55
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge138, %bb.k
  %i.ar = phi ptr [ %.pre139, %._crit_edge138 ], [ %i.al, %bb.k ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.at = load i32, ptr %i.as, align 8, !tbaa !42
  %i.au = add nsw i32 %i.at, %.0104
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.m, %bb.l
  %.1107 = phi i32 [ %i.ak, %bb.m ], [ %.0106, %bb.l ], [ %.0106, %bb.j ], [ %.0106, %bb.k ] ; 4 uses
  %.1105 = phi i32 [ %i.au, %bb.m ], [ %.0104, %bb.l ], [ %.0104, %bb.j ], [ %.0104, %bb.k ] ; 2 uses
  %i.av = icmp sgt i32 %.1105, 0
  br i1 %i.av, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.n, %.preheader
  %.2 = phi i32 [ %i.ay, %.preheader ], [ %.1105, %bb.n ] ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !55
  %i.ax = tail call fastcc ptr @lstep(ptr noundef %i.aw, i64 noundef %3, i64 noundef %4, ptr noundef %i.b, i32 noundef %.1107, ptr noundef %i.b) ; 0 uses
  %i.ay = add nsw i32 %.2, -1
  %.old17 = icmp samesign ugt i32 %.2, 1
  br i1 %.old17, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.n
  %i.az = icmp eq i32 %.1107, 129
  br i1 %i.az, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %.not120 = icmp eq i32 %.0113, 128
  br i1 %.not120, label %.thread.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = tail call ptr @__ctype_b_loc() #16      ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bc = sext i32 %.0113 to i64                  ; 2 uses
  %i.bd = getelementptr inbounds [2 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !45
  %i.bf = and i16 %i.be, 8
  %i.bg = icmp eq i16 %i.bf, 0
  %i.bh = icmp ne i32 %.0113, 95
  %or.cond.not123 = select i1 %i.bg, i1 %i.bh, i1 false
  %i.bi = icmp ne i32 %i.aa, 128
  %or.cond3 = select i1 %or.cond.not123, i1 %i.bi, i1 false
  br i1 %or.cond3, label %bb.r, label %.thread130

bb.q:                                             ; preds = %.loopexit
  %.old2.not = icmp eq i32 %i.aa, 128
  br i1 %.old2.not, label %bb.s, label %._crit_edge140

._crit_edge140:                                   ; preds = %bb.q
  %.pre144 = tail call ptr @__ctype_b_loc() #16
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge140, %bb.p
  %.pre-phi145 = phi ptr [ %.pre144, %._crit_edge140 ], [ %i.ba, %bb.p ]
  %i.bj = load ptr, ptr %.pre-phi145, align 8, !tbaa !43
  %i.bk = sext i32 %i.aa to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !45
  %i.bn = and i16 %i.bm, 8
  %i.bo = icmp ne i16 %i.bn, 0
  %i.bp = icmp eq i32 %i.aa, 95
  %or.cond6 = select i1 %i.bo, i1 true, i1 %i.bp
  %spec.select = select i1 %or.cond6, i32 133, i32 %.1107
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2108 = phi i32 [ 129, %bb.q ], [ %spec.select, %bb.r ] ; 2 uses
  %.not124 = icmp eq i32 %.0113, 128
  br i1 %.not124, label %.thread, label %..thread130_crit_edge

..thread130_crit_edge:                            ; preds = %bb.s
  %.pre141 = tail call ptr @__ctype_b_loc() #16
  %.pre142 = sext i32 %.0113 to i64
  br label %.thread130

.thread130:                                       ; preds = %..thread130_crit_edge, %bb.p
  %.pre-phi143 = phi i64 [ %.pre142, %..thread130_crit_edge ], [ %i.bc, %bb.p ]
  %.pre-phi = phi ptr [ %.pre141, %..thread130_crit_edge ], [ %i.ba, %bb.p ]
  %.2108133 = phi i32 [ %.2108, %..thread130_crit_edge ], [ %.1107, %bb.p ] ; 4 uses
  %i.bq = load ptr, ptr %.pre-phi, align 8, !tbaa !43 ; 2 uses
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %.pre-phi143
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !45
  %i.bt = and i16 %i.bs, 8
  %i.bu = icmp ne i16 %i.bt, 0
  %i.bv = icmp eq i32 %.0113, 95
  %or.cond9 = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %or.cond9, label %bb.t, label %.thread

bb.t:                                             ; preds = %.thread130
  %i.bw = icmp eq i32 %.2108133, 130
  br i1 %i.bw, label %.thread134, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not125 = icmp eq i32 %i.aa, 128
  br i1 %.not125, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = sext i32 %i.aa to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !45
  %i.ca = and i16 %i.bz, 8
  %i.cb = icmp ne i16 %i.ca, 0
  %i.cc = icmp eq i32 %i.aa, 95
  %or.cond12 = select i1 %i.cb, i1 true, i1 %i.cc
  br i1 %or.cond12, label %.thread, label %.thread134

.thread:                                          ; preds = %.thread130, %bb.v, %bb.u, %bb.s
  %.3 = phi i32 [ %.2108, %bb.s ], [ %.2108133, %bb.v ], [ %.2108133, %bb.u ], [ %.2108133, %.thread130 ]
  %i.cd = icmp eq i32 %.3, 133
  br i1 %i.cd, label %.thread134, label %.thread.thread

.thread134:                                       ; preds = %bb.v, %bb.t, %.thread
  %.3137 = phi i32 [ 133, %.thread ], [ 134, %bb.t ], [ 134, %bb.v ]
  %i.ce = load ptr, ptr %0, align 8, !tbaa !55
  %i.cf = tail call fastcc ptr @lstep(ptr noundef %i.ce, i64 noundef %3, i64 noundef %4, ptr noundef %i.b, i32 noundef %.3137, ptr noundef %i.b) ; 0 uses
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.o, %.thread, %.thread134
  %i.cg = load i8, ptr %i.v, align 1, !tbaa !27
  %.not126 = icmp eq i8 %i.cg, 0
  %spec.select127 = select i1 %.not126, ptr %.0, ptr %.0114 ; 2 uses
  %i.ch = load ptr, ptr %0, align 8, !tbaa !55
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !19 ; 2 uses
  %bcmp = tail call i32 @bcmp(ptr %i.b, ptr %i.d, i64 %i.cj)
  %i.ck = icmp eq i32 %bcmp, 0
  %i.cl = icmp eq ptr %.0114, %2
  %or.cond = or i1 %i.cl, %i.ck
  br i1 %or.cond, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread.thread
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.f, ptr nonnull align 1 %i.b, i64 %i.cj, i1 false)
  %i.cm = load ptr, ptr %0, align 8, !tbaa !55
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !19
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.b, ptr align 1 %i.d, i64 %i.co, i1 false)
  %i.cp = load ptr, ptr %0, align 8, !tbaa !55
  %i.cq = tail call fastcc ptr @lstep(ptr noundef %i.cp, i64 noundef %3, i64 noundef %4, ptr noundef %i.f, i32 noundef %i.aa, ptr noundef nonnull %i.b) ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0114, i64 1
  br label %bb.d

bb.x:                                             ; preds = %.thread.thread
  ret ptr %spec.select127
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @ldissect(ptr noundef nonnull %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i64 %3, %4
  br i1 %i.a, label %.lr.ph171, label %._crit_edge172

.lr.ph171:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph171, %bb.n
  %.0142169 = phi ptr [ %1, %.lr.ph171 ], [ %.1143, %bb.n ] ; 17 uses
  %.0146168 = phi i64 [ %3, %.lr.ph171 ], [ %i.s, %bb.n ] ; 13 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.0146168
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50   ; 7 uses
  %i.i = trunc i64 %i.h to i32
  %trunc = and i32 %i.i, -134217728
  switch i32 %trunc, label %.loopexit [
    i32 1207959552, label %bb.c
    i32 1476395008, label %bb.c
    i32 2013265920, label %.preheader156
  ]

.preheader156:                                    ; preds = %bb.b
  %i.j = and i64 %i.h, 4160749568
  %.not161 = icmp eq i64 %i.j, 2415919104
  br i1 %.not161, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = and i64 %i.h, 134217727
  %i.l = add i64 %i.k, %.0146168
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader156, %.lr.ph
  %i.m = phi i64 [ %i.q, %.lr.ph ], [ %i.h, %.preheader156 ]
  %.0144162 = phi i64 [ %i.o, %.lr.ph ], [ %.0146168, %.preheader156 ]
  %i.n = and i64 %i.m, 134217727
  %i.o = add i64 %i.n, %.0144162                  ; 3 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !50   ; 2 uses
  %i.r = and i64 %i.q, 4160749568
  %.not = icmp eq i64 %i.r, 2415919104
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !85

.loopexit:                                        ; preds = %.lr.ph, %.preheader156, %bb.c, %bb.b
  %.1145 = phi i64 [ %.0146168, %bb.b ], [ %i.l, %bb.c ], [ %.0146168, %.preheader156 ], [ %i.o, %.lr.ph ] ; 5 uses
  %i.s = add nsw i64 %.1145, 1                    ; 8 uses
  %5 = and i64 %i.h, 4160749568
  %6 = add nsw i64 %5, -134217728
  %7 = lshr exact i64 %6, 27
  switch i64 %7, label %bb.n [
    i64 13, label %bb.m
    i64 1, label %bb.d
    i64 12, label %bb.l
    i64 14, label %.preheader
    i64 8, label %.preheader154
    i64 10, label %.preheader155
    i64 4, label %bb.e
    i64 5, label %bb.e
  ]

bb.d:                                             ; preds = %.loopexit
  %i.t = getelementptr inbounds nuw i8, ptr %.0142169, i64 1
  br label %bb.n

bb.e:                                             ; preds = %.loopexit, %.loopexit
  %i.u = getelementptr inbounds nuw i8, ptr %.0142169, i64 1
  br label %bb.n

.preheader155:                                    ; preds = %.loopexit, %.preheader155
  %.0140 = phi ptr [ %i.y, %.preheader155 ], [ %2, %.loopexit ]
  %i.v = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %.0140, i64 noundef %.0146168, i64 noundef %i.s) ; 6 uses
  %i.w = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %i.v, ptr noundef %2, i64 noundef %i.s, i64 noundef %4)
  %i.x = icmp eq ptr %i.w, %2
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 -1
  br i1 %i.x, label %bb.f, label %.preheader155

bb.f:                                             ; preds = %.preheader155
  %i.z = add nsw i64 %.0146168, 1                 ; 2 uses
  %i.aa = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.v, i64 noundef %i.z, i64 noundef %.1145)
  %.not151 = icmp eq ptr %i.aa, null
  br i1 %.not151, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call fastcc ptr @ldissect(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.v, i64 noundef %i.z, i64 noundef %.1145) ; 0 uses
  br label %bb.n

.preheader154:                                    ; preds = %.loopexit, %.preheader154
  %.1141 = phi ptr [ %i.af, %.preheader154 ], [ %2, %.loopexit ]
  %i.ac = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %.1141, i64 noundef %.0146168, i64 noundef %i.s) ; 4 uses
  %i.ad = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %i.ac, ptr noundef %2, i64 noundef %i.s, i64 noundef %4)
  %i.ae = icmp eq ptr %i.ad, %2
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -1
  br i1 %i.ae, label %bb.h, label %.preheader154

bb.h:                                             ; preds = %.preheader154
  %i.ag = add nsw i64 %.0146168, 1                ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0136 = phi ptr [ %.0142169, %bb.h ], [ %i.ah, %bb.i ] ; 5 uses
  %.0 = phi ptr [ %.0142169, %bb.h ], [ %.0136, %bb.i ]
  %i.ah = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %.0136, ptr noundef %i.ac, i64 noundef %i.ag, i64 noundef %.1145) ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null                 ; 3 uses
  %i.aj = icmp eq ptr %i.ah, %.0136
  %or.cond = or i1 %i.ai, %i.aj
  br i1 %or.cond, label %bb.j, label %bb.i

bb.j:                                             ; preds = %bb.i
  %spec.select = select i1 %i.ai, ptr %.0, ptr %.0136
  %spec.select152 = select i1 %i.ai, ptr %.0136, ptr %i.ah
  %i.ak = tail call fastcc ptr @ldissect(ptr noundef %0, ptr noundef %spec.select, ptr noundef %spec.select152, i64 noundef %i.ag, i64 noundef %.1145) ; 0 uses
  br label %bb.n

.preheader:                                       ; preds = %.loopexit, %.preheader
  %.2 = phi ptr [ %i.ao, %.preheader ], [ %2, %.loopexit ]
  %i.al = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %.2, i64 noundef %.0146168, i64 noundef %i.s) ; 8 uses
  %i.am = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %i.al, ptr noundef %2, i64 noundef %i.s, i64 noundef %4)
  %i.an = icmp eq ptr %i.am, %2
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 -1
  br i1 %i.an, label %bb.k, label %.preheader

bb.k:                                             ; preds = %.preheader
  %i.ap = load ptr, ptr %0, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !72
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %.0146168
  %i.at = load i64, ptr %i.as, align 8, !tbaa !50
  %i.au = and i64 %i.at, 134217727
  %i.av = add nsw i64 %.0146168, -1
  %i.aw = add i64 %i.av, %i.au                    ; 3 uses
  %.0139163 = add nsw i64 %.0146168, 1            ; 2 uses
  %i.ax = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.al, i64 noundef %.0139163, i64 noundef %i.aw)
  %i.ay = icmp eq ptr %i.ax, %i.al
  br i1 %i.ay, label %._crit_edge, label %.lr.ph165

.lr.ph165:                                        ; preds = %bb.k, %.lr.ph165
  %.0137164 = phi i64 [ %spec.select153, %.lr.ph165 ], [ %i.aw, %bb.k ] ; 3 uses
  %i.az = add nsw i64 %.0137164, 1                ; 2 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !55
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !72 ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.az
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !50
  %i.bf = and i64 %i.be, 134217727                ; 2 uses
  %i.bg = add i64 %i.bf, %i.az                    ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !50
  %i.bj = and i64 %i.bi, 4160749568
  %i.bk = icmp eq i64 %i.bj, 2281701376
  %i.bl = add i64 %i.bf, %.0137164
  %spec.select153 = select i1 %i.bk, i64 %i.bl, i64 %i.bg ; 3 uses
  %.0139 = add nsw i64 %.0137164, 2               ; 2 uses
  %i.bm = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.al, i64 noundef %.0139, i64 noundef %spec.select153)
  %i.bn = icmp eq ptr %i.bm, %i.al
  br i1 %i.bn, label %._crit_edge, label %.lr.ph165

._crit_edge:                                      ; preds = %.lr.ph165, %bb.k
  %.0137.lcssa = phi i64 [ %i.aw, %bb.k ], [ %spec.select153, %.lr.ph165 ]
  %.0139.lcssa = phi i64 [ %.0139163, %bb.k ], [ %.0139, %.lr.ph165 ]
  %i.bo = tail call fastcc ptr @ldissect(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.al, i64 noundef %.0139.lcssa, i64 noundef %.0137.lcssa) ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %.loopexit
  %i.bp = and i64 %i.h, 134217727
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.br = ptrtoint ptr %.0142169 to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bp
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !23
  br label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.bw = and i64 %i.h, 134217727
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.by = ptrtoint ptr %.0142169 to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.bw
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %i.ca, ptr %i.cd, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.e, %bb.j, %._crit_edge, %bb.l, %bb.m, %.loopexit
  %.1143 = phi ptr [ %.0142169, %.loopexit ], [ %.0142169, %bb.m ], [ %i.t, %bb.d ], [ %.0142169, %bb.l ], [ %i.al, %._crit_edge ], [ %i.ac, %bb.j ], [ %i.u, %bb.e ], [ %i.v, %bb.f ], [ %i.v, %bb.g ] ; 2 uses
  %i.ce = icmp slt i64 %i.s, %4
  br i1 %i.ce, label %bb.b, label %._crit_edge172, !llvm.loop !86

._crit_edge172:                                   ; preds = %bb.n, %bb.a
  %.0142.lcssa = phi ptr [ %1, %bb.a ], [ %.1143, %bb.n ]
  ret ptr %.0142.lcssa
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @lbackref(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = icmp slt i64 %3, %4
  br i1 %i.g, label %.lr.ph.lr.ph.lr.ph, label %.loopexit438

.lr.ph.lr.ph.lr.ph:                               ; preds = %bb.a, %tailrecurse.outer.backedge
  %.tr274.ph596 = phi i32 [ %.tr274.ph282590, %tailrecurse.outer.backedge ], [ %6, %bb.a ]
  %.tr273.ph595 = phi i64 [ %.tr273.ph.be, %tailrecurse.outer.backedge ], [ %5, %bb.a ] ; 10 uses
  %.tr271.ph594 = phi i64 [ %i.dr, %tailrecurse.outer.backedge ], [ %3, %bb.a ]
  %.tr269.ph593 = phi ptr [ %.0234343, %tailrecurse.outer.backedge ], [ %1, %bb.a ]
  br label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.lr.ph.lr.ph.lr.ph, %tailrecurse.outer279
  %.tr274.ph282590 = phi i32 [ %.tr274.ph596, %.lr.ph.lr.ph.lr.ph ], [ %.0230, %tailrecurse.outer279 ] ; 10 uses
  %.tr271.ph281589 = phi i64 [ %.tr271.ph594, %.lr.ph.lr.ph.lr.ph ], [ %i.eq, %tailrecurse.outer279 ]
  %.tr269.ph280588 = phi ptr [ %.tr269.ph593, %.lr.ph.lr.ph.lr.ph ], [ %i.er, %tailrecurse.outer279 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %tailrecurse
  %.tr271586 = phi i64 [ %.tr271.ph281589, %.lr.ph.lr.ph ], [ %i.ev, %tailrecurse ]
  %.tr269585 = phi ptr [ %.tr269.ph280588, %.lr.ph.lr.ph ], [ %.0234343, %tailrecurse ]
  %i.h = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit275
  %.0234343 = phi ptr [ %.tr269585, %.lr.ph ], [ %.1235, %.loopexit275 ] ; 52 uses
  %.0236342 = phi i64 [ %.tr271586, %.lr.ph ], [ %i.dp, %.loopexit275 ] ; 16 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.0236342
  %i.n = load i64, ptr %i.m, align 8, !tbaa !50   ; 3 uses
  %7 = and i64 %i.n, 4160749568
  %8 = add nsw i64 %7, -268435456
  %9 = lshr exact i64 %8, 27
  switch i64 %9, label %bb.ak [
    i64 0, label %bb.c
    i64 3, label %bb.e
    i64 4, label %bb.g
    i64 1, label %bb.i
    i64 2, label %bb.n
    i64 17, label %bb.s
    i64 18, label %bb.aa
    i64 10, label %.loopexit275
    i64 14, label %bb.ai
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq ptr %.0234343, %2
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.0234343, i64 1
  %i.q = load i8, ptr %.0234343, align 1, !tbaa !27
  %i.r = trunc i64 %i.n to i8
  %.not265 = icmp eq i8 %i.q, %i.r
  br i1 %.not265, label %.loopexit275, label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.s = icmp eq ptr %.0234343, %2
  br i1 %i.s, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.0234343, i64 1
  br label %.loopexit275

bb.g:                                             ; preds = %bb.b
  %i.u = icmp eq ptr %.0234343, %2
  br i1 %i.u, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.w = and i64 %i.n, 134217727
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %.0234343, i64 1
  %i.aa = load i8, ptr %.0234343, align 1, !tbaa !27
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !78
  %i.ag = and i8 %i.af, %i.ad
  %.not264 = icmp eq i8 %i.ag, 0
  br i1 %.not264, label %.loopexit, label %.loopexit275

bb.i:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.ai = icmp eq ptr %.0234343, %i.ah
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !57
  %i.ak = and i32 %i.aj, 1
  %.not262 = icmp eq i32 %i.ak, 0
  br i1 %.not262, label %.loopexit275, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.am = icmp ult ptr %.0234343, %i.al
  br i1 %i.am, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds i8, ptr %.0234343, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !27
  %i.ap = icmp eq i8 %i.ao, 10
  br i1 %i.ap, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.aq = load i32, ptr %i.k, align 8, !tbaa !22
  %i.ar = and i32 %i.aq, 8
  %.not263 = icmp eq i32 %i.ar, 0
  br i1 %.not263, label %.loopexit, label %.loopexit275

bb.n:                                             ; preds = %bb.b
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.at = icmp eq ptr %.0234343, %i.as
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = load i32, ptr %i.b, align 8, !tbaa !57
  %i.av = and i32 %i.au, 2
  %.not260 = icmp eq i32 %i.av, 0
  br i1 %.not260, label %.loopexit275, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aw = icmp ult ptr %.0234343, %i.as
  br i1 %i.aw, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.ax = load i8, ptr %.0234343, align 1, !tbaa !27
  %i.ay = icmp eq i8 %i.ax, 10
  br i1 %i.ay, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.az = load i32, ptr %i.k, align 8, !tbaa !22
  %i.ba = and i32 %i.az, 8
  %.not261 = icmp eq i32 %i.ba, 0
  br i1 %.not261, label %.loopexit, label %.loopexit275

bb.s:                                             ; preds = %bb.b
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !61  ; 2 uses
  %i.bc = icmp eq ptr %.0234343, %i.bb
  br i1 %i.bc, label %bb.t, label %._crit_edge415

._crit_edge415:                                   ; preds = %bb.s
  %.pre416 = load ptr, ptr %i.a, align 8, !tbaa !62
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bd = load i32, ptr %i.b, align 8, !tbaa !57
  %i.be = and i32 %i.bd, 1
  %.not256 = icmp eq i32 %i.be, 0
  %.pre417 = load ptr, ptr %i.a, align 8, !tbaa !62 ; 2 uses
  br i1 %.not256, label %._crit_edge414, label %bb.u

bb.u:                                             ; preds = %._crit_edge415, %bb.t
  %i.bf = phi ptr [ %.pre416, %._crit_edge415 ], [ %.pre417, %bb.t ] ; 3 uses
  %i.bg = icmp ult ptr %.0234343, %i.bf
  br i1 %i.bg, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds i8, ptr %.0234343, i64 -1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !27
  %i.bj = icmp eq i8 %i.bi, 10
  br i1 %i.bj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bk = load i32, ptr %i.k, align 8, !tbaa !22
  %i.bl = and i32 %i.bk, 8
  %.not257 = icmp eq i32 %i.bl, 0
  br i1 %.not257, label %bb.x, label %._crit_edge414

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.bm = icmp ugt ptr %.0234343, %i.bb
  br i1 %i.bm, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.bn = tail call ptr @__ctype_b_loc() #16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !43
  %i.bp = getelementptr inbounds i8, ptr %.0234343, i64 -1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !27  ; 2 uses
  %i.br = sext i8 %i.bq to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !45
  %i.bu = and i16 %i.bt, 8
  %.not258 = icmp ne i16 %i.bu, 0
  %i.bv = icmp eq i8 %i.bq, 95
  %or.cond = or i1 %i.bv, %.not258
  br i1 %or.cond, label %.loopexit, label %._crit_edge414

._crit_edge414:                                   ; preds = %bb.t, %bb.y, %bb.w
  %i.bw = phi ptr [ %i.bf, %bb.w ], [ %i.bf, %bb.y ], [ %.pre417, %bb.t ]
  %i.bx = icmp ult ptr %.0234343, %i.bw
  br i1 %i.bx, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %._crit_edge414
  %i.by = tail call ptr @__ctype_b_loc() #16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !43
  %i.ca = load i8, ptr %.0234343, align 1, !tbaa !27 ; 2 uses
  %i.cb = sext i8 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !45
  %i.ce = and i16 %i.cd, 8
  %.not259 = icmp ne i16 %i.ce, 0
  %i.cf = icmp eq i8 %i.ca, 95
  %or.cond266 = or i1 %i.cf, %.not259
  br i1 %or.cond266, label %.loopexit275, label %.loopexit

bb.aa:                                            ; preds = %bb.b
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.ch = icmp eq ptr %.0234343, %i.cg
  br i1 %i.ch, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ci = load i32, ptr %i.b, align 8, !tbaa !57
  %i.cj = and i32 %i.ci, 2
  %.not252 = icmp eq i32 %i.cj, 0
  br i1 %.not252, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ck = icmp ult ptr %.0234343, %i.cg
  br i1 %i.ck, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.cl = load i8, ptr %.0234343, align 1, !tbaa !27 ; 3 uses
  %i.cm = icmp eq i8 %i.cl, 10
  br i1 %i.cm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cn = load i32, ptr %i.k, align 8, !tbaa !22
  %i.co = and i32 %i.cn, 8
  %.not253 = icmp eq i32 %i.co, 0
  br i1 %.not253, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cp = tail call ptr @__ctype_b_loc() #16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !43
  %i.cr = sext i8 %i.cl to i64
  %i.cs = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !45
  %i.cu = and i16 %i.ct, 8
  %.not254 = icmp ne i16 %i.cu, 0
  %i.cv = icmp eq i8 %i.cl, 95
  %or.cond267 = or i1 %i.cv, %.not254
  br i1 %or.cond267, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ab
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.cx = icmp ugt ptr %.0234343, %i.cw
  br i1 %i.cx, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.cy = tail call ptr @__ctype_b_loc() #16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !43
  %i.da = getelementptr inbounds i8, ptr %.0234343, i64 -1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !27  ; 2 uses
  %i.dc = sext i8 %i.db to i64
  %i.dd = getelementptr inbounds [2 x i8], ptr %i.cz, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !45
  %i.df = and i16 %i.de, 8
  %.not255 = icmp ne i16 %i.df, 0
  %i.dg = icmp eq i8 %i.db, 95
  %or.cond268 = or i1 %i.dg, %.not255
  br i1 %or.cond268, label %.loopexit275, label %.loopexit

bb.ai:                                            ; preds = %bb.b
  %i.dh = add nsw i64 %.0236342, 1                ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !50
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.1237 = phi i64 [ %i.dh, %bb.ai ], [ %i.dl, %bb.aj ]
  %.0228 = phi i64 [ %i.dj, %bb.ai ], [ %i.dn, %bb.aj ]
  %i.dk = and i64 %.0228, 134217727
  %i.dl = add i64 %i.dk, %.1237                   ; 3 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !50 ; 2 uses
  %i.do = and i64 %i.dn, 4160749568
  %.not251 = icmp eq i64 %i.do, 2415919104
  br i1 %.not251, label %.loopexit275, label %bb.aj, !llvm.loop !87

.loopexit275:                                     ; preds = %bb.aj, %bb.b, %bb.f, %bb.d, %bb.h, %bb.j, %bb.m, %bb.o, %bb.r, %bb.z, %bb.ah
  %.2 = phi i64 [ %.0236342, %bb.ah ], [ %.0236342, %bb.d ], [ %.0236342, %bb.f ], [ %.0236342, %bb.h ], [ %.0236342, %bb.m ], [ %.0236342, %bb.j ], [ %.0236342, %bb.r ], [ %.0236342, %bb.o ], [ %.0236342, %bb.z ], [ %.0236342, %bb.b ], [ %i.dl, %bb.aj ]
  %.1235 = phi ptr [ %.0234343, %bb.ah ], [ %i.p, %bb.d ], [ %i.t, %bb.f ], [ %i.z, %bb.h ], [ %.0234343, %bb.m ], [ %.0234343, %bb.j ], [ %.0234343, %bb.r ], [ %.0234343, %bb.o ], [ %.0234343, %bb.z ], [ %.0234343, %bb.b ], [ %.0234343, %bb.aj ] ; 2 uses
  %i.dp = add nsw i64 %.2, 1                      ; 2 uses
  %i.dq = icmp slt i64 %i.dp, %4
  br i1 %i.dq, label %bb.b, label %.loopexit438, !llvm.loop !88

.loopexit438:                                     ; preds = %tailrecurse.outer.backedge, %tailrecurse.outer279, %tailrecurse, %.loopexit275, %bb.a
  %.0234.lcssa.ph = phi ptr [ %i.er, %tailrecurse.outer279 ], [ %.1235, %.loopexit275 ], [ %.0234343, %tailrecurse ], [ %1, %bb.a ], [ %.0234343, %tailrecurse.outer.backedge ] ; 2 uses
  %.not244 = icmp eq ptr %.0234.lcssa.ph, %2
  %.0234. = select i1 %.not244, ptr %.0234.lcssa.ph, ptr null
  br label %.loopexit

bb.ak:                                            ; preds = %bb.b
  %i.dr = add nsw i64 %.0236342, 1                ; 8 uses
  %i.ds = load ptr, ptr %0, align 8, !tbaa !55
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !72 ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.du, i64 %.0236342
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !50 ; 7 uses
  %10 = and i64 %i.dw, 4160749568
  %11 = add nsw i64 %10, -939524096
  %12 = lshr exact i64 %11, 27
  switch i64 %12, label %.loopexit [
    i64 0, label %bb.al
    i64 4, label %bb.ar
    i64 2, label %bb.as
    i64 3, label %bb.at
    i64 8, label %bb.ax
    i64 6, label %bb.az
    i64 7, label %bb.bb
  ]

bb.al:                                            ; preds = %bb.ak
  %i.dx = and i64 %i.dw, 134217727                ; 2 uses
  %i.dy = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %i.dx ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !25 ; 3 uses
  %i.ec = icmp eq i64 %i.eb, -1
  br i1 %i.ec, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ed = load i64, ptr %i.dz, align 8, !tbaa !23 ; 3 uses
  %i.ee = sub nsw i64 %i.eb, %i.ed                ; 3 uses
  %i.ef = icmp eq i64 %i.eb, %i.ed
  br i1 %i.ef, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.eg = add nsw i32 %.tr274.ph282590, 1
  %i.eh = icmp sgt i32 %.tr274.ph282590, 100
  br i1 %i.eh, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0230 = phi i32 [ %i.eg, %bb.an ], [ %.tr274.ph282590, %bb.am ]
  %i.ei = sub i64 0, %i.ee
  %i.ej = getelementptr inbounds i8, ptr %2, i64 %i.ei
  %i.ek = icmp ugt ptr %.0234343, %i.ej
  br i1 %i.ek, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.el = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 %i.ed
  %bcmp = tail call i32 @bcmp(ptr %.0234343, ptr %i.em, i64 %i.ee)
  %.not249 = icmp eq i32 %bcmp, 0
  br i1 %.not249, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ap
  %i.en = or disjoint i64 %i.dx, 1073741824
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.preheader
  %.3 = phi i64 [ %i.eq, %bb.aq ], [ %.0236342, %.preheader ] ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.du, i64 %.3
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !50
  %.not250 = icmp eq i64 %i.ep, %i.en
  %i.eq = add nsw i64 %.3, 1                      ; 3 uses
  br i1 %.not250, label %tailrecurse.outer279, label %bb.aq, !llvm.loop !89

tailrecurse.outer279:                             ; preds = %bb.aq
  %i.er = getelementptr inbounds nuw i8, ptr %.0234343, i64 %i.ee ; 2 uses
  %i.es = icmp slt i64 %i.eq, %4
  br i1 %i.es, label %.lr.ph.lr.ph, label %.loopexit438

bb.ar:                                            ; preds = %bb.ak
  %i.et = tail call fastcc ptr @lbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.dr, i64 noundef %4, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not248 = icmp eq ptr %i.et, null
  br i1 %.not248, label %tailrecurse, label %.loopexit

tailrecurse:                                      ; preds = %bb.ar
  %i.eu = and i64 %i.dw, 134217727
  %i.ev = add i64 %i.eu, %i.dr                    ; 2 uses
  %i.ew = icmp slt i64 %i.ev, %4
  br i1 %i.ew, label %.lr.ph, label %.loopexit438

bb.as:                                            ; preds = %bb.ak
  %i.ex = load ptr, ptr %i.f, align 8, !tbaa !59
  %i.ey = add nsw i64 %.tr273.ph595, 1            ; 2 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.ey
  store ptr %.0234343, ptr %i.ez, align 8, !tbaa !82
  br label %tailrecurse.outer.backedge

tailrecurse.outer.backedge:                       ; preds = %bb.as, %bb.au, %bb.aw
  %.tr273.ph.be = phi i64 [ %i.fk, %bb.aw ], [ %i.ff, %bb.au ], [ %i.ey, %bb.as ]
  %i.fa = icmp slt i64 %i.dr, %4
  br i1 %i.fa, label %.lr.ph.lr.ph.lr.ph, label %.loopexit438

bb.at:                                            ; preds = %bb.ak
  %i.fb = load ptr, ptr %i.f, align 8, !tbaa !59
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %.tr273.ph595 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !82
  %i.fe = icmp eq ptr %.0234343, %i.fd
  br i1 %i.fe, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ff = add nsw i64 %.tr273.ph595, -1
  br label %tailrecurse.outer.backedge

bb.av:                                            ; preds = %bb.at
  store ptr %.0234343, ptr %i.fc, align 8, !tbaa !82
  %i.fg = and i64 %i.dw, 134217727
  %i.fh = sub i64 %i.dr, %i.fg
  %i.fi = tail call fastcc ptr @lbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.fh, i64 noundef %4, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.fk = add nsw i64 %.tr273.ph595, -1
  br label %tailrecurse.outer.backedge

bb.ax:                                            ; preds = %bb.ak
  %i.fl = and i64 %i.dw, 134217727
  %i.fm = add i64 %.0236342, -1
  %i.fn = add i64 %i.fm, %i.fl                    ; 2 uses
  %i.fo = tail call fastcc ptr @lbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.dr, i64 noundef %i.fn, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not247346 = icmp eq ptr %i.fo, null
  br i1 %.not247346, label %.lr.ph349, label %.loopexit

.lr.ph349:                                        ; preds = %bb.ax, %bb.ay
  %.0231347 = phi i64 [ %spec.select, %bb.ay ], [ %i.fn, %bb.ax ] ; 4 uses
  %i.fp = load ptr, ptr %0, align 8, !tbaa !55
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !72 ; 3 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %.0231347
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !50
  %i.fu = and i64 %i.ft, 4160749568
  %i.fv = icmp eq i64 %i.fu, 2415919104
  br i1 %i.fv, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph349
  %i.fw = add nsw i64 %.0231347, 1                ; 2 uses
  %i.fx = add nsw i64 %.0231347, 2
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.fw
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !50
  %i.ga = and i64 %i.fz, 134217727                ; 2 uses
  %i.gb = add i64 %i.ga, %i.fw                    ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.gb
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !50
  %i.ge = and i64 %i.gd, 4160749568
  %i.gf = icmp eq i64 %i.ge, 2281701376
  %i.gg = add i64 %i.ga, %.0231347
  %spec.select = select i1 %i.gf, i64 %i.gg, i64 %i.gb ; 2 uses
  %i.gh = tail call fastcc ptr @lbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.fx, i64 noundef %spec.select, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not247 = icmp eq ptr %i.gh, null
  br i1 %.not247, label %.lr.ph349, label %.loopexit

bb.az:                                            ; preds = %bb.ak
  %i.gi = and i64 %i.dw, 134217727                ; 2 uses
  %i.gj = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %i.gi ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !23
  %i.gm = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.gn = ptrtoint ptr %.0234343 to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  store i64 %i.gp, ptr %i.gk, align 8, !tbaa !23
  %i.gq = tail call fastcc ptr @lbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.dr, i64 noundef %4, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not246 = icmp eq ptr %i.gq, null
  br i1 %.not246, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.gr = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.gi
  store i64 %i.gl, ptr %i.gs, align 8, !tbaa !23
  br label %.loopexit

bb.bb:                                            ; preds = %bb.ak
  %i.gt = and i64 %i.dw, 134217727                ; 2 uses
  %i.gu = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %i.gt
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !25
  %i.gy = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.gz = ptrtoint ptr %.0234343 to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha
  store i64 %i.hb, ptr %i.gw, align 8, !tbaa !25
  %i.hc = tail call fastcc ptr @lbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.dr, i64 noundef %4, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not245 = icmp eq ptr %i.hc, null
  br i1 %.not245, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %bb.bb
  %i.hd = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.gt
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store i64 %i.gx, ptr %i.hf, align 8, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %bb.av, %bb.ap, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.ar, %bb.ac, %bb.af, %bb.ag, %bb.ah, %bb.x, %bb.y, %._crit_edge414, %bb.z, %bb.p, %bb.q, %bb.r, %bb.k, %bb.l, %bb.m, %bb.g, %bb.h, %bb.e, %bb.c, %bb.d, %bb.ay, %.lr.ph349, %bb.ax, %bb.bb, %bb.az, %.loopexit438, %bb.bc, %bb.ba
  %.0 = phi ptr [ %i.hc, %bb.bb ], [ %.0234., %.loopexit438 ], [ undef, %bb.ak ], [ null, %bb.ba ], [ %i.gq, %bb.az ], [ null, %bb.bc ], [ null, %.lr.ph349 ], [ null, %bb.ac ], [ %i.fo, %bb.ax ], [ null, %bb.ap ], [ %i.gh, %bb.ay ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.r ], [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.z ], [ null, %._crit_edge414 ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.ah ], [ null, %bb.ag ], [ null, %bb.af ], [ %i.et, %bb.ar ], [ null, %bb.al ], [ null, %bb.an ], [ null, %bb.ao ], [ %i.fi, %bb.av ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @lstep(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 -128, 135) %4, ptr nofree noundef returned captures(ret: address, provenance) %5) unnamed_addr #10 {
bb.a:
  %.not149 = icmp eq i64 %1, %2
  br i1 %.not149, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = icmp sgt i32 %4, 127                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = and i32 %4, 255
  %i.e = zext nneg i32 %i.d to i64
  %i.f = icmp eq i32 %4, 134
  %i.g = icmp eq i32 %4, 133
  %i.h = and i32 %4, -2
  %or.cond3 = icmp eq i32 %i.h, 130
  %i.i = and i32 %4, -3
  %or.cond = icmp eq i32 %i.i, 129
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph153, %bb.ad
  %.0136151 = phi i64 [ %1, %.lr.ph153 ], [ %i.et, %bb.ad ] ; 53 uses
  %.0137150 = phi i64 [ %1, %.lr.ph153 ], [ %i.es, %bb.ad ] ; 31 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.0137150 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !50   ; 7 uses
  %6 = and i64 %i.l, 4160749568
  %7 = add nsw i64 %6, -134217728
  %8 = lshr exact i64 %7, 27
  switch i64 %8, label %bb.ad [
    i64 17, label %bb.ac
    i64 1, label %bb.c
    i64 2, label %bb.e
    i64 3, label %bb.g
    i64 18, label %bb.i
    i64 19, label %bb.k
    i64 4, label %bb.m
    i64 5, label %bb.o
    i64 6, label %bb.r
    i64 7, label %bb.r
    i64 8, label %bb.s
    i64 9, label %bb.t
    i64 10, label %bb.v
    i64 11, label %bb.w
    i64 12, label %bb.x
    i64 13, label %bb.x
    i64 14, label %bb.y
    i64 15, label %bb.z
    i64 16, label %bb.aa
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = trunc i64 %i.l to i8
  %i.n = sext i8 %i.m to i32
  %i.o = icmp eq i32 %4, %i.n
  br i1 %i.o, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %3, i64 %.0136151
  %i.q = load i8, ptr %i.p, align 1, !tbaa !27
  %i.r = getelementptr i8, ptr %5, i64 %.0136151
  %i.s = getelementptr i8, ptr %i.r, i64 1        ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !27
  %i.u = or i8 %i.t, %i.q
  store i8 %i.u, ptr %i.s, align 1, !tbaa !27
  br label %bb.ad

bb.e:                                             ; preds = %bb.b
  br i1 %or.cond, label %bb.f, label %bb.ad

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds i8, ptr %3, i64 %.0136151
  %i.w = load i8, ptr %i.v, align 1, !tbaa !27
  %i.x = getelementptr i8, ptr %5, i64 %.0136151
  %i.y = getelementptr i8, ptr %i.x, i64 1        ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !27
  %i.aa = or i8 %i.z, %i.w
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !27
  br label %bb.ad

bb.g:                                             ; preds = %bb.b
  br i1 %or.cond3, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds i8, ptr %3, i64 %.0136151
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !27
  %i.ad = getelementptr i8, ptr %5, i64 %.0136151
  %i.ae = getelementptr i8, ptr %i.ad, i64 1      ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !27
  %i.ag = or i8 %i.af, %i.ac
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !27
  br label %bb.ad

bb.i:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.j, label %bb.ad

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds i8, ptr %3, i64 %.0136151
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !27
  %i.aj = getelementptr i8, ptr %5, i64 %.0136151
  %i.ak = getelementptr i8, ptr %i.aj, i64 1      ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !27
  %i.am = or i8 %i.al, %i.ai
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !27
  br label %bb.ad

bb.k:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.l, label %bb.ad

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds i8, ptr %3, i64 %.0136151
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !27
  %i.ap = getelementptr i8, ptr %5, i64 %.0136151
  %i.aq = getelementptr i8, ptr %i.ap, i64 1      ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !27
  %i.as = or i8 %i.ar, %i.ao
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !27
  br label %bb.ad

bb.m:                                             ; preds = %bb.b
  br i1 %i.b, label %bb.ad, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds i8, ptr %3, i64 %.0136151
  %i.au = load i8, ptr %i.at, align 1, !tbaa !27
  %i.av = getelementptr i8, ptr %5, i64 %.0136151
  %i.aw = getelementptr i8, ptr %i.av, i64 1      ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !27
  %i.ay = or i8 %i.ax, %i.au
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !27
  br label %bb.ad

bb.o:                                             ; preds = %bb.b
  br i1 %i.b, label %bb.ad, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.ba = and i64 %i.l, 134217727
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.ba ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !76
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.e
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !78
  %i.bh = and i8 %i.bg, %i.be
  %.not145 = icmp eq i8 %i.bh, 0
  br i1 %.not145, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds i8, ptr %3, i64 %.0136151
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !27
  %i.bk = getelementptr i8, ptr %5, i64 %.0136151
  %i.bl = getelementptr i8, ptr %i.bk, i64 1      ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !27
  %i.bn = or i8 %i.bm, %i.bj
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !27
  br label %bb.ad

bb.r:                                             ; preds = %bb.b, %bb.b
  %i.bo = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !27
  %i.bq = getelementptr i8, ptr %i.bo, i64 1      ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !27
  %i.bs = or i8 %i.br, %i.bp
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !27
  br label %bb.ad

bb.s:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !27
  %i.bv = getelementptr i8, ptr %i.bt, i64 1      ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !27
  %i.bx = or i8 %i.bw, %i.bu
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !27
  br label %bb.ad

bb.t:                                             ; preds = %bb.b
  %i.by = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !27  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.by, i64 1      ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !27
  %i.cc = or i8 %i.cb, %i.bz
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !27
  %i.cd = and i64 %i.l, 134217727                 ; 2 uses
  %i.ce = sub i64 %.0136151, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 %i.ce ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !27  ; 2 uses
  %i.ch = or i8 %i.cg, %i.bz                      ; 2 uses
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !27
  %.not143 = icmp ne i8 %i.cg, 0
  %.not144 = icmp eq i8 %i.ch, 0
  %or.cond146 = select i1 %.not143, i1 true, i1 %.not144
  br i1 %or.cond146, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.neg = xor i64 %i.cd, -1
  %i.ci = add i64 %.0137150, %.neg                ; 2 uses
  br label %bb.ad

bb.v:                                             ; preds = %bb.b
  %i.cj = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !27  ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cj, i64 1      ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !27
  %i.cn = or i8 %i.cm, %i.ck
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !27
  %i.co = and i64 %i.l, 134217727
  %i.cp = getelementptr i8, ptr %i.cj, i64 %i.co  ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !27
  %i.cr = or i8 %i.cq, %i.ck
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !27
  br label %bb.ad

bb.w:                                             ; preds = %bb.b
  %i.cs = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !27
  %i.cu = getelementptr i8, ptr %i.cs, i64 1      ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !27
  %i.cw = or i8 %i.cv, %i.ct
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !27
  br label %bb.ad

bb.x:                                             ; preds = %bb.b, %bb.b
  %i.cx = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !27
  %i.cz = getelementptr i8, ptr %i.cx, i64 1      ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !27
  %i.db = or i8 %i.da, %i.cy
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !27
  br label %bb.ad

bb.y:                                             ; preds = %bb.b
  %i.dc = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !27  ; 2 uses
  %i.de = getelementptr i8, ptr %i.dc, i64 1      ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !27
  %i.dg = or i8 %i.df, %i.dd
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !27
  %i.dh = and i64 %i.l, 134217727
  %i.di = getelementptr i8, ptr %i.dc, i64 %i.dh  ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !27
  %i.dk = or i8 %i.dj, %i.dd
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !27
  br label %bb.ad

bb.z:                                             ; preds = %bb.b
  %i.dl = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !27  ; 2 uses
  %.not141 = icmp eq i8 %i.dm, 0
end_hunk_1
