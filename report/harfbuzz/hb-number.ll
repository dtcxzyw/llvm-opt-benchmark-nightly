Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-number?download=true
inline.NumInlined: 14
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL25_double_parser_trans_keys = internal unnamed_addr constant [19 x i8] c"\00\00+9.909+9090e09.e\00", align 16
@_ZL23_double_parser_indicies = internal unnamed_addr constant [191 x i8] c"\00\01\02\03\01\04\04\04\04\04\04\04\04\04\04\01\03\01\04\04\04\04\04\04\04\04\04\04\01\05\05\05\05\05\05\05\05\05\05\01\06\01\07\01\01\08\08\08\08\08\08\08\08\08\08\01\08\08\08\08\08\08\08\08\08\08\01\05\05\05\05\05\05\05\05\05\05\01\01\01\01\01\01\01\01\01\01\01\09\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\09\01\08\08\08\08\08\08\08\08\08\08\01\03\01\04\04\04\04\04\04\04\04\04\04\01\01\01\01\01\01\01\01\01\01\01\09\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\09\01\00", align 16
@_ZL28_double_parser_index_offsets = internal unnamed_addr constant [9 x i8] c"\00\00\10\1D(8Cz\85", align 1
@_ZL24_double_parser_key_spans = internal unnamed_addr constant [9 x i8] c"\00\0F\0C\0A\0F\0A6\0A8", align 1
@_ZL26_double_parser_trans_targs = internal unnamed_addr constant [10 x i8] c"\02\00\02\03\08\06\05\05\07\04", align 1
@_ZL28_double_parser_trans_actions = internal unnamed_addr constant [10 x i8] c"\00\00\01\00\02\03\00\04\05\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_Z12hb_parse_intPPKcS0_Pib(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.c = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
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
  store ptr %i.a, ptr %i.b, align 8, !tbaa !10
  %i.k = tail call ptr @__errno_location() #8     ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !12
  %i.l = call noundef i64 @__isoc23_strtol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 10) #7
  %i.m = trunc i64 %i.l to i32
  store i32 %i.m, ptr %2, align 4, !tbaa !12
  %i.n = load i32, ptr %i.k, align 4, !tbaa !12
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.b, label %"_ZL13_parse_numberIiZ12hb_parse_intPPKcS1_PibE3$_0EbS2_S1_PT_bT0_.exit", !prof !13

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !10   ; 3 uses
  %i.p = icmp ne ptr %i.a, %i.o                   ; 2 uses
  %brmerge.not.i = and i1 %3, %i.p
  br i1 %brmerge.not.i, label %.split.i, label %bb.c, !prof !14

.split.i:                                         ; preds = %bb.b
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.a to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.d, %i.u
  %.not22.i = icmp eq i64 %i.s, %i.v
  br i1 %.not22.i, label %bb.d, label %"_ZL13_parse_numberIiZ12hb_parse_intPPKcS1_PibE3$_0EbS2_S1_PT_bT0_.exit", !prof !15

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %._crit_edge.i, label %"_ZL13_parse_numberIiZ12hb_parse_intPPKcS1_PibE3$_0EbS2_S1_PT_bT0_.exit", !prof !15

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !10
  %.pre23.i = ptrtoint ptr %i.o to i64
  %.pre24.i = ptrtoint ptr %i.a to i64
  %.pre26.i = sub i64 %.pre23.i, %.pre24.i
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.split.i
  %.pre-phi27.i = phi i64 [ %.pre26.i, %._crit_edge.i ], [ %i.s, %.split.i ]
  %i.w = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.t, %.split.i ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %.pre-phi27.i
  store ptr %i.x, ptr %0, align 8, !tbaa !10
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
  %i.c = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
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
  store ptr %i.a, ptr %i.b, align 8, !tbaa !10
  %i.k = tail call ptr @__errno_location() #8     ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !12
  %i.l = call noundef i64 @__isoc23_strtoul(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %4) #7
  %i.m = trunc i64 %i.l to i32
  store i32 %i.m, ptr %2, align 4, !tbaa !12
  %i.n = load i32, ptr %i.k, align 4, !tbaa !12
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.b, label %"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit", !prof !13

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !10   ; 3 uses
  %i.p = icmp ne ptr %i.a, %i.o                   ; 2 uses
  %brmerge.not.i = and i1 %3, %i.p
  br i1 %brmerge.not.i, label %.split.i, label %bb.c, !prof !14

.split.i:                                         ; preds = %bb.b
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.a to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.d, %i.u
  %.not22.i = icmp eq i64 %i.s, %i.v
  br i1 %.not22.i, label %bb.d, label %"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit", !prof !15

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %._crit_edge.i, label %"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit", !prof !15

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !10
  %.pre23.i = ptrtoint ptr %i.o to i64
  %.pre24.i = ptrtoint ptr %i.a to i64
  %.pre26.i = sub i64 %.pre23.i, %.pre24.i
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.split.i
  %.pre-phi27.i = phi i64 [ %.pre26.i, %._crit_edge.i ], [ %i.s, %.split.i ]
  %i.w = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.t, %.split.i ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %.pre-phi27.i
  store ptr %i.x, ptr %0, align 8, !tbaa !10
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 6 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = icmp ult ptr %i.a, %1
  br i1 %i.c, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %4 = ptrtoaddr ptr %i.a to i64
  %i.d = sub i64 %i.b, %4
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.078155.i = phi ptr [ %i.f, %bb.b ], [ %i.a, %.lr.ph.preheader.i ] ; 3 uses
  %i.e = load i8, ptr %.078155.i, align 1, !tbaa !11
  switch i8 %i.e, label %.critedge.i [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 11, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.078155.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.f, %1
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !16

.critedge.i:                                      ; preds = %bb.b, %.lr.ph.i, %bb.a
  %.078.lcssa.i = phi ptr [ %i.a, %bb.a ], [ %scevgep.i, %bb.b ], [ %.078155.i, %.lr.ph.i ] ; 5 uses
  %i.g = icmp eq ptr %.078.lcssa.i, %1
  br i1 %i.g, label %_ZL9strtod_rlPKcPS0_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.critedge.i
  %.078.lcssa158.pre-phi.i = ptrtoaddr ptr %.078.lcssa.i to i64
  %i.h = sub i64 %i.b, %.078.lcssa158.pre-phi.i
  %scevgep159.i = getelementptr i8, ptr %.078.lcssa.i, i64 %i.h
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %.preheader.preheader.i
  %.179.i = phi ptr [ %i.ba, %bb.m ], [ %.078.lcssa.i, %.preheader.preheader.i ] ; 3 uses
  %.074.i = phi double [ %.175.i, %bb.m ], [ 0.000000e+00, %.preheader.preheader.i ] ; 8 uses
  %.071.i = phi double [ %.172.i, %bb.m ], [ 0.000000e+00, %.preheader.preheader.i ] ; 9 uses
  %.068.i = phi double [ %.169.i, %bb.m ], [ 0.000000e+00, %.preheader.preheader.i ] ; 8 uses
  %.065.i = phi i32 [ %.166.i, %bb.m ], [ 0, %.preheader.preheader.i ] ; 9 uses
  %.062.i = phi i1 [ %.163.i, %bb.m ], [ false, %.preheader.preheader.i ] ; 7 uses
  %.059.i = phi i8 [ %.160.i, %bb.m ], [ 0, %.preheader.preheader.i ] ; 7 uses
  %.058.i = phi i1 [ %.1.i, %bb.m ], [ false, %.preheader.preheader.i ] ; 8 uses
  %.0.i = phi i32 [ %i.ai, %bb.m ], [ 1, %.preheader.preheader.i ] ; 2 uses
  %i.i = shl nsw i32 %.0.i, 1
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr @_ZL25_double_parser_trans_keys, i64 %i.j ; 2 uses
  %i.l = sext i32 %.0.i to i64                    ; 2 uses
  %i.m = getelementptr inbounds i8, ptr @_ZL28_double_parser_index_offsets, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !11
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @_ZL23_double_parser_indicies, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr @_ZL24_double_parser_key_spans, i64 %i.l
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11
  %i.s = sext i8 %i.r to i32                      ; 2 uses
  %i.t = load i8, ptr %i.k, align 2, !tbaa !11
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = load i8, ptr %.179.i, align 1, !tbaa !11
  %i.w = sext i8 %i.v to i32                      ; 6 uses
  %.not.i = icmp sgt i32 %i.u, %i.w
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %i.z = zext i8 %i.y to i32
  %.not88.i = icmp samesign ugt i32 %i.w, %i.z
  %i.aa = sub nuw nsw i32 %i.w, %i.u
  %spec.select.i = select i1 %.not88.i, i32 %i.s, i32 %i.aa
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %i.ab = phi i32 [ %i.s, %.preheader.i ], [ %spec.select.i, %bb.c ]
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.p, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !11  ; 2 uses
  %i.af = sext i8 %i.ae to i64                    ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr @_ZL26_double_parser_trans_targs, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.ai = sext i8 %i.ah to i32
  %i.aj = shl nuw i64 1, %i.af
  %i.ak = and i64 %i.aj, 587
  %.not89.i = icmp eq i64 %i.ak, 0
  br i1 %.not89.i, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds i8, ptr @_ZL28_double_parser_trans_actions, i64 %i.af
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  switch i8 %i.am, label %bb.l [
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
  %i.an = add nsw i32 %i.w, -48
  %i.ao = sitofp i32 %i.an to double
  %i.ap = tail call double @llvm.fmuladd.f64(double %.074.i, double 1.000000e+01, double %i.ao)
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.aq = fcmp ugt double %.071.i, f0x42F9999999999990
  br i1 %i.aq, label %bb.l, label %bb.j, !prof !18

bb.j:                                             ; preds = %bb.i
  %i.ar = add nsw i32 %i.w, -48
  %i.as = sitofp i32 %i.ar to double
  %i.at = tail call double @llvm.fmuladd.f64(double %.071.i, double 1.000000e+01, double %i.as)
  %i.au = fadd double %.068.i, 1.000000e+00
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.av = mul i32 %.065.i, 10
  %i.aw = add i32 %i.av, -48
  %i.ax = add i32 %i.aw, %i.w                     ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, 2047                ; 2 uses
  %..065.i = select i1 %i.ay, i32 %.065.i, i32 %i.ax, !prof !18
  %.058..i = select i1 %i.ay, i1 true, i1 %.058.i, !prof !18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.175.i = phi double [ %.074.i, %bb.d ], [ %.074.i, %bb.e ], [ %.074.i, %bb.f ], [ %.074.i, %bb.g ], [ %i.ap, %bb.h ], [ %.074.i, %bb.j ], [ %.074.i, %bb.i ], [ %.074.i, %bb.k ] ; 3 uses
  %.172.i = phi double [ %.071.i, %bb.d ], [ %.071.i, %bb.e ], [ %.071.i, %bb.f ], [ %.071.i, %bb.g ], [ %.071.i, %bb.h ], [ %i.at, %bb.j ], [ %.071.i, %bb.i ], [ %.071.i, %bb.k ] ; 2 uses
  %.169.i = phi double [ %.068.i, %bb.d ], [ %.068.i, %bb.e ], [ %.068.i, %bb.f ], [ %.068.i, %bb.g ], [ %.068.i, %bb.h ], [ %i.au, %bb.j ], [ %.068.i, %bb.i ], [ %.068.i, %bb.k ] ; 3 uses
  %.166.i = phi i32 [ %.065.i, %bb.d ], [ %.065.i, %bb.e ], [ %.065.i, %bb.f ], [ %.065.i, %bb.g ], [ %.065.i, %bb.h ], [ %.065.i, %bb.j ], [ %.065.i, %bb.i ], [ %..065.i, %bb.k ] ; 4 uses
  %.163.i = phi i1 [ %.062.i, %bb.d ], [ %.062.i, %bb.e ], [ true, %bb.f ], [ %.062.i, %bb.g ], [ %.062.i, %bb.h ], [ %.062.i, %bb.j ], [ %.062.i, %bb.i ], [ %.062.i, %bb.k ] ; 4 uses
  %.160.i = phi i8 [ %.059.i, %bb.d ], [ %.059.i, %bb.e ], [ %.059.i, %bb.f ], [ 1, %bb.g ], [ %.059.i, %bb.h ], [ %.059.i, %bb.j ], [ %.059.i, %bb.i ], [ %.059.i, %bb.k ] ; 3 uses
  %.1.i = phi i1 [ %.058.i, %bb.d ], [ %.058.i, %bb.e ], [ %.058.i, %bb.f ], [ %.058.i, %bb.g ], [ %.058.i, %bb.h ], [ %.058.i, %bb.j ], [ %.058.i, %bb.i ], [ %.058..i, %bb.k ] ; 2 uses
  %i.az = icmp eq i8 %i.ae, 1
  br i1 %i.az, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.179.i, i64 1 ; 2 uses
  %.not90.i = icmp eq ptr %i.ba, %1
  br i1 %.not90.i, label %bb.n, label %.preheader.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.280.i = phi ptr [ %scevgep159.i, %bb.m ], [ %.179.i, %bb.l ] ; 6 uses
  %i.bb = fcmp une double %.169.i, 0.000000e+00
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = fptoui double %.169.i to i32            ; 2 uses
  %i.bd = and i32 %i.bc, 256
  %.not9.i.i = icmp eq i32 %i.bd, 0
  %.1.i.i = select i1 %.not9.i.i, double 1.000000e+00, double 1.000000e+256 ; 2 uses
  %i.be = fmul nnan double %.1.i.i, 1.000000e+128
  %i.bf = insertelement <8 x i32> poison, i32 %i.bc, i64 0
  %i.bg = shufflevector <8 x i32> %i.bf, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bh = and <8 x i32> %i.bg, <i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128>
  %i.bi = icmp eq <8 x i32> %i.bh, zeroinitializer ; 8 uses
  %i.bj = extractelement <8 x i1> %i.bi, i64 7
  %.1.1.i.i = select i1 %i.bj, double %.1.i.i, double %i.be ; 2 uses
  %i.bk = fmul nnan double %.1.1.i.i, 1.000000e+64
  %i.bl = extractelement <8 x i1> %i.bi, i64 6
  %.1.2.i.i = select i1 %i.bl, double %.1.1.i.i, double %i.bk ; 2 uses
  %i.bm = fmul nnan double %.1.2.i.i, 1.000000e+32
  %i.bn = extractelement <8 x i1> %i.bi, i64 5
  %.1.3.i.i = select i1 %i.bn, double %.1.2.i.i, double %i.bm ; 2 uses
  %i.bo = fmul nnan double %.1.3.i.i, 1.000000e+16
  %i.bp = extractelement <8 x i1> %i.bi, i64 4
  %.1.4.i.i = select i1 %i.bp, double %.1.3.i.i, double %i.bo ; 2 uses
  %i.bq = fmul nnan double %.1.4.i.i, 1.000000e+08
  %i.br = extractelement <8 x i1> %i.bi, i64 3
  %.1.5.i.i = select i1 %i.br, double %.1.4.i.i, double %i.bq ; 2 uses
  %i.bs = fmul double %.1.5.i.i, 1.000000e+04
  %i.bt = extractelement <8 x i1> %i.bi, i64 2
  %.1.6.i.i = select i1 %i.bt, double %.1.5.i.i, double %i.bs ; 2 uses
  %i.bu = fmul double %.1.6.i.i, 1.000000e+02
  %i.bv = extractelement <8 x i1> %i.bi, i64 1
  %.1.7.i.i = select i1 %i.bv, double %.1.6.i.i, double %i.bu ; 2 uses
  %i.bw = fmul double %.1.7.i.i, 1.000000e+01
  %i.bx = extractelement <8 x i1> %i.bi, i64 0
  %.1.8.i.i = select i1 %i.bx, double %.1.7.i.i, double %i.bw
  %i.by = fdiv double %.172.i, %.1.8.i.i
  %i.bz = fadd double %.175.i, %i.by
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.3.i = phi double [ %i.bz, %bb.o ], [ %.175.i, %bb.n ] ; 3 uses
  %i.ca = fneg double %.3.i
  %.4.i = select i1 %.163.i, double %i.ca, double %.3.i ; 4 uses
  br i1 %.1.i, label %bb.q, label %bb.u, !prof !19

bb.q:                                             ; preds = %bb.p
  %i.cb = fcmp oeq double %.3.i, 0.000000e+00
  br i1 %i.cb, label %_ZL9strtod_rlPKcPS0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = trunc nuw i8 %.160.i to i1
  br i1 %i.cc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = select i1 %.163.i, double f0x8010000000000000, double f0x0010000000000000
  br label %_ZL9strtod_rlPKcPS0_.exit

bb.t:                                             ; preds = %bb.r
  %i.ce = select i1 %.163.i, double f0xFFEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF
  br label %_ZL9strtod_rlPKcPS0_.exit

bb.u:                                             ; preds = %bb.p
  %.not91.i = icmp eq i32 %.166.i, 0
  br i1 %.not91.i, label %_ZL9strtod_rlPKcPS0_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = trunc nuw i8 %.160.i to i1
  %i.cg = and i32 %.166.i, 256
  %.not9.i92.i = icmp eq i32 %i.cg, 0
  %.1.i93.i = select i1 %.not9.i92.i, double 1.000000e+00, double 1.000000e+256 ; 2 uses
  %i.ch = insertelement <8 x i32> poison, i32 %.166.i, i64 0
  %i.ci = shufflevector <8 x i32> %i.ch, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cj = and <8 x i32> %i.ci, <i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128>
  %i.ck = fmul nnan double %.1.i93.i, 1.000000e+128
  %i.cl = icmp eq <8 x i32> %i.cj, zeroinitializer ; 8 uses
  %i.cm = extractelement <8 x i1> %i.cl, i64 7
  %.1.1.i95.i = select i1 %i.cm, double %.1.i93.i, double %i.ck ; 2 uses
  %i.cn = fmul nnan double %.1.1.i95.i, 1.000000e+64
  %i.co = extractelement <8 x i1> %i.cl, i64 6
  %.1.2.i97.i = select i1 %i.co, double %.1.1.i95.i, double %i.cn ; 2 uses
  %i.cp = fmul nnan double %.1.2.i97.i, 1.000000e+32
  %i.cq = extractelement <8 x i1> %i.cl, i64 5
  %.1.3.i99.i = select i1 %i.cq, double %.1.2.i97.i, double %i.cp ; 2 uses
end_hunk_0
