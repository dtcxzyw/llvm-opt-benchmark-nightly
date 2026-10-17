Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/component_name?download=true
inline.NumInlined: 1057
inline.NumDeleted: 437
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN8WasmEdge9Validator12_GLOBAL__N_119isIntegrityMetadataESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
bb.d:                                             ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.19.2123, i64 1
  %i.q = add i64 %.sroa.064.3124, -1              ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.critedge3.thread, label %.preheader, !llvm.loop !145

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %.preheader
  %i.s = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.sroa.19.2123, i32 noundef 32, i64 noundef %.sroa.064.3124) #27 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i37, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %.sroa.19.2123 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 7 uses
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i37, label %bb.e

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %i.x = icmp ugt i64 %i.v, %.sroa.064.3124
  br i1 %i.x, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.237, i64 noundef %i.v, i64 noundef %.sroa.064.3124) #28
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %bb.e
  %i.y = sub nuw i64 %.sroa.064.3124, %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.19.2123, i64 %i.v
  %.not100 = icmp eq i64 %i.v, 0
  br i1 %.not100, label %.critedge3.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i37

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i37:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  %.sroa.5.0165 = phi ptr [ %i.z, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ null, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit ], [ null, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ]
  %.sroa.059.0163 = phi i64 [ %i.y, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ]
  %.sroa.060.093162 = phi i64 [ %i.v, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ %.sroa.064.3124, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit ], [ %.sroa.064.3124, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 4 uses
  %i.aa = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.sroa.19.2123, i32 noundef 63, i64 noundef %.sroa.060.093162) #27 ; 2 uses
  %.not.i38 = icmp eq ptr %i.aa, null
  br i1 %.not.i38, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit39.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit39

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit39: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i37
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %.sroa.19.2123 to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit39.thread, label %bb.g

bb.g:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit39
  %.sroa.speculated.i40 = tail call i64 @llvm.umin.i64(i64 %.sroa.060.093162, i64 %i.ad)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit39.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit39.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i37, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit39, %bb.g
  %.sroa.054.0 = phi i64 [ %.sroa.speculated.i40, %bb.g ], [ %.sroa.060.093162, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit39 ], [ %.sroa.060.093162, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i37 ] ; 3 uses
  %i.af = icmp ugt i64 %.sroa.054.0, 7
  br i1 %i.af, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.preheader, label %.critedge3.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.preheader: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit39.thread
  %i.ag = load i32, ptr %.sroa.19.2123, align 1
  %i.ah = xor i32 %i.ag, 845244531
  %i.ai = getelementptr i8, ptr %.sroa.19.2123, i64 3
  %i.aj = load i32, ptr %i.ai, align 1
  %i.ak = xor i32 %i.aj, 758527282
  %i.al = or i32 %i.ah, %i.ak
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit49, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit49: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.19.2123, i64 7 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.19.2123, i64 %.sroa.054.0 ; 3 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %gepdiff = add nsw i64 %.sroa.054.0, -7         ; 2 uses
  %i.as = ashr i64 %gepdiff, 2                    ; 2 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit49
  %i.au = and i64 %gepdiff, -4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ap, i64 %i.au
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %.lr.ph.preheader.i.i.i.i
  %.044.i.i.i.i = phi i64 [ %i.bh, %bb.k ], [ %i.as, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i = phi ptr [ %i.bg, %bb.k ], [ %i.ap, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i = load i8, ptr %.02943.i.i.i.i, align 1, !tbaa !16
  %i.av = add i8 %.029.val32.i.i.i.i, -127
  %i.aw = icmp ult i8 %i.av, -94
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 1
  %.val31.i.i.i.i = load i8, ptr %i.ax, align 1, !tbaa !16
  %i.ay = add i8 %.val31.i.i.i.i, -127
  %i.az = icmp ult i8 %i.ay, -94
  br i1 %i.az, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.loopexit.split.loop.exit182, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 2
  %.val30.i.i.i.i = load i8, ptr %i.ba, align 1, !tbaa !16
  %i.bb = add i8 %.val30.i.i.i.i, -127
  %i.bc = icmp ult i8 %i.bb, -94
  br i1 %i.bc, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.loopexit.split.loop.exit180, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 3
  %.val.i.i.i.i = load i8, ptr %i.bd, align 1, !tbaa !16
  %i.be = add i8 %.val.i.i.i.i, -127
  %i.bf = icmp ult i8 %i.be, -94
  br i1 %i.bf, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.loopexit.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 4
  %i.bh = add nsw i64 %.044.i.i.i.i, -1
  %i.bi = icmp sgt i64 %.044.i.i.i.i, 1
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !146

._crit_edge.i.i.i.i:                              ; preds = %bb.k, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit49
  %.029.lcssa.i.i.i.i = phi ptr [ %i.ap, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit49 ], [ %scevgep.i.i.i.i, %bb.k ] ; 6 uses
  %.pre-phi.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i to i64
  %i.bj = sub i64 %i.ar, %.pre-phi.i.i.i.i
  switch i64 %i.bj, label %bb.q [
    i64 3, label %bb.l
    i64 2, label %bb.n
    i64 1, label %bb.p
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %.029.val.i.i.i.i = load i8, ptr %.029.lcssa.i.i.i.i, align 1, !tbaa !16
  %i.bk = add i8 %.029.val.i.i.i.i, -127
  %i.bl = icmp ult i8 %i.bk, -94
  br i1 %i.bl, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.bm, %bb.m ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i = load i8, ptr %.1.i.i.i.i, align 1, !tbaa !16
  %i.bn = add i8 %.1.val.i.i.i.i, -127
  %i.bo = icmp ult i8 %i.bn, -94
  br i1 %i.bo, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.bp, %bb.o ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i = load i8, ptr %.2.i.i.i.i, align 1, !tbaa !16
  %i.bq = add i8 %.2.val.i.i.i.i, -127
  %i.br = icmp ult i8 %i.bq, -94
  br i1 %i.br, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i.i
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.loopexit.split.loop.exit: ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 3
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.loopexit.split.loop.exit180: ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 2
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.loopexit.split.loop.exit182: ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 1
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.loopexit.split.loop.exit, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.loopexit.split.loop.exit180, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.loopexit.split.loop.exit182, %bb.q, %bb.p, %bb.n, %bb.l
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.n ], [ %i.aq, %bb.q ], [ %.2.i.i.i.i, %bb.p ], [ %.029.lcssa.i.i.i.i, %bb.l ], [ %i.bu, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.loopexit.split.loop.exit182 ], [ %i.bt, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.loopexit.split.loop.exit180 ], [ %i.bs, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.loopexit.split.loop.exit ], [ %.02943.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.bv = icmp eq ptr %i.aq, %.028.i.i.i.i
  br i1 %i.bv, label %.critedge3, label %.critedge3.thread, !llvm.loop !147

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.preheader
  %i.bw = load i32, ptr %.sroa.19.2123, align 1
  %i.bx = xor i32 %i.bw, 862021747
  %i.by = getelementptr i8, ptr %.sroa.19.2123, i64 3
  %i.bz = load i32, ptr %i.by, align 1
  %i.ca = xor i32 %i.bz, 758396979
  %i.cb = or i32 %i.bx, %i.ca
  %i.cc = icmp ne i32 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit49, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.2

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.2: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1
  %i.cf = load i32, ptr %.sroa.19.2123, align 1
  %i.cg = xor i32 %i.cf, 895576179
  %i.ch = getelementptr i8, ptr %.sroa.19.2123, i64 3
  %i.ci = load i32, ptr %i.ch, align 1
  %i.cj = xor i32 %i.ci, 758264117
  %i.ck = or i32 %i.cg, %i.cj
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit49, label %.critedge3.thread

.critedge3.thread:                                ; preds = %bb.b, %bb.c, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, %.critedge3, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit39.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.2, %bb.d, %bb.a
  %.3 = phi i1 [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.2 ], [ false, %bb.c ], [ %.021, %bb.d ], [ false, %bb.a ], [ false, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit39.thread ], [ %.021, %.critedge3 ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ false, %bb.b ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc noundef zeroext i1 @_ZN8WasmEdge9Validator12_GLOBAL__N_122isLowercaseKebabStringESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !16
  %i.c = sext i8 %i.b to i32
  %i.d = tail call i32 @islower(i32 noundef %i.c) #26
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.01330 = phi ptr [ %i.i, %.critedge ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.f = load i8, ptr %.01330, align 1, !tbaa !16 ; 2 uses
  %.not16 = icmp eq i8 %i.f, 45
  br i1 %.not16, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.g = sext i8 %i.f to i32                      ; 2 uses
  %i.h = tail call i32 @islower(i32 noundef %i.g) #26
  %.not17 = icmp ne i32 %i.h, 0
  %isdigittmp = add nsw i32 %i.g, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %or.cond = select i1 %.not17, i1 true, i1 %isdigit
  br i1 %or.cond, label %.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

.critedge:                                        ; preds = %bb.c, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.01330, i64 1 ; 2 uses
  %.not15 = icmp eq ptr %i.i, %i.e
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %.not18 = icmp eq i8 %i.k, 45
  br i1 %.not18, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %.not2531.i.i = icmp eq i64 %0, 1
  br i1 %.not2531.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.l = ptrtoint ptr %i.e to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.f, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %0, %.lr.ph.i.i ], [ %i.x, %bb.f ]
  %.02032.i.i = phi ptr [ %1, %.lr.ph.i.i ], [ %i.v, %bb.f ]
  %.reass.reass.i.reass.reass.i = add i64 %.033.i.i, -1
  %i.m = tail call ptr @memchr(ptr noundef nonnull %.02032.i.i, i32 noundef 45, i64 noundef %.reass.reass.i.reass.reass.i) #27 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.m, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.n = load i16, ptr %i.m, align 1
  %i.o = icmp ne i16 %i.n, 11565
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = ptrtoint ptr %1 to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.t, -1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.l, %i.w                       ; 2 uses
  %.not25.i.i = icmp ult i64 %i.x, 2
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !148

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %bb.c, %bb.f, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.e, %bb.d, %._crit_edge, %bb.a, %bb.b
  %.3 = phi i1 [ true, %bb.f ], [ false, %bb.a ], [ false, %bb.b ], [ false, %._crit_edge ], [ %i.u, %bb.e ], [ true, %bb.d ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ false, %bb.c ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN8WasmEdge9Validator12_GLOBAL__N_112tryReadKebabERSt17basic_string_viewIcSt11char_traitsIcEES6_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !24     ; 4 uses
  %.not18 = icmp eq i64 %i.a, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !23 ; 2 uses
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.013 = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.pre, i64 %.013
  %i.c = load i8, ptr %i.b, align 1, !tbaa !16    ; 2 uses
  %i.d = sext i8 %i.c to i32
  %i.e = tail call i32 @isalnum(i32 noundef %i.d) #26
  %.not = icmp ne i32 %i.e, 0
  %i.f = icmp eq i8 %i.c, 45
  %or.cond = or i1 %i.f, %.not
  br i1 %or.cond, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw i64 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !149

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.013, %.lr.ph ], [ %i.a, %bb.b ] ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %.0.lcssa)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated.i, ptr %1, align 8, !tbaa !18
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %.pre, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.0.lcssa
  store ptr %i.j, ptr %i.h, align 8, !tbaa !23
  %i.k = load i64, ptr %0, align 8, !tbaa !24
  %i.l = sub i64 %i.k, %.0.lcssa
  store i64 %i.l, ptr %0, align 8, !tbaa !24
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !18 ; 2 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %.sroa.0.0.copyload ; 2 uses
  %.not4355.i = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %.not4355.i, label %_ZN8WasmEdge9Validator13isKebabStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.i
  %.02860.i = phi ptr [ %i.x, %bb.i ], [ %.sroa.2.0.copyload, %._crit_edge ] ; 2 uses
  %.02959.i = phi i1 [ %.130.i, %bb.i ], [ false, %._crit_edge ] ; 3 uses
  %.03158.i = phi i8 [ %.132.i, %bb.i ], [ 0, %._crit_edge ] ; 4 uses
  %.03457.i = phi i8 [ %.135.i, %bb.i ], [ 0, %._crit_edge ] ; 3 uses
  %.03756.i = phi i1 [ %.138.i, %bb.i ], [ true, %._crit_edge ] ; 4 uses
  %i.n = load i8, ptr %.02860.i, align 1, !tbaa !16 ; 2 uses
  %i.o = sext i8 %i.n to i32                      ; 3 uses
  %i.p = tail call i32 @islower(i32 noundef %i.o) #26
  %.not44.i = icmp eq i32 %i.p, 0
  br i1 %.not44.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = trunc nuw i8 %.03457.i to i1
  br i1 %i.q, label %_ZN8WasmEdge9Validator13isKebabStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = tail call i32 @isupper(i32 noundef %i.o) #26
  %.not45.i = icmp eq i32 %i.r, 0
  br i1 %.not45.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = trunc nuw i8 %.03158.i to i1
  br i1 %i.s, label %_ZN8WasmEdge9Validator13isKebabStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.i

bb.f:                                             ; preds = %bb.d
  %isdigittmp.i = add nsw i32 %i.o, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  %i.t = trunc nuw i8 %.03457.i to i1             ; 2 uses
  br i1 %isdigit.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not.i = xor i1 %.03756.i, true
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.t
  %i.u = trunc nuw i8 %.03158.i to i1
  %or.cond4.i = select i1 %or.cond.i, i1 true, i1 %i.u
  br i1 %or.cond4.i, label %bb.i, label %_ZN8WasmEdge9Validator13isKebabStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.h:                                             ; preds = %bb.f
  %i.v = icmp eq i8 %i.n, 45
  %i.w = trunc nuw i8 %.03158.i to i1
  %or.cond6.i = select i1 %i.t, i1 true, i1 %i.w
  %or.cond8.i = select i1 %or.cond6.i, i1 true, i1 %.02959.i
  %or.cond50.i = select i1 %i.v, i1 %or.cond8.i, i1 false
  br i1 %or.cond50.i, label %bb.i, label %_ZN8WasmEdge9Validator13isKebabStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.138.i = phi i1 [ %.03756.i, %bb.g ], [ %.03756.i, %bb.c ], [ %.03756.i, %bb.e ], [ false, %bb.h ]
  %.135.i = phi i8 [ %.03457.i, %bb.g ], [ 0, %bb.c ], [ 1, %bb.e ], [ 0, %bb.h ]
  %.132.i = phi i8 [ %.03158.i, %bb.g ], [ 1, %bb.c ], [ 0, %bb.e ], [ 0, %bb.h ]
  %.130.i = phi i1 [ true, %bb.g ], [ %.02959.i, %bb.c ], [ %.02959.i, %bb.e ], [ false, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %.02860.i, i64 1 ; 2 uses
  %.not43.i = icmp eq ptr %i.x, %i.m
  br i1 %.not43.i, label %.critedge47.i, label %.lr.ph.i

.critedge47.i:                                    ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = icmp ne i8 %i.z, 45
  br label %_ZN8WasmEdge9Validator13isKebabStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN8WasmEdge9Validator13isKebabStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %._crit_edge, %.critedge47.i
  %.3.i = phi i1 [ %i.aa, %.critedge47.i ], [ false, %._crit_edge ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.c ]
  ret i1 %.3.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc noundef zeroext i1 @_ZN8WasmEdge9Validator12_GLOBAL__N_19isVersionESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr nofree readonly %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
end_hunk_0
