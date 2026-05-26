inline.NumInlined: 2
begin_hunk_0_@mbc_enc_len:bb.a
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EmacsMule, i64 %i.c
  %i.an = load i32, ptr %i.am, align 4, !tbaa !6
  %i.ao = sub nsw i32 2, %i.an
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.ah
  %i.aq = load i8, ptr %i.ac, align 1, !tbaa !10
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !10
  %i.au = icmp eq i8 %i.at, -1
  %i.av = select i1 %i.au, i32 4, i32 -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.m, %bb.d ], [ %i.w, %bb.f ], [ %i.aa, %bb.h ], [ %i.ak, %bb.j ], [ %i.ao, %bb.l ], [ %i.av, %bb.m ]
  ret i32 %.0
}

declare i32 @onigenc_is_mbc_newline_0x0a(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @mbc_to_code(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult ptr %0, %1
  br i1 %i.f, label %select.unfold, label %.preheader.thread

.preheader.thread:                                ; preds = %bb.b
  %i.g = load i8, ptr %0, align 1, !tbaa !10
  %i.h = zext i8 %i.g to i32
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i32 @onigenc_mbclen(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #6
  br label %select.unfold

select.unfold:                                    ; preds = %bb.b, %bb.c
  %i.j = phi i32 [ %i.i, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %i.k = load i8, ptr %0, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32                      ; 3 uses
  %i.m = icmp eq i32 %i.j, 1
  br i1 %i.m, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %select.unfold
  %.02326 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.n = icmp sgt i32 %i.j, 1
  %.not27 = icmp ult ptr %.02326, %1
  %or.cond28 = select i1 %i.n, i1 %.not27, i1 false
  br i1 %or.cond28, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.02331 = phi ptr [ %.023, %.lr.ph ], [ %.02326, %.preheader ] ; 2 uses
  %.030 = phi i32 [ %i.r, %.lr.ph ], [ %i.l, %.preheader ]
  %.02229 = phi i32 [ %i.s, %.lr.ph ], [ 1, %.preheader ]
  %i.o = load i8, ptr %.02331, align 1, !tbaa !10
  %i.p = zext i8 %i.o to i32
  %i.q = shl i32 %.030, 8
  %i.r = or disjoint i32 %i.q, %i.p               ; 2 uses
  %i.s = add nuw nsw i32 %.02229, 1               ; 2 uses
  %.023 = getelementptr inbounds nuw i8, ptr %.02331, i64 1 ; 2 uses
  %i.t = icmp slt i32 %i.s, %i.j
  %.not = icmp ult ptr %.023, %1
  %or.cond = select i1 %i.t, i1 %.not, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph, %.preheader.thread, %.preheader, %select.unfold
  %.021 = phi i32 [ %i.l, %select.unfold ], [ %i.l, %.preheader ], [ %i.h, %.preheader.thread ], [ %i.r, %.lr.ph ]
  ret i32 %.021
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal range(i32 -400, 5) i32 @code_to_mbclen(i32 noundef %0, ptr readnone captures(none) %1) #3 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %0, 8388608
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = and i32 %0, 32768
  %.not7 = icmp eq i32 %i.d, 0
  %. = select i1 %.not7, i32 -400, i32 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.d ], [ 3, %bb.c ], [ 1, %bb.a ], [ 4, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @code_to_mbc(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %.not = icmp ult i32 %0, 16777216
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = lshr i32 %0, 24
  %i.b = trunc nuw i32 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.b, ptr %1, align 1, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ]    ; 3 uses
  %i.d = and i32 %0, 16711680
  %.not27 = icmp eq i32 %i.d, 0
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = lshr i32 %0, 16
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.f, ptr %.0, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %i.g, %bb.d ], [ %.0, %bb.c ]   ; 3 uses
  %i.h = and i32 %0, 65280
  %.not28 = icmp eq i32 %i.h, 0
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %0, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %i.j, ptr %.1, align 1, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi ptr [ %i.k, %bb.f ], [ %.1, %bb.e ]   ; 2 uses
  %i.l = trunc i32 %0 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 3 uses
  store i8 %i.l, ptr %.2, align 1, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = icmp ult ptr %1, %i.m
  %spec.select = select i1 %i.s, i32 %i.o, i32 0
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = tail call i32 @onigenc_mbclen(ptr noundef %1, ptr noundef nonnull %i.m, ptr noundef nonnull %2) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.u = phi i32 [ %i.t, %bb.i ], [ %spec.select, %bb.h ]
  %i.v = sext i32 %i.u to i64
  %i.w = ptrtoint ptr %i.m to i64
  %i.x = ptrtoint ptr %1 to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %.not29 = icmp eq i64 %i.y, %i.v
  %i.z = trunc nsw i64 %i.y to i32
  %.024 = select i1 %.not29, i32 %i.z, i32 -400
  ret i32 %.024
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -2147483647, -2147483648) i32 @mbc_case_fold(i32 %0, ptr noundef captures(none) %1, ptr noundef readnone captures(address) %2, ptr noundef writeonly captures(none) %3, ptr readnone captures(none) %4) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = load ptr, ptr %1, align 8, !tbaa !18     ; 15 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = load i8, ptr %i.b, align 1, !tbaa !10    ; 3 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i8 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr @OnigEncAsciiToLowerCaseTable, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10
  store i8 %i.h, ptr %3, align 1, !tbaa !10
  %i.i = load ptr, ptr %1, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.l = zext i8 %i.d to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr @trans, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10
  %.fr46 = freeze i8 %i.n                         ; 3 uses
  %i.o = sext i8 %.fr46 to i64
  %i.p = icmp slt i8 %.fr46, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq i8 %.fr46, -1
  br i1 %i.q, label %iter.check, label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq ptr %i.k, %2
  br i1 %i.r, label %mbc_enc_len.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.u = load i8, ptr %i.k, align 1, !tbaa !10
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !10
  %.fr45 = freeze i8 %i.x                         ; 3 uses
  %i.y = sext i8 %.fr45 to i64
  %i.z = icmp slt i8 %.fr45, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp eq i8 %.fr45, -1
  br i1 %i.aa, label %iter.check, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.ab = icmp eq ptr %i.t, %2
  br i1 %i.ab, label %mbc_enc_len.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.ae = load i8, ptr %i.t, align 1, !tbaa !10
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !10
  %.fr44 = freeze i8 %i.ah                        ; 3 uses
  %i.ai = sext i8 %.fr44 to i64
  %i.aj = icmp slt i8 %.fr44, 0
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp eq i8 %.fr44, -1
  br i1 %i.ak, label %iter.check, label %._crit_edge

bb.k:                                             ; preds = %bb.i
  %i.al = icmp eq ptr %i.ad, %2
  br i1 %i.al, label %mbc_enc_len.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.ai
  %i.an = load i8, ptr %i.ad, align 1, !tbaa !10
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !10
  %.fr = freeze i8 %i.aq
  %i.ar = icmp eq i8 %.fr, -1
  br i1 %i.ar, label %iter.check, label %._crit_edge

mbc_enc_len.exit:                                 ; preds = %bb.k, %bb.h, %bb.e
  %.sink = phi i32 [ 1, %bb.h ], [ 0, %bb.e ], [ 2, %bb.k ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EmacsMule, i64 %i.l
  %i.at = load i32, ptr %i.as, align 4, !tbaa !6
  %i.au = sub nsw i32 %.sink, %i.at               ; 3 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.l, %bb.j, %bb.g, %bb.d, %mbc_enc_len.exit
  %.0.i35 = phi i32 [ %i.au, %mbc_enc_len.exit ], [ 3, %bb.j ], [ 2, %bb.g ], [ 1, %bb.d ], [ 4, %bb.l ] ; 7 uses
  %i.aw = zext nneg i32 %.0.i35 to i64            ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.0.i35, 4
  %i.ax = sub i64 %i.a, %i.c
  %diff.check = icmp ult i64 %i.ax, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp samesign ult i32 %.0.i35, 32
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aw, 28
  %n.vec = and i64 %i.aw, 2147483616              ; 6 uses
  %i.ay = trunc nuw nsw i64 %n.vec to i32
  %i.az = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.ba = getelementptr i8, ptr %3, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep42 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !10
  %wide.load43 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !10
  %i.bc = getelementptr i8, ptr %next.gep42, i64 16
  store <16 x i8> %wide.load, ptr %next.gep42, align 1, !tbaa !10
  store <16 x i8> %wide.load43, ptr %i.bc, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aw
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %i.aw, 2147483644            ; 5 uses
  %i.be = trunc nuw nsw i64 %n.vec47 to i32
  %i.bf = getelementptr i8, ptr %i.b, i64 %n.vec47
  %i.bg = getelementptr i8, ptr %3, i64 %n.vec47
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 3 uses
  %next.gep49 = getelementptr i8, ptr %i.b, i64 %index48
  %next.gep50 = getelementptr i8, ptr %3, i64 %index48
  %wide.load51 = load <4 x i8>, ptr %next.gep49, align 1, !tbaa !10
  store <4 x i8> %wide.load51, ptr %next.gep50, align 1, !tbaa !10
  %index.next52 = add nuw i64 %index48, 4         ; 2 uses
  %i.bh = icmp eq i64 %index.next52, %n.vec47
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n53 = icmp eq i64 %n.vec47, %i.aw
  br i1 %cmp.n53, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.ph = phi i32 [ 0, %iter.check ], [ %i.ay, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ] ; 4 uses
  %.01621.ph = phi ptr [ %i.b, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ] ; 2 uses
  %.01820.ph = phi ptr [ %3, %iter.check ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ] ; 2 uses
  %i.bi = sub i32 %.0.i35, %.022.ph
  %xtraiter = and i32 %i.bi, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.022.prol = phi i32 [ %i.bm, %.lr.ph.prol ], [ %.022.ph, %.lr.ph.preheader ]
  %.01621.prol = phi ptr [ %i.bj, %.lr.ph.prol ], [ %.01621.ph, %.lr.ph.preheader ] ; 2 uses
  %.01820.prol = phi ptr [ %i.bl, %.lr.ph.prol ], [ %.01820.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.01621.prol, i64 1 ; 2 uses
  %i.bk = load i8, ptr %.01621.prol, align 1, !tbaa !10
  %i.bl = getelementptr inbounds nuw i8, ptr %.01820.prol, i64 1 ; 2 uses
  store i8 %i.bk, ptr %.01820.prol, align 1, !tbaa !10
  %i.bm = add nuw nsw i32 %.022.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !24

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.022.unr = phi i32 [ %.022.ph, %.lr.ph.preheader ], [ %i.bm, %.lr.ph.prol ]
  %.01621.unr = phi ptr [ %.01621.ph, %.lr.ph.preheader ], [ %i.bj, %.lr.ph.prol ]
  %.01820.unr = phi ptr [ %.01820.ph, %.lr.ph.preheader ], [ %i.bl, %.lr.ph.prol ]
  %i.bn = sub i32 %.022.ph, %.0.i35
  %i.bo = icmp ugt i32 %i.bn, -8
  br i1 %i.bo, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.022 = phi i32 [ %i.cn, %.lr.ph ], [ %.022.unr, %.lr.ph.prol.loopexit ]
  %.01621 = phi ptr [ %i.ck, %.lr.ph ], [ %.01621.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01820 = phi ptr [ %i.cm, %.lr.ph ], [ %.01820.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01621, i64 1
  %i.bq = load i8, ptr %.01621, align 1, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %.01820, i64 1
  store i8 %i.bq, ptr %.01820, align 1, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %.01621, i64 2
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %.01820, i64 2
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.01621, i64 3
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %.01820, i64 3
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %.01621, i64 4
  %i.bz = load i8, ptr %i.bv, align 1, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %.01820, i64 4
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %.01621, i64 5
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %.01820, i64 5
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %.01621, i64 6
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !10
  %i.cg = getelementptr inbounds nuw i8, ptr %.01820, i64 6
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !10
  %i.ch = getelementptr inbounds nuw i8, ptr %.01621, i64 7
  %i.ci = load i8, ptr %i.ce, align 1, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %.01820, i64 7
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %.01621, i64 8
  %i.cl = load i8, ptr %i.ch, align 1, !tbaa !10
  %i.cm = getelementptr inbounds nuw i8, ptr %.01820, i64 8
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !10
  %i.cn = add nuw nsw i32 %.022, 8                ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.cn, %.0.i35
  br i1 %exitcond.not.7, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !26

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %1, align 8, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.j, %bb.g, %bb.d, %._crit_edge.loopexit, %mbc_enc_len.exit
  %.0.i34 = phi i32 [ %.0.i35, %._crit_edge.loopexit ], [ %i.au, %mbc_enc_len.exit ], [ -1, %bb.d ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.l ] ; 2 uses
  %i.co = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %mbc_enc_len.exit ], [ %i.b, %bb.d ], [ %i.b, %bb.g ], [ %i.b, %bb.j ], [ %i.b, %bb.l ]
  %i.cp = sext i32 %.0.i34 to i64
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 %i.cp
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.b
  %storemerge = phi ptr [ %i.cq, %._crit_edge ], [ %i.j, %bb.b ]
  %.017 = phi i32 [ %.0.i34, %._crit_edge ], [ 1, %bb.b ]
  store ptr %storemerge, ptr %1, align 8, !tbaa !18
  ret i32 %.017
}

declare i32 @onigenc_ascii_apply_all_case_fold(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @onigenc_ascii_get_case_fold_codes_by_str(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @onigenc_minimum_property_name_to_ctype(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal range(i32 0, 2) i32 @is_code_ctype(i32 noundef %0, i32 noundef %1, ptr readnone captures(none) %2) #3 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.b, label %code_to_mbclen.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [2 x i8], ptr @OnigEncAsciiCtypeTable, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !27
  %i.e = zext i16 %i.d to i32
  %i.f = lshr i32 %i.e, %1
  %i.g = and i32 %i.f, 1
  br label %bb.c

code_to_mbclen.exit:                              ; preds = %bb.a
  %i.h = and i32 %0, -2139062272
  %i.i = icmp ne i32 %i.h, 0
  %.0.i = zext i1 %i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %code_to_mbclen.exit, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %.0.i, %code_to_mbclen.exit ]
  ret i32 %.0
}

declare i32 @onigenc_not_support_get_ctype_code_range(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define internal noundef ptr @left_adjust_char_head(ptr noundef readnone captures(address) %0, ptr noundef readonly captures(address, ret: address, provenance) %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3) #5 {
end_hunk_0
