Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/number_decimalquantity?download=true
inline.NumInlined: 251
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6icu_786number4impl15DecimalQuantity16roundToMagnitudeEi25UNumberFormatRoundingModebR10UErrorCode:bb.a
  br i1 %i.ja, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.11, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.11: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.10
  %i.jb = and i64 %i.ie, 263882790666240
  %i.jc = icmp eq i64 %i.jb, 158329674399744
  br i1 %i.jc, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.12, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.12: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.11
  %i.jd = and i64 %i.ie, 4222124650659840
  %i.je = icmp eq i64 %i.jd, 2533274790395904
  br i1 %i.je, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.13, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.13: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.12
  %i.jf = and i64 %i.ie, 67553994410557440
  %i.jg = icmp eq i64 %i.jf, 40532396646334464
  br i1 %i.jg, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.14, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.14: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.13
  %i.jh = and i64 %i.ie, 1080863910568919040
  %i.ji = icmp eq i64 %i.jh, 648518346341351424
  br i1 %i.ji, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.15, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.15: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.14
  %.mask = and i64 %i.ie, -1152921504606846976
  %i.jj = icmp eq i64 %.mask, -8070450532247928832
  %spec.select449 = select i1 %i.jj, i32 16, i32 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.thread.loopexit.split.loop.exit447: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.us
  %i.jk = trunc nuw nsw i64 %indvars.iv400 to i32
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.thread: ; preds = %bb.cc, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.15, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.thread.loopexit.split.loop.exit447, %.preheader.split, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.1, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.2, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.3, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.4, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.5, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.6, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.7, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.8, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.9, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.10, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.11, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.12, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.13, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.14, %.preheader.split.us
  %.us-phi366 = phi i32 [ 12, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.12 ], [ 0, %.preheader.split.us ], [ 8, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.8 ], [ 0, %.preheader.split ], [ %i.jk, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.thread.loopexit.split.loop.exit447 ], [ 1, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.1 ], [ %spec.select449, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.15 ], [ 2, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.2 ], [ 10, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.10 ], [ 3, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.3 ], [ 14, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.14 ], [ 4, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.4 ], [ 9, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.9 ], [ 5, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.5 ], [ 13, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.13 ], [ 6, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.6 ], [ 11, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.11 ], [ 7, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.7 ], [ %i.hz, %bb.cc ]
  tail call void @_ZN6icu_786number4impl15DecimalQuantity10shiftRightEi(ptr noundef nonnull align 8 dereferenceable(66) %0, i32 noundef %.us-phi366)
  %.pre = load i8, ptr %i.l, align 8, !tbaa !23, !range !25
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.thread, %bb.cb
  %i.jl = phi i8 [ %.pre, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit267.thread ], [ %.pre403, %bb.cb ]
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  %i.jn = load i32, ptr %i.ag, align 8
  %.not.i269 = icmp sgt i32 %i.jn, 0
  br i1 %.not.i269, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !27
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !27
  %i.jr = add i8 %i.jq, 1
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf
  %.0.i268.ph = phi i8 [ 1, %bb.ce ], [ %i.jr, %bb.cf ]
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 8            ; 3 uses
  %.not12.i272 = icmp sgt i32 %i.jt, 0
  br i1 %.not12.i272, label %._crit_edge, label %bb.ch

._crit_edge:                                      ; preds = %bb.cg
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre404 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ju = tail call noalias dereferenceable_or_null(2) ptr @uprv_malloc_78(i64 noundef 2) #26 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !27 ; 2 uses
  %i.jx = sext i32 %i.jt to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ju, ptr align 1 %i.jw, i64 %i.jx, i1 false)
  %i.jy = getelementptr inbounds i8, ptr %i.ju, i64 %i.jx
  %i.jz = sub nsw i32 1, %i.jt
  %i.ka = zext nneg i32 %i.jz to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jy, i8 0, i64 %i.ka, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.jw)
  store ptr %i.ju, ptr %i.jv, align 8, !tbaa !27
  store i32 2, ptr %i.js, align 8, !tbaa !27
  br label %bb.ci

bb.ci:                                            ; preds = %._crit_edge, %bb.ch
  %i.kb = phi ptr [ %.pre404, %._crit_edge ], [ %i.ju, %bb.ch ]
  store i8 1, ptr %i.l, align 8, !tbaa !23
  store i8 %.0.i268.ph, ptr %i.kb, align 1, !tbaa !27
  br label %_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia.exit273

bb.cj:                                            ; preds = %bb.cd
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !27 ; 2 uses
  %i.ke = and i64 %i.kd, 15
  %i.kf = add nuw nsw i64 %i.ke, 1
  %i.kg = and i64 %i.kd, -16
  %i.kh = or i64 %i.kf, %i.kg
  store i64 %i.kh, ptr %i.kc, align 8, !tbaa !27
  br label %_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia.exit273

_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia.exit273: ; preds = %bb.ci, %bb.cj
  %i.ki = load i32, ptr %i.ag, align 8, !tbaa !29
  %i.kj = add nsw i32 %i.ki, 1
  store i32 %i.kj, ptr %i.ag, align 8, !tbaa !29
  br label %.critedge

.critedge:                                        ; preds = %.thread421, %_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia.exit273, %bb.ca
  tail call void @_ZN6icu_786number4impl15DecimalQuantity7compactEv(ptr noundef nonnull align 8 dereferenceable(66) %0)
  br label %.critedge212

.critedge212:                                     ; preds = %bb.bj, %.thread.thread, %bb.by, %_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia.exit, %bb.bz, %bb.at, %switch.early.test211, %switch.early.test211, %_ZN6icu_786number4impl15DecimalQuantity23convertToAccurateDoubleEv.exit, %bb.h, %bb.g, %switch.early.test, %switch.early.test, %.critedge
  ret void
}

declare i32 @uprv_max_78(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(66) %0, i32 noundef %1, i8 noundef signext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23, !range !25, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %1, 1                        ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 3 uses
  %.not12 = icmp sgt i32 %i.g, %1
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nsw i32 %i.d, 1                      ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.i) #26 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %i.m = sext i32 %i.g to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.l, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = sub nsw i32 %i.d, %i.g
  %i.p = zext nneg i32 %i.o to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.p, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.l)
  store ptr %i.j, ptr %i.k, align 8, !tbaa !27
  store i32 %i.h, ptr %i.f, align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !23
  br label %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit

_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit: ; preds = %bb.b, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = sext i32 %1 to i64
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  store i8 %2, ptr %i.t, align 1, !tbaa !27
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.u = icmp sgt i32 %1, 15
  br i1 %i.u, label %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit.i, label %bb.j

_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit.i: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.y = tail call noalias dereferenceable_or_null(40) ptr @uprv_malloc_78(i64 noundef 40) #26 ; 2 uses
  store ptr %i.y, ptr %i.v, align 8, !tbaa !27
  store i32 40, ptr %i.x, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.y, i8 0, i64 40, i1 false)
  store i8 1, ptr %i.a, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !29
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i, label %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit.thread

_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit.thread: ; preds = %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit.i
  %i.ac = add nuw nsw i32 %1, 1
  br label %bb.h

.lr.ph.i:                                         ; preds = %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit.i ] ; 2 uses
  %.01114.i = phi i64 [ %i.ah, %.lr.ph.i ], [ %i.w, %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit.i ] ; 2 uses
  %i.ad = trunc i64 %.01114.i to i8
  %i.ae = and i8 %i.ad, 15
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !27
  %i.ah = lshr i64 %.01114.i, 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ai = load i32, ptr %i.z, align 8, !tbaa !29
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next.i, %i.aj
  br i1 %i.ak, label %.lr.ph.i, label %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit, !llvm.loop !4

_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit: ; preds = %.lr.ph.i
  %.pre.a = load i8, ptr %i.a, align 8, !tbaa !23
  %3 = add nuw nsw i32 %1, 1                      ; 3 uses
  %i.al = trunc nuw i8 %.pre.a to i1
  br i1 %i.al, label %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit._crit_edge, label %bb.g

_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit._crit_edge: ; preds = %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit
  %.pre = load i32, ptr %i.x, align 8
  br label %bb.h

bb.g:                                             ; preds = %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit
  %i.am = zext nneg i32 %3 to i64                 ; 2 uses
  %i.an = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.am) #26 ; 3 uses
  store ptr %i.an, ptr %i.v, align 8, !tbaa !27
  store i32 %3, ptr %i.x, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.an, i8 0, i64 %i.am, i1 false)
  br label %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit11

bb.h:                                             ; preds = %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit._crit_edge, %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit.thread
  %i.ao = phi i32 [ 40, %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit.thread ], [ %.pre, %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit._crit_edge ] ; 3 uses
  %i.ap = phi i32 [ %i.ac, %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit.thread ], [ %3, %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit._crit_edge ] ; 3 uses
  %4 = icmp slt i32 %i.ao, %i.ap
  br i1 %4, label %bb.i, label %._ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit11_crit_edge

._ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit11_crit_edge: ; preds = %bb.h
  %.pre14 = load ptr, ptr %i.v, align 8, !tbaa !27
  br label %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit11

bb.i:                                             ; preds = %bb.h
  %i.aq = shl nuw nsw i32 %i.ap, 1                ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ar) #26 ; 4 uses
  %i.at = load ptr, ptr %i.v, align 8, !tbaa !27  ; 2 uses
  %i.au = sext i32 %i.ao to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.at, i64 %i.au, i1 false)
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %i.au
  %i.aw = sub nsw i32 %i.ap, %i.ao
  %i.ax = zext nneg i32 %i.aw to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 0, i64 %i.ax, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.at)
  store ptr %i.as, ptr %i.v, align 8, !tbaa !27
  store i32 %i.aq, ptr %i.x, align 8, !tbaa !27
  br label %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit11

_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit11: ; preds = %._ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit11_crit_edge, %bb.g, %bb.i
  %i.ay = phi ptr [ %.pre14, %._ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit11_crit_edge ], [ %i.an, %bb.g ], [ %i.as, %bb.i ]
  store i8 1, ptr %i.a, align 8, !tbaa !23
  %i.az = zext nneg i32 %1 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  store i8 %2, ptr %i.ba, align 1, !tbaa !27
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.bb = shl nsw i32 %1, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !27
  %i.be = zext i32 %i.bb to i64                   ; 2 uses
  %i.bf = shl i64 15, %i.be
  %i.bg = xor i64 %i.bf, -1
  %i.bh = and i64 %i.bd, %i.bg
  %i.bi = sext i8 %2 to i64
  %i.bj = shl i64 %i.bi, %i.be
  %i.bk = or i64 %i.bh, %i.bj
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit11, %bb.j, %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl15DecimalQuantity15roundToInfinityEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(66) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [18 x i8], align 16               ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 21 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !30
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !31
  call void @_ZN6icu_7817double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_(double noundef %i.j, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef 18, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !23, !range !25, !noundef !26
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZN6icu_786number4impl15DecimalQuantity23convertToAccurateDoubleEv.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  call void @uprv_free_78(ptr noundef %i.o)
  store i8 0, ptr %i.k, align 8, !tbaa !23
  br label %_ZN6icu_786number4impl15DecimalQuantity23convertToAccurateDoubleEv.exit

_ZN6icu_786number4impl15DecimalQuantity23convertToAccurateDoubleEv.exit: ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.p, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 0, ptr %i.q, align 4, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !29
  store i8 0, ptr %i.e, align 1, !tbaa !30
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !31
  store i32 0, ptr %i.g, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.s, align 4, !tbaa !33
  %i.t = load i32, ptr %i.c, align 4, !tbaa !37
  %i.u = load i32, ptr %i.d, align 4, !tbaa !37
  call void @_ZN6icu_786number4impl15DecimalQuantity25readDoubleConversionToBcdEPKcii(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull %i.a, i32 noundef %i.t, i32 noundef %i.u)
  %i.v = load i32, ptr %i.q, align 4, !tbaa !28
  %i.w = add nsw i32 %i.v, %i.h
  store i32 %i.w, ptr %i.q, align 4, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 1, ptr %i.x, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.d

bb.d:                                             ; preds = %_ZN6icu_786number4impl15DecimalQuantity23convertToAccurateDoubleEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl15DecimalQuantity11appendDigitEaib(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(66) %0, i8 noundef signext %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp ne i32 %i.c, 0
  %or.cond.not = select i1 %3, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.c, label %_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia.exit13

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %2, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28
  %i.g = add nsw i32 %i.d, %i.f
  store i32 %i.g, ptr %i.e, align 4, !tbaa !28
  br label %_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia.exit13

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %i.i, %2                     ; 2 uses
  br i1 %3, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.h, align 4, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0 = phi i32 [ %i.k, %bb.f ], [ %2, %bb.d ]
  %i.l = add nsw i32 %.0, 1                       ; 2 uses
  tail call void @_ZN6icu_786number4impl15DecimalQuantity9shiftLeftEi(ptr noundef nonnull align 8 dereferenceable(66) %0, i32 noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !23, !range !25, !noundef !26
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8              ; 3 uses
  %.not12.i = icmp sgt i32 %i.q, 0
  br i1 %.not12.i, label %._crit_edge14, label %bb.i

._crit_edge14:                                    ; preds = %bb.h
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre16 = load ptr, ptr %.phi.trans.insert15, align 8, !tbaa !27
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = tail call noalias dereferenceable_or_null(2) ptr @uprv_malloc_78(i64 noundef 2) #26 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27   ; 2 uses
  %i.u = sext i32 %i.q to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.t, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  %i.w = sub nsw i32 1, %i.q
  %i.x = zext nneg i32 %i.w to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 0, i64 %i.x, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.t)
  store ptr %i.r, ptr %i.s, align 8, !tbaa !27
  store i32 2, ptr %i.p, align 8, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge14, %bb.i
  %i.y = phi ptr [ %.pre16, %._crit_edge14 ], [ %i.r, %bb.i ]
  store i8 1, ptr %i.m, align 8, !tbaa !23
  store i8 %1, ptr %i.y, align 1, !tbaa !27
  br label %_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia.exit

bb.k:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !27
  %i.ab = and i64 %i.aa, -16
  %i.ac = sext i8 %1 to i64
  %i.ad = or i64 %i.ab, %i.ac
  store i64 %i.ad, ptr %i.z, align 8, !tbaa !27
  br label %_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia.exit

_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia.exit: ; preds = %bb.j, %bb.k
  br i1 %3, label %bb.l, label %_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia.exit13

bb.l:                                             ; preds = %_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia.exit
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !28
  %i.af = add nsw i32 %i.ae, %i.l
  store i32 %i.af, ptr %i.h, align 4, !tbaa !28
  br label %_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia.exit13

.critedge:                                        ; preds = %bb.e
  %i.ag = add nsw i32 %i.k, 1
  tail call void @_ZN6icu_786number4impl15DecimalQuantity9shiftLeftEi(ptr noundef nonnull align 8 dereferenceable(66) %0, i32 noundef %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !23, !range !25, !noundef !26
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.critedge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8            ; 3 uses
  %.not12.i12 = icmp sgt i32 %i.al, 0
  br i1 %.not12.i12, label %._crit_edge, label %bb.n

._crit_edge:                                      ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = tail call noalias dereferenceable_or_null(2) ptr @uprv_malloc_78(i64 noundef 2) #26 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27 ; 2 uses
  %i.ap = sext i32 %i.al to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ao, i64 %i.ap, i1 false)
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.ap
  %i.ar = sub nsw i32 1, %i.al
  %i.as = zext nneg i32 %i.ar to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 0, i64 %i.as, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.ao)
  store ptr %i.am, ptr %i.an, align 8, !tbaa !27
  store i32 2, ptr %i.ak, align 8, !tbaa !27
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.n
  %i.at = phi ptr [ %.pre, %._crit_edge ], [ %i.am, %bb.n ]
  store i8 1, ptr %i.ah, align 8, !tbaa !23
  store i8 %1, ptr %i.at, align 1, !tbaa !27
  br label %_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia.exit13

bb.p:                                             ; preds = %.critedge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !27
  %i.aw = and i64 %i.av, -16
  %i.ax = sext i8 %1 to i64
  %i.ay = or i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %i.au, align 8, !tbaa !27
  br label %_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia.exit13

_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia.exit13: ; preds = %bb.p, %bb.o, %bb.b, %bb.c, %bb.l, %_ZN6icu_786number4impl15DecimalQuantity11setDigitPosEia.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl15DecimalQuantity9shiftLeftEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(66) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23, !range !25, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !29 ; 3 uses
  br i1 %i.c, label %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %.pre, %1
  %i.e = icmp sgt i32 %i.d, 15
  br i1 %i.e, label %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit.i, label %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit.thread10

_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = tail call noalias dereferenceable_or_null(40) ptr @uprv_malloc_78(i64 noundef 40) #26 ; 2 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !27
  store i32 40, ptr %i.h, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  store i8 1, ptr %i.a, align 8, !tbaa !23
  %i.j = load i32, ptr %.phi.trans.insert, align 8, !tbaa !29 ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit.thread

.lr.ph.i:                                         ; preds = %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit.i ] ; 2 uses
  %.01114.i = phi i64 [ %i.p, %.lr.ph.i ], [ %i.g, %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit.i ] ; 2 uses
  %i.l = trunc i64 %.01114.i to i8
  %i.m = and i8 %i.l, 15
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.i
  store i8 %i.m, ptr %i.o, align 1, !tbaa !27
  %i.p = lshr i64 %.01114.i, 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.q = load i32, ptr %.phi.trans.insert, align 8, !tbaa !29 ; 3 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next.i, %i.r
  br i1 %i.s, label %.lr.ph.i, label %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit, !llvm.loop !4

_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit: ; preds = %.lr.ph.i
  %.pre.a = load i8, ptr %i.a, align 8, !tbaa !23
  %i.t = trunc nuw i8 %.pre.a to i1
  br i1 %i.t, label %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit.thread, label %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit.thread10

_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit.thread: ; preds = %bb.a, %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit.i, %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit
  %2 = phi i32 [ %i.q, %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit ], [ %i.j, %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit.i ], [ %.pre, %bb.a ] ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = add nsw i32 %2, %1                       ; 4 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8              ; 3 uses
  %i.y = icmp slt i32 %i.x, %i.u
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = shl nsw i32 %i.u, 1                      ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.aa) #26 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27 ; 2 uses
  %i.ae = sext i32 %i.x to i64                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ad, i64 %i.ae, i1 false)
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = sub nsw i32 %i.u, %i.x
  %i.ah = zext nneg i32 %i.ag to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.af, i8 0, i64 %i.ah, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.ad)
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !27
  store i32 %i.z, ptr %i.w, align 8, !tbaa !27
  %.pre7.pre = load i32, ptr %3, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre7 = phi i32 [ %.pre7.pre, %bb.d ], [ %2, %bb.c ]
  store i8 1, ptr %i.a, align 8, !tbaa !23
  br label %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit

_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit: ; preds = %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit.thread, %bb.e
  %i.ai = phi i32 [ %2, %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit.thread ], [ %.pre7, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !27 ; 2 uses
  %i.al = sext i32 %1 to i64                      ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  %i.an = sext i32 %i.ai to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ak, i64 %i.an, i1 false)
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 0, i64 %i.al, i1 false)
  %.pre11 = load i32, ptr %3, align 8, !tbaa !29
  br label %bb.f

_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit.thread10: ; preds = %bb.b, %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit
  %4 = phi i32 [ %i.q, %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit ], [ %.pre, %bb.b ]
  %i.ap = shl nsw i32 %1, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !27
  %i.as = zext nneg i32 %i.ap to i64
  %i.at = shl i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit.thread10, %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit
  %5 = phi i32 [ %4, %_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv.exit.thread10 ], [ %.pre11, %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !28
  %i.aw = sub nsw i32 %i.av, %1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = add nsw i32 %5, %1
  store i32 %i.ay, ptr %i.ax, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_786number4impl15DecimalQuantity13toPlainStringEv(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = load i8, ptr %i.f, align 4, !tbaa !36
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 45, ptr %i.d, align 2, !tbaa !52
  %i.i = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit:         ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7813UnicodeString6appendEDs.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 48, ptr %i.c, align 2, !tbaa !52
  %i.m = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit26:       ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !33
  %i.r = add i32 %i.q, %i.o                       ; 2 uses
  %i.s = add i32 %i.r, %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !34
  %spec.select = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.u) ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !35
  %.015 = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.w) ; 3 uses
  %i.x = icmp slt i32 %spec.select, 1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 48, ptr %i.b, align 2, !tbaa !52
  %i.y = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit27:       ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit33, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit, %bb.m, %bb.f, %bb.d, %bb.b
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #25
  resume { ptr, i32 } %lpad.loopexit.split-lp67

bb.g:                                             ; preds = %_ZN6icu_7813UnicodeString6appendEDs.exit27, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %.062 = add nsw i32 %spec.select, -1            ; 2 uses
  %i.ab = icmp sgt i32 %spec.select, 0
  br i1 %i.ab, label %.lr.ph64, label %._crit_edge

bb.h:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit
  %.0 = add nsw i32 %.063, -1                     ; 2 uses
  %i.ac = icmp sgt i32 %.063, 0
  br i1 %i.ac, label %.lr.ph64, label %._crit_edge, !llvm.loop !96

.lr.ph64:                                         ; preds = %bb.g, %bb.h
  %.063 = phi i32 [ %.0, %bb.h ], [ %.062, %bb.g ] ; 4 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !28
  %i.ae = load i32, ptr %i.p, align 4, !tbaa !33
  %i.af = add i32 %i.ad, %i.ae
  %i.ag = sub i32 %.063, %i.af                    ; 5 uses
  %i.ah = load i8, ptr %i.z, align 8, !tbaa !23, !range !25, !noundef !26
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph64
  %i.aj = icmp sgt i32 %i.ag, -1
  %i.ak = load i32, ptr %i.j, align 8
  %.not.i = icmp slt i32 %i.ag, %i.ak
  %or.cond10.i = select i1 %i.aj, i1 %.not.i, i1 false
  br i1 %or.cond10.i, label %bb.j, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !27
  %i.am = zext nneg i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !27
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

bb.k:                                             ; preds = %.lr.ph64
  %or.cond.i = icmp ugt i32 %i.ag, 15
  br i1 %or.cond.i, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load i64, ptr %i.aa, align 8, !tbaa !27
  %i.aq = shl nuw nsw i32 %i.ag, 2
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = lshr i64 %i.ap, %i.ar
  %i.at = trunc i64 %i.as to i8
  %i.au = and i8 %i.at, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i = phi i8 [ %i.au, %bb.l ], [ %i.ao, %bb.j ], [ 0, %bb.i ], [ 0, %bb.k ]
  %i.av = sext i8 %.0.i to i32
  %i.aw = add nsw i32 %i.av, 48
  %i.ax = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.aw)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !96 ; 0 uses

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %.0.in.lcssa = phi i32 [ %spec.select, %bb.g ], [ %.063, %bb.h ]
  %.0.lcssa = phi i32 [ %.062, %bb.g ], [ %.0, %bb.h ]
  %i.ay = icmp slt i32 %.015, 0
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 46, ptr %i.a, align 2, !tbaa !52
  %i.az = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit28:       ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %_ZN6icu_7813UnicodeString6appendEDs.exit28, %._crit_edge
  %.not44.not = icmp sgt i32 %.0.in.lcssa, %.015
  br i1 %.not44.not, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.n, %bb.s
  %.145 = phi i32 [ %i.bv, %bb.s ], [ %.0.lcssa, %bb.n ] ; 3 uses
  %i.ba = load i32, ptr %i.n, align 4, !tbaa !28
  %i.bb = load i32, ptr %i.p, align 4, !tbaa !33
  %i.bc = add i32 %i.ba, %i.bb
  %i.bd = sub i32 %.145, %i.bc                    ; 5 uses
  %i.be = load i8, ptr %i.z, align 8, !tbaa !23, !range !25, !noundef !26
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph
  %i.bg = icmp sgt i32 %i.bd, -1
  %i.bh = load i32, ptr %i.j, align 8
  %.not.i31 = icmp slt i32 %i.bd, %i.bh
  %or.cond10.i32 = select i1 %i.bg, i1 %.not.i31, i1 false
  br i1 %or.cond10.i32, label %bb.p, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit33

bb.p:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %i.aa, align 8, !tbaa !27
  %i.bj = zext nneg i32 %i.bd to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !27
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit33

bb.q:                                             ; preds = %.lr.ph
  %or.cond.i29 = icmp ugt i32 %i.bd, 15
  br i1 %or.cond.i29, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit33, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = load i64, ptr %i.aa, align 8, !tbaa !27
  %i.bn = shl nuw nsw i32 %i.bd, 2
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = lshr i64 %i.bm, %i.bo
  %i.bq = trunc i64 %i.bp to i8
  %i.br = and i8 %i.bq, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit33

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit33: ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i30 = phi i8 [ %i.br, %bb.r ], [ %i.bl, %bb.p ], [ 0, %bb.o ], [ 0, %bb.q ]
  %i.bs = sext i8 %.0.i30 to i32
  %i.bt = add nsw i32 %i.bs, 48
  %i.bu = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.bt)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.s:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit33
  %i.bv = add nsw i32 %.145, -1
  %.not.not = icmp sgt i32 %.145, %.015
end_hunk_0
