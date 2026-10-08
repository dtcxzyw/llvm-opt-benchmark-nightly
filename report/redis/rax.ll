Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/rax?download=true
inline.NumInlined: 90
inline.NumDeleted: 5
begin_hunk_0_@raxRemove:bb.a
  %i.ga = load i32, ptr %i.dy, align 4            ; 5 uses
  %i.gb = lshr i32 %i.ga, 3                       ; 2 uses
  %i.gc = zext nneg i32 %i.gb to i64              ; 2 uses
  %i.gd = xor i32 %i.gb, 3
  %.neg150 = add nuw nsw i32 %i.gd, 1
  %i.ge = and i32 %.neg150, 7
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = and i32 %i.ga, 4
  %.not151 = icmp eq i32 %i.gg, 0
  %i.gh = shl nuw nsw i64 %i.gc, 3
  %spec.select167 = select i1 %.not151, i64 %i.gh, i64 8
  %i.gi = and i32 %i.ga, 1
  %.not152 = icmp eq i32 %i.gi, 0
  %i.gj = shl i32 %i.ga, 2
  %i.gk = and i32 %i.gj, 8
  %i.gl = xor i32 %i.gk, 8
  %narrow208 = select i1 %.not152, i32 0, i32 %i.gl
  %i.gm = zext nneg i32 %narrow208 to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.gc
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gf
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %spec.select167
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gm
  %i.gr = and i32 %i.ga, 3
  %.not209 = icmp eq i32 %i.gr, 1
  %i.gs = select i1 %.not209, i64 -12, i64 -4
  %i.gt = getelementptr inbounds i8, ptr %i.gq, i64 %i.gs
  store i64 %i.fz, ptr %i.gt, align 8
  br i1 %.not119195, label %raxStackFree.exit180, label %bb.ad

bb.ad:                                            ; preds = %.thread202
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.i177194, i64 4
  %i.gv = load i32, ptr %.0.i177194, align 4
  %i.gw = lshr i32 %i.gv, 3                       ; 2 uses
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gx
  %i.gz = xor i32 %i.gw, 3
  %.neg.i183 = add nuw nsw i32 %i.gz, 1
  %i.ha = and i32 %.neg.i183, 7
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.hb
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %bb.ad
  %.0.i184 = phi ptr [ %i.hc, %bb.ad ], [ %i.he, %bb.ae ] ; 3 uses
  %.0.copyload.i185 = load ptr, ptr %.0.i184, align 8
  %i.hd = icmp eq ptr %.0.copyload.i185, %.lcssa
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i184, i64 8
  br i1 %i.hd, label %raxStackFree.exit180, label %bb.ae

raxStackFree.exit180.thread:                      ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %raxStackFree.exit

raxStackFree.exit180:                             ; preds = %bb.ae, %.thread202
  %.0.i184.lcssa.sink = phi ptr [ %0, %.thread202 ], [ %.0.i184, %bb.ae ]
  store ptr %i.dy, ptr %.0.i184.lcssa.sink, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %.critedge

.critedge:                                        ; preds = %.preheader210, %raxStackPop.exit178.thread, %bb.p, %bb.h, %raxStackFree.exit180, %.thread197, %bb.q
  %i.hf = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %.not.i187 = icmp eq ptr %i.hf, %i.f
  br i1 %.not.i187, label %raxStackFree.exit, label %bb.af

bb.af:                                            ; preds = %.critedge
  call void @zfree(ptr noundef %i.hf) #24
  br label %raxStackFree.exit

raxStackFree.exit:                                ; preds = %bb.af, %.critedge, %raxStackFree.exit180.thread, %bb.d, %bb.c
  %.4 = phi i32 [ 0, %bb.d ], [ 1, %raxStackFree.exit180.thread ], [ 0, %bb.c ], [ 1, %.critedge ], [ 1, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @raxInsert(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @raxGenericInsert(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @raxTryInsert(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @raxGenericInsert(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @raxFind(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #9 {
bb.a:
  %.06098.i = load ptr, ptr %0, align 8           ; 3 uses
  %i.a = load i32, ptr %.06098.i, align 4         ; 3 uses
  %i.b = icmp ugt i32 %i.a, 7
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.c, %i.b
  br i1 %i.d, label %.lr.ph103.i, label %.thread.i

.lr.ph103.i:                                      ; preds = %bb.a, %bb.f
  %i.e = phi i32 [ %i.ah, %bb.f ], [ %i.a, %bb.a ] ; 5 uses
  %.060101.i = phi ptr [ %.060.i, %bb.f ], [ %.06098.i, %bb.a ] ; 4 uses
  %.052100.i = phi i64 [ %.254.i, %bb.f ], [ 0, %bb.a ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.060101.i, i64 4 ; 3 uses
  %i.g = and i32 %i.e, 4
  %.not.i = icmp eq i32 %i.g, 0
  %i.h = lshr i32 %i.e, 3                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64                ; 6 uses
  br i1 %.not.i, label %.lr.ph91.i, label %.preheader80.i

.preheader80.i:                                   ; preds = %.lr.ph103.i
  %i.j = icmp ult i64 %.052100.i, %2
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

.lr.ph91.i:                                       ; preds = %.lr.ph103.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.052100.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !24
  br label %bb.c

.lr.ph.i:                                         ; preds = %.preheader80.i, %bb.b
  %.183.i = phi i64 [ %i.q, %bb.b ], [ 0, %.preheader80.i ] ; 3 uses
  %.15382.i = phi i64 [ %i.r, %bb.b ], [ %.052100.i, %.preheader80.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %.183.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.15382.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !24
  %.not68.i = icmp eq i8 %i.n, %i.p
  br i1 %.not68.i, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.q = add nuw nsw i64 %.183.i, 1               ; 3 uses
  %i.r = add nuw i64 %.15382.i, 1                 ; 3 uses
  %i.s = icmp samesign ult i64 %i.q, %i.i
  %i.t = icmp ult i64 %i.r, %2
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i, %.preheader80.i
  %.153.lcssa.i = phi i64 [ %.052100.i, %.preheader80.i ], [ %i.r, %bb.b ], [ %.15382.i, %.lr.ph.i ] ; 2 uses
  %.1.lcssa.i = phi i64 [ 0, %.preheader80.i ], [ %i.q, %bb.b ], [ %.183.i, %.lr.ph.i ] ; 2 uses
  %.not69.i = icmp eq i64 %.1.lcssa.i, %i.i
  br i1 %.not69.i, label %bb.f, label %.thread.loopexit.i.loopexit21

bb.c:                                             ; preds = %bb.d, %.lr.ph91.i
  %.290.i = phi i64 [ 0, %.lr.ph91.i ], [ %i.y, %bb.d ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %.290.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !24
  %i.x = icmp eq i8 %i.w, %i.l
  br i1 %i.x, label %._crit_edge92.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = add nuw nsw i64 %.290.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.y, %i.i
  br i1 %exitcond.not.i, label %.thread.i, label %bb.c, !llvm.loop !1

._crit_edge92.i:                                  ; preds = %bb.c
  %i.z = icmp eq i64 %.290.i, %i.i
  br i1 %i.z, label %.thread.loopexit.i.loopexit21, label %bb.e

bb.e:                                             ; preds = %._crit_edge92.i
  %i.aa = add nuw i64 %.052100.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %spec.select.i = phi i64 [ 0, %._crit_edge.i ], [ %.290.i, %bb.e ]
  %.254.i = phi i64 [ %.153.lcssa.i, %._crit_edge.i ], [ %i.aa, %bb.e ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.ac = xor i32 %i.h, 3
  %.neg.i = add nuw nsw i32 %i.ac, 1
  %i.ad = and i32 %.neg.i, 7
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %spec.select.i
  %.060.i = load ptr, ptr %i.ag, align 8          ; 3 uses
  %i.ah = load i32, ptr %.060.i, align 4          ; 3 uses
  %i.ai = icmp ugt i32 %i.ah, 7
  %i.aj = icmp ult i64 %.254.i, %2
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %i.ak, label %.lr.ph103.i, label %.thread.loopexit.i.loopexit21

.thread.loopexit.i.loopexit21:                    ; preds = %._crit_edge.i, %._crit_edge92.i, %bb.f
  %i.al = phi i32 [ %i.e, %._crit_edge92.i ], [ %i.e, %._crit_edge.i ], [ %i.ah, %bb.f ]
  %.060.lcssa.ph.i.ph = phi ptr [ %.060101.i, %._crit_edge92.i ], [ %.060101.i, %._crit_edge.i ], [ %.060.i, %bb.f ]
  %.456.ph.i.ph = phi i64 [ %.052100.i, %._crit_edge92.i ], [ %.153.lcssa.i, %._crit_edge.i ], [ %.254.i, %bb.f ]
  %.6.ph.i.ph = phi i64 [ %i.i, %._crit_edge92.i ], [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %bb.f ]
  %i.am = icmp ne i64 %.6.ph.i.ph, 0
  br label %.thread.i

.thread.i:                                        ; preds = %bb.d, %.thread.loopexit.i.loopexit21, %bb.a
  %i.an = phi i32 [ %i.a, %bb.a ], [ %i.al, %.thread.loopexit.i.loopexit21 ], [ %i.e, %bb.d ] ; 4 uses
  %.060.lcssa.i = phi ptr [ %.06098.i, %bb.a ], [ %.060.lcssa.ph.i.ph, %.thread.loopexit.i.loopexit21 ], [ %.060101.i, %bb.d ]
  %.456.i = phi i64 [ 0, %bb.a ], [ %.456.ph.i.ph, %.thread.loopexit.i.loopexit21 ], [ %.052100.i, %bb.d ]
  %.6.i = phi i1 [ false, %bb.a ], [ %i.am, %.thread.loopexit.i.loopexit21 ], [ true, %bb.d ]
  %i.ao = and i32 %i.an, 4
  %.not74.i.not = icmp ne i32 %i.ao, 0            ; 2 uses
  %.not = icmp eq i64 %.456.i, %2
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.thread.i
  %4 = and i1 %.6.i, %.not74.i.not
  %i.ap = and i32 %i.an, 1
  %.not9 = icmp eq i32 %i.ap, 0
  %or.cond11 = or i1 %.not9, %4
  br i1 %or.cond11, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not10 = icmp eq ptr %3, null
  br i1 %.not10, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = and i32 %i.an, 2
  %.not.i12 = icmp eq i32 %i.aq, 0
  br i1 %.not.i12, label %bb.j, label %raxGetData.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = lshr i32 %i.an, 3                       ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = xor i32 %i.ar, 3
  %.neg.i13 = add nuw nsw i32 %i.at, 1
  %i.au = and i32 %.neg.i13, 7
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.as, 3
  %spec.select.i14 = select i1 %.not74.i.not, i64 8, i64 %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %.060.lcssa.i, i64 %i.as
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %spec.select.i14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %.0.copyload.i = load ptr, ptr %i.ba, align 8
  br label %raxGetData.exit

raxGetData.exit:                                  ; preds = %bb.i, %bb.j
  %.0.i = phi ptr [ %.0.copyload.i, %bb.j ], [ null, %bb.i ]
  store ptr %.0.i, ptr %3, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %raxGetData.exit, %.thread.i, %bb.g
  %.0 = phi i32 [ 0, %.thread.i ], [ 0, %bb.g ], [ 1, %raxGetData.exit ], [ 1, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef nonnull ptr @raxFindParentLink(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %0, align 4
  %i.c = lshr i32 %i.b, 3                         ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  %i.f = xor i32 %i.c, 3
  %.neg = add nuw nsw i32 %i.f, 1
  %i.g = and i32 %.neg, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.i, %bb.a ], [ %i.k, %bb.b ]  ; 3 uses
  %.0.copyload = load ptr, ptr %.0, align 8
  %i.j = icmp eq ptr %.0.copyload, %1
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 8
  br i1 %i.j, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @raxRemoveChild(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load i32, ptr %1, align 4                ; 5 uses
  %i.d = and i32 %i.c, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 1
  %.not69 = icmp eq i32 %i.e, 0
  br i1 %.not69, label %raxGetData.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %i.c, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.d, label %raxSetData.exit

raxGetData.exit:                                  ; preds = %bb.b
  store i32 0, ptr %1, align 4
  br label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.g = lshr i32 %i.c, 3                         ; 2 uses
  %i.h = zext nneg i32 %i.g to i64
  %i.i = xor i32 %i.g, 3
  %.neg.i = add nuw nsw i32 %i.i, 1
  %i.j = and i32 %.neg.i, 7
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.0.copyload.i = load ptr, ptr %i.n, align 8    ; 2 uses
  %.not.i71 = icmp eq ptr %.0.copyload.i, null
  br i1 %.not.i71, label %raxSetData.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.copyload.i, ptr %i.o, align 8
  br label %raxSetData.exit

raxSetData.exit:                                  ; preds = %bb.c, %bb.d, %bb.e
  %.sink.i = phi i32 [ 1, %bb.e ], [ 3, %bb.d ], [ 3, %bb.c ]
  store i32 %.sink.i, ptr %1, align 4
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.q = lshr i32 %i.c, 3                         ; 3 uses
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.t = xor i32 %i.q, 3
  %.neg = add nuw nsw i32 %i.t, 1
  %i.u = and i32 %.neg, 7
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.055 = phi ptr [ %i.w, %bb.f ], [ %i.y, %bb.g ] ; 3 uses
  %.054 = phi ptr [ %i.p, %bb.f ], [ %i.z, %bb.g ] ; 3 uses
  %.0.copyload = load ptr, ptr %.055, align 8
  %i.x = icmp eq ptr %.0.copyload, %2
  %i.y = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.054, i64 1 ; 2 uses
  br i1 %i.x, label %bb.h, label %bb.g

bb.h:                                             ; preds = %bb.g
  %i.aa = ptrtoint ptr %.054 to i64
  %i.ab = ptrtoint ptr %i.p to i64
  %.neg59 = sub i64 %i.ab, %i.aa
  %i.ac = trunc i64 %.neg59 to i32
  %i.ad = add i32 %i.q, %i.ac                     ; 2 uses
  %i.ae = add i32 %i.ad, -1
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.054, ptr nonnull align 1 %i.z, i64 %i.af, i1 false)
  %i.ag = load i32, ptr %1, align 4               ; 3 uses
  %i.ah = and i32 %i.ag, 56
  %i.ai = icmp eq i32 %i.ah, 40                   ; 2 uses
  %.neg63 = select i1 %i.ai, i64 -8, i64 0
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = lshr i32 %i.ag, 3
  %i.ak = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.al = sub i32 %i.aj, %i.ad
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull align 8 %i.w, i64 %i.an, i1 false)
  %.pre = load i32, ptr %1, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = phi i32 [ %.pre, %bb.i ], [ %i.ag, %bb.h ]
  %i.ap = and i32 %i.ao, 3
  %.not79 = icmp eq i32 %i.ap, 1
  %i.aq = select i1 %.not79, i64 8, i64 0
  %i.ar = getelementptr inbounds i8, ptr %.055, i64 %.neg63
  %i.as = shl nsw i64 %i.af, 3
  %i.at = add nsw i64 %i.aq, %i.as
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull align 8 %i.y, i64 %i.at, i1 false)
  %i.au = load i32, ptr %1, align 4               ; 4 uses
  %i.av = add i32 %i.au, -8                       ; 2 uses
  store i32 %i.av, ptr %1, align 4
  %i.aw = lshr i32 %i.av, 3                       ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = add nuw nsw i64 %i.ax, 4
  %i.az = xor i32 %i.aw, 3
  %.neg64 = add nuw nsw i32 %i.az, 1
  %i.ba = and i32 %.neg64, 7
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = and i32 %i.au, 4
  %.not65 = icmp eq i32 %i.bc, 0
  %i.bd = shl nuw nsw i64 %i.ax, 3
  %i.be = select i1 %.not65, i64 %i.bd, i64 8
  %i.bf = and i32 %i.au, 1
  %.not66 = icmp eq i32 %i.bf, 0
  %i.bg = shl i32 %i.au, 2
  %i.bh = and i32 %i.bg, 8
  %i.bi = xor i32 %i.bh, 8
  %narrow = select i1 %.not66, i32 0, i32 %i.bi
  %i.bj = zext nneg i32 %narrow to i64
  %i.bk = add nuw nsw i64 %i.ay, %i.be
  %i.bl = add nuw nsw i64 %i.bk, %i.bj
  %i.bm = add nuw nsw i64 %i.bl, %i.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.bn = call ptr @zrealloc_usable(ptr noundef nonnull %1, i64 noundef %i.bm, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #24 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %raxNodeRealloc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !18 ; 4 uses
  %.not.i74 = icmp eq ptr %i.bq, null
end_hunk_0
