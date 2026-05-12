inline.NumInlined: 129
inline.NumDeleted: 58
begin_hunk_0_@_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie8setRangeEiijR10UErrorCode:bb.a
bb.l:                                             ; preds = %bb.k
  %i.an = shl nuw nsw i32 %i.ac, 2
  %.idx = zext nneg i32 %i.an to i64              ; 4 uses
  %i.ao = lshr exact i64 %.idx, 2
  %5 = sub nuw nsw i64 16, %i.ao                  ; 2 uses
  %min.iters.check = icmp samesign ugt i32 %i.ac, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.body

vector.body:                                      ; preds = %bb.l
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %n.vec = and i64 %5, 24                         ; 2 uses
  %i.ap = shl nuw nsw i64 %n.vec, 2
  %i.aq = add nuw nsw i64 %i.ap, %.idx
  %i.ar = getelementptr i8, ptr %i.am, i64 %.idx  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ar, align 4
  store <4 x i32> %broadcast.splat, ptr %i.as, align 4
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %_ZN6icu_7812_GLOBAL__N_19fillBlockEPjiij.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.l, %vector.body
end_hunk_0
