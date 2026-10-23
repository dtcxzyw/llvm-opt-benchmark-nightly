Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImfDeepCompositing?download=true
inline.NumInlined: 271
inline.NumDeleted: 139
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@llvm.ctlz.i64
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERN7Imf_3_411sort_helperEPiEEjT1_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !18     ; 6 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !18     ; 6 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !29     ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 7 uses
  %i.e = sext i32 %i.a to i64                     ; 4 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !11 ; 6 uses
  %i.h = sext i32 %i.b to i64                     ; 3 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.h
  %i.j = load float, ptr %i.i, align 4, !tbaa !11 ; 4 uses
  %i.k = fcmp olt float %i.g, %i.j
  br i1 %i.k, label %_ZN7Imf_3_411sort_helperclEii.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = fcmp ogt float %i.g, %i.j
  br i1 %i.l, label %_ZN7Imf_3_411sort_helperclEii.exit.thread40, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.e
  %i.p = load float, ptr %i.o, align 4, !tbaa !11 ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.h
  %i.r = load float, ptr %i.q, align 4, !tbaa !11 ; 2 uses
  %i.s = fcmp olt float %i.p, %i.r
  br i1 %i.s, label %_ZN7Imf_3_411sort_helperclEii.exit.thread, label %_ZN7Imf_3_411sort_helperclEii.exit

_ZN7Imf_3_411sort_helperclEii.exit:               ; preds = %bb.c
  %i.t = fcmp ule float %i.p, %i.r
  %i.u = icmp slt i32 %i.a, %i.b
  %spec.select.i = and i1 %i.u, %i.t
  br i1 %spec.select.i, label %_ZN7Imf_3_411sort_helperclEii.exit.thread, label %_ZN7Imf_3_411sort_helperclEii.exit.thread40

_ZN7Imf_3_411sort_helperclEii.exit.thread40:      ; preds = %bb.b, %_ZN7Imf_3_411sort_helperclEii.exit
  %i.v = load i32, ptr %2, align 4, !tbaa !18     ; 3 uses
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !11 ; 2 uses
  %i.z = fcmp olt float %i.y, %i.g
  br i1 %i.z, label %_ZN7Imf_3_411sort_helperclEii.exit12.thread, label %bb.d

bb.d:                                             ; preds = %_ZN7Imf_3_411sort_helperclEii.exit.thread40
  %i.aa = fcmp ogt float %i.y, %i.g
  br i1 %i.aa, label %_ZN7Imf_3_411sort_helperclEii.exit12.thread43, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.w
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !11 ; 2 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.e
  %i.ag = load float, ptr %i.af, align 4, !tbaa !11 ; 2 uses
  %i.ah = fcmp olt float %i.ae, %i.ag
  br i1 %i.ah, label %_ZN7Imf_3_411sort_helperclEii.exit12.thread, label %_ZN7Imf_3_411sort_helperclEii.exit12

_ZN7Imf_3_411sort_helperclEii.exit12:             ; preds = %bb.e
  %i.ai = fcmp ule float %i.ae, %i.ag
  %i.aj = icmp slt i32 %i.v, %i.a
  %spec.select.i10 = and i1 %i.aj, %i.ai
  br i1 %spec.select.i10, label %_ZN7Imf_3_411sort_helperclEii.exit12.thread, label %_ZN7Imf_3_411sort_helperclEii.exit12.thread43

_ZN7Imf_3_411sort_helperclEii.exit12.thread:      ; preds = %bb.e, %_ZN7Imf_3_411sort_helperclEii.exit.thread40, %_ZN7Imf_3_411sort_helperclEii.exit12
  store i32 %i.v, ptr %1, align 4, !tbaa !18
  store i32 %i.a, ptr %2, align 4, !tbaa !18
  %i.ak = load i32, ptr %1, align 4, !tbaa !18    ; 3 uses
  %i.al = load i32, ptr %0, align 4, !tbaa !18    ; 3 uses
  %i.am = sext i32 %i.ak to i64                   ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !11 ; 2 uses
  %i.ap = sext i32 %i.al to i64                   ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !11 ; 2 uses
  %i.as = fcmp olt float %i.ao, %i.ar
  br i1 %i.as, label %_ZN7Imf_3_411sort_helperclEii.exit15.thread, label %bb.f

bb.f:                                             ; preds = %_ZN7Imf_3_411sort_helperclEii.exit12.thread
  %i.at = fcmp ogt float %i.ao, %i.ar
  br i1 %i.at, label %_ZN7Imf_3_411sort_helperclEii.exit12.thread43, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25 ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.am
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !11 ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ap
  %i.az = load float, ptr %i.ay, align 4, !tbaa !11 ; 2 uses
  %i.ba = fcmp olt float %i.ax, %i.az
  br i1 %i.ba, label %_ZN7Imf_3_411sort_helperclEii.exit15.thread, label %_ZN7Imf_3_411sort_helperclEii.exit15

_ZN7Imf_3_411sort_helperclEii.exit15:             ; preds = %bb.g
  %i.bb = fcmp ule float %i.ax, %i.az
  %i.bc = icmp slt i32 %i.ak, %i.al
  %spec.select.i13 = and i1 %i.bc, %i.bb
  br i1 %spec.select.i13, label %_ZN7Imf_3_411sort_helperclEii.exit15.thread, label %_ZN7Imf_3_411sort_helperclEii.exit12.thread43

_ZN7Imf_3_411sort_helperclEii.exit15.thread:      ; preds = %bb.g, %_ZN7Imf_3_411sort_helperclEii.exit12.thread, %_ZN7Imf_3_411sort_helperclEii.exit15
  store i32 %i.ak, ptr %0, align 4, !tbaa !18
  store i32 %i.al, ptr %1, align 4, !tbaa !18
  br label %_ZN7Imf_3_411sort_helperclEii.exit12.thread43

_ZN7Imf_3_411sort_helperclEii.exit.thread:        ; preds = %bb.c, %bb.a, %_ZN7Imf_3_411sort_helperclEii.exit
  %i.bd = load i32, ptr %2, align 4, !tbaa !18    ; 3 uses
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !11 ; 2 uses
  %i.bh = fcmp olt float %i.bg, %i.g
  br i1 %i.bh, label %_ZN7Imf_3_411sort_helperclEii.exit18.thread, label %bb.h

bb.h:                                             ; preds = %_ZN7Imf_3_411sort_helperclEii.exit.thread
  %i.bi = fcmp ogt float %i.bg, %i.g
  br i1 %i.bi, label %_ZN7Imf_3_411sort_helperclEii.exit18.thread49, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !25 ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.be
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !11 ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.e
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !11 ; 2 uses
  %i.bp = fcmp olt float %i.bm, %i.bo
  br i1 %i.bp, label %_ZN7Imf_3_411sort_helperclEii.exit18.thread, label %_ZN7Imf_3_411sort_helperclEii.exit18

_ZN7Imf_3_411sort_helperclEii.exit18:             ; preds = %bb.i
  %i.bq = fcmp ule float %i.bm, %i.bo
  %i.br = icmp slt i32 %i.bd, %i.a
  %spec.select.i16 = and i1 %i.br, %i.bq
  br i1 %spec.select.i16, label %_ZN7Imf_3_411sort_helperclEii.exit18.thread, label %_ZN7Imf_3_411sort_helperclEii.exit18.thread49

_ZN7Imf_3_411sort_helperclEii.exit18.thread:      ; preds = %bb.i, %_ZN7Imf_3_411sort_helperclEii.exit.thread, %_ZN7Imf_3_411sort_helperclEii.exit18
  store i32 %i.bd, ptr %0, align 4, !tbaa !18
  store i32 %i.b, ptr %2, align 4, !tbaa !18
  br label %_ZN7Imf_3_411sort_helperclEii.exit12.thread43

_ZN7Imf_3_411sort_helperclEii.exit18.thread49:    ; preds = %bb.h, %_ZN7Imf_3_411sort_helperclEii.exit18
  store i32 %i.a, ptr %0, align 4, !tbaa !18
  store i32 %i.b, ptr %1, align 4, !tbaa !18
  %i.bs = load i32, ptr %2, align 4, !tbaa !18    ; 3 uses
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !11 ; 2 uses
  %i.bw = fcmp olt float %i.bv, %i.j
  br i1 %i.bw, label %_ZN7Imf_3_411sort_helperclEii.exit21.thread, label %bb.j

bb.j:                                             ; preds = %_ZN7Imf_3_411sort_helperclEii.exit18.thread49
  %i.bx = fcmp ogt float %i.bv, %i.j
  br i1 %i.bx, label %_ZN7Imf_3_411sort_helperclEii.exit12.thread43, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !25 ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.bt
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !11 ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.h
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !11 ; 2 uses
  %i.ce = fcmp olt float %i.cb, %i.cd
  br i1 %i.ce, label %_ZN7Imf_3_411sort_helperclEii.exit21.thread, label %_ZN7Imf_3_411sort_helperclEii.exit21

_ZN7Imf_3_411sort_helperclEii.exit21:             ; preds = %bb.k
  %i.cf = fcmp ule float %i.cb, %i.cd
  %i.cg = icmp slt i32 %i.bs, %i.b
  %spec.select.i19 = and i1 %i.cg, %i.cf
  br i1 %spec.select.i19, label %_ZN7Imf_3_411sort_helperclEii.exit21.thread, label %_ZN7Imf_3_411sort_helperclEii.exit12.thread43

_ZN7Imf_3_411sort_helperclEii.exit21.thread:      ; preds = %bb.k, %_ZN7Imf_3_411sort_helperclEii.exit18.thread49, %_ZN7Imf_3_411sort_helperclEii.exit21
  store i32 %i.bs, ptr %1, align 4, !tbaa !18
  store i32 %i.b, ptr %2, align 4, !tbaa !18
  br label %_ZN7Imf_3_411sort_helperclEii.exit12.thread43

_ZN7Imf_3_411sort_helperclEii.exit12.thread43:    ; preds = %bb.j, %bb.f, %bb.d, %_ZN7Imf_3_411sort_helperclEii.exit21, %_ZN7Imf_3_411sort_helperclEii.exit21.thread, %_ZN7Imf_3_411sort_helperclEii.exit15, %_ZN7Imf_3_411sort_helperclEii.exit15.thread, %_ZN7Imf_3_411sort_helperclEii.exit12, %_ZN7Imf_3_411sort_helperclEii.exit18.thread
  %.09 = phi i32 [ 1, %_ZN7Imf_3_411sort_helperclEii.exit18.thread ], [ 1, %_ZN7Imf_3_411sort_helperclEii.exit15 ], [ 0, %_ZN7Imf_3_411sort_helperclEii.exit12 ], [ 2, %_ZN7Imf_3_411sort_helperclEii.exit15.thread ], [ 2, %_ZN7Imf_3_411sort_helperclEii.exit21.thread ], [ 1, %_ZN7Imf_3_411sort_helperclEii.exit21 ], [ 1, %bb.f ], [ 0, %bb.d ], [ 1, %bb.j ]
  ret i32 %.09
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__131__partition_with_equals_on_leftB8ne180100INS_17_ClassicAlgPolicyEPiRN7Imf_3_411sort_helperEEET0_S6_S6_T1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !18     ; 8 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18   ; 3 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !29     ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 9 uses
  %i.f = sext i32 %i.a to i64                     ; 7 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !11 ; 14 uses
  %i.i = sext i32 %i.c to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.i
  %i.k = load float, ptr %i.j, align 4, !tbaa !11 ; 3 uses
  %i.l = fcmp olt float %i.h, %i.k
  br i1 %i.l, label %_ZN7Imf_3_411sort_helperclEii.exit17.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = fcmp ogt float %i.h, %i.k
  br i1 %i.m, label %_ZN7Imf_3_411sort_helperclEii.exit.preheader, label %bb.c

_ZN7Imf_3_411sort_helperclEii.exit.preheader:     ; preds = %.split, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.o = icmp ult ptr %i.n, %1
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN7Imf_3_411sort_helperclEii.exit.preheader
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.lr.ph.a

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.f
  %i.s = load float, ptr %i.r, align 4, !tbaa !11 ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.i
  %i.u = load float, ptr %i.t, align 4, !tbaa !11 ; 2 uses
  %i.v = fcmp olt float %i.s, %i.u
  br i1 %i.v, label %_ZN7Imf_3_411sort_helperclEii.exit17.preheader, label %.split

.split:                                           ; preds = %bb.c
  %i.w = fcmp ule float %i.s, %i.u
  %i.x = icmp slt i32 %i.a, %i.c
  %spec.select.i = and i1 %i.x, %i.w
  br i1 %spec.select.i, label %_ZN7Imf_3_411sort_helperclEii.exit17.preheader, label %_ZN7Imf_3_411sort_helperclEii.exit.preheader

_ZN7Imf_3_411sort_helperclEii.exit17.preheader:   ; preds = %bb.c, %bb.a, %.split
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !18  ; 2 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !11 ; 2 uses
  %i.ae = fcmp olt float %i.h, %i.ad
  br i1 %i.ae, label %.critedge, label %.lr.ph74

.lr.ph74:                                         ; preds = %_ZN7Imf_3_411sort_helperclEii.exit17.preheader, %_ZN7Imf_3_411sort_helperclEii.exit17.backedge
  %i.af = phi float [ %i.aw, %_ZN7Imf_3_411sort_helperclEii.exit17.backedge ], [ %i.ad, %_ZN7Imf_3_411sort_helperclEii.exit17.preheader ]
  %i.ag = phi i64 [ %i.au, %_ZN7Imf_3_411sort_helperclEii.exit17.backedge ], [ %i.ab, %_ZN7Imf_3_411sort_helperclEii.exit17.preheader ]
  %i.ah = phi i32 [ %i.at, %_ZN7Imf_3_411sort_helperclEii.exit17.backedge ], [ %i.aa, %_ZN7Imf_3_411sort_helperclEii.exit17.preheader ]
  %i.ai = phi ptr [ %i.as, %_ZN7Imf_3_411sort_helperclEii.exit17.backedge ], [ %i.z, %_ZN7Imf_3_411sort_helperclEii.exit17.preheader ] ; 3 uses
  %i.aj = fcmp ogt float %i.h, %i.af
  br i1 %i.aj, label %_ZN7Imf_3_411sort_helperclEii.exit17.backedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph74
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !25  ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.f
  %i.am = load float, ptr %i.al, align 4, !tbaa !11 ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ag
  %i.ao = load float, ptr %i.an, align 4, !tbaa !11 ; 2 uses
  %i.ap = fcmp olt float %i.am, %i.ao
  br i1 %i.ap, label %.critedge, label %.split52

.split52:                                         ; preds = %bb.d
  %i.aq = fcmp ule float %i.am, %i.ao
  %i.ar = icmp slt i32 %i.a, %i.ah
  %spec.select.i15 = and i1 %i.ar, %i.aq
  br i1 %spec.select.i15, label %.critedge, label %_ZN7Imf_3_411sort_helperclEii.exit17.backedge

_ZN7Imf_3_411sort_helperclEii.exit17.backedge:    ; preds = %.split52, %.lr.ph74
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !18 ; 2 uses
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !11 ; 2 uses
  %i.ax = fcmp olt float %i.h, %i.aw
  br i1 %i.ax, label %.critedge, label %.lr.ph74, !llvm.loop !52

.lr.ph.a:                                         ; preds = %.lr.ph, %_ZN7Imf_3_411sort_helperclEii.exit.backedge
  %i.ay = phi ptr [ %i.n, %.lr.ph ], [ %i.bn, %_ZN7Imf_3_411sort_helperclEii.exit.backedge ] ; 5 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !18 ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !11 ; 2 uses
  %i.bd = fcmp olt float %i.h, %i.bc
  br i1 %i.bd, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.a
  %i.be = fcmp ogt float %i.h, %i.bc
  br i1 %i.be, label %_ZN7Imf_3_411sort_helperclEii.exit.backedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.f
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !11 ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.ba
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !11 ; 2 uses
  %i.bk = fcmp olt float %i.bh, %i.bj
  br i1 %i.bk, label %.critedge, label %.split54

.split54:                                         ; preds = %bb.f
  %i.bl = fcmp ule float %i.bh, %i.bj
  %i.bm = icmp slt i32 %i.a, %i.az
  %spec.select.i18 = and i1 %i.bm, %i.bl
  br i1 %spec.select.i18, label %.critedge, label %_ZN7Imf_3_411sort_helperclEii.exit.backedge

_ZN7Imf_3_411sort_helperclEii.exit.backedge:      ; preds = %.split54, %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 3 uses
  %i.bo = icmp ult ptr %i.bn, %1
  br i1 %i.bo, label %.lr.ph.a, label %._crit_edge, !llvm.loop !53

.critedge:                                        ; preds = %bb.f, %.lr.ph.a, %.split54, %.split52, %_ZN7Imf_3_411sort_helperclEii.exit17.backedge, %bb.d, %_ZN7Imf_3_411sort_helperclEii.exit17.preheader
  %.249 = phi ptr [ %i.ai, %bb.d ], [ %i.z, %_ZN7Imf_3_411sort_helperclEii.exit17.preheader ], [ %i.ai, %.split52 ], [ %i.as, %_ZN7Imf_3_411sort_helperclEii.exit17.backedge ], [ %i.ay, %.split54 ], [ %i.ay, %.lr.ph.a ], [ %i.ay, %bb.f ] ; 6 uses
  %i.bp = icmp ult ptr %.249, %1
  br i1 %i.bp, label %.preheader62, label %._crit_edge

.preheader62:                                     ; preds = %.critedge
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.backedge63, %.preheader62
  %i.br = phi float [ %i.k, %.preheader62 ], [ %.pre91, %.backedge63 ] ; 2 uses
  %i.bs = phi i32 [ %i.c, %.preheader62 ], [ %.pre, %.backedge63 ] ; 2 uses
  %.0 = phi ptr [ %1, %.preheader62 ], [ %i.bt, %.backedge63 ] ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.0, i64 -4 ; 4 uses
  %i.bu = sext i32 %i.bs to i64
  %i.bv = fcmp olt float %i.h, %i.br
  br i1 %i.bv, label %.backedge63, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = fcmp ogt float %i.h, %i.br
  br i1 %i.bw, label %_ZN7Imf_3_411sort_helperclEii.exit23.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !25 ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.f
  %i.bz = load float, ptr %i.by, align 4, !tbaa !11 ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bu
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !11 ; 2 uses
  %i.cc = fcmp olt float %i.bz, %i.cb
  br i1 %i.cc, label %.backedge63, label %.split56

.split56:                                         ; preds = %bb.i
  %i.cd = fcmp ule float %i.bz, %i.cb
  %i.ce = icmp slt i32 %i.a, %i.bs
  %spec.select.i21 = and i1 %i.ce, %i.cd
  br i1 %spec.select.i21, label %.backedge63, label %_ZN7Imf_3_411sort_helperclEii.exit23.thread

.backedge63:                                      ; preds = %bb.i, %bb.g, %.split56
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.0, i64 -8
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !18 ; 2 uses
  %.phi.trans.insert89 = sext i32 %.pre to i64
  %.phi.trans.insert90 = getelementptr inbounds [4 x i8], ptr %i.e, i64 %.phi.trans.insert89
  %.pre91 = load float, ptr %.phi.trans.insert90, align 4, !tbaa !11
  br label %bb.g, !llvm.loop !54

_ZN7Imf_3_411sort_helperclEii.exit23.thread:      ; preds = %bb.h, %.split56
  %i.cf = icmp ult ptr %.249, %i.bt
  br i1 %i.cf, label %.lr.ph83, label %._crit_edge

.lr.ph83:                                         ; preds = %_ZN7Imf_3_411sort_helperclEii.exit23.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.pre92 = load i32, ptr %.249, align 4, !tbaa !18
  %.pre93 = load i32, ptr %i.bt, align 4, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph83, %_ZN7Imf_3_411sort_helperclEii.exit29.thread
  %i.ch = phi i32 [ %.pre93, %.lr.ph83 ], [ %i.dl, %_ZN7Imf_3_411sort_helperclEii.exit29.thread ]
  %i.ci = phi i32 [ %.pre92, %.lr.ph83 ], [ %i.di, %_ZN7Imf_3_411sort_helperclEii.exit29.thread ]
  %.282 = phi ptr [ %i.bt, %.lr.ph83 ], [ %i.dk, %_ZN7Imf_3_411sort_helperclEii.exit29.thread ] ; 2 uses
  %.35081 = phi ptr [ %.249, %.lr.ph83 ], [ %i.dj, %_ZN7Imf_3_411sort_helperclEii.exit29.thread ] ; 2 uses
  store i32 %i.ch, ptr %.35081, align 4, !tbaa !18
  store i32 %i.ci, ptr %.282, align 4, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.35081, i64 4 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !18 ; 3 uses
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.cl
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !11 ; 2 uses
  %i.co = fcmp olt float %i.h, %i.cn
  br i1 %i.co, label %.preheader, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.j, %_ZN7Imf_3_411sort_helperclEii.exit26.backedge
  %i.cp = phi float [ %i.dg, %_ZN7Imf_3_411sort_helperclEii.exit26.backedge ], [ %i.cn, %bb.j ]
  %i.cq = phi i64 [ %i.de, %_ZN7Imf_3_411sort_helperclEii.exit26.backedge ], [ %i.cl, %bb.j ]
  %i.cr = phi i32 [ %i.dd, %_ZN7Imf_3_411sort_helperclEii.exit26.backedge ], [ %i.ck, %bb.j ] ; 3 uses
  %i.cs = phi ptr [ %i.dc, %_ZN7Imf_3_411sort_helperclEii.exit26.backedge ], [ %i.cj, %bb.j ] ; 3 uses
  %i.ct = fcmp ogt float %i.h, %i.cp
  br i1 %i.ct, label %_ZN7Imf_3_411sort_helperclEii.exit26.backedge, label %bb.k

bb.k:                                             ; preds = %.lr.ph78
  %i.cu = load ptr, ptr %i.cg, align 8, !tbaa !25 ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.f
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !11 ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cq
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !11 ; 2 uses
  %i.cz = fcmp olt float %i.cw, %i.cy
  br i1 %i.cz, label %.preheader, label %.split57

.split57:                                         ; preds = %bb.k
  %i.da = fcmp ule float %i.cw, %i.cy
  %i.db = icmp slt i32 %i.a, %i.cr
  %spec.select.i24 = and i1 %i.db, %i.da
  br i1 %spec.select.i24, label %.preheader, label %_ZN7Imf_3_411sort_helperclEii.exit26.backedge

_ZN7Imf_3_411sort_helperclEii.exit26.backedge:    ; preds = %.split57, %.lr.ph78
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 4 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !18 ; 3 uses
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !11 ; 2 uses
  %i.dh = fcmp olt float %i.h, %i.dg
  br i1 %i.dh, label %.preheader, label %.lr.ph78, !llvm.loop !55

.preheader:                                       ; preds = %.split57, %_ZN7Imf_3_411sort_helperclEii.exit26.backedge, %bb.k, %bb.j
  %i.di = phi i32 [ %i.ck, %bb.j ], [ %i.cr, %bb.k ], [ %i.dd, %_ZN7Imf_3_411sort_helperclEii.exit26.backedge ], [ %i.cr, %.split57 ]
  %i.dj = phi ptr [ %i.cj, %bb.j ], [ %i.cs, %bb.k ], [ %i.dc, %_ZN7Imf_3_411sort_helperclEii.exit26.backedge ], [ %i.cs, %.split57 ] ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader
  %.3 = phi ptr [ %.282, %.preheader ], [ %i.dk, %.backedge.backedge ]
  %i.dk = getelementptr inbounds i8, ptr %.3, i64 -4 ; 4 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !18 ; 3 uses
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !11 ; 2 uses
  %i.dp = fcmp olt float %i.h, %i.do
  br i1 %i.dp, label %.backedge.backedge, label %bb.l

bb.l:                                             ; preds = %.backedge
  %i.dq = fcmp ogt float %i.h, %i.do
  br i1 %i.dq, label %_ZN7Imf_3_411sort_helperclEii.exit29.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dr = load ptr, ptr %i.cg, align 8, !tbaa !25 ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.f
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !11 ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.dm
  %i.dv = load float, ptr %i.du, align 4, !tbaa !11 ; 2 uses
  %i.dw = fcmp olt float %i.dt, %i.dv
  br i1 %i.dw, label %.backedge.backedge, label %.split59

.backedge.backedge:                               ; preds = %bb.m, %.backedge, %.split59
  br label %.backedge, !llvm.loop !56

.split59:                                         ; preds = %bb.m
  %i.dx = fcmp ule float %i.dt, %i.dv
  %i.dy = icmp slt i32 %i.a, %i.dl
  %spec.select.i27 = and i1 %i.dy, %i.dx
  br i1 %spec.select.i27, label %.backedge.backedge, label %_ZN7Imf_3_411sort_helperclEii.exit29.thread

_ZN7Imf_3_411sort_helperclEii.exit29.thread:      ; preds = %bb.l, %.split59
  %i.dz = icmp ult ptr %i.dj, %i.dk
  br i1 %i.dz, label %bb.j, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %_ZN7Imf_3_411sort_helperclEii.exit.backedge, %_ZN7Imf_3_411sort_helperclEii.exit29.thread, %.critedge, %_ZN7Imf_3_411sort_helperclEii.exit.preheader, %_ZN7Imf_3_411sort_helperclEii.exit23.thread
  %.350.lcssa = phi ptr [ %.249, %_ZN7Imf_3_411sort_helperclEii.exit23.thread ], [ %i.n, %_ZN7Imf_3_411sort_helperclEii.exit.preheader ], [ %i.dj, %_ZN7Imf_3_411sort_helperclEii.exit29.thread ], [ %.249, %.critedge ], [ %i.bn, %_ZN7Imf_3_411sort_helperclEii.exit.backedge ] ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %.350.lcssa, i64 -4 ; 3 uses
  %.not = icmp eq ptr %0, %i.ea
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !18
  store i32 %i.eb, ptr %0, align 4, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  store i32 %i.a, ptr %i.ea, align 4, !tbaa !18
  ret ptr %.350.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3__132__partition_with_equals_on_rightB8ne180100INS_17_ClassicAlgPolicyEPiRN7Imf_3_411sort_helperEEENS_4pairIT0_bEES7_S7_T1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !18     ; 7 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 9 uses
  %i.d = sext i32 %i.a to i64                     ; 6 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load float, ptr %i.e, align 4, !tbaa !11 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  br label %.backedge58

.backedge58:                                      ; preds = %.backedge58.backedge, %bb.a
  %.045 = phi ptr [ %0, %bb.a ], [ %i.h, %.backedge58.backedge ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.045, i64 4 ; 7 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !18   ; 3 uses
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !11 ; 2 uses
  %i.m = fcmp olt float %i.l, %i.f
  br i1 %i.m, label %.backedge58.backedge, label %bb.b

bb.b:                                             ; preds = %.backedge58
  %i.n = fcmp ogt float %i.l, %i.f
  br i1 %i.n, label %_ZN7Imf_3_411sort_helperclEii.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.j
  %i.q = load float, ptr %i.p, align 4, !tbaa !11 ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.d
  %i.s = load float, ptr %i.r, align 4, !tbaa !11 ; 2 uses
  %i.t = fcmp olt float %i.q, %i.s
  br i1 %i.t, label %.backedge58.backedge, label %.split

.backedge58.backedge:                             ; preds = %bb.c, %.backedge58, %.split
  br label %.backedge58, !llvm.loop !58

.split:                                           ; preds = %bb.c
  %i.u = fcmp ule float %i.q, %i.s
  %i.v = icmp slt i32 %i.i, %i.a
  %spec.select.i = and i1 %i.v, %i.u
  br i1 %spec.select.i, label %.backedge58.backedge, label %_ZN7Imf_3_411sort_helperclEii.exit.thread

_ZN7Imf_3_411sort_helperclEii.exit.thread:        ; preds = %bb.b, %.split
  %i.w = icmp eq ptr %0, %.045
  br i1 %i.w, label %_ZN7Imf_3_411sort_helperclEii.exit18.preheader, label %_ZN7Imf_3_411sort_helperclEii.exit21.preheader

_ZN7Imf_3_411sort_helperclEii.exit21.preheader:   ; preds = %_ZN7Imf_3_411sort_helperclEii.exit.thread
  %i.x = getelementptr inbounds i8, ptr %1, i64 -4 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !18   ; 2 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !11 ; 2 uses
  %i.ac = fcmp olt float %i.ab, %i.f
  br i1 %i.ac, label %.critedge, label %.lr.ph

_ZN7Imf_3_411sort_helperclEii.exit18.preheader:   ; preds = %_ZN7Imf_3_411sort_helperclEii.exit.thread
  %i.ad = icmp ult ptr %i.h, %1
  br i1 %i.ad, label %.lr.ph69.preheader, label %._crit_edge

.lr.ph69.preheader:                               ; preds = %_ZN7Imf_3_411sort_helperclEii.exit18.preheader
  %i.ae = getelementptr inbounds i8, ptr %1, i64 -4 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !18 ; 2 uses
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !11 ; 2 uses
  %i.aj = fcmp olt float %i.ai, %i.f
  br i1 %i.aj, label %.critedge, label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph69.preheader, %.lr.ph69.backedge
  %i.ak = phi float [ %i.bc, %.lr.ph69.backedge ], [ %i.ai, %.lr.ph69.preheader ]
  %i.al = phi i64 [ %i.ba, %.lr.ph69.backedge ], [ %i.ag, %.lr.ph69.preheader ]
  %i.am = phi i32 [ %i.az, %.lr.ph69.backedge ], [ %i.af, %.lr.ph69.preheader ]
  %i.an = phi ptr [ %i.ay, %.lr.ph69.backedge ], [ %i.ae, %.lr.ph69.preheader ] ; 5 uses
  %i.ao = fcmp ogt float %i.ak, %i.f
  br i1 %i.ao, label %_ZN7Imf_3_411sort_helperclEii.exit18.backedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph124
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !25  ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.al
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !11 ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.d
  %i.at = load float, ptr %i.as, align 4, !tbaa !11 ; 2 uses
  %i.au = fcmp olt float %i.ar, %i.at
  br i1 %i.au, label %.critedge, label %.split50

.split50:                                         ; preds = %bb.d
  %i.av = fcmp ogt float %i.ar, %i.at
  %i.aw = icmp sge i32 %i.am, %i.a
  %spec.select.i16.not85 = or i1 %i.aw, %i.av
  %i.ax = icmp ult ptr %i.h, %i.an
  %or.cond = and i1 %spec.select.i16.not85, %i.ax
  br i1 %or.cond, label %.lr.ph69.backedge, label %.critedge

_ZN7Imf_3_411sort_helperclEii.exit18.backedge:    ; preds = %.lr.ph124
  %.old = icmp ult ptr %i.h, %i.an
  br i1 %.old, label %.lr.ph69.backedge, label %._crit_edge

.lr.ph69.backedge:                                ; preds = %_ZN7Imf_3_411sort_helperclEii.exit18.backedge, %.split50
  %i.ay = getelementptr inbounds i8, ptr %i.an, i64 -4 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !18 ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !11 ; 2 uses
  %i.bd = fcmp olt float %i.bc, %i.f
  br i1 %i.bd, label %.critedge, label %.lr.ph124, !llvm.loop !59

.lr.ph:                                           ; preds = %_ZN7Imf_3_411sort_helperclEii.exit21.preheader, %_ZN7Imf_3_411sort_helperclEii.exit21.backedge
  %i.be = phi float [ %i.bv, %_ZN7Imf_3_411sort_helperclEii.exit21.backedge ], [ %i.ab, %_ZN7Imf_3_411sort_helperclEii.exit21.preheader ]
  %i.bf = phi i64 [ %i.bt, %_ZN7Imf_3_411sort_helperclEii.exit21.backedge ], [ %i.z, %_ZN7Imf_3_411sort_helperclEii.exit21.preheader ]
  %i.bg = phi i32 [ %i.bs, %_ZN7Imf_3_411sort_helperclEii.exit21.backedge ], [ %i.y, %_ZN7Imf_3_411sort_helperclEii.exit21.preheader ]
  %i.bh = phi ptr [ %i.br, %_ZN7Imf_3_411sort_helperclEii.exit21.backedge ], [ %i.x, %_ZN7Imf_3_411sort_helperclEii.exit21.preheader ] ; 3 uses
  %i.bi = fcmp ogt float %i.be, %i.f
  br i1 %i.bi, label %_ZN7Imf_3_411sort_helperclEii.exit21.backedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !25  ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bf
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !11 ; 2 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.d
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !11 ; 2 uses
  %i.bo = fcmp olt float %i.bl, %i.bn
  br i1 %i.bo, label %.critedge, label %.split52

.split52:                                         ; preds = %bb.e
  %i.bp = fcmp ule float %i.bl, %i.bn
  %i.bq = icmp slt i32 %i.bg, %i.a
  %spec.select.i19 = and i1 %i.bq, %i.bp
  br i1 %spec.select.i19, label %.critedge, label %_ZN7Imf_3_411sort_helperclEii.exit21.backedge

_ZN7Imf_3_411sort_helperclEii.exit21.backedge:    ; preds = %.split52, %.lr.ph
  %i.br = getelementptr inbounds i8, ptr %i.bh, i64 -4 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !18 ; 2 uses
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !11 ; 2 uses
  %i.bw = fcmp olt float %i.bv, %i.f
  br i1 %i.bw, label %.critedge, label %.lr.ph, !llvm.loop !60

.critedge:                                        ; preds = %.split52, %_ZN7Imf_3_411sort_helperclEii.exit21.backedge, %bb.e, %bb.d, %.lr.ph69.backedge, %.split50, %.lr.ph69.preheader, %_ZN7Imf_3_411sort_helperclEii.exit21.preheader
  %.2 = phi ptr [ %i.x, %_ZN7Imf_3_411sort_helperclEii.exit21.preheader ], [ %i.an, %.split50 ], [ %i.ae, %.lr.ph69.preheader ], [ %i.ay, %.lr.ph69.backedge ], [ %i.an, %bb.d ], [ %i.bh, %bb.e ], [ %i.bh, %.split52 ], [ %i.br, %_ZN7Imf_3_411sort_helperclEii.exit21.backedge ] ; 3 uses
  %.not122 = icmp ult ptr %i.h, %.2
  br i1 %.not122, label %.lr.ph81, label %._crit_edge

.lr.ph81:                                         ; preds = %.critedge
  %.pre = load i32, ptr %.2, align 4, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph81, %_ZN7Imf_3_411sort_helperclEii.exit27.thread
  %i.bx = phi i32 [ %.pre, %.lr.ph81 ], [ %i.dn, %_ZN7Imf_3_411sort_helperclEii.exit27.thread ]
  %i.by = phi i32 [ %i.i, %.lr.ph81 ], [ %i.ca, %_ZN7Imf_3_411sort_helperclEii.exit27.thread ]
  %.380 = phi ptr [ %.2, %.lr.ph81 ], [ %.lcssa59, %_ZN7Imf_3_411sort_helperclEii.exit27.thread ] ; 2 uses
  %.14679 = phi ptr [ %i.h, %.lr.ph81 ], [ %i.bz, %_ZN7Imf_3_411sort_helperclEii.exit27.thread ] ; 2 uses
  store i32 %i.bx, ptr %.14679, align 4, !tbaa !18
  store i32 %i.by, ptr %.380, align 4, !tbaa !18
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.f
  %.247 = phi ptr [ %.14679, %bb.f ], [ %i.bz, %.backedge.backedge ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.247, i64 4 ; 4 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !18 ; 3 uses
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !11 ; 2 uses
  %i.ce = fcmp olt float %i.cd, %i.f
  br i1 %i.ce, label %.backedge.backedge, label %bb.g

bb.g:                                             ; preds = %.backedge
  %i.cf = fcmp ogt float %i.cd, %i.f
  br i1 %i.cf, label %_ZN7Imf_3_411sort_helperclEii.exit24.preheader, label %bb.h, !llvm.loop !61

bb.h:                                             ; preds = %bb.g
  %i.cg = load ptr, ptr %i.g, align 8, !tbaa !25  ; 2 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cb
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !11 ; 2 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.d
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !11 ; 2 uses
  %i.cl = fcmp olt float %i.ci, %i.ck
  br i1 %i.cl, label %.backedge.backedge, label %.split53

.backedge.backedge:                               ; preds = %bb.h, %.backedge, %.split53
  br label %.backedge, !llvm.loop !61

.split53:                                         ; preds = %bb.h
  %i.cm = fcmp ule float %i.ci, %i.ck
  %i.cn = icmp slt i32 %i.ca, %i.a
  %spec.select.i22 = and i1 %i.cn, %i.cm
  br i1 %spec.select.i22, label %.backedge.backedge, label %_ZN7Imf_3_411sort_helperclEii.exit24.preheader

_ZN7Imf_3_411sort_helperclEii.exit24.preheader:   ; preds = %.split53, %bb.g
  %i.co = getelementptr inbounds i8, ptr %.380, i64 -4 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !18 ; 3 uses
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !11 ; 2 uses
  %i.ct = fcmp olt float %i.cs, %i.f
  br i1 %i.ct, label %_ZN7Imf_3_411sort_helperclEii.exit27.thread, label %.lr.ph75

.lr.ph75:                                         ; preds = %_ZN7Imf_3_411sort_helperclEii.exit24.preheader, %_ZN7Imf_3_411sort_helperclEii.exit24.backedge
  %i.cu = phi float [ %i.dl, %_ZN7Imf_3_411sort_helperclEii.exit24.backedge ], [ %i.cs, %_ZN7Imf_3_411sort_helperclEii.exit24.preheader ]
  %i.cv = phi i64 [ %i.dj, %_ZN7Imf_3_411sort_helperclEii.exit24.backedge ], [ %i.cq, %_ZN7Imf_3_411sort_helperclEii.exit24.preheader ]
  %i.cw = phi i32 [ %i.di, %_ZN7Imf_3_411sort_helperclEii.exit24.backedge ], [ %i.cp, %_ZN7Imf_3_411sort_helperclEii.exit24.preheader ] ; 3 uses
  %i.cx = phi ptr [ %i.dh, %_ZN7Imf_3_411sort_helperclEii.exit24.backedge ], [ %i.co, %_ZN7Imf_3_411sort_helperclEii.exit24.preheader ] ; 3 uses
  %i.cy = fcmp ogt float %i.cu, %i.f
  br i1 %i.cy, label %_ZN7Imf_3_411sort_helperclEii.exit24.backedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph75
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !25  ; 2 uses
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.cv
  %i.db = load float, ptr %i.da, align 4, !tbaa !11 ; 2 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.d
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !11 ; 2 uses
  %i.de = fcmp olt float %i.db, %i.dd
  br i1 %i.de, label %_ZN7Imf_3_411sort_helperclEii.exit27.thread, label %.split55

.split55:                                         ; preds = %bb.i
  %i.df = fcmp ule float %i.db, %i.dd
  %i.dg = icmp slt i32 %i.cw, %i.a
  %spec.select.i25 = and i1 %i.dg, %i.df
  br i1 %spec.select.i25, label %_ZN7Imf_3_411sort_helperclEii.exit27.thread, label %_ZN7Imf_3_411sort_helperclEii.exit24.backedge

_ZN7Imf_3_411sort_helperclEii.exit24.backedge:    ; preds = %.split55, %.lr.ph75
  %i.dh = getelementptr inbounds i8, ptr %i.cx, i64 -4 ; 3 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !18 ; 3 uses
  %i.dj = sext i32 %i.di to i64                   ; 2 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !11 ; 2 uses
  %i.dm = fcmp olt float %i.dl, %i.f
  br i1 %i.dm, label %_ZN7Imf_3_411sort_helperclEii.exit27.thread, label %.lr.ph75, !llvm.loop !62

_ZN7Imf_3_411sort_helperclEii.exit27.thread:      ; preds = %.split55, %_ZN7Imf_3_411sort_helperclEii.exit24.backedge, %bb.i, %_ZN7Imf_3_411sort_helperclEii.exit24.preheader
  %i.dn = phi i32 [ %i.cp, %_ZN7Imf_3_411sort_helperclEii.exit24.preheader ], [ %i.cw, %bb.i ], [ %i.di, %_ZN7Imf_3_411sort_helperclEii.exit24.backedge ], [ %i.cw, %.split55 ]
  %.lcssa59 = phi ptr [ %i.co, %_ZN7Imf_3_411sort_helperclEii.exit24.preheader ], [ %i.cx, %bb.i ], [ %i.dh, %_ZN7Imf_3_411sort_helperclEii.exit24.backedge ], [ %i.cx, %.split55 ] ; 2 uses
  %i.do = icmp ult ptr %i.bz, %.lcssa59
  br i1 %i.do, label %bb.f, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %_ZN7Imf_3_411sort_helperclEii.exit18.backedge, %_ZN7Imf_3_411sort_helperclEii.exit27.thread, %_ZN7Imf_3_411sort_helperclEii.exit18.preheader, %.critedge
  %3 = phi i8 [ 1, %.critedge ], [ 1, %_ZN7Imf_3_411sort_helperclEii.exit18.preheader ], [ 0, %_ZN7Imf_3_411sort_helperclEii.exit27.thread ], [ 1, %_ZN7Imf_3_411sort_helperclEii.exit18.backedge ]
  %4 = phi ptr [ %.045, %.critedge ], [ %.045, %_ZN7Imf_3_411sort_helperclEii.exit18.preheader ], [ %.247, %_ZN7Imf_3_411sort_helperclEii.exit27.thread ], [ %.045, %_ZN7Imf_3_411sort_helperclEii.exit18.backedge ] ; 4 uses
  %.not = icmp eq ptr %0, %4
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.dp = load i32, ptr %4, align 4, !tbaa !18
  store i32 %i.dp, ptr %0, align 4, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  store i32 %i.a, ptr %4, align 4, !tbaa !18
  %.fca.0.insert.i = insertvalue { ptr, i8 } poison, ptr %4, 0
  %.fca.1.insert.i = insertvalue { ptr, i8 } %.fca.0.insert.i, i8 %3, 1
  ret { ptr, i8 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__127__insertion_sort_incompleteB8ne180100INS_17_ClassicAlgPolicyERN7Imf_3_411sort_helperEPiEEbT1_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  switch i64 %i.d, label %bb.h [
    i64 0, label %_ZN7Imf_3_411sort_helperclEii.exit.thread49
    i64 1, label %_ZN7Imf_3_411sort_helperclEii.exit.thread49
    i64 2, label %bb.b
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18   ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !18     ; 3 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.j = sext i32 %i.f to i64                     ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !11 ; 2 uses
  %i.m = sext i32 %i.g to i64                     ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.m
  %i.o = load float, ptr %i.n, align 4, !tbaa !11 ; 2 uses
  %i.p = fcmp olt float %i.l, %i.o
  br i1 %i.p, label %_ZN7Imf_3_411sort_helperclEii.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = fcmp ogt float %i.l, %i.o
  br i1 %i.q, label %_ZN7Imf_3_411sort_helperclEii.exit.thread49, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.j
  %i.u = load float, ptr %i.t, align 4, !tbaa !11 ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.m
  %i.w = load float, ptr %i.v, align 4, !tbaa !11 ; 2 uses
  %i.x = fcmp olt float %i.u, %i.w
  br i1 %i.x, label %_ZN7Imf_3_411sort_helperclEii.exit.thread, label %_ZN7Imf_3_411sort_helperclEii.exit

_ZN7Imf_3_411sort_helperclEii.exit:               ; preds = %bb.d
  %i.y = fcmp ule float %i.u, %i.w
  %i.z = icmp slt i32 %i.f, %i.g
  %spec.select.i = and i1 %i.z, %i.y
  br i1 %spec.select.i, label %_ZN7Imf_3_411sort_helperclEii.exit.thread, label %_ZN7Imf_3_411sort_helperclEii.exit.thread49

_ZN7Imf_3_411sort_helperclEii.exit.thread:        ; preds = %bb.d, %bb.b, %_ZN7Imf_3_411sort_helperclEii.exit
  store i32 %i.f, ptr %0, align 4, !tbaa !18
  store i32 %i.g, ptr %i.e, align 4, !tbaa !18
  br label %_ZN7Imf_3_411sort_helperclEii.exit.thread49

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = getelementptr inbounds i8, ptr %1, i64 -4
  %i.ac = tail call noundef i32 @_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERN7Imf_3_411sort_helperEPiEEjT1_S6_S6_T0_(ptr noundef %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  br label %_ZN7Imf_3_411sort_helperclEii.exit.thread49

bb.f:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds i8, ptr %1, i64 -4
  tail call void @_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERN7Imf_3_411sort_helperEPiEEvT1_S6_S6_S6_T0_(ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN7Imf_3_411sort_helperclEii.exit.thread49

bb.g:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = getelementptr inbounds i8, ptr %1, i64 -4
  tail call void @_ZNSt3__17__sort5B8ne180100INS_17_ClassicAlgPolicyERN7Imf_3_411sort_helperEPiEEvT1_S6_S6_S6_S6_T0_(ptr noundef %0, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN7Imf_3_411sort_helperclEii.exit.thread49

bb.h:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.am = tail call noundef i32 @_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERN7Imf_3_411sort_helperEPiEEjT1_S6_S6_T0_(ptr noundef %0, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.not59 = icmp eq ptr %i.an, %1
  br i1 %.not59, label %_ZN7Imf_3_411sort_helperclEii.exit.thread49, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ao = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN7Imf_3_411sort_helperclEii.exit32.thread52
  %.02062 = phi i32 [ 0, %.lr.ph ], [ %.121, %_ZN7Imf_3_411sort_helperclEii.exit32.thread52 ] ; 3 uses
  %.02261 = phi ptr [ %i.ak, %.lr.ph ], [ %storemerge60, %_ZN7Imf_3_411sort_helperclEii.exit32.thread52 ] ; 2 uses
  %storemerge60 = phi ptr [ %i.an, %.lr.ph ], [ %i.cb, %_ZN7Imf_3_411sort_helperclEii.exit32.thread52 ] ; 5 uses
  %i.ar = load i32, ptr %storemerge60, align 4, !tbaa !18 ; 4 uses
  %i.as = load i32, ptr %.02261, align 4, !tbaa !18 ; 3 uses
  %i.at = sext i32 %i.ar to i64                   ; 3 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !11 ; 4 uses
  %i.aw = sext i32 %i.as to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !11 ; 2 uses
  %i.az = fcmp olt float %i.av, %i.ay
  br i1 %i.az, label %_ZN7Imf_3_411sort_helperclEii.exit32.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = fcmp ogt float %i.av, %i.ay
  br i1 %i.ba, label %_ZN7Imf_3_411sort_helperclEii.exit32.thread52, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !25 ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.at
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !11 ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.aw
  %i.bf = load float, ptr %i.be, align 4, !tbaa !11 ; 2 uses
  %i.bg = fcmp olt float %i.bd, %i.bf
  br i1 %i.bg, label %_ZN7Imf_3_411sort_helperclEii.exit32.thread, label %_ZN7Imf_3_411sort_helperclEii.exit32

_ZN7Imf_3_411sort_helperclEii.exit32:             ; preds = %bb.k
  %i.bh = fcmp ule float %i.bd, %i.bf
  %i.bi = icmp slt i32 %i.ar, %i.as
  %spec.select.i30 = and i1 %i.bi, %i.bh
  br i1 %spec.select.i30, label %_ZN7Imf_3_411sort_helperclEii.exit32.thread, label %_ZN7Imf_3_411sort_helperclEii.exit32.thread52

_ZN7Imf_3_411sort_helperclEii.exit32.thread:      ; preds = %bb.k, %bb.i, %_ZN7Imf_3_411sort_helperclEii.exit32
  store i32 %i.as, ptr %storemerge60, align 4, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %_ZN7Imf_3_411sort_helperclEii.exit32.thread, %.backedge
  %.058 = phi ptr [ %.02261, %_ZN7Imf_3_411sort_helperclEii.exit32.thread ], [ %i.bj, %.backedge ] ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %.058, i64 -4 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !18 ; 3 uses
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !11 ; 2 uses
  %i.bo = fcmp olt float %i.av, %i.bn
  br i1 %i.bo, label %.backedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = fcmp ogt float %i.av, %i.bn
  br i1 %i.bp, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.aq, align 8, !tbaa !25 ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.at
  %i.bs = load float, ptr %i.br, align 4, !tbaa !11 ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bl
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !11 ; 2 uses
  %i.bv = fcmp olt float %i.bs, %i.bu
  br i1 %i.bv, label %.backedge, label %.split

.split:                                           ; preds = %bb.n
  %i.bw = fcmp ule float %i.bs, %i.bu
  %i.bx = icmp slt i32 %i.ar, %i.bk
  %spec.select.i33 = and i1 %i.bx, %i.bw
  br i1 %spec.select.i33, label %.backedge, label %.critedge

.backedge:                                        ; preds = %bb.n, %bb.l, %.split
  store i32 %i.bk, ptr %.058, align 4, !tbaa !18
  %.not28 = icmp eq ptr %i.bj, %0
  br i1 %.not28, label %.critedge, label %bb.l, !llvm.loop !64

.critedge:                                        ; preds = %bb.m, %.split, %.backedge
  %.0.lcssa = phi ptr [ %.058, %bb.m ], [ %.058, %.split ], [ %0, %.backedge ]
  store i32 %i.ar, ptr %.0.lcssa, align 4, !tbaa !18
  %i.by = add i32 %.02062, 1                      ; 2 uses
  %.not29 = icmp eq i32 %i.by, 8
  br i1 %.not29, label %.thread, label %_ZN7Imf_3_411sort_helperclEii.exit32.thread52

.thread:                                          ; preds = %.critedge
  %i.bz = getelementptr inbounds nuw i8, ptr %storemerge60, i64 4
  %i.ca = icmp eq ptr %i.bz, %1
  br label %_ZN7Imf_3_411sort_helperclEii.exit.thread49

_ZN7Imf_3_411sort_helperclEii.exit32.thread52:    ; preds = %bb.j, %.critedge, %_ZN7Imf_3_411sort_helperclEii.exit32
  %.121 = phi i32 [ %i.by, %.critedge ], [ %.02062, %_ZN7Imf_3_411sort_helperclEii.exit32 ], [ %.02062, %bb.j ]
  %i.cb = getelementptr inbounds nuw i8, ptr %storemerge60, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cb, %1
  br i1 %.not, label %_ZN7Imf_3_411sort_helperclEii.exit.thread49, label %bb.i, !llvm.loop !65

_ZN7Imf_3_411sort_helperclEii.exit.thread49:      ; preds = %_ZN7Imf_3_411sort_helperclEii.exit32.thread52, %bb.h, %.thread, %bb.c, %_ZN7Imf_3_411sort_helperclEii.exit, %_ZN7Imf_3_411sort_helperclEii.exit.thread, %bb.a, %bb.a, %bb.g, %bb.f, %bb.e
  %.5 = phi i1 [ true, %bb.c ], [ true, %bb.g ], [ true, %bb.a ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.a ], [ true, %_ZN7Imf_3_411sort_helperclEii.exit.thread ], [ true, %_ZN7Imf_3_411sort_helperclEii.exit ], [ %i.ca, %.thread ], [ true, %bb.h ], [ true, %_ZN7Imf_3_411sort_helperclEii.exit32.thread52 ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__17__sort4B8ne180100INS_17_ClassicAlgPolicyERN7Imf_3_411sort_helperEPiEEvT1_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call noundef i32 @_ZNSt3__17__sort3B8ne180100INS_17_ClassicAlgPolicyERN7Imf_3_411sort_helperEPiEEjT1_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !18     ; 3 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !18     ; 3 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !29     ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 6 uses
  %i.f = sext i32 %i.b to i64                     ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !11 ; 2 uses
end_hunk_0
