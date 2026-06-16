inline.NumInlined: 1817
inline.NumDeleted: 298
begin_hunk_0_@_Znam

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail9IEEEFloat15freeSignificandEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !7
  %i.d = add i32 %i.c, -64
  %i.e = icmp ult i32 %i.d, -128
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail9IEEEFloat6assignERKS1_(ptr noundef nonnull align 8 dereferenceable(24) initializes((16, 18)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = and i8 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.e = load i8, ptr %i.d, align 2
  %i.f = and i8 %i.e, -9
  %i.g = or disjoint i8 %i.f, %i.c                ; 2 uses
  store i8 %i.g, ptr %i.d, align 2
  %i.h = load i8, ptr %i.a, align 2               ; 2 uses
  %i.i = and i8 %i.h, 7                           ; 3 uses
  %i.j = and i8 %i.g, -8
  %i.k = or disjoint i8 %i.j, %i.i
  store i8 %i.k, ptr %i.d, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i16, ptr %i.l, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.m, ptr %i.n, align 8, !tbaa !19
  %i.o = and i8 %i.h, 6
  %spec.select.i.not.i = icmp ne i8 %i.o, 0
  %i.p = icmp ne i8 %i.i, 3
  %i.q = and i1 %spec.select.i.not.i, %i.p
  %i.r = icmp eq i8 %i.i, 1
  %or.cond = or i1 %i.r, %i.q
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %0, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7    ; 2 uses
  %i.v = add i32 %i.u, -64
  %i.w = icmp ult i32 %i.v, -128
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %.0.i.i = select i1 %i.w, ptr %i.y, ptr %i.x
  %i.z = load ptr, ptr %1, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  %i.ac = add i32 %i.ab, -64
  %i.ad = icmp ult i32 %i.ac, -128
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %.0.i.i.i = select i1 %i.ad, ptr %i.af, ptr %i.ae
  %i.ag = add i32 %i.u, 64
  %i.ah = lshr i32 %i.ag, 6
  tail call void @_ZN4llvh5APInt8tcAssignEPmPKmj(ptr noundef %.0.i.i, ptr noundef %.0.i.i.i, i32 noundef %i.ah) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail9IEEEFloat15copySignificandERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !7    ; 2 uses
  %i.d = add i32 %i.c, -64
  %i.e = icmp ult i32 %i.d, -128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.0.i = select i1 %i.e, ptr %i.g, ptr %i.f
  %i.h = load ptr, ptr %1, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %i.k = add i32 %i.j, -64
  %i.l = icmp ult i32 %i.k, -128
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.0.i.i = select i1 %i.l, ptr %i.n, ptr %i.m
  %i.o = add i32 %i.c, 64
  %i.p = lshr i32 %i.o, 6
  tail call void @_ZN4llvh5APInt8tcAssignEPmPKmj(ptr noundef %.0.i, ptr noundef %.0.i.i, i32 noundef %i.p) #25
  ret void
}

declare void @_ZN4llvh5APInt8tcAssignEPmPKmj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN4llvh6detail9IEEEFloat16significandPartsEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(24) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !7
  %i.d = add i32 %i.c, -64
  %i.e = icmp ult i32 %i.d, -128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.0 = select i1 %i.e, ptr %i.g, ptr %i.f
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK4llvh6detail9IEEEFloat16significandPartsEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(24) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !7
  %i.d = add i32 %i.c, -64
  %i.e = icmp ult i32 %i.d, -128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.0.i = select i1 %i.e, ptr %i.g, ptr %i.f
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = and i8 %i.b, -16
  %i.d = select i1 %2, i8 9, i8 1
  %i.e = or disjoint i8 %i.d, %i.c
  store i8 %i.e, ptr %i.a, align 2
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7    ; 2 uses
  %i.i = add i32 %i.h, -64
  %i.j = icmp ult i32 %i.i, -128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %.0.i = select i1 %i.j, ptr %i.l, ptr %i.k      ; 18 uses
  %i.m = add i32 %i.h, 64
  %i.n = lshr i32 %i.m, 6                         ; 11 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.thread38, label %bb.b

.thread38:                                        ; preds = %bb.a
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef %.0.i, i64 noundef 0, i32 noundef %i.n) #25
  %.pre42 = load ptr, ptr %0, align 8, !tbaa !13
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre42, i64 4
  %.pre43 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !7
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !20   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = add nuw nsw i64 %i.q, 63
  %i.s = lshr i64 %i.r, 6
  %i.t = trunc nuw nsw i64 %i.s to i32            ; 2 uses
  %i.u = icmp samesign ugt i32 %i.n, %i.t
  br i1 %i.u, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef %.0.i, i64 noundef 0, i32 noundef %i.n) #25
  %.pre = load i32, ptr %i.o, align 8, !tbaa !20  ; 2 uses
  %.pre44 = zext i32 %.pre to i64
  %.pre45 = add nuw nsw i64 %.pre44, 63
  %.pre47 = lshr i64 %.pre45, 6
  %.pre49 = trunc nuw nsw i64 %.pre47 to i32
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %.pre-phi50 = phi i32 [ %i.t, %bb.b ], [ %.pre49, %bb.c ]
  %i.v = phi i32 [ %i.p, %bb.b ], [ %.pre, %bb.c ]
  %i.w = icmp ult i32 %i.v, 65
  %i.x = load ptr, ptr %3, align 8
  %.0.i30 = select i1 %i.w, ptr %3, ptr %i.x
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %.pre-phi50)
  tail call void @_ZN4llvh5APInt8tcAssignEPmPKmj(ptr noundef %.0.i, ptr noundef %.0.i30, i32 noundef %.sroa.speculated) #25
  %i.y = load ptr, ptr %0, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7   ; 5 uses
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  %i.ac = lshr i32 %i.ab, 6                       ; 4 uses
  %i.ad = and i32 %i.ab, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask, -1
  %i.ag = zext nneg i32 %i.ac to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !22
  %i.aj = and i64 %i.ai, %i.af
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !22
  %.039 = add nuw nsw i32 %i.ac, 1                ; 4 uses
  %.not2940 = icmp eq i32 %.039, %i.n
  br i1 %.not2940, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread
  %i.ak = xor i32 %i.ac, -1
  %i.al = add nsw i32 %i.n, %i.ak                 ; 3 uses
  %min.iters.check = icmp ugt i32 %i.al, 13
  %i.am = add nsw i32 %i.n, -1
  %.not54 = icmp ugt i32 %i.am, %i.ac
  %or.cond = select i1 %min.iters.check, i1 %.not54, i1 false
  br i1 %or.cond, label %vector.ph, label %.lr.ph.preheader55

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %i.al, -4                      ; 3 uses
  %i.an = add nsw i32 %.039, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = add i32 %.039, %index
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <2 x i64> zeroinitializer, ptr %i.aq, align 8, !tbaa !22
  store <2 x i64> zeroinitializer, ptr %i.ar, align 8, !tbaa !22
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.as = icmp eq i32 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.al, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader55

.lr.ph.preheader55:                               ; preds = %.lr.ph.preheader, %middle.block
  %.041.ph = phi i32 [ %.039, %.lr.ph.preheader ], [ %i.an, %middle.block ] ; 4 uses
  %i.at = sub nsw i32 %i.n, %.041.ph
  %xtraiter = and i32 %i.at, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader55, %.lr.ph.prol
  %.041.prol = phi i32 [ %.0.prol, %.lr.ph.prol ], [ %.041.ph, %.lr.ph.preheader55 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader55 ]
  %i.au = zext i32 %.041.prol to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.au
  store i64 0, ptr %i.av, align 8, !tbaa !22
  %.0.prol = add i32 %.041.prol, 1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !28

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader55
  %.041.unr = phi i32 [ %.041.ph, %.lr.ph.preheader55 ], [ %.0.prol, %.lr.ph.prol ]
  %i.aw = sub nsw i32 %.041.ph, %i.n
  %i.ax = icmp ugt i32 %i.aw, -8
  br i1 %i.ax, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.041 = phi i32 [ %.0.7, %.lr.ph ], [ %.041.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ay = zext i32 %.041 to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ay
  store i64 0, ptr %i.az, align 8, !tbaa !22
  %.0 = add i32 %.041, 1
  %i.ba = zext i32 %.0 to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ba
  store i64 0, ptr %i.bb, align 8, !tbaa !22
  %.0.1 = add i32 %.041, 2
  %i.bc = zext i32 %.0.1 to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.bc
  store i64 0, ptr %i.bd, align 8, !tbaa !22
  %.0.2 = add i32 %.041, 3
  %i.be = zext i32 %.0.2 to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.be
  store i64 0, ptr %i.bf, align 8, !tbaa !22
  %.0.3 = add i32 %.041, 4
  %i.bg = zext i32 %.0.3 to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.bg
  store i64 0, ptr %i.bh, align 8, !tbaa !22
  %.0.4 = add i32 %.041, 5
  %i.bi = zext i32 %.0.4 to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.bi
  store i64 0, ptr %i.bj, align 8, !tbaa !22
  %.0.5 = add i32 %.041, 6
  %i.bk = zext i32 %.0.5 to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.bk
  store i64 0, ptr %i.bl, align 8, !tbaa !22
  %.0.6 = add i32 %.041, 7
  %i.bm = zext i32 %.0.6 to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.bm
  store i64 0, ptr %i.bn, align 8, !tbaa !22
  %.0.7 = add i32 %.041, 8                        ; 2 uses
  %.not29.7 = icmp eq i32 %.0.7, %i.n
  br i1 %.not29.7, label %.loopexit, label %.lr.ph, !llvm.loop !30

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.thread, %.thread38
  %i.bo = phi i32 [ %.pre43, %.thread38 ], [ %i.aa, %.thread ], [ %i.aa, %middle.block ], [ %i.aa, %.lr.ph ], [ %i.aa, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.bp = add i32 %i.bo, -2                       ; 2 uses
  br i1 %1, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %.loopexit
  tail call void @_ZN4llvh5APInt10tcClearBitEPmj(ptr noundef %.0.i, i32 noundef %i.bp) #25
  %i.bq = tail call noundef zeroext i1 @_ZN4llvh5APInt8tcIsZeroEPKmj(ptr noundef %.0.i, i32 noundef %i.n) #25
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.br = add i32 %i.bo, -3
  br label %.sink.split

.sink.split:                                      ; preds = %.loopexit, %bb.e
  %.sink = phi i32 [ %i.br, %bb.e ], [ %i.bp, %.loopexit ]
  tail call void @_ZN4llvh5APInt8tcSetBitEPmj(ptr noundef %.0.i, i32 noundef %.sink) #25
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %i.bs = load ptr, ptr %0, align 8, !tbaa !13
  %i.bt = icmp eq ptr %i.bs, @_ZN4llvhL20semX87DoubleExtendedE
  br i1 %i.bt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bu = add i32 %i.bo, -1
  tail call void @_ZN4llvh5APInt8tcSetBitEPmj(ptr noundef %.0.i, i32 noundef %i.bu) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

declare void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN4llvh5APInt10tcClearBitEPmj(ptr noundef, i32 noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN4llvh5APInt8tcIsZeroEPKmj(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN4llvh5APInt8tcSetBitEPmj(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh6detail9IEEEFloataSERKS1_(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZN4llvh6detail9IEEEFloat6assignERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !13     ; 3 uses
  %.not6 = icmp eq ptr %i.a, %i.b
  br i1 %.not6, label %_ZN4llvh6detail9IEEEFloat10initializeEPKNS_12fltSemanticsE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = add i32 %i.d, -64
  %i.f = icmp ult i32 %i.e, -128
  br i1 %i.f, label %bb.d, label %_ZN4llvh6detail9IEEEFloat15freeSignificandEv.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN4llvh6detail9IEEEFloat15freeSignificandEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #24
  %.pre = load ptr, ptr %1, align 8, !tbaa !13
  br label %_ZN4llvh6detail9IEEEFloat15freeSignificandEv.exit

_ZN4llvh6detail9IEEEFloat15freeSignificandEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.j = phi ptr [ %i.b, %bb.c ], [ %i.b, %bb.d ], [ %.pre, %bb.e ] ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = add i32 %i.l, 64                         ; 2 uses
  %i.n = icmp ugt i32 %i.m, 127
  br i1 %i.n, label %bb.f, label %_ZN4llvh6detail9IEEEFloat10initializeEPKNS_12fltSemanticsE.exit

bb.f:                                             ; preds = %_ZN4llvh6detail9IEEEFloat15freeSignificandEv.exit
  %i.o = lshr i32 %i.m, 3
  %i.p = and i32 %i.o, 536870904
  %i.q = zext nneg i32 %i.p to i64
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !18
  br label %_ZN4llvh6detail9IEEEFloat10initializeEPKNS_12fltSemanticsE.exit

_ZN4llvh6detail9IEEEFloat10initializeEPKNS_12fltSemanticsE.exit: ; preds = %bb.f, %_ZN4llvh6detail9IEEEFloat15freeSignificandEv.exit, %bb.b
  %i.t = phi ptr [ %i.j, %bb.f ], [ %i.j, %_ZN4llvh6detail9IEEEFloat15freeSignificandEv.exit ], [ %i.a, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.v = load i8, ptr %i.u, align 2
  %i.w = and i8 %i.v, 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.y = load i8, ptr %i.x, align 2
  %i.z = and i8 %i.y, -9
  %i.aa = or disjoint i8 %i.z, %i.w               ; 2 uses
  store i8 %i.aa, ptr %i.x, align 2
  %i.ab = load i8, ptr %i.u, align 2              ; 2 uses
  %i.ac = and i8 %i.ab, 7                         ; 3 uses
  %i.ad = and i8 %i.aa, -8
  %i.ae = or disjoint i8 %i.ad, %i.ac
  store i8 %i.ae, ptr %i.x, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.ag, ptr %i.ah, align 8, !tbaa !19
  %i.ai = and i8 %i.ab, 6
  %spec.select.i.not.i.i = icmp ne i8 %i.ai, 0
  %i.aj = icmp ne i8 %i.ac, 3
  %i.ak = and i1 %spec.select.i.not.i.i, %i.aj
  %i.al = icmp eq i8 %i.ac, 1
  %or.cond.i = or i1 %i.al, %i.ak
  br i1 %or.cond.i, label %bb.g, label %_ZN4llvh6detail9IEEEFloat6assignERKS1_.exit

bb.g:                                             ; preds = %_ZN4llvh6detail9IEEEFloat10initializeEPKNS_12fltSemanticsE.exit
end_hunk_0
begin_hunk_1_@_ZN4llvh6detail9IEEEFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE:bb.a
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6
  %i.f = trunc nuw nsw i64 %i.e to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i32 %i.b, ptr %i.g, align 8, !tbaa !20
  %i.h = icmp ult i32 %i.b, 65
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %1, align 8, !tbaa !18     ; 2 uses
  store i64 %i.i, ptr %4, align 8, !tbaa !18
  %i.j = inttoptr i64 %i.i to ptr
  br label %_ZN4llvh5APIntC2ERKS0_.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvh5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %1) #25
  %.pre12.pre = load i32, ptr %i.g, align 8, !tbaa !20
  %.pre14.pre = load ptr, ptr %4, align 8
  br label %_ZN4llvh5APIntC2ERKS0_.exit

_ZN4llvh5APIntC2ERKS0_.exit:                      ; preds = %bb.b, %bb.c
  %.pre14 = phi ptr [ %i.j, %bb.b ], [ %.pre14.pre, %bb.c ] ; 4 uses
  %.pre12 = phi i32 [ %i.b, %bb.b ], [ %.pre12.pre, %bb.c ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.l = load i8, ptr %i.k, align 2               ; 2 uses
  %i.m = and i8 %i.l, -9
  store i8 %i.m, ptr %i.k, align 2
  br i1 %2, label %bb.d, label %_ZN4llvh5APIntD2Ev.exit6

bb.d:                                             ; preds = %_ZN4llvh5APIntC2ERKS0_.exit
  %i.n = add i32 %.pre12, -1                      ; 2 uses
  %i.o = and i32 %i.n, 63
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw i64 1, %i.p
  %i.r = icmp ult i32 %.pre12, 65                 ; 2 uses
  %i.s = lshr i32 %i.n, 6
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre14, i64 %i.t
  %.in.i.i.i = select i1 %i.r, ptr %4, ptr %i.u
  %i.v = load i64, ptr %.in.i.i.i, align 8, !tbaa !18
  %i.w = and i64 %i.q, %i.v
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %_ZN4llvh5APIntD2Ev.exit6, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %.pre14 to i64
  %i.y = or i8 %i.l, 8
  store i8 %i.y, ptr %i.k, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 %.pre12, ptr %i.z, align 8, !tbaa !20
  br i1 %i.r, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i.i.i, label %_ZN4llvh5APIntC2ERKS0_.exit5

_ZN4llvh5APIntC2ERKS0_.exit5:                     ; preds = %bb.e
  call void @_ZN4llvh5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %4) #25
  %.pr = load i32, ptr %i.z, align 8, !tbaa !20, !noalias !60 ; 2 uses
  %i.aa = icmp ult i32 %.pr, 65
  br i1 %i.aa, label %_ZN4llvh5APIntC2ERKS0_.exit5._ZN4llvh5APInt15clearUnusedBitsEv.exit.i.i.i_crit_edge, label %bb.f

_ZN4llvh5APIntC2ERKS0_.exit5._ZN4llvh5APInt15clearUnusedBitsEv.exit.i.i.i_crit_edge: ; preds = %_ZN4llvh5APIntC2ERKS0_.exit5
  %.pre = load i64, ptr %5, align 8, !tbaa !18, !noalias !60
  br label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i.i.i

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i.i.i:     ; preds = %bb.e, %_ZN4llvh5APIntC2ERKS0_.exit5._ZN4llvh5APInt15clearUnusedBitsEv.exit.i.i.i_crit_edge
  %i.ab = phi i64 [ %.pre, %_ZN4llvh5APIntC2ERKS0_.exit5._ZN4llvh5APInt15clearUnusedBitsEv.exit.i.i.i_crit_edge ], [ %i.x, %bb.e ]
  %i.ac = phi i32 [ %.pr, %_ZN4llvh5APIntC2ERKS0_.exit5._ZN4llvh5APInt15clearUnusedBitsEv.exit.i.i.i_crit_edge ], [ %.pre12, %bb.e ]
  %i.ad = xor i64 %i.ab, -1
  %i.ae = sub nsw i32 0, %i.ac
  %i.af = and i32 %i.ae, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = lshr i64 -1, %i.ag
  %i.ai = and i64 %i.ah, %i.ad
  store i64 %i.ai, ptr %5, align 8, !tbaa !18, !noalias !60
  br label %_ZN4llvhngENS_5APIntE.exit

bb.f:                                             ; preds = %_ZN4llvh5APIntC2ERKS0_.exit5
  call void @_ZN4llvh5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %5) #25, !noalias !60
  br label %_ZN4llvhngENS_5APIntE.exit

_ZN4llvhngENS_5APIntE.exit:                       ; preds = %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i.i.i, %bb.f
  %i.aj = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %5) #25, !noalias !60 ; 0 uses
  %i.ak = load i32, ptr %i.z, align 8, !tbaa !20, !noalias !60 ; 7 uses
  %i.al = load i64, ptr %5, align 8, !noalias !60 ; 6 uses
  store i32 0, ptr %i.z, align 8, !tbaa !20, !noalias !60
  %i.am = load i32, ptr %i.g, align 8, !tbaa !20
  %i.an = icmp ult i32 %i.am, 65
  br i1 %i.an, label %_ZN4llvh5APIntD2Ev.exit.thread, label %bb.g

_ZN4llvh5APIntD2Ev.exit.thread:                   ; preds = %_ZN4llvhngENS_5APIntE.exit
  store i64 %i.al, ptr %4, align 8
  store i32 %i.ak, ptr %i.g, align 8, !tbaa !20
  %i.ao = inttoptr i64 %i.al to ptr
  br label %_ZN4llvh5APIntD2Ev.exit6

bb.g:                                             ; preds = %_ZN4llvhngENS_5APIntE.exit
  %i.ap = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN4llvh5APIntD2Ev.exit.thread20, label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit.thread20:                 ; preds = %bb.g
  store i64 %i.al, ptr %4, align 8
  store i32 %i.ak, ptr %i.g, align 8, !tbaa !20
  %i.ar = inttoptr i64 %i.al to ptr
  br label %_ZN4llvh5APIntD2Ev.exit6

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #24
  %.pr9.pre = load i32, ptr %i.z, align 8, !tbaa !20
  %i.as = icmp ugt i32 %.pr9.pre, 64
  store i64 %i.al, ptr %4, align 8
  store i32 %i.ak, ptr %i.g, align 8, !tbaa !20
  %i.at = inttoptr i64 %i.al to ptr               ; 2 uses
  br i1 %i.as, label %bb.h, label %_ZN4llvh5APIntD2Ev.exit6

bb.h:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.au = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN4llvh5APIntD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.au) #24
  %.pre11 = load i32, ptr %i.g, align 8, !tbaa !20
  %.pre13 = load ptr, ptr %4, align 8
  br label %_ZN4llvh5APIntD2Ev.exit6

_ZN4llvh5APIntD2Ev.exit6:                         ; preds = %_ZN4llvh5APIntD2Ev.exit.thread20, %bb.i, %bb.h, %_ZN4llvh5APIntD2Ev.exit, %_ZN4llvh5APIntD2Ev.exit.thread, %bb.d, %_ZN4llvh5APIntC2ERKS0_.exit
  %i.aw = phi ptr [ %.pre13, %bb.i ], [ %i.at, %bb.h ], [ %i.at, %_ZN4llvh5APIntD2Ev.exit ], [ %i.ao, %_ZN4llvh5APIntD2Ev.exit.thread ], [ %.pre14, %bb.d ], [ %.pre14, %_ZN4llvh5APIntC2ERKS0_.exit ], [ %i.ar, %_ZN4llvh5APIntD2Ev.exit.thread20 ]
  %i.ax = phi i32 [ %.pre11, %bb.i ], [ %i.ak, %bb.h ], [ %i.ak, %_ZN4llvh5APIntD2Ev.exit ], [ %i.ak, %_ZN4llvh5APIntD2Ev.exit.thread ], [ %.pre12, %bb.d ], [ %.pre12, %_ZN4llvh5APIntC2ERKS0_.exit ], [ %i.ak, %_ZN4llvh5APIntD2Ev.exit.thread20 ]
  %i.ay = icmp ult i32 %i.ax, 65
  %.0.i = select i1 %i.ay, ptr %4, ptr %i.aw
  %i.az = call noundef i32 @_ZN4llvh6detail9IEEEFloat24convertFromUnsignedPartsEPKmjNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %.0.i, i32 noundef %i.f, i32 noundef %3)
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !20
  %i.bb = icmp ugt i32 %i.ba, 64
  br i1 %i.bb, label %bb.j, label %_ZN4llvh5APIntD2Ev.exit7

bb.j:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit6
  %i.bc = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZN4llvh5APIntD2Ev.exit7, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #24
  br label %_ZN4llvh5APIntD2Ev.exit7

_ZN4llvh5APIntD2Ev.exit7:                         ; preds = %_ZN4llvh5APIntD2Ev.exit6, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i32 %i.az
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 17) i32 @_ZNK4llvh6detail9IEEEFloat28convertToSignExtendedIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %6) local_unnamed_addr #2 align 2 {
bb.a:
  store i8 0, ptr %6, align 1, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 6 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = and i8 %i.b, 7                           ; 2 uses
  %switch = icmp samesign ult i8 %i.c, 2
  br i1 %switch, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %3, 63
  %i.e = lshr i32 %i.d, 6                         ; 9 uses
  %i.f = icmp eq i8 %i.c, 3
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef %1, i64 noundef 0, i32 noundef %i.e) #25
  %i.g = load i8, ptr %i.a, align 2
  %i.h = lshr i8 %i.g, 3
  %.lobit = and i8 %i.h, 1
  %i.i = xor i8 %.lobit, 1
  br label %.critedge.sink.split

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7    ; 4 uses
  %i.m = add i32 %i.l, -64
  %i.n = icmp ult i32 %i.m, -128
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8
  %.0.i.i = select i1 %i.n, ptr %i.p, ptr %i.o    ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !19   ; 2 uses
  %i.s = icmp slt i16 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef %1, i64 noundef 0, i32 noundef %i.e) #25
  %i.t = load ptr, ptr %0, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7
  %i.w = load i16, ptr %i.q, align 8, !tbaa !19
  %i.x = xor i16 %i.w, -1
  %i.y = sext i16 %i.x to i32
  %i.z = add i32 %i.v, %i.y
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %7 = zext nneg i16 %i.r to i32                  ; 2 uses
  %8 = add nuw nsw i32 %7, 1                      ; 4 uses
  %.not = icmp ugt i32 %3, %7
  br i1 %.not, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %9 = icmp ult i32 %8, %i.l
  br i1 %9, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.aa = sub nuw i32 %i.l, %8                    ; 2 uses
  tail call void @_ZN4llvh5APInt9tcExtractEPmjPKmjj(ptr noundef %1, i32 noundef %i.e, ptr noundef %.0.i.i, i32 noundef %8, i32 noundef %i.aa) #25
  br label %bb.i

.thread:                                          ; preds = %bb.g
  tail call void @_ZN4llvh5APInt9tcExtractEPmjPKmjj(ptr noundef %1, i32 noundef %i.e, ptr noundef %.0.i.i, i32 noundef %i.l, i32 noundef 0) #25
  %i.ab = load ptr, ptr %0, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = sub i32 %8, %i.ad
  tail call void @_ZN4llvh5APInt11tcShiftLeftEPmjj(ptr noundef %1, i32 noundef %i.e, i32 noundef %i.ae) #25
  br label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit

bb.i:                                             ; preds = %bb.h, %bb.e
  %.246 = phi i32 [ %i.z, %bb.e ], [ %i.aa, %bb.h ] ; 6 uses
  %.not53 = icmp eq i32 %.246, 0
  br i1 %.not53, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %0, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = add i32 %i.ah, 64                       ; 2 uses
  %i.aj = lshr i32 %i.ai, 6
  %i.ak = tail call noundef i32 @_ZN4llvh5APInt5tcLSBEPKmj(ptr noundef %.0.i.i, i32 noundef %i.aj) #25 ; 2 uses
  %.not.i = icmp ugt i32 %.246, %i.ak
  br i1 %.not.i, label %bb.k, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit

bb.k:                                             ; preds = %bb.j
  %i.al = add nuw i32 %i.ak, 1
  %i.am = icmp eq i32 %.246, %i.al
  br i1 %i.am, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = and i32 %i.ai, -64
  %.not12.i = icmp ugt i32 %.246, %i.an
  br i1 %.not12.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = add i32 %.246, -1
  %i.ap = tail call noundef i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr noundef %.0.i.i, i32 noundef %i.ao) #25
  %.not13.i = icmp eq i32 %i.ap, 0
  br i1 %.not13.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k, %bb.m
  %.not85 = phi i1 [ false, %bb.m ], [ false, %bb.k ], [ true, %bb.n ]
  %.0.i.ph = phi i32 [ 3, %bb.m ], [ 2, %bb.k ], [ 1, %bb.n ]
  switch i32 %5, label %bb.u [
    i32 4, label %bb.p
    i32 0, label %bb.q
    i32 3, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit
    i32 1, label %bb.t
    i32 2, label %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit
  ]

bb.p:                                             ; preds = %bb.o
  br i1 %.not85, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit, label %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread81

bb.q:                                             ; preds = %bb.o
  switch i32 %.0.i.ph, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit [
    i32 3, label %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread81
    i32 2, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.aq = load i8, ptr %i.a, align 2
  %i.ar = and i8 %i.aq, 7
  %.not8.i = icmp eq i8 %i.ar, 3
  br i1 %.not8.i, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = load ptr, ptr %0, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = add i32 %i.au, -64
  %i.aw = icmp ult i32 %i.av, -128
  %i.ax = load ptr, ptr %i.o, align 8
  %.0.i.i.i = select i1 %i.aw, ptr %i.ax, ptr %i.o
  %i.ay = tail call noundef i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr noundef %.0.i.i.i, i32 noundef %.246) #25
  %.not84 = icmp eq i32 %i.ay, 0
  br i1 %.not84, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit, label %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread81

bb.t:                                             ; preds = %bb.o
  %i.az = load i8, ptr %i.a, align 2
  %i.ba = and i8 %i.az, 8
  %.not.i63 = icmp eq i8 %i.ba, 0
  br i1 %.not.i63, label %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread81, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit

bb.u:                                             ; preds = %bb.o
  unreachable

_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit: ; preds = %bb.o
  %i.bb = load i8, ptr %i.a, align 2
  %i.bc = and i8 %i.bb, 8
  %.not83 = icmp eq i8 %i.bc, 0
  br i1 %.not83, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit, label %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread81

_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread81: ; preds = %bb.q, %bb.s, %bb.t, %bb.p, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit
  %i.bd = tail call noundef i64 @_ZN4llvh5APInt9tcAddPartEPmmj(ptr noundef %1, i64 noundef 1, i32 noundef %i.e) #25
  %.not55 = icmp eq i64 %i.bd, 0
  br i1 %.not55, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit, label %.critedge

_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit: ; preds = %bb.q, %bb.r, %bb.o, %bb.s, %bb.t, %bb.p, %bb.j, %.thread, %bb.i, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread81
  %i.be = phi i1 [ false, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread81 ], [ false, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit ], [ true, %.thread ], [ true, %bb.i ], [ true, %bb.j ], [ false, %bb.s ], [ false, %bb.p ], [ false, %bb.t ], [ false, %bb.o ], [ false, %bb.r ], [ false, %bb.q ] ; 2 uses
  %i.bf = tail call noundef i32 @_ZN4llvh5APInt5tcMSBEPKmj(ptr noundef %1, i32 noundef %i.e) #25 ; 2 uses
  %i.bg = add i32 %i.bf, 1                        ; 4 uses
  %i.bh = load i8, ptr %i.a, align 2
  %i.bi = and i8 %i.bh, 8
  %.not56 = icmp eq i8 %i.bi, 0
  br i1 %.not56, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit
  br i1 %4, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not58 = icmp eq i32 %i.bg, 0
  br i1 %.not58, label %bb.aa, label %.critedge

bb.x:                                             ; preds = %bb.v
  %i.bj = icmp eq i32 %i.bg, %3
  br i1 %i.bj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bk = tail call noundef i32 @_ZN4llvh5APInt5tcLSBEPKmj(ptr noundef %1, i32 noundef %i.e) #25
  %.not59.not = icmp eq i32 %i.bk, %i.bf
  br i1 %.not59.not, label %bb.aa, label %.critedge

bb.z:                                             ; preds = %bb.x
  %.old = icmp ugt i32 %i.bg, %3
  br i1 %.old, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.w
  tail call void @_ZN4llvh5APInt8tcNegateEPmj(ptr noundef %1, i32 noundef %i.e) #25
  br i1 %i.be, label %.critedge.sink.split, label %.critedge

bb.ab:                                            ; preds = %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit
  %i.bl = xor i1 %4, true
  %i.bm = zext i1 %i.bl to i32
  %i.bn = add i32 %3, %i.bm
  %.not57 = icmp ult i32 %i.bg, %i.bn             ; 2 uses
  %brmerge.not = and i1 %i.be, %.not57
  %.mux = select i1 %.not57, i32 16, i32 1
  br i1 %brmerge.not, label %.critedge.sink.split, label %.critedge

.critedge.sink.split:                             ; preds = %bb.aa, %bb.ab, %bb.c
  %.sink = phi i8 [ %i.i, %bb.c ], [ 1, %bb.ab ], [ 1, %bb.aa ]
  store i8 %.sink, ptr %6, align 1, !tbaa !35
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.ab, %bb.a, %bb.f, %bb.w, %bb.y, %bb.z, %bb.aa, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread81
  %.2 = phi i32 [ 1, %bb.z ], [ %.mux, %bb.ab ], [ 16, %bb.aa ], [ 1, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread81 ], [ 1, %bb.f ], [ 1, %bb.a ], [ 1, %bb.w ], [ 1, %bb.y ], [ 0, %.critedge.sink.split ]
  ret i32 %.2
}

declare void @_ZN4llvh5APInt9tcExtractEPmjPKmjj(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN4llvh5APInt8tcNegateEPmj(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh6detail9IEEEFloat24convertFromUnsignedPartsEPKmjNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = and i8 %i.b, -8
  %i.d = or disjoint i8 %i.c, 2
  store i8 %i.d, ptr %i.a, align 2
  %i.e = tail call noundef i32 @_ZN4llvh5APInt5tcMSBEPKmj(ptr noundef %1, i32 noundef %2) #25 ; 2 uses
  %i.f = add i32 %i.e, 1                          ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7    ; 6 uses
  %i.j = add i32 %i.i, -64
  %i.k = icmp ult i32 %i.j, -128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.0.i = select i1 %i.k, ptr %i.m, ptr %i.l      ; 2 uses
  %i.n = add i32 %i.i, 64
  %i.o = lshr i32 %i.n, 6                         ; 2 uses
  %.not = icmp ugt i32 %i.i, %i.f
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = trunc i32 %i.e to i16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.p, ptr %i.q, align 8, !tbaa !19
  %i.r = sub nuw i32 %i.f, %i.i                   ; 5 uses
  %i.s = tail call noundef i32 @_ZN4llvh5APInt5tcLSBEPKmj(ptr noundef %1, i32 noundef %2) #25 ; 2 uses
  %.not.i = icmp ugt i32 %i.r, %i.s
  br i1 %.not.i, label %bb.c, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit

bb.c:                                             ; preds = %bb.b
  %i.t = add nuw i32 %i.s, 1
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = shl i32 %2, 6
  %.not12.i = icmp ugt i32 %i.r, %i.v
  br i1 %.not12.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add i32 %i.r, -1
  %i.x = tail call noundef i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr noundef %1, i32 noundef %i.w) #25
  %.not13.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i, label %bb.f, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit

bb.f:                                             ; preds = %bb.e, %bb.d
end_hunk_1
