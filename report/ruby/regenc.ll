inline.NumInlined: 16
inline.NumDeleted: 1
begin_hunk_0_@onigenc_ascii_mbc_case_fold:bb.a
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @onigenc_single_byte_mbc_enc_len(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 256) i32 @onigenc_single_byte_mbc_to_code(ptr noundef readonly captures(none) %0, ptr noundef readnone captures(none) %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !26
  %i.b = zext i8 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @onigenc_single_byte_code_to_mbclen(i32 noundef %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @onigenc_single_byte_code_to_mbc(i32 noundef %0, ptr noundef writeonly captures(none) %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i32 %0, 255
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eRangeError, align 8, !tbaa !40
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str, i32 noundef %0) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = trunc nuw i32 %0 to i8
  store i8 %i.c, ptr %1, align 1, !tbaa !26
  ret i32 1
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef ptr @onigenc_single_byte_left_adjust_char_head(ptr noundef readnone captures(none) %0, ptr noundef readnone returned captures(ret: address, provenance) %1, ptr noundef readnone captures(none) %2, ptr noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @onigenc_always_true_is_allowed_reverse_match(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @onigenc_always_false_is_allowed_reverse_match(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @onigenc_ascii_is_code_ctype(i32 noundef %0, i32 noundef %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [2 x i8], ptr @OnigEncAsciiCtypeTable, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !42
  %i.e = zext i16 %i.d to i32
  %i.f = lshr i32 %i.e, %1
  %i.g = and i32 %i.f, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @onigenc_mbn_mbc_to_code(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !19
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult ptr %1, %2
  br i1 %i.f, label %onigenc_mbclen.exit, label %.preheader.thread

.preheader.thread:                                ; preds = %bb.b
  %i.g = load i8, ptr %1, align 1, !tbaa !26
  %i.h = zext i8 %i.g to i32
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !14
  %i.j = tail call i32 %i.i(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %0) #11, !inline_history !20 ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.j to i64
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  %i.n = icmp ugt ptr %i.m, %2
  %i.o = ptrtoint ptr %2 to i64
  %i.p = ptrtoint ptr %1 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %.0.i = select i1 %i.n, i32 %i.r, i32 %i.j
  br label %onigenc_mbclen.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp slt i32 %i.j, -1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = ptrtoint ptr %2 to i64
  %i.u = ptrtoint ptr %1 to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  br label %onigenc_mbclen.exit

bb.g:                                             ; preds = %bb.e
  %i.x = icmp ult ptr %1, %2
  %i.y = zext i1 %i.x to i32
  br label %onigenc_mbclen.exit

onigenc_mbclen.exit:                              ; preds = %bb.b, %bb.g, %bb.f, %bb.d
  %i.z = phi i32 [ %i.y, %bb.g ], [ %.0.i, %bb.d ], [ %i.w, %bb.f ], [ %i.b, %bb.b ] ; 3 uses
  %i.aa = load i8, ptr %1, align 1, !tbaa !26
  %i.ab = zext i8 %i.aa to i32                    ; 3 uses
  %i.ac = icmp eq i32 %i.z, 1
  br i1 %i.ac, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %onigenc_mbclen.exit
  %.02326 = getelementptr i8, ptr %1, i64 1       ; 2 uses
  %i.ad = icmp sgt i32 %i.z, 1
  %.not27 = icmp ult ptr %.02326, %2
  %or.cond28 = and i1 %i.ad, %.not27
  br i1 %or.cond28, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.02331 = phi ptr [ %.023, %.lr.ph ], [ %.02326, %.preheader ] ; 2 uses
  %.030 = phi i32 [ %i.ah, %.lr.ph ], [ %i.ab, %.preheader ]
  %.02229 = phi i32 [ %i.ai, %.lr.ph ], [ 1, %.preheader ]
  %i.ae = load i8, ptr %.02331, align 1, !tbaa !26
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl i32 %.030, 8
  %i.ah = or disjoint i32 %i.ag, %i.af            ; 2 uses
  %i.ai = add nuw nsw i32 %.02229, 1              ; 2 uses
  %.023 = getelementptr i8, ptr %.02331, i64 1    ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.z
  %.not = icmp ult ptr %.023, %2
  %or.cond = and i1 %i.aj, %.not
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !llvm.loop !44

.loopexit:                                        ; preds = %.lr.ph, %.preheader.thread, %.preheader, %onigenc_mbclen.exit
  %.021 = phi i32 [ %i.ab, %onigenc_mbclen.exit ], [ %i.ab, %.preheader ], [ %i.h, %.preheader.thread ], [ %i.ah, %.lr.ph ]
  ret i32 %.021
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @onigenc_mbn_mbc_case_fold(ptr noundef %0, i32 noundef %1, ptr noundef captures(none) %2, ptr noundef %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = load ptr, ptr %2, align 8, !tbaa !21     ; 13 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = load i8, ptr %i.b, align 1, !tbaa !26    ; 2 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i8 %i.d to i64
  %i.g = getelementptr i8, ptr @OnigEncAsciiToLowerCaseTable, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !26
  store i8 %i.h, ptr %4, align 1, !tbaa !26
  %i.i = load ptr, ptr %2, align 8, !tbaa !21
  %i.j = getelementptr i8, ptr %i.i, i64 1
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18   ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ult ptr %i.b, %3
  br i1 %i.p, label %onigenc_mbclen.exit, label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %0, align 8, !tbaa !14
  %i.r = tail call i32 %i.q(ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef nonnull %0) #11, !inline_history !20
  %.fr = freeze i32 %i.r                          ; 4 uses
  %i.s = icmp sgt i32 %.fr, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = zext nneg i32 %.fr to i64
  %i.u = getelementptr i8, ptr %i.b, i64 %i.t
  %i.v = icmp ugt ptr %i.u, %3
  %i.w = ptrtoint ptr %3 to i64
  %i.x = ptrtoint ptr %i.b to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32
  br i1 %i.v, label %onigenc_mbclen.exit, label %iter.check

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp slt i32 %.fr, -1
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = ptrtoint ptr %3 to i64
  %i.ac = ptrtoint ptr %i.b to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  br label %onigenc_mbclen.exit

bb.i:                                             ; preds = %bb.g
  %i.af = icmp ult ptr %i.b, %3
  %i.ag = zext i1 %i.af to i32
  br label %onigenc_mbclen.exit

onigenc_mbclen.exit:                              ; preds = %bb.f, %bb.d, %bb.i, %bb.h
  %i.ah = phi i32 [ %i.ag, %bb.i ], [ %i.l, %bb.d ], [ %i.ae, %bb.h ], [ %i.z, %bb.f ] ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.f, %onigenc_mbclen.exit
  %i.aj = phi i32 [ %i.ah, %onigenc_mbclen.exit ], [ %.fr, %bb.f ] ; 10 uses
  %i.ak = zext nneg i32 %i.aj to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.aj, 4
  %i.al = sub i64 %i.a, %i.c
  %diff.check = icmp ult i64 %i.al, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check35 = icmp ult i32 %i.aj, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ak, 28
  %n.vec = and i64 %i.ak, 2147483616              ; 6 uses
  %i.am = trunc nuw nsw i64 %n.vec to i32
  %i.an = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.ao = getelementptr i8, ptr %4, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep36 = getelementptr i8, ptr %4, i64 %index ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !26
  %wide.load37 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !26
  %i.aq = getelementptr i8, ptr %next.gep36, i64 16
  store <16 x i8> %wide.load, ptr %next.gep36, align 1, !tbaa !26
  store <16 x i8> %wide.load37, ptr %i.aq, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ak
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec41 = and i64 %i.ak, 2147483644            ; 5 uses
  %i.as = trunc nuw nsw i64 %n.vec41 to i32
  %i.at = getelementptr i8, ptr %i.b, i64 %n.vec41
  %i.au = getelementptr i8, ptr %4, i64 %n.vec41
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 3 uses
  %next.gep43.a = getelementptr i8, ptr %i.b, i64 %index42
  %next.gep44 = getelementptr i8, ptr %4, i64 %index42
  %wide.load45 = load <4 x i8>, ptr %next.gep43.a, align 1, !tbaa !26
  store <4 x i8> %wide.load45, ptr %next.gep44, align 1, !tbaa !26
  %index.next46 = add nuw i64 %index42, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next46, %n.vec41
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %n.vec41, %i.ak
  br i1 %cmp.n47, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.028.ph = phi i32 [ 0, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ] ; 4 uses
  %.02127.ph = phi ptr [ %i.b, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ] ; 2 uses
  %.02326.ph = phi ptr [ %4, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ] ; 2 uses
  %i.aw = sub i32 %i.aj, %.028.ph
  %xtraiter = and i32 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.028.prol = phi i32 [ %i.ba, %.lr.ph.prol ], [ %.028.ph, %.lr.ph.preheader ]
  %.02127.prol = phi ptr [ %i.ax, %.lr.ph.prol ], [ %.02127.ph, %.lr.ph.preheader ] ; 2 uses
  %.02326.prol = phi ptr [ %i.az, %.lr.ph.prol ], [ %.02326.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ax = getelementptr i8, ptr %.02127.prol, i64 1 ; 2 uses
  %i.ay = load i8, ptr %.02127.prol, align 1, !tbaa !26
  %i.az = getelementptr i8, ptr %.02326.prol, i64 1 ; 2 uses
  store i8 %i.ay, ptr %.02326.prol, align 1, !tbaa !26
  %i.ba = add nuw nsw i32 %.028.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !50

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.028.unr = phi i32 [ %.028.ph, %.lr.ph.preheader ], [ %i.ba, %.lr.ph.prol ]
  %.02127.unr = phi ptr [ %.02127.ph, %.lr.ph.preheader ], [ %i.ax, %.lr.ph.prol ]
  %.02326.unr = phi ptr [ %.02326.ph, %.lr.ph.preheader ], [ %i.az, %.lr.ph.prol ]
  %i.bb = sub i32 %.028.ph, %i.aj
  %i.bc = icmp ugt i32 %i.bb, -8
  br i1 %i.bc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.028 = phi i32 [ %i.cb, %.lr.ph ], [ %.028.unr, %.lr.ph.prol.loopexit ]
  %.02127 = phi ptr [ %i.by, %.lr.ph ], [ %.02127.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.02326 = phi ptr [ %i.ca, %.lr.ph ], [ %.02326.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bd = getelementptr i8, ptr %.02127, i64 1
  %i.be = load i8, ptr %.02127, align 1, !tbaa !26
  %i.bf = getelementptr i8, ptr %.02326, i64 1
  store i8 %i.be, ptr %.02326, align 1, !tbaa !26
  %i.bg = getelementptr i8, ptr %.02127, i64 2
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !26
  %i.bi = getelementptr i8, ptr %.02326, i64 2
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !26
  %i.bj = getelementptr i8, ptr %.02127, i64 3
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !26
  %i.bl = getelementptr i8, ptr %.02326, i64 3
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !26
  %i.bm = getelementptr i8, ptr %.02127, i64 4
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !26
  %i.bo = getelementptr i8, ptr %.02326, i64 4
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !26
  %i.bp = getelementptr i8, ptr %.02127, i64 5
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !26
  %i.br = getelementptr i8, ptr %.02326, i64 5
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !26
  %i.bs = getelementptr i8, ptr %.02127, i64 6
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !26
  %i.bu = getelementptr i8, ptr %.02326, i64 6
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !26
  %i.bv = getelementptr i8, ptr %.02127, i64 7
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !26
  %i.bx = getelementptr i8, ptr %.02326, i64 7
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !26
  %i.by = getelementptr i8, ptr %.02127, i64 8
  %i.bz = load i8, ptr %i.bv, align 1, !tbaa !26
  %i.ca = getelementptr i8, ptr %.02326, i64 8
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !26
  %i.cb = add nuw nsw i32 %.028, 8                ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.cb, %i.aj
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.d, %onigenc_mbclen.exit
  %i.cc = phi i32 [ 0, %bb.d ], [ %i.ah, %onigenc_mbclen.exit ], [ %i.aj, %middle.block ], [ %i.aj, %vec.epilog.middle.block ], [ %i.aj, %.lr.ph ], [ %i.aj, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.cd = load ptr, ptr %2, align 8, !tbaa !21
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr i8, ptr %i.cd, i64 %i.ce
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.b
  %storemerge = phi ptr [ %i.cf, %._crit_edge ], [ %i.j, %bb.b ]
  %.022 = phi i32 [ %i.cc, %._crit_edge ], [ 1, %bb.b ]
  store ptr %storemerge, ptr %2, align 8, !tbaa !21
  ret i32 %.022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef range(i32 -401, 3) i32 @onigenc_mb2_code_to_mbclen(i32 noundef %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 256
  %i.b = icmp ult i32 %0, 65536
  %. = select i1 %i.b, i32 2, i32 -401
  %.0 = select i1 %i.a, i32 1, i32 %.
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 1, 5) i32 @onigenc_mb4_code_to_mbclen(i32 noundef %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp ult i32 %0, 16777216
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not4 = icmp samesign ult i32 %0, 65536
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not5 = icmp samesign ult i32 %0, 256
  %. = select i1 %.not5, i32 1, i32 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 3, %bb.b ], [ 4, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @onigenc_mb2_code_to_mbc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = and i32 %1, 65280
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 8
  %i.c = trunc i32 %i.b to i8
  %i.d = getelementptr i8, ptr %2, i64 1
  store i8 %i.c, ptr %2, align 1, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.b ], [ %2, %bb.a ]    ; 2 uses
  %i.e = trunc i32 %1 to i8
  %i.f = getelementptr i8, ptr %.0, i64 1         ; 7 uses
  store i8 %i.e, ptr %.0, align 1, !tbaa !26
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 20
end_hunk_0
