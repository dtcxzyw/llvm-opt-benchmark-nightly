Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uniset?download=true
inline.NumInlined: 259
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7810UnicodeSetC2EPKtiNS0_14ESerializationER10UErrorCode:bb.a
  %.1.lcssa71 = phi i32 [ %i.bz, %._crit_edge.thread ], [ %i.x, %._crit_edge ] ; 3 uses
  %i.cb = zext nneg i32 %.1.lcssa71 to i64        ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %.pre.pre.pre, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !31
  %.not49 = icmp eq i32 %i.ce, 1114112
  br i1 %.not49, label %bb.i, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %bb.h
  %.1.lcssa70 = phi i32 [ %.1.lcssa71, %bb.h ], [ 0, %._crit_edge ]
  %.pre-phi = phi i64 [ %i.cb, %bb.h ], [ 0, %._crit_edge ]
  %i.cf = add nuw nsw i32 %.1.lcssa70, 1
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre.pre, i64 %.pre-phi
  store i32 1114112, ptr %i.cg, align 4, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %bb.h
  %.2 = phi i32 [ %i.cf, %._crit_edge._crit_edge ], [ %.1.lcssa71, %bb.h ]
  store i32 %.2, ptr %i.e, align 4, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %_ZN6icu_7810UnicodeSet10setToBogusEv.exit59, %_ZN6icu_7810UnicodeSet10setToBogusEv.exit, %bb.i, %bb.g
  ret void

bb.k:                                             ; preds = %bb.f
  %i.ch = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %i.ch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -2147483647, 32770) i32 @_ZNK6icu_7810UnicodeSet9serializeEPtiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !33
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne i32 %2, 0                        ; 2 uses
  %i.e = icmp eq ptr %1, null
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %3, align 4, !tbaa !33
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27   ; 3 uses
  %i.h = add nsw i32 %i.g, -1                     ; 7 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i16 0, ptr %1, align 2, !tbaa !73
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  store i32 15, ptr %3, align 4, !tbaa !33
  br label %.loopexit

bb.i:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 7 uses
  %i.l = sext i32 %i.g to i64
  %i.m = getelementptr [4 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31
  %i.p = icmp slt i32 %i.o, 65536
  br i1 %i.p, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load i32, ptr %i.k, align 4, !tbaa !31
  %i.r = icmp sgt i32 %i.q, 65535
  br i1 %i.r, label %bb.k, label %.preheader61

.preheader61:                                     ; preds = %bb.j
  %i.s = icmp sgt i32 %i.g, 1
  br i1 %i.s, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader61
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

bb.k:                                             ; preds = %bb.j
  %i.t = shl nsw i32 %i.h, 1
  br label %bb.m

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !31
  %i.w = icmp slt i32 %i.v, 65536
  br i1 %i.w, label %bb.l, label %.critedge.loopexit.split.loop.exit84

bb.l:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !79

.critedge.loopexit.split.loop.exit84:             ; preds = %.lr.ph
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %.critedge.loopexit.split.loop.exit84, %.preheader61
  %.053.lcssa = phi i32 [ 0, %.preheader61 ], [ %i.x, %.critedge.loopexit.split.loop.exit84 ], [ %i.h, %bb.l ] ; 3 uses
  %i.y = sub nsw i32 %i.h, %.053.lcssa
  %i.z = shl nsw i32 %i.y, 1
  %i.aa = add nsw i32 %i.z, %.053.lcssa
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.k, %.critedge
  %.154 = phi i32 [ %.053.lcssa, %.critedge ], [ 0, %bb.k ], [ %i.h, %bb.i ] ; 8 uses
  %.052 = phi i32 [ %i.aa, %.critedge ], [ %i.t, %bb.k ], [ %i.h, %bb.i ] ; 7 uses
  %i.ab = icmp sgt i32 %.052, 32767
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 8, ptr %3, align 4, !tbaa !33
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.ac = icmp sgt i32 %.052, %.154               ; 2 uses
  %i.ad = select i1 %i.ac, i32 2, i32 1
  %i.ae = add nsw i32 %i.ad, %.052                ; 5 uses
  %.not60 = icmp sgt i32 %i.ae, %2
  br i1 %.not60, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = trunc i32 %.052 to i16                  ; 2 uses
  store i16 %i.af, ptr %1, align 2, !tbaa !73
  br i1 %i.ac, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ag = or i16 %i.af, -32768
  store i16 %i.ag, ptr %1, align 2, !tbaa !73
  %i.ah = trunc i32 %.154 to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !73
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.056 = phi ptr [ %i.ai, %bb.q ], [ %1, %bb.p ]
  %.15765 = getelementptr inbounds nuw i8, ptr %.056, i64 2 ; 4 uses
  %i.aj = icmp sgt i32 %.154, 0
  br i1 %i.aj, label %.lr.ph69.preheader, label %.preheader

.lr.ph69.preheader:                               ; preds = %bb.r
  %i.ak = zext nneg i32 %.154 to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %.154, 8
  br i1 %min.iters.check, label %.lr.ph69.preheader111, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph69.preheader
  %n.vec = and i64 %i.ak, 2147483640              ; 5 uses
  %i.al = shl nuw nsw i64 %n.vec, 1
  %i.am = getelementptr i8, ptr %.15765, i64 %i.al ; 2 uses
  %i.an = trunc nuw nsw i64 %n.vec to i32
  %i.ao = shl nuw nsw i64 %n.vec, 2
  %i.ap = getelementptr i8, ptr %i.k, i64 %i.ao   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.15765, i64 %i.aq ; 2 uses
  %i.ar = shl i64 %index, 2
  %next.gep88 = getelementptr i8, ptr %i.k, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep88, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep88, align 4, !tbaa !31
  %wide.load89 = load <4 x i32>, ptr %i.as, align 4, !tbaa !31
  %i.at = trunc <4 x i32> %wide.load to <4 x i16>
  %i.au = trunc <4 x i32> %wide.load89 to <4 x i16>
  %i.av = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.at, ptr %next.gep, align 2, !tbaa !73
  store <4 x i16> %i.au, ptr %i.av, align 2, !tbaa !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ak
  br i1 %cmp.n, label %.preheader, label %.lr.ph69.preheader111

.lr.ph69.preheader111:                            ; preds = %.lr.ph69.preheader, %middle.block
  %.15768.ph = phi ptr [ %.15765, %.lr.ph69.preheader ], [ %i.am, %middle.block ]
  %.067.ph = phi i32 [ 0, %.lr.ph69.preheader ], [ %i.an, %middle.block ]
  %.05066.ph = phi ptr [ %i.k, %.lr.ph69.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph69

.preheader:                                       ; preds = %.lr.ph69, %middle.block, %bb.r
  %.050.lcssa = phi ptr [ %i.k, %bb.r ], [ %i.ap, %middle.block ], [ %i.bq, %.lr.ph69 ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %bb.r ], [ %.154, %middle.block ], [ %.154, %.lr.ph69 ] ; 4 uses
  %.157.lcssa = phi ptr [ %.15765, %bb.r ], [ %i.am, %middle.block ], [ %.157, %.lr.ph69 ] ; 4 uses
  %i.ax = icmp slt i32 %.0.lcssa, %.052
  br i1 %i.ax, label %.lr.ph76.preheader, label %.loopexit

.lr.ph76.preheader:                               ; preds = %.preheader
  %i.ay = xor i32 %.0.lcssa, -1
  %i.az = add i32 %.052, %i.ay                    ; 2 uses
  %i.ba = lshr i32 %i.az, 1
  %narrow = add nuw i32 %i.ba, 1
  %i.bb = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check93 = icmp ult i32 %i.az, 14
  br i1 %min.iters.check93, label %.lr.ph76.preheader110, label %vector.ph94

vector.ph94:                                      ; preds = %.lr.ph76.preheader
  %n.vec95 = and i64 %i.bb, 4294967288            ; 4 uses
  %i.bc = trunc nuw i64 %n.vec95 to i32
  %i.bd = shl i32 %i.bc, 1
  %i.be = add i32 %.0.lcssa, %i.bd
  %i.bf = shl nuw nsw i64 %n.vec95, 2             ; 2 uses
  %i.bg = getelementptr i8, ptr %.050.lcssa, i64 %i.bf
  %i.bh = getelementptr i8, ptr %.157.lcssa, i64 %i.bf
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next104, %vector.body96 ] ; 2 uses
  %i.bi = shl i64 %index97, 2                     ; 3 uses
  %next.gep98 = getelementptr i8, ptr %.050.lcssa, i64 %i.bi ; 2 uses
  %next.gep99 = getelementptr i8, ptr %.157.lcssa, i64 %i.bi
  %i.bj = getelementptr i8, ptr %.157.lcssa, i64 %i.bi
  %next.gep100 = getelementptr i8, ptr %i.bj, i64 16
  %i.bk = getelementptr i8, ptr %next.gep98, i64 16
  %wide.load101 = load <4 x i32>, ptr %next.gep98, align 4, !tbaa !31 ; 2 uses
  %wide.load102 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !31 ; 2 uses
  %i.bl = lshr <4 x i32> %wide.load101, splat (i32 16)
  %i.bm = lshr <4 x i32> %wide.load102, splat (i32 16)
  %i.bn = shufflevector <4 x i32> %i.bl, <4 x i32> %wide.load101, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc <8 x i32> %i.bn to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %next.gep99, align 2, !tbaa !73
  %i.bo = shufflevector <4 x i32> %i.bm, <4 x i32> %wide.load102, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec103 = trunc <8 x i32> %i.bo to <8 x i16>
  store <8 x i16> %interleaved.vec103, ptr %next.gep100, align 2, !tbaa !73
  %index.next104 = add nuw i64 %index97, 8        ; 2 uses
  %i.bp = icmp eq i64 %index.next104, %n.vec95
  br i1 %i.bp, label %middle.block105, label %vector.body96, !llvm.loop !81

middle.block105:                                  ; preds = %vector.body96
  %cmp.n106 = icmp eq i64 %n.vec95, %i.bb
  br i1 %cmp.n106, label %.loopexit, label %.lr.ph76.preheader110

.lr.ph76.preheader110:                            ; preds = %.lr.ph76.preheader, %middle.block105
  %.175.ph = phi i32 [ %.0.lcssa, %.lr.ph76.preheader ], [ %i.be, %middle.block105 ]
  %.15174.ph = phi ptr [ %.050.lcssa, %.lr.ph76.preheader ], [ %i.bg, %middle.block105 ]
  %.273.ph = phi ptr [ %.157.lcssa, %.lr.ph76.preheader ], [ %i.bh, %middle.block105 ]
  br label %.lr.ph76

.lr.ph69:                                         ; preds = %.lr.ph69.preheader111, %.lr.ph69
  %.15768 = phi ptr [ %.157, %.lr.ph69 ], [ %.15768.ph, %.lr.ph69.preheader111 ] ; 2 uses
  %.067 = phi i32 [ %i.bt, %.lr.ph69 ], [ %.067.ph, %.lr.ph69.preheader111 ]
  %.05066 = phi ptr [ %i.bq, %.lr.ph69 ], [ %.05066.ph, %.lr.ph69.preheader111 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.05066, i64 4 ; 2 uses
  %i.br = load i32, ptr %.05066, align 4, !tbaa !31
  %i.bs = trunc i32 %i.br to i16
  store i16 %i.bs, ptr %.15768, align 2, !tbaa !73
  %i.bt = add nuw nsw i32 %.067, 1                ; 2 uses
  %.157 = getelementptr inbounds nuw i8, ptr %.15768, i64 2 ; 2 uses
  %exitcond80.not = icmp eq i32 %i.bt, %.154
  br i1 %exitcond80.not, label %.preheader, label %.lr.ph69, !llvm.loop !82

.lr.ph76:                                         ; preds = %.lr.ph76.preheader110, %.lr.ph76
  %.175 = phi i32 [ %i.cb, %.lr.ph76 ], [ %.175.ph, %.lr.ph76.preheader110 ]
  %.15174 = phi ptr [ %i.by, %.lr.ph76 ], [ %.15174.ph, %.lr.ph76.preheader110 ] ; 2 uses
  %.273 = phi ptr [ %i.ca, %.lr.ph76 ], [ %.273.ph, %.lr.ph76.preheader110 ] ; 3 uses
  %i.bu = load i32, ptr %.15174, align 4, !tbaa !31 ; 2 uses
  %i.bv = lshr i32 %i.bu, 16
  %i.bw = trunc nuw i32 %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %.273, i64 2
  store i16 %i.bw, ptr %.273, align 2, !tbaa !73
  %i.by = getelementptr inbounds nuw i8, ptr %.15174, i64 4
  %i.bz = trunc i32 %i.bu to i16
  %i.ca = getelementptr inbounds nuw i8, ptr %.273, i64 4
  store i16 %i.bz, ptr %i.bx, align 2, !tbaa !73
  %i.cb = add nuw nsw i32 %.175, 2                ; 2 uses
  %i.cc = icmp slt i32 %i.cb, %.052
  br i1 %i.cc, label %.lr.ph76, label %.loopexit, !llvm.loop !83

bb.s:                                             ; preds = %bb.o
  store i32 15, ptr %3, align 4, !tbaa !33
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph76, %middle.block105, %.preheader, %bb.s, %bb.g, %bb.h, %bb.a, %bb.n, %bb.d
  %.055 = phi i32 [ 1, %bb.g ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.n ], [ 1, %bb.h ], [ %i.ae, %bb.s ], [ %i.ae, %.preheader ], [ %i.ae, %middle.block105 ], [ %i.ae, %.lr.ph76 ]
  ret i32 %.055
}

declare void @uprv_deleteUObject_78(ptr noundef) #8

declare signext i8 @uhash_compareUnicodeString_78(ptr, ptr) #8

declare void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -2147483623, 1114114) i32 @_ZN6icu_7810UnicodeSet12nextCapacityEi(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 25
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %0, 25
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %0, 2501
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = mul nuw nsw i32 %0, 5
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = shl nuw nsw i32 %0, 1
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.e, i32 1114113)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.d, %bb.d ], [ %spec.store.select, %bb.e ]
  ret i32 %.0
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6icu_7810UnicodeSet20ensureBufferCapacityEi(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %1, i32 1114113) ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  %.not = icmp sgt i32 %spec.store.select, %i.b
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %1, 25
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %spec.store.select, 25
  br label %_ZN6icu_7810UnicodeSet12nextCapacityEi.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i32 %1, 2501
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = mul nuw nsw i32 %spec.store.select, 5
  br label %_ZN6icu_7810UnicodeSet12nextCapacityEi.exit

bb.f:                                             ; preds = %bb.d
  %i.g = shl nuw nsw i32 %spec.store.select, 1
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 1114113)
  br label %_ZN6icu_7810UnicodeSet12nextCapacityEi.exit

_ZN6icu_7810UnicodeSet12nextCapacityEi.exit:      ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.e ], [ %spec.store.select.i, %bb.f ] ; 2 uses
  %i.h = sext i32 %.0.i to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.i) #25 ; 2 uses
  %.not11 = icmp eq ptr %i.j, null
  br i1 %.not11, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN6icu_7810UnicodeSet12nextCapacityEi.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, null
  %narrow.i.not.i.i = select i1 %.not.i.i.i, i1 %i.o, i1 false
  br i1 %narrow.i.not.i.i, label %bb.h, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  store i32 1114112, ptr %i.q, align 4, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.r, align 4, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29   ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i3.i.i, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @uprv_free_78(ptr noundef nonnull %i.t)
  store ptr null, ptr %i.s, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.u, align 8, !tbaa !30
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i

_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i: ; preds = %bb.i, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8    ; 2 uses
  %.not2.i.i = icmp eq ptr %i.w, null
  br i1 %.not2.i.i, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.w)
  br label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit

end_hunk_0
