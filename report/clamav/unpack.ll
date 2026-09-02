Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/unpack?download=true
inline.NumInlined: 353
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN12SubAllocator14AllocUnitsRareEi:bb.a
._crit_edge:                                      ; preds = %bb.a
  %.pre = sext i32 %1 to i64
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  store i8 -1, ptr %i.a, align 2, !tbaa !36
  tail call void @_ZN12SubAllocator14GlueFreeBlocksEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 3 uses
  %.not19 = icmp eq ptr %i.f, null
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  store ptr %i.g, ptr %i.e, align 8, !tbaa !40
  br label %bb.i

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %indvars.iv.next34 = add nsw i64 %.pre-phi, 1   ; 2 uses
  %i.i = icmp eq i64 %indvars.iv.next34, 38
  br i1 %i.i, label %._crit_edge37, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv.next35, 1 ; 2 uses
  %i.j = icmp eq i64 %indvars.iv.next, 38
  br i1 %i.j, label %._crit_edge37, label %.lr.ph, !llvm.loop !183

._crit_edge37:                                    ; preds = %bb.e, %bb.d
  %i.k = load i8, ptr %i.a, align 2, !tbaa !36
  %i.l = add i8 %i.k, -1
  store i8 %i.l, ptr %i.a, align 2, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %.pre-phi
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  %i.q = mul nuw nsw i64 %i.p, 12                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp sgt i64 %i.x, %i.q
  br i1 %i.y, label %bb.f, label %bb.i

bb.f:                                             ; preds = %._crit_edge37
  %.neg = mul nsw i64 %i.p, -20
  %i.z = sub nsw i64 0, %i.q
  %i.aa = getelementptr inbounds i8, ptr %i.s, i64 %i.z
  store ptr %i.aa, ptr %i.r, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %.neg ; 2 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !31
  br label %bb.i

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %indvars.iv.next35 = phi i64 [ %indvars.iv.next, %bb.e ], [ %indvars.iv.next34, %bb.d ] ; 4 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.next35
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 4 uses
  %.not20 = icmp eq ptr %i.af, null
  br i1 %.not20, label %bb.e, label %bb.g, !llvm.loop !183

bb.g:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.next35
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !40
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv.next35
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !35
  %i.al = zext i8 %i.ak to i32
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %.pre-phi
  %i.an = load i8, ptr %i.am, align 1, !tbaa !35
  %i.ao = zext i8 %i.an to i32                    ; 2 uses
  %i.ap = sub nsw i32 %i.al, %i.ao                ; 3 uses
  %i.aq = mul nuw nsw i32 %i.ao, 20
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 46 ; 2 uses
  %i.au = sext i32 %i.ap to i64
  %i.av = getelementptr i8, ptr %i.at, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !35
  %i.ay = zext i8 %i.ax to i64                    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !35
  %i.bb = zext i8 %i.ba to i32
  %.not.i = icmp eq i32 %i.ap, %i.bb
  br i1 %.not.i, label %_ZN12SubAllocator10SplitBlockEPvii.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = add nsw i64 %i.ay, -1                   ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bc ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !40
  store ptr %i.be, ptr %i.as, align 8, !tbaa !40
  store ptr %i.as, ptr %i.bd, align 8, !tbaa !40
  %i.bf = getelementptr inbounds i8, ptr %i.ai, i64 %i.bc
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !35
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = mul nuw nsw i32 %i.bh, 20
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bj
  %i.bl = sub nsw i32 %i.ap, %i.bh
  %.phi.trans.insert.i = sext i32 %i.bl to i64
  %.phi.trans.insert16.i = getelementptr i8, ptr %i.at, i64 %.phi.trans.insert.i
  %.phi.trans.insert17.i = getelementptr i8, ptr %.phi.trans.insert16.i, i64 -1
  %.pre.i = load i8, ptr %.phi.trans.insert17.i, align 1, !tbaa !35
  %.pre18.i = zext i8 %.pre.i to i64
  br label %_ZN12SubAllocator10SplitBlockEPvii.exit

_ZN12SubAllocator10SplitBlockEPvii.exit:          ; preds = %bb.g, %bb.h
  %.pre-phi.i = phi i64 [ %.pre18.i, %bb.h ], [ %i.ay, %bb.g ]
  %.0.i = phi ptr [ %i.bk, %bb.h ], [ %i.as, %bb.g ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.pre-phi.i ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !40
  store ptr %i.bn, ptr %.0.i, align 8, !tbaa !40
  store ptr %.0.i, ptr %i.bm, align 8, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %_ZN12SubAllocator10SplitBlockEPvii.exit, %._crit_edge37, %bb.f, %bb.c
  %.2 = phi ptr [ %i.f, %bb.c ], [ %i.af, %_ZN12SubAllocator10SplitBlockEPvii.exit ], [ %i.ad, %bb.f ], [ null, %._crit_edge37 ]
  ret ptr %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN12SubAllocator14GlueFreeBlocksEv(ptr noundef nonnull align 8 dereferenceable(536) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %1 = alloca %struct.RARPPM_MEM_BLK, align 1     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  store ptr %1, ptr %i.e, align 1, !tbaa !192
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  store ptr %1, ptr %i.f, align 1, !tbaa !193
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %.preheader43

.preheader43:                                     ; preds = %bb.c, %._crit_edge
  %i.i = phi ptr [ %1, %bb.c ], [ %i.v, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %.not4144 = icmp eq ptr %i.k, null
  br i1 %.not4144, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader43
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.m = phi ptr [ %i.i, %.lr.ph ], [ %i.n, %bb.d ] ; 2 uses
  %i.n = phi ptr [ %i.k, %.lr.ph ], [ %i.o, %bb.d ] ; 9 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40   ; 3 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store ptr %1, ptr %i.p, align 4, !tbaa !192
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store ptr %i.m, ptr %i.q, align 4, !tbaa !193
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store ptr %i.n, ptr %i.r, align 1, !tbaa !192
  store ptr %i.n, ptr %i.f, align 1, !tbaa !193
  store i16 -1, ptr %i.n, align 8, !tbaa !194
  %i.s = load i8, ptr %i.l, align 1, !tbaa !35
  %i.t = zext i8 %i.s to i16
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i16 %i.t, ptr %i.u, align 2, !tbaa !195
  %.not41 = icmp eq ptr %i.o, null
  br i1 %.not41, label %._crit_edge, label %bb.d, !llvm.loop !184

._crit_edge:                                      ; preds = %bb.d, %.preheader43
  %i.v = phi ptr [ %i.i, %.preheader43 ], [ %i.n, %bb.d ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 38
  br i1 %exitcond.not, label %bb.e, label %.preheader43, !llvm.loop !185

bb.e:                                             ; preds = %._crit_edge
  %.not3848 = icmp eq ptr %i.v, %1
  br i1 %.not3848, label %.preheader, label %.preheader42

.preheader42:                                     ; preds = %bb.e, %.critedge
  %.03449 = phi ptr [ %i.at, %.critedge ], [ %i.v, %bb.e ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.03449, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 1, !tbaa !195  ; 2 uses
  %2 = zext i16 %i.x to i64
  %3 = mul nuw nsw i64 %2, 20
  %i.y = getelementptr inbounds nuw i8, ptr %.03449, i64 %3 ; 2 uses
  %i.z = load i16, ptr %i.y, align 1, !tbaa !194
  %i.aa = icmp eq i16 %i.z, -1
  br i1 %i.aa, label %.lr.ph46, label %.critedge

.preheader.loopexit:                              ; preds = %.critedge
  %.pre = load ptr, ptr %i.f, align 1, !tbaa !193
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %i.ab = phi ptr [ %.pre, %.preheader.loopexit ], [ %i.v, %bb.e ] ; 2 uses
  %.not3956 = icmp eq ptr %i.ab, %1
  br i1 %.not3956, label %._crit_edge58, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  br label %bb.g

.lr.ph46:                                         ; preds = %.preheader42, %bb.f
  %i.ad = phi ptr [ %i.ap, %bb.f ], [ %i.y, %.preheader42 ] ; 3 uses
  %i.ae = phi i16 [ %i.ao, %bb.f ], [ %i.x, %.preheader42 ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !195 ; 2 uses
  %4 = xor i16 %i.ae, -1
  %not.add.overflow.not = icmp ugt i16 %i.ag, %4
  br i1 %not.add.overflow.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph46
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 1, !tbaa !193
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ak = load ptr, ptr %i.aj, align 1, !tbaa !192 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store ptr %i.ai, ptr %i.al, align 1, !tbaa !193
  %i.am = load ptr, ptr %i.ah, align 1, !tbaa !193
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store ptr %i.ak, ptr %i.an, align 1, !tbaa !192
  %i.ao = add i16 %i.ag, %i.ae                    ; 3 uses
  store i16 %i.ao, ptr %i.w, align 1, !tbaa !195
  %5 = zext i16 %i.ao to i64
  %6 = mul nuw nsw i64 %5, 20
  %i.ap = getelementptr inbounds nuw i8, ptr %.03449, i64 %6 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 1, !tbaa !194
  %i.ar = icmp eq i16 %i.aq, -1
  br i1 %i.ar, label %.lr.ph46, label %.critedge, !llvm.loop !186

.critedge:                                        ; preds = %bb.f, %.lr.ph46, %.preheader42
  %i.as = getelementptr inbounds nuw i8, ptr %.03449, i64 4
  %i.at = load ptr, ptr %i.as, align 1, !tbaa !193 ; 2 uses
  %.not38 = icmp eq ptr %i.at, %1
  br i1 %.not38, label %.preheader.loopexit, label %.preheader42, !llvm.loop !187

bb.g:                                             ; preds = %.lr.ph57, %._crit_edge54._crit_edge
  %i.au = phi ptr [ %i.ab, %.lr.ph57 ], [ %i.cg, %._crit_edge54._crit_edge ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 1, !tbaa !193
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.ay = load ptr, ptr %i.ax, align 1, !tbaa !192 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store ptr %i.aw, ptr %i.az, align 1, !tbaa !193
  %i.ba = load ptr, ptr %i.av, align 1, !tbaa !193
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store ptr %i.ay, ptr %i.bb, align 1, !tbaa !192
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.bd = load i16, ptr %i.bc, align 1, !tbaa !195 ; 2 uses
  %i.be = zext i16 %i.bd to i32                   ; 2 uses
  %i.bf = icmp ugt i16 %i.bd, 128
  br i1 %i.bf, label %.lr.ph53.preheader, label %._crit_edge54

.lr.ph53.preheader:                               ; preds = %bb.g
  %.pre61 = load ptr, ptr %i.ac, align 8, !tbaa !40
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53.preheader, %.lr.ph53
  %i.bg = phi ptr [ %.13550, %.lr.ph53 ], [ %.pre61, %.lr.ph53.preheader ]
  %.051 = phi i32 [ %i.bh, %.lr.ph53 ], [ %i.be, %.lr.ph53.preheader ] ; 2 uses
  %.13550 = phi ptr [ %i.bi, %.lr.ph53 ], [ %i.au, %.lr.ph53.preheader ] ; 4 uses
  store ptr %i.bg, ptr %.13550, align 8, !tbaa !40
  store ptr %.13550, ptr %i.ac, align 8, !tbaa !40
  %i.bh = add nsw i32 %.051, -128                 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.13550, i64 2560 ; 2 uses
  %i.bj = icmp samesign ugt i32 %.051, 256
  br i1 %i.bj, label %.lr.ph53, label %._crit_edge54, !llvm.loop !188

._crit_edge54:                                    ; preds = %.lr.ph53, %bb.g
  %.135.lcssa = phi ptr [ %i.au, %bb.g ], [ %i.bi, %.lr.ph53 ] ; 3 uses
  %.0.lcssa = phi i32 [ %i.be, %bb.g ], [ %i.bh, %.lr.ph53 ] ; 3 uses
  %i.bk = zext nneg i32 %.0.lcssa to i64
  %i.bl = getelementptr i8, ptr %0, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 45
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !35  ; 2 uses
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !35
  %i.br = zext i8 %i.bq to i32
  %.not40 = icmp eq i32 %.0.lcssa, %i.br
  %.pre62 = zext i8 %i.bn to i64                  ; 2 uses
  br i1 %.not40, label %._crit_edge54._crit_edge, label %bb.h

bb.h:                                             ; preds = %._crit_edge54
  %i.bs = add nsw i64 %.pre62, -1                 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.h, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !35
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = mul nuw nsw i32 %i.bv, 20
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %.135.lcssa, i64 %i.bx ; 2 uses
  %i.bz = xor i32 %i.bv, -1
  %i.ca = add nsw i32 %.0.lcssa, %i.bz
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.cb ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !40
  store ptr %i.cd, ptr %i.by, align 8, !tbaa !40
  store ptr %i.by, ptr %i.cc, align 8, !tbaa !40
  br label %._crit_edge54._crit_edge

._crit_edge54._crit_edge:                         ; preds = %._crit_edge54, %bb.h
  %.pre-phi = phi i64 [ %i.bs, %bb.h ], [ %.pre62, %._crit_edge54 ]
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.pre-phi ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !40
  store ptr %i.cf, ptr %.135.lcssa, align 8, !tbaa !40
  store ptr %.135.lcssa, ptr %i.ce, align 8, !tbaa !40
  %i.cg = load ptr, ptr %i.f, align 1, !tbaa !193 ; 2 uses
  %.not39 = icmp eq ptr %i.cg, %1
  br i1 %.not39, label %._crit_edge58, label %bb.g, !llvm.loop !189

._crit_edge58:                                    ; preds = %._crit_edge54._crit_edge, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ModelPPMC2Ev(ptr noundef nonnull align 8 dereferenceable(19648) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 19112
  tail call void @_ZN12SubAllocatorC1Ev(ptr noundef nonnull align 8 dereferenceable(536) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1608
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ModelPPM16RestartModelRareEv(ptr noundef nonnull align 8 dereferenceable(19648) initializes((1664, 1920), (19120, 19158), (19286, 19287), (19296, 19632), (19640, 19648)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1664
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 19112 ; 3 uses
  tail call void @_ZN12SubAllocator16InitSubAllocatorEv(ptr noundef nonnull align 8 dereferenceable(536) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1652 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !46   ; 2 uses
  %i.e = tail call i32 @llvm.smin.i32(i32 %i.d, i32 12)
  %spec.select = xor i32 %i.e, -1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1660 ; 2 uses
  store i32 %spec.select, ptr %i.f, align 4, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 19304 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 19296 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 -20 ; 2 uses
  store ptr %i.k, ptr %i.g, align 8, !tbaa !34
  br label %_ZN12SubAllocator12AllocContextEv.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 19312 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 3 uses
  %.not3.i = icmp eq ptr %i.m, null
  br i1 %.not3.i, label %_ZN12SubAllocator12AllocContextEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40
  store ptr %i.n, ptr %i.l, align 8, !tbaa !40
  br label %_ZN12SubAllocator12AllocContextEv.exit.thread

_ZN12SubAllocator12AllocContextEv.exit.thread:    ; preds = %bb.b, %bb.d
  %.0.i.ph = phi ptr [ %i.m, %bb.d ], [ %i.k, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1624
  store ptr %.0.i.ph, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  store ptr %.0.i.ph, ptr %i.p, align 8, !tbaa !49
  br label %bb.f

_ZN12SubAllocator12AllocContextEv.exit:           ; preds = %bb.c
  %i.q = tail call noundef ptr @_ZN12SubAllocator14AllocUnitsRareEi(ptr noundef nonnull align 8 dereferenceable(536) %i.b, i32 noundef 0) ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1624
  store ptr %i.q, ptr %i.r, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  store ptr %i.q, ptr %i.s, align 8, !tbaa !49
  %i.t = icmp eq ptr %i.q, null
  br i1 %i.t, label %bb.e, label %_ZN12SubAllocator12AllocContextEv.exit._crit_edge

_ZN12SubAllocator12AllocContextEv.exit._crit_edge: ; preds = %_ZN12SubAllocator12AllocContextEv.exit
  %.pre = load i32, ptr %i.c, align 4, !tbaa !46
  br label %bb.f

bb.e:                                             ; preds = %_ZN12SubAllocator12AllocContextEv.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !51
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

bb.f:                                             ; preds = %_ZN12SubAllocator12AllocContextEv.exit._crit_edge, %_ZN12SubAllocator12AllocContextEv.exit.thread
  %i.v = phi i32 [ %i.d, %_ZN12SubAllocator12AllocContextEv.exit.thread ], [ %.pre, %_ZN12SubAllocator12AllocContextEv.exit._crit_edge ]
  %i.w = phi ptr [ %i.p, %_ZN12SubAllocator12AllocContextEv.exit.thread ], [ %i.s, %_ZN12SubAllocator12AllocContextEv.exit._crit_edge ] ; 3 uses
  %.0.i31 = phi ptr [ %.0.i.ph, %_ZN12SubAllocator12AllocContextEv.exit.thread ], [ %i.q, %_ZN12SubAllocator12AllocContextEv.exit._crit_edge ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i31, i64 12
  store ptr null, ptr %i.x, align 1, !tbaa !53
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1648
  store i32 %i.v, ptr %i.y, align 8, !tbaa !54
  store i16 256, ptr %.0.i31, align 1, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i31, i64 2
  store i16 257, ptr %i.z, align 1, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 19285
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35  ; 2 uses
  %i.ac = zext i8 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 19312
  %i.ae = zext i8 %i.ab to i64                    ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !40 ; 4 uses
  %.not.i29 = icmp eq ptr %i.ag, null
  br i1 %.not.i29, label %bb.g, label %_ZN12SubAllocator10AllocUnitsEi.exit.thread

_ZN12SubAllocator10AllocUnitsEi.exit.thread:      ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !40
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store ptr %i.ag, ptr %i.aj, align 1, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1632
  store ptr %i.ag, ptr %i.ak, align 8, !tbaa !56
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 19120
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !35
  %i.ap = zext i8 %i.ao to i64
  %i.aq = mul nuw nsw i64 %i.ap, 20
end_hunk_0
