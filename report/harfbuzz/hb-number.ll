Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-number?download=true
inline.NumInlined: 14
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z12hb_parse_intPPKcS0_Pib:bb.a
bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !8    ; 3 uses
  %i.p = icmp ne ptr %i.a, %i.o                   ; 2 uses
  %brmerge.not.i = and i1 %3, %i.p
  br i1 %brmerge.not.i, label %.split.i, label %bb.c, !prof !14

.split.i:                                         ; preds = %bb.b
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.a to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.d, %i.u
  %.not22.i = icmp eq i64 %i.s, %i.v
  br i1 %.not22.i, label %bb.d, label %"_ZL13_parse_numberIiZ12hb_parse_intPPKcS1_PibE3$_0EbS2_S1_PT_bT0_.exit", !prof !15

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %._crit_edge.i, label %"_ZL13_parse_numberIiZ12hb_parse_intPPKcS1_PibE3$_0EbS2_S1_PT_bT0_.exit", !prof !15

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !8
  %.pre23.i = ptrtoint ptr %i.o to i64
  %.pre24.i = ptrtoint ptr %i.a to i64
  %.pre26.i = sub i64 %.pre23.i, %.pre24.i
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.split.i
  %.pre-phi27.i = phi i64 [ %.pre26.i, %._crit_edge.i ], [ %i.s, %.split.i ]
  %i.w = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.t, %.split.i ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %.pre-phi27.i
  store ptr %i.x, ptr %0, align 8, !tbaa !8
  br label %"_ZL13_parse_numberIiZ12hb_parse_intPPKcS1_PibE3$_0EbS2_S1_PT_bT0_.exit"

"_ZL13_parse_numberIiZ12hb_parse_intPPKcS1_PibE3$_0EbS2_S1_PT_bT0_.exit": ; preds = %bb.a, %.split.i, %bb.c, %bb.d
  %.0.i = phi i1 [ false, %.split.i ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_Z13hb_parse_uintPPKcS0_Pjbi(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.c = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 31)
  %i.h = zext nneg i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.i = call ptr @strncpy(ptr noundef nonnull %i.a, ptr noundef %i.c, i64 noundef %i.h) #7 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr %i.a, ptr %i.b, align 8, !tbaa !8
  %i.k = tail call ptr @__errno_location() #8     ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !12
  %i.l = call noundef i64 @__isoc23_strtoul(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %4) #7
  %i.m = trunc i64 %i.l to i32
  store i32 %i.m, ptr %2, align 4, !tbaa !12
  %i.n = load i32, ptr %i.k, align 4, !tbaa !12
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.b, label %"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit", !prof !13

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !8    ; 3 uses
  %i.p = icmp ne ptr %i.a, %i.o                   ; 2 uses
  %brmerge.not.i = and i1 %3, %i.p
  br i1 %brmerge.not.i, label %.split.i, label %bb.c, !prof !14

.split.i:                                         ; preds = %bb.b
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.a to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.d, %i.u
  %.not22.i = icmp eq i64 %i.s, %i.v
  br i1 %.not22.i, label %bb.d, label %"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit", !prof !15

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %._crit_edge.i, label %"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit", !prof !15

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !8
  %.pre23.i = ptrtoint ptr %i.o to i64
  %.pre24.i = ptrtoint ptr %i.a to i64
  %.pre26.i = sub i64 %.pre23.i, %.pre24.i
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.split.i
  %.pre-phi27.i = phi i64 [ %.pre26.i, %._crit_edge.i ], [ %i.s, %.split.i ]
  %i.w = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.t, %.split.i ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %.pre-phi27.i
  store ptr %i.x, ptr %0, align 8, !tbaa !8
  br label %"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit"

"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit": ; preds = %bb.a, %.split.i, %bb.c, %bb.d
  %.0.i = phi i1 [ false, %.split.i ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_Z15hb_parse_doublePPKcS0_Pdb(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef writeonly captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 6 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.d = icmp ult ptr %i.a, %1
  br i1 %i.d, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = sub i64 %i.c, %i.b
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.078155.i = phi ptr [ %i.g, %bb.b ], [ %i.a, %.lr.ph.preheader.i ] ; 3 uses
  %i.f = load i8, ptr %.078155.i, align 1, !tbaa !11
  switch i8 %i.f, label %.critedge.loopexit.i [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 11, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.078155.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.g, %1
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %.lr.ph.i, !llvm.loop !16

.critedge.loopexit.i:                             ; preds = %bb.b, %.lr.ph.i
  %.078.lcssa.ph.i = phi ptr [ %scevgep.i, %bb.b ], [ %.078155.i, %.lr.ph.i ] ; 2 uses
  %.pre.i = ptrtoaddr ptr %.078.lcssa.ph.i to i64
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.a
  %.078.lcssa158.pre-phi.i = phi i64 [ %.pre.i, %.critedge.loopexit.i ], [ %i.b, %bb.a ]
  %.078.lcssa.i = phi ptr [ %.078.lcssa.ph.i, %.critedge.loopexit.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.h = icmp eq ptr %.078.lcssa.i, %1
  br i1 %i.h, label %_ZL9strtod_rlPKcPS0_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.critedge.i
  %i.i = sub i64 %i.c, %.078.lcssa158.pre-phi.i
  %scevgep159.i = getelementptr i8, ptr %.078.lcssa.i, i64 %i.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %.preheader.preheader.i
  %.179.i = phi ptr [ %i.az, %bb.m ], [ %.078.lcssa.i, %.preheader.preheader.i ] ; 3 uses
  %.074.i = phi double [ %.175.i, %bb.m ], [ 0.000000e+00, %.preheader.preheader.i ] ; 8 uses
  %.071.i = phi double [ %.172.i, %bb.m ], [ 0.000000e+00, %.preheader.preheader.i ] ; 9 uses
  %.068.i = phi double [ %.169.i, %bb.m ], [ 0.000000e+00, %.preheader.preheader.i ] ; 8 uses
  %.065.i = phi i32 [ %.166.i, %bb.m ], [ 0, %.preheader.preheader.i ] ; 9 uses
  %.062.i = phi i1 [ %.163.i, %bb.m ], [ false, %.preheader.preheader.i ] ; 7 uses
  %.059.i = phi i8 [ %.160.i, %bb.m ], [ 0, %.preheader.preheader.i ] ; 7 uses
  %.058.i = phi i1 [ %.1.i, %bb.m ], [ false, %.preheader.preheader.i ] ; 8 uses
  %.0.i = phi i32 [ %i.aj, %bb.m ], [ 1, %.preheader.preheader.i ] ; 2 uses
  %i.j = shl nsw i32 %.0.i, 1
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr @_ZL25_double_parser_trans_keys, i64 %i.k ; 2 uses
  %i.m = sext i32 %.0.i to i64                    ; 2 uses
  %i.n = getelementptr inbounds i8, ptr @_ZL28_double_parser_index_offsets, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !11
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZL23_double_parser_indicies, i64 %i.p
  %i.r = getelementptr inbounds i8, ptr @_ZL24_double_parser_key_spans, i64 %i.m
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %i.t = sext i8 %i.s to i32                      ; 2 uses
  %i.u = load i8, ptr %i.l, align 2, !tbaa !11
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = load i8, ptr %.179.i, align 1, !tbaa !11
  %i.x = sext i8 %i.w to i32                      ; 6 uses
  %.not.i = icmp sgt i32 %i.v, %i.x
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !11
  %i.aa = zext i8 %i.z to i32
  %.not88.i = icmp samesign ugt i32 %i.x, %i.aa
  %i.ab = sub nuw nsw i32 %i.x, %i.v
  %spec.select.i = select i1 %.not88.i, i32 %i.t, i32 %i.ab
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %i.ac = phi i32 [ %i.t, %.preheader.i ], [ %spec.select.i, %bb.c ]
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.q, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11  ; 2 uses
  %i.ag = sext i8 %i.af to i64                    ; 3 uses
  %i.ah = getelementptr inbounds i8, ptr @_ZL26_double_parser_trans_targs, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.aj = sext i8 %i.ai to i32
  %4 = lshr i64 587, %i.ag
  %.not89.i = trunc i64 %4 to i1
  br i1 %.not89.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds i8, ptr @_ZL28_double_parser_trans_actions, i64 %i.ag
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !11
  switch i8 %i.al, label %bb.l [
    i8 1, label %bb.f
    i8 4, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 5, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.am = add nsw i32 %i.x, -48
  %i.an = sitofp i32 %i.am to double
  %i.ao = tail call double @llvm.fmuladd.f64(double %.074.i, double 1.000000e+01, double %i.an)
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.ap = fcmp ugt double %.071.i, f0x42F9999999999990
  br i1 %i.ap, label %bb.l, label %bb.j, !prof !18

bb.j:                                             ; preds = %bb.i
  %i.aq = add nsw i32 %i.x, -48
  %i.ar = sitofp i32 %i.aq to double
  %i.as = tail call double @llvm.fmuladd.f64(double %.071.i, double 1.000000e+01, double %i.ar)
  %i.at = fadd double %.068.i, 1.000000e+00
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.au = mul i32 %.065.i, 10
  %i.av = add i32 %i.au, -48
  %i.aw = add i32 %i.av, %i.x                     ; 2 uses
  %i.ax = icmp ugt i32 %i.aw, 2047                ; 2 uses
  %..065.i = select i1 %i.ax, i32 %.065.i, i32 %i.aw, !prof !18
  %.058..i = select i1 %i.ax, i1 true, i1 %.058.i, !prof !18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.175.i = phi double [ %.074.i, %bb.d ], [ %.074.i, %bb.e ], [ %.074.i, %bb.f ], [ %.074.i, %bb.g ], [ %i.ao, %bb.h ], [ %.074.i, %bb.j ], [ %.074.i, %bb.i ], [ %.074.i, %bb.k ] ; 3 uses
  %.172.i = phi double [ %.071.i, %bb.d ], [ %.071.i, %bb.e ], [ %.071.i, %bb.f ], [ %.071.i, %bb.g ], [ %.071.i, %bb.h ], [ %i.as, %bb.j ], [ %.071.i, %bb.i ], [ %.071.i, %bb.k ] ; 2 uses
  %.169.i = phi double [ %.068.i, %bb.d ], [ %.068.i, %bb.e ], [ %.068.i, %bb.f ], [ %.068.i, %bb.g ], [ %.068.i, %bb.h ], [ %i.at, %bb.j ], [ %.068.i, %bb.i ], [ %.068.i, %bb.k ] ; 3 uses
  %.166.i = phi i32 [ %.065.i, %bb.d ], [ %.065.i, %bb.e ], [ %.065.i, %bb.f ], [ %.065.i, %bb.g ], [ %.065.i, %bb.h ], [ %.065.i, %bb.j ], [ %.065.i, %bb.i ], [ %..065.i, %bb.k ] ; 4 uses
  %.163.i = phi i1 [ %.062.i, %bb.d ], [ %.062.i, %bb.e ], [ true, %bb.f ], [ %.062.i, %bb.g ], [ %.062.i, %bb.h ], [ %.062.i, %bb.j ], [ %.062.i, %bb.i ], [ %.062.i, %bb.k ] ; 4 uses
  %.160.i = phi i8 [ %.059.i, %bb.d ], [ %.059.i, %bb.e ], [ %.059.i, %bb.f ], [ 1, %bb.g ], [ %.059.i, %bb.h ], [ %.059.i, %bb.j ], [ %.059.i, %bb.i ], [ %.059.i, %bb.k ] ; 3 uses
  %.1.i = phi i1 [ %.058.i, %bb.d ], [ %.058.i, %bb.e ], [ %.058.i, %bb.f ], [ %.058.i, %bb.g ], [ %.058.i, %bb.h ], [ %.058.i, %bb.j ], [ %.058.i, %bb.i ], [ %.058..i, %bb.k ] ; 2 uses
  %i.ay = icmp eq i8 %i.af, 1
  br i1 %i.ay, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %.179.i, i64 1 ; 2 uses
  %.not90.i = icmp eq ptr %i.az, %1
  br i1 %.not90.i, label %bb.n, label %.preheader.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.280.i = phi ptr [ %scevgep159.i, %bb.m ], [ %.179.i, %bb.l ] ; 6 uses
  %i.ba = fcmp une double %.169.i, 0.000000e+00
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bb = fptoui double %.169.i to i32            ; 2 uses
  %5 = insertelement <8 x i32> poison, i32 %i.bb, i64 0
  %6 = shufflevector <8 x i32> %5, <8 x i32> poison, <8 x i32> zeroinitializer
  %7 = and <8 x i32> %6, <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256>
  %8 = icmp eq <8 x i32> %7, zeroinitializer      ; 8 uses
  %9 = extractelement <8 x i1> %8, i64 7
  %.1.i.i = select i1 %9, double 1.000000e+00, double 1.000000e+256 ; 2 uses
  %10 = fmul nnan double %.1.i.i, 1.000000e+128
  %i.bc = extractelement <8 x i1> %8, i64 6
  %.1.1.i.i = select i1 %i.bc, double %.1.i.i, double %10 ; 2 uses
  %i.bd = fmul nnan double %.1.1.i.i, 1.000000e+64
  %i.be = extractelement <8 x i1> %8, i64 5
  %.1.2.i.i = select i1 %i.be, double %.1.1.i.i, double %i.bd ; 2 uses
  %i.bf = fmul nnan double %.1.2.i.i, 1.000000e+32
  %i.bg = extractelement <8 x i1> %8, i64 4
  %.1.3.i.i = select i1 %i.bg, double %.1.2.i.i, double %i.bf ; 2 uses
  %i.bh = fmul nnan double %.1.3.i.i, 1.000000e+16
  %i.bi = extractelement <8 x i1> %8, i64 3
  %.1.4.i.i = select i1 %i.bi, double %.1.3.i.i, double %i.bh ; 2 uses
  %i.bj = fmul nnan double %.1.4.i.i, 1.000000e+08
  %i.bk = extractelement <8 x i1> %8, i64 2
  %.1.5.i.i = select i1 %i.bk, double %.1.4.i.i, double %i.bj ; 2 uses
  %i.bl = fmul double %.1.5.i.i, 1.000000e+04
  %i.bm = extractelement <8 x i1> %8, i64 1
  %.1.6.i.i = select i1 %i.bm, double %.1.5.i.i, double %i.bl ; 2 uses
  %i.bn = fmul double %.1.6.i.i, 1.000000e+02
  %i.bo = extractelement <8 x i1> %8, i64 0
  %.1.7.i.i = select i1 %i.bo, double %.1.6.i.i, double %i.bn ; 2 uses
  %.not9.8.i.i = trunc i32 %i.bb to i1
  %11 = fmul double %.1.7.i.i, 1.000000e+01
  %.1.8.i.i = select i1 %.not9.8.i.i, double %11, double %.1.7.i.i
  %i.bp = fdiv double %.172.i, %.1.8.i.i
  %i.bq = fadd double %.175.i, %i.bp
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.3.i = phi double [ %i.bq, %bb.o ], [ %.175.i, %bb.n ] ; 3 uses
  %i.br = fneg double %.3.i
  %.4.i = select i1 %.163.i, double %i.br, double %.3.i ; 4 uses
  br i1 %.1.i, label %bb.q, label %bb.u, !prof !19

bb.q:                                             ; preds = %bb.p
  %i.bs = fcmp oeq double %.3.i, 0.000000e+00
  br i1 %i.bs, label %_ZL9strtod_rlPKcPS0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = trunc nuw i8 %.160.i to i1
  br i1 %i.bt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bu = select i1 %.163.i, double f0x8010000000000000, double f0x0010000000000000
  br label %_ZL9strtod_rlPKcPS0_.exit

bb.t:                                             ; preds = %bb.r
  %i.bv = select i1 %.163.i, double f0xFFEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF
  br label %_ZL9strtod_rlPKcPS0_.exit

bb.u:                                             ; preds = %bb.p
  %.not91.i = icmp eq i32 %.166.i, 0
  br i1 %.not91.i, label %_ZL9strtod_rlPKcPS0_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = trunc nuw i8 %.160.i to i1
  %12 = insertelement <8 x i32> poison, i32 %.166.i, i64 0
  %13 = shufflevector <8 x i32> %12, <8 x i32> poison, <8 x i32> zeroinitializer
  %14 = and <8 x i32> %13, <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256>
  %15 = icmp eq <8 x i32> %14, zeroinitializer    ; 8 uses
  %16 = extractelement <8 x i1> %15, i64 7
  %.1.i93.i = select i1 %16, double 1.000000e+00, double 1.000000e+256 ; 2 uses
  %i.bx = fmul nnan double %.1.i93.i, 1.000000e+128
  %i.by = extractelement <8 x i1> %15, i64 6
  %.1.1.i95.i = select i1 %i.by, double %.1.i93.i, double %i.bx ; 2 uses
  %i.bz = fmul nnan double %.1.1.i95.i, 1.000000e+64
  %i.ca = extractelement <8 x i1> %15, i64 5
  %.1.2.i97.i = select i1 %i.ca, double %.1.1.i95.i, double %i.bz ; 2 uses
  %i.cb = fmul nnan double %.1.2.i97.i, 1.000000e+32
  %i.cc = extractelement <8 x i1> %15, i64 4
  %.1.3.i99.i = select i1 %i.cc, double %.1.2.i97.i, double %i.cb ; 2 uses
  %i.cd = fmul nnan double %.1.3.i99.i, 1.000000e+16
  %i.ce = extractelement <8 x i1> %15, i64 3
  %.1.4.i101.i = select i1 %i.ce, double %.1.3.i99.i, double %i.cd ; 2 uses
  %i.cf = fmul nnan double %.1.4.i101.i, 1.000000e+08
  %i.cg = extractelement <8 x i1> %15, i64 2
  %.1.5.i103.i = select i1 %i.cg, double %.1.4.i101.i, double %i.cf ; 2 uses
  %i.ch = fmul double %.1.5.i103.i, 1.000000e+04
  %i.ci = extractelement <8 x i1> %15, i64 1
  %.1.6.i105.i = select i1 %i.ci, double %.1.5.i103.i, double %i.ch ; 2 uses
  %i.cj = fmul double %.1.6.i105.i, 1.000000e+02
  %i.ck = extractelement <8 x i1> %15, i64 0
  %.1.7.i107.i = select i1 %i.ck, double %.1.6.i105.i, double %i.cj ; 2 uses
  %.not9.8.i108.i = trunc i32 %.166.i to i1
  %17 = fmul double %.1.7.i107.i, 1.000000e+01
  %.1.8.i109.i = select i1 %.not9.8.i108.i, double %17, double %.1.7.i107.i ; 2 uses
  br i1 %i.bw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cl = fdiv double %.4.i, %.1.8.i109.i
  br label %_ZL9strtod_rlPKcPS0_.exit

bb.x:                                             ; preds = %bb.v
  %i.cm = fmul double %.1.8.i109.i, %.4.i
  br label %_ZL9strtod_rlPKcPS0_.exit

_ZL9strtod_rlPKcPS0_.exit:                        ; preds = %.critedge.i, %bb.q, %bb.s, %bb.t, %bb.u, %bb.w, %bb.x
  %.010 = phi ptr [ %.280.i, %bb.x ], [ %.280.i, %bb.q ], [ %.280.i, %bb.s ], [ %.280.i, %bb.t ], [ %.280.i, %bb.u ], [ %.280.i, %bb.w ], [ %.078.lcssa.i, %.critedge.i ] ; 3 uses
  %.077.i = phi double [ %i.cm, %bb.x ], [ %.4.i, %bb.q ], [ %i.bu, %bb.s ], [ %i.bv, %bb.t ], [ %.4.i, %bb.u ], [ %i.cl, %bb.w ], [ 0.000000e+00, %.critedge.i ]
  store double %.077.i, ptr %2, align 8, !tbaa !20
  %i.cn = icmp eq ptr %i.a, %.010
  br i1 %i.cn, label %bb.z, label %bb.y, !prof !18

bb.y:                                             ; preds = %_ZL9strtod_rlPKcPS0_.exit
  store ptr %.010, ptr %0, align 8, !tbaa !8
  %i.co = icmp eq ptr %1, %.010
  %not. = xor i1 %3, true
  %i.cp = or i1 %i.co, %not.
  br label %bb.z

bb.z:                                             ; preds = %_ZL9strtod_rlPKcPS0_.exit, %bb.y
  %.0 = phi i1 [ %i.cp, %bb.y ], [ false, %_ZL9strtod_rlPKcPS0_.exit ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"branch_weights", i32 2000, i32 2002}
!15 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!"branch_weights", !"expected", i32 1717127, i32 2145766521}
!20 = !{!21, !21, i64 0}
!21 = !{!"double", !6, i64 0}
end_hunk_0
