inline.NumInlined: 86
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@tt_cmap4_validate:bb.a
bb.am:                                            ; preds = %bb.al
  %i.fk = icmp ult ptr %i.ey, %i.cq
  br i1 %i.fk, label %.sink.split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fl = sub nsw i32 %i.dy, %i.dq
  %i.fm = shl nsw i32 %i.fl, 1
  %i.fn = add nsw i32 %i.fm, 2
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fo
  %i.fq = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.fr = icmp ugt ptr %i.fp, %i.fq
  br i1 %i.fr, label %.sink.split, label %bb.ao

.sink.split:                                      ; preds = %bb.am, %bb.an, %bb.aj, %bb.ak
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %bb.al, %bb.an, %bb.ak
  %i.fs = load volatile i32, ptr %i.as, align 8, !tbaa !21
  %.not191 = icmp ne i32 %i.fs, 0
  %i.ft = icmp samesign ult i32 %i.dq, %i.dy
  %or.cond215 = select i1 %.not191, i1 %i.ft, i1 false
  br i1 %or.cond215, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ao, %bb.ar
  %.0204 = phi i32 [ %i.gf, %bb.ar ], [ %i.dq, %bb.ao ]
  %.0170203 = phi ptr [ %i.fu, %bb.ar ], [ %i.ey, %bb.ao ] ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0170203, i64 2
  %i.fv = load i8, ptr %.0170203, align 1, !tbaa !16
  %i.fw = zext i8 %i.fv to i32
  %i.fx = shl nuw nsw i32 %i.fw, 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.0170203, i64 1
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !16
  %i.ga = zext i8 %i.fz to i32
  %i.gb = or disjoint i32 %i.fx, %i.ga            ; 2 uses
  %.not192 = icmp eq i32 %i.gb, 0
  br i1 %.not192, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph
  %i.gc = add nuw nsw i32 %i.gb, %i.eg
  %i.gd = and i32 %i.gc, 65535
  %i.ge = load i32, ptr %i.dg, align 8, !tbaa !22
  %.not193 = icmp ult i32 %i.gd, %i.ge
  br i1 %.not193, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 16) #26
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph, %bb.aq, %bb.ap
  %i.gf = add nuw nsw i32 %.0204, 1               ; 2 uses
  %i.gg = icmp samesign ult i32 %i.gf, %i.dy
  br i1 %i.gg, label %.lr.ph, label %.loopexit, !llvm.loop !41

bb.as:                                            ; preds = %bb.ah
  %i.gh = load volatile i32, ptr %i.as, align 8, !tbaa !21
  %i.gi = icmp ugt i32 %i.gh, 1
  br i1 %i.gi, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gj = icmp eq i32 %.0173206, %i.dd
  %i.gk = icmp eq i32 %i.dq, 65535
  %or.cond9 = and i1 %i.gj, %i.gk
  %i.gl = icmp eq i32 %i.dy, 65535
  %or.cond11 = and i1 %or.cond9, %i.gl
  br i1 %or.cond11, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ar, %bb.ah, %bb.at, %bb.au, %bb.ao
  %i.gm = add nuw nsw i32 %.0173206, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.gm, %i.di
  br i1 %exitcond.not, label %._crit_edge, label %bb.z, !llvm.loop !42

._crit_edge:                                      ; preds = %.loopexit, %bb.y
  %.0175.lcssa = phi i32 [ 0, %bb.y ], [ %.1176, %.loopexit ]
  ret i32 %.0175.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @tt_cmap4_get_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4, ptr %i.d, align 8, !tbaa !25
  %i.e = load i8, ptr %i.c, align 1, !tbaa !16
  %i.f = zext i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
  %i.j = zext i8 %i.i to i64
  %i.k = or disjoint i64 %i.g, %i.j
  store i64 %i.k, ptr %1, align 8, !tbaa !28
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @tt_cmap6_char_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.d = load i8, ptr %i.c, align 1, !tbaa !16
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16
  %i.i = zext i8 %i.h to i32
  %i.j = or disjoint i32 %i.f, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i8, ptr %i.k, align 1, !tbaa !16
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q
  %i.s = sub i32 %1, %i.j                         ; 2 uses
  %i.t = icmp ult i32 %i.s, %i.r
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.v = shl nuw nsw i32 %i.s, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !16
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.aa, %i.ad
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.ae, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @tt_cmap6_char_next(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !3
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %i.k = zext i8 %i.j to i32
  %i.l = or disjoint i32 %i.h, %i.k               ; 2 uses
  %i.m = icmp ugt i32 %i.d, 65535
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16
  %i.t = zext i8 %i.s to i32
  %i.u = or disjoint i32 %i.q, %i.t               ; 2 uses
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.d, i32 %i.u) ; 2 uses
  %i.v = sub nsw i32 %spec.select, %i.u           ; 3 uses
  %i.w = icmp ult i32 %i.v, %i.l
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.y = shl nuw nsw i32 %i.v, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.043 = phi i32 [ %i.ak, %bb.d ], [ %i.v, %.lr.ph.preheader ]
  %.03342 = phi ptr [ %i.ab, %bb.d ], [ %i.aa, %.lr.ph.preheader ] ; 3 uses
  %.13641 = phi i32 [ %i.aj, %bb.d ], [ %spec.select, %.lr.ph.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.03342, i64 2
  %i.ac = load i8, ptr %.03342, align 1, !tbaa !16
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = getelementptr inbounds nuw i8, ptr %.03342, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah            ; 2 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %exitcond = icmp eq i32 %.13641, 65535
  br i1 %exitcond, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = add nuw nsw i32 %.13641, 1
  %i.ak = add nuw nsw i32 %.043, 1                ; 2 uses
  %i.al = icmp ult i32 %i.ak, %i.l
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %i.ai, %.lr.ph ], [ 0, %bb.d ]
  %.032 = phi i32 [ 0, %bb.b ], [ %.13641, %.lr.ph ], [ 0, %bb.d ]
  store i32 %.032, ptr %1, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %._crit_edge
  %.031 = phi i32 [ 0, %bb.a ], [ %.1, %._crit_edge ], [ 0, %bb.c ]
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tt_cmap6_validate(ptr nofree noundef readonly captures(address) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.c = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = icmp ugt ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %i.k = zext i8 %i.j to i32
  %i.l = or disjoint i32 %i.h, %i.k               ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !16
  %i.s = zext i8 %i.r to i32
  %i.t = or disjoint i32 %i.p, %i.s               ; 3 uses
  %i.u = zext nneg i32 %i.l to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %i.w = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.x = icmp ugt ptr %i.v, %i.w
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = shl nuw nsw i32 %i.t, 1
  %i.z = add nuw nsw i32 %i.y, 10
  %i.aa = icmp samesign ult i32 %i.l, %i.z
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ac = load volatile i32, ptr %i.ab, align 8, !tbaa !21
  %.not = icmp eq i32 %i.ac, 0
  %.not2628 = icmp eq i32 %i.t, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not2628
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 224
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.030 = phi ptr [ %i.a, %.lr.ph ], [ %i.ae, %bb.i ] ; 3 uses
  %.02529 = phi i32 [ %i.t, %.lr.ph ], [ %i.an, %bb.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.030, i64 2
  %i.af = load i8, ptr %.030, align 1, !tbaa !16
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.030, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ah, %i.ak
  %i.am = load i32, ptr %i.ad, align 8, !tbaa !22
  %.not27 = icmp ult i32 %i.al, %i.am
  br i1 %.not27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 16) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.an = add nsw i32 %.02529, -1                 ; 2 uses
  %.not26 = icmp eq i32 %i.an, 0
  br i1 %.not26, label %.loopexit, label %bb.g, !llvm.loop !44

.loopexit:                                        ; preds = %bb.i, %bb.f
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @tt_cmap6_get_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 6, ptr %i.d, align 8, !tbaa !25
  %i.e = load i8, ptr %i.c, align 1, !tbaa !16
  %i.f = zext i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
  %i.j = zext i8 %i.i to i64
  %i.k = or disjoint i64 %i.g, %i.j
  store i64 %i.k, ptr %1, align 8, !tbaa !28
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @tt_cmap8_char_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8204
  %i.d = load i32, ptr %i.c, align 1              ; 2 uses
  %.not57 = icmp eq i32 %i.d, 0
  br i1 %.not57, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8208
  br label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.03759, i64 12
  %i.h = add i32 %.03858, -1                      ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !45

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.03759 = phi ptr [ %i.g, %bb.b ], [ %i.f, %.lr.ph.preheader ] ; 4 uses
  %.03858 = phi i32 [ %i.h, %bb.b ], [ %i.e, %.lr.ph.preheader ]
  %i.i = load i32, ptr %.03759, align 1
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)  ; 2 uses
  %i.k = icmp ult i32 %1, %i.j
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.03759, i64 4
  %i.m = load i32, ptr %i.l, align 1
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  %.not41 = icmp ugt i32 %1, %i.n
  br i1 %.not41, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.03759, i64 8
  %i.p = load i32, ptr %i.o, align 1
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)  ; 2 uses
  %i.r = sub i32 %1, %i.j                         ; 2 uses
  %i.s = xor i32 %i.r, -1
  %i.t = icmp ugt i32 %i.q, %i.s
  %i.u = add i32 %i.q, %i.r
  %spec.select = select i1 %i.t, i32 0, i32 %i.u
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ %spec.select, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, -1) i32 @tt_cmap8_char_next(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8204
  %i.g = load i32, ptr %i.f, align 1              ; 2 uses
  %.not71 = icmp eq i32 %i.g, 0
  br i1 %.not71, label %.loopexit61, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.b
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8208
  %i.j = add nuw i32 %i.b, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph75, %.loopexit
  %.05074 = phi i32 [ %i.j, %.lr.ph75 ], [ %.265, %.loopexit ]
end_hunk_0
