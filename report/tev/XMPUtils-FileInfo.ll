Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/XMPUtils-FileInfo?download=true
inline.NumInlined: 798
inline.NumDeleted: 351
begin_hunk_0_@_ZL17ClassifyCharacterPKcmP11UniCharKindPmS3_:bb.a
bb.f:                                             ; preds = %._crit_edge114
  switch i64 %storemerge104.lcssa, label %bb.t [
    i64 65292, label %.sink.split
    i64 65307, label %bb.d
    i64 65380, label %.sink.split
  ]

bb.g:                                             ; preds = %._crit_edge114
  switch i64 %storemerge104.lcssa, label %bb.t [
    i64 65104, label %.sink.split
    i64 65105, label %.sink.split
    i64 65108, label %bb.d
  ]

bb.h:                                             ; preds = %._crit_edge114
  switch i64 %storemerge104.lcssa, label %bb.j [
    i64 12288, label %.sink.split
    i64 12289, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.ac = and i64 %storemerge104.lcssa, -8
  %or.cond = icmp eq i64 %i.ac, 12296
  br i1 %or.cond, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %storemerge104.lcssa, 12351
  br i1 %i.ad, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = add i64 %storemerge104.lcssa, -12317
  %or.cond105 = icmp ult i64 %i.ae, 3
  br i1 %or.cond105, label %.sink.split, label %bb.t

bb.m:                                             ; preds = %._crit_edge114
  %i.af = add i64 %storemerge104.lcssa, -8192
  %or.cond106 = icmp ult i64 %i.af, 12
  br i1 %or.cond106, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = icmp eq i64 %storemerge104.lcssa, 8213
  %i.ah = and i64 %storemerge104.lcssa, -8
  %or.cond107 = icmp eq i64 %i.ah, 8216
  %or.cond119 = or i1 %i.ag, %or.cond107
  br i1 %or.cond119, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %switch.tableidx121 = add i64 %storemerge104.lcssa, -8232 ; 3 uses
  %i.ai = icmp ult i64 %switch.tableidx121, 19
  %switch.maskindex = trunc i64 %switch.tableidx121 to i32
  %switch.shifted = lshr i32 393219, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond127 = select i1 %i.ai, i1 %switch.lobit, i1 false
  br i1 %or.cond127, label %switch.lookup123, label %bb.t

bb.p:                                             ; preds = %._crit_edge114
  switch i64 %storemerge104.lcssa, label %bb.t [
    i64 1548, label %.sink.split
    i64 1563, label %bb.d
  ]

bb.q:                                             ; preds = %._crit_edge114
  %i.aj = icmp eq i64 %storemerge104.lcssa, 1373
  br i1 %i.aj, label %.sink.split, label %bb.t

bb.r:                                             ; preds = %._crit_edge114
  %i.ak = icmp eq i64 %storemerge104.lcssa, 894
  br i1 %i.ak, label %.sink.split, label %bb.t

bb.s:                                             ; preds = %._crit_edge114
  switch i64 %storemerge104.lcssa, label %bb.t [
    i64 171, label %.sink.split
    i64 187, label %.sink.split
  ]

switch.lookup:                                    ; preds = %bb.e
  %i.al = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL17ClassifyCharacterPKcmP11UniCharKindPmS3_, i64 %i.al
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %.sink.split

switch.lookup123:                                 ; preds = %bb.o
  %switch.gep124 = getelementptr inbounds nuw i8, ptr @switch.table._ZL17ClassifyCharacterPKcmP11UniCharKindPmS3_.1, i64 %switch.tableidx121
  %switch.load125 = load i8, ptr %switch.gep124, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup123, %bb.e, %switch.lookup, %bb.s, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.g, %bb.f, %bb.f, %bb.c, %bb.d, %bb.i
  %.sink.shrunk = phi i8 [ 4, %bb.s ], [ 2, %bb.f ], [ %switch.load, %switch.lookup ], [ 2, %bb.i ], [ 4, %bb.j ], [ 1, %bb.k ], [ 1, %bb.h ], [ 2, %bb.g ], [ 3, %bb.d ], [ %switch.load125, %switch.lookup123 ], [ 2, %bb.q ], [ 3, %bb.r ], [ 2, %bb.p ], [ 4, %bb.l ], [ 4, %bb.n ], [ 5, %bb.e ], [ 2, %bb.g ], [ 2, %bb.c ], [ 1, %bb.m ], [ 2, %bb.f ], [ 4, %bb.s ]
  %.sink = zext i8 %.sink.shrunk to i32
  store i32 %.sink, ptr %2, align 4, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %.sink.split, %bb.l, %bb.r, %bb.q, %bb.f, %bb.g, %bb.p, %._crit_edge114, %bb.s, %bb.c
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @_Z11ExpandXPathPKcS0_PNSt3__16vectorI13XPathStepInfoNS1_9allocatorIS3_EEEE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare noundef ptr @_Z8FindNodeP8XMP_NodeRKNSt3__16vectorI13XPathStepInfoNS1_9allocatorIS3_EEEEbjPNS1_11__wrap_iterIPS0_EE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL11ApplyQuotesPNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEmmb(ptr noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 6 uses
  %i.b = alloca [8 x i8], align 1                 ; 6 uses
  %i.c = alloca i64, align 8                      ; 11 uses
  %i.d = alloca i32, align 4                      ; 13 uses
  %i.e = alloca i64, align 8                      ; 9 uses
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.f = load i8, ptr %0, align 8                 ; 2 uses
  %i.g = trunc i8 %i.f to i1                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.k = select i1 %i.g, ptr %i.i, ptr %i.j       ; 4 uses
  call fastcc void @_ZL17ClassifyCharacterPKcmP11UniCharKindPmS3_(ptr noundef %i.k, i64 noundef 0, ptr noundef %i.d, ptr noundef %i.c, ptr noundef %i.e)
  %i.l = load i32, ptr %i.d, align 4, !tbaa !23
  %.not = icmp eq i32 %i.l, 4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.pre88 = lshr i8 %i.f, 1
  %.pre89 = zext nneg i8 %.pre88 to i64
  %.pre91 = select i1 %i.g, i64 %.pre, i64 %.pre89 ; 4 uses
  br i1 %.not, label %.loopexit61, label %.preheader60

.preheader60:                                     ; preds = %bb.a
  %.not81 = icmp eq i64 %.pre91, 0
  br i1 %.not81, label %.loopexit61.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader60
  br i1 %3, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.03966.us = phi i64 [ %i.p, %bb.d ], [ 0, %.lr.ph ] ; 5 uses
  %.04065.us = phi i1 [ %i.n, %bb.d ], [ false, %.lr.ph ]
  call fastcc void @_ZL17ClassifyCharacterPKcmP11UniCharKindPmS3_(ptr noundef %i.k, i64 noundef %.03966.us, ptr noundef %i.d, ptr noundef %i.c, ptr noundef %i.e)
  %i.m = load i32, ptr %i.d, align 4, !tbaa !23   ; 2 uses
  %i.n = icmp eq i32 %i.m, 1                      ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  switch i32 %i.m, label %bb.d [
    i32 5, label %.loopexit61
    i32 3, label %.loopexit61
  ]

bb.c:                                             ; preds = %.lr.ph.split.us
  br i1 %.04065.us, label %.loopexit61, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.o = load i64, ptr %i.c, align 8, !tbaa !21
  %i.p = add i64 %i.o, %.03966.us                 ; 3 uses
  %i.q = icmp ult i64 %i.p, %.pre91
  br i1 %i.q, label %.lr.ph.split.us, label %.loopexit61, !llvm.loop !64

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %.03966 = phi i64 [ %i.u, %bb.g ], [ 0, %.lr.ph ] ; 6 uses
  %.04065 = phi i1 [ %i.s, %bb.g ], [ false, %.lr.ph ]
  call fastcc void @_ZL17ClassifyCharacterPKcmP11UniCharKindPmS3_(ptr noundef %i.k, i64 noundef %.03966, ptr noundef %i.d, ptr noundef %i.c, ptr noundef %i.e)
  %i.r = load i32, ptr %i.d, align 4, !tbaa !23   ; 2 uses
  %i.s = icmp eq i32 %i.r, 1                      ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split
  br i1 %.04065, label %.loopexit61, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split
  switch i32 %i.r, label %bb.g [
    i32 5, label %.loopexit61
    i32 3, label %.loopexit61
    i32 2, label %.loopexit61
  ]

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = load i64, ptr %i.c, align 8, !tbaa !21
  %i.u = add i64 %i.t, %.03966                    ; 3 uses
  %i.v = icmp ult i64 %i.u, %.pre91
  br i1 %i.v, label %.lr.ph.split, label %.loopexit61, !llvm.loop !64

.loopexit61:                                      ; preds = %bb.f, %bb.f, %bb.f, %bb.e, %bb.g, %bb.c, %bb.d, %bb.b, %bb.b, %bb.a
  %.1 = phi i64 [ %.03966.us, %bb.c ], [ 0, %bb.a ], [ %i.p, %bb.d ], [ %.03966.us, %bb.b ], [ %.03966.us, %bb.b ], [ %.03966, %bb.e ], [ %i.u, %bb.g ], [ %.03966, %bb.f ], [ %.03966, %bb.f ], [ %.03966, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = icmp ult i64 %.1, %.pre91
  br i1 %i.x, label %bb.h, label %.loopexit61.thread

bb.h:                                             ; preds = %.loopexit61
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.j
  %.03878 = phi i64 [ 0, %bb.h ], [ %i.aa, %bb.j ] ; 3 uses
  call fastcc void @_ZL17ClassifyCharacterPKcmP11UniCharKindPmS3_(ptr noundef %i.k, i64 noundef %.03878, ptr noundef %i.d, ptr noundef %i.c, ptr noundef %i.e)
  %i.y = load i32, ptr %i.d, align 4, !tbaa !23
  %i.z = icmp eq i32 %i.y, 4
  br i1 %i.z, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = add i64 %.03878, 1                      ; 3 uses
  %.not43 = icmp ugt i64 %i.aa, %.1
  br i1 %.not43, label %bb.k, label %bb.i, !llvm.loop !65

bb.k:                                             ; preds = %bb.i, %bb.j
  %.038.lcssa = phi i64 [ %.03878, %bb.i ], [ %i.aa, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ab = icmp ult i64 %1, 128
  br i1 %i.ab, label %bb.l, label %.preheader.i

bb.l:                                             ; preds = %bb.k
  %i.ac = trunc nuw nsw i64 %1 to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !42
  br label %bb.m

.preheader.i:                                     ; preds = %bb.k, %.preheader.i
  %.02130.i = phi i64 [ %i.aj, %.preheader.i ], [ %1, %bb.k ] ; 3 uses
  %.02429.i = phi i64 [ %i.ae, %.preheader.i ], [ 8, %bb.k ] ; 2 uses
  %i.ae = add nsw i64 %.02429.i, -1               ; 3 uses
  %i.af = trunc i64 %.02130.i to i8
  %i.ag = and i8 %i.af, 63                        ; 2 uses
  %i.ah = or disjoint i8 %i.ag, -128
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ae
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !42
  %i.aj = lshr i64 %.02130.i, 6                   ; 2 uses
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %._crit_edge.i, label %.preheader.i, !llvm.loop !66

._crit_edge.i:                                    ; preds = %.preheader.i
  %.not2831.i = icmp ne i8 %i.ag, 0
  %i.ak = tail call range(i64 58, 65) i64 @llvm.ctlz.i64(i64 %.02130.i, i1 true)
  %i.al = sub nuw nsw i64 64, %i.ak
  %i.am = add nsw i64 %.02429.i, -2
  %i.an = icmp ugt i64 %i.al, %i.am
  %i.ao = select i1 %.not2831.i, i1 %i.an, i1 false
  %spec.select.i = select i1 %i.ao, i64 9, i64 8
  %.022.i = sub i64 %spec.select.i, %i.ae         ; 2 uses
  %i.ap = sub i64 8, %.022.i                      ; 3 uses
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = shl i32 255, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ap ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !42
  %i.au = trunc i32 %i.ar to i8
  %i.av = or i8 %i.at, %i.au
  store i8 %i.av, ptr %i.as, align 1, !tbaa !42
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i, %bb.l
  %.125.i = phi i64 [ 7, %bb.l ], [ %i.ap, %._crit_edge.i ]
  %.123.i = phi i64 [ 1, %bb.l ], [ %.022.i, %._crit_edge.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 %.125.i
  %i.ax = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.aw, i64 noundef %.123.i)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.ay = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_mm(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef %.038.lcssa)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader:                                       ; preds = %bb.n
  %i.az = load i8, ptr %0, align 8                ; 2 uses
  %i.ba = trunc i8 %i.az to i1                    ; 2 uses
  %i.bb = load i64, ptr %i.w, align 8
  %i.bc = lshr i8 %i.az, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = select i1 %i.ba, i64 %i.bb, i64 %i.bd
  %i.bf = icmp ult i64 %.038.lcssa, %i.be
  br i1 %i.bf, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %.preheader
  %i.bg = icmp eq i64 %1, 12317
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph80, %bb.r
  %i.bh = phi i1 [ %i.ba, %.lr.ph80 ], [ %i.bv, %bb.r ]
  %.279 = phi i64 [ %.038.lcssa, %.lr.ph80 ], [ %i.bt, %bb.r ] ; 4 uses
  %i.bi = load ptr, ptr %i.h, align 8
  %i.bj = select i1 %i.bh, ptr %i.bi, ptr %i.j
  call fastcc void @_ZL17ClassifyCharacterPKcmP11UniCharKindPmS3_(ptr noundef %i.bj, i64 noundef %.279, ptr noundef %i.d, ptr noundef %i.c, ptr noundef %i.e)
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !21  ; 3 uses
  %i.bl = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_mm(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.279, i64 noundef %i.bk)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bm = load i32, ptr %i.d, align 4, !tbaa !23
  %i.bn = icmp eq i32 %i.bm, 4
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bo = load i64, ptr %i.e, align 8, !tbaa !21  ; 3 uses
  %i.bp = icmp eq i64 %i.bo, %1
  %i.bq = icmp eq i64 %i.bo, %2
  %or.cond.i = or i1 %i.bp, %i.bq
  br i1 %or.cond.i, label %_ZL18IsSurroundingQuotemmm.exit.thread, label %_ZL18IsSurroundingQuotemmm.exit

_ZL18IsSurroundingQuotemmm.exit:                  ; preds = %bb.q
  %i.br = and i64 %i.bo, -2
  %or.cond.i.i = icmp eq i64 %i.br, 12318
  %or.cond7.i.i = and i1 %i.bg, %or.cond.i.i
  br i1 %or.cond7.i.i, label %_ZL18IsSurroundingQuotemmm.exit.thread, label %bb.r

_ZL18IsSurroundingQuotemmm.exit.thread:           ; preds = %bb.q, %_ZL18IsSurroundingQuotemmm.exit
  %i.bs = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_mm(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.279, i64 noundef %i.bk)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZL18IsSurroundingQuotemmm.exit.thread, %bb.o, %bb.m, %bb.n
  %lpad.loopexit.split-lp121 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.p, %_ZL18IsSurroundingQuotemmm.exit, %_ZL18IsSurroundingQuotemmm.exit.thread
  %i.bt = add i64 %i.bk, %.279                    ; 2 uses
  %i.bu = load i8, ptr %0, align 8                ; 2 uses
  %i.bv = trunc i8 %i.bu to i1                    ; 2 uses
  %i.bw = load i64, ptr %i.w, align 8
  %i.bx = lshr i8 %i.bu, 1
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = select i1 %i.bv, i64 %i.bw, i64 %i.by
  %i.ca = icmp ult i64 %i.bt, %i.bz
  br i1 %i.ca, label %bb.o, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.r, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.cb = icmp ult i64 %2, 128
  br i1 %i.cb, label %bb.s, label %.preheader.i45

bb.s:                                             ; preds = %._crit_edge
  %i.cc = trunc nuw nsw i64 %2 to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !42
  br label %bb.t

.preheader.i45:                                   ; preds = %._crit_edge, %.preheader.i45
  %.02130.i46 = phi i64 [ %i.cj, %.preheader.i45 ], [ %2, %._crit_edge ] ; 3 uses
  %.02429.i47 = phi i64 [ %i.ce, %.preheader.i45 ], [ 8, %._crit_edge ] ; 2 uses
  %i.ce = add nsw i64 %.02429.i47, -1             ; 3 uses
  %i.cf = trunc i64 %.02130.i46 to i8
  %i.cg = and i8 %i.cf, 63                        ; 2 uses
  %i.ch = or disjoint i8 %i.cg, -128
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ce
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !42
  %i.cj = lshr i64 %.02130.i46, 6                 ; 2 uses
  %.not.i48 = icmp eq i64 %i.cj, 0
  br i1 %.not.i48, label %._crit_edge.i49, label %.preheader.i45, !llvm.loop !66

._crit_edge.i49:                                  ; preds = %.preheader.i45
  %.not2831.i50 = icmp ne i8 %i.cg, 0
  %i.ck = call range(i64 58, 65) i64 @llvm.ctlz.i64(i64 %.02130.i46, i1 true)
  %i.cl = sub nuw nsw i64 64, %i.ck
  %i.cm = add nsw i64 %.02429.i47, -2
  %i.cn = icmp ugt i64 %i.cl, %i.cm
  %i.co = select i1 %.not2831.i50, i1 %i.cn, i1 false
  %spec.select.i51 = select i1 %i.co, i64 9, i64 8
  %.022.i52 = sub i64 %spec.select.i51, %i.ce     ; 2 uses
  %i.cp = sub i64 8, %.022.i52                    ; 3 uses
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = shl i32 255, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cp ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !42
  %i.cu = trunc i32 %i.cr to i8
  %i.cv = or i8 %i.ct, %i.cu
  store i8 %i.cv, ptr %i.cs, align 1, !tbaa !42
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i49, %bb.s
  %.125.i53 = phi i64 [ 7, %bb.s ], [ %i.cp, %._crit_edge.i49 ]
  %.123.i54 = phi i64 [ 1, %bb.s ], [ %.022.i52, %._crit_edge.i49 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.125.i53
  %i.cx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %i.cw, i64 noundef %.123.i54)
          to label %bb.u unwind label %bb.y       ; 0 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.cy = load i8, ptr %5, align 8                ; 2 uses
  %i.cz = trunc i8 %i.cy to i1                    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.dd = select i1 %i.cz, ptr %i.db, ptr %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = lshr i8 %i.cy, 1
  %i.dh = zext nneg i8 %i.dg to i64
  %i.di = select i1 %i.cz, i64 %i.df, i64 %i.dh
  %i.dj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.dd, i64 noundef %i.di)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendB8ne180100ERKS5_.exit unwind label %bb.y ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendB8ne180100ERKS5_.exit: ; preds = %bb.u
  %i.dk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.v unwind label %bb.y       ; 0 uses

bb.v:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendB8ne180100ERKS5_.exit
  %i.dl = load i8, ptr %5, align 8
  %i.dm = trunc i8 %i.dl to i1
  br i1 %i.dm, label %bb.w, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.dn = load ptr, ptr %i.da, align 8, !tbaa !42
  call void @_ZdlPv(ptr noundef %i.dn) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
end_hunk_0
