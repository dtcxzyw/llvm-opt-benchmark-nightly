inline.NumInlined: 16
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@onigenc_is_mbc_newline_0x0a:bb.a
  %i.a = icmp ult ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !26
  %i.c = icmp eq i8 %i.b, 10
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @onigenc_ascii_mbc_case_fold(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !21
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr i8, ptr @OnigEncAsciiToLowerCaseTable, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26
  store i8 %i.e, ptr %3, align 1, !tbaa !26
  %i.f = load ptr, ptr %1, align 8, !tbaa !21
  %i.g = getelementptr i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %1, align 8, !tbaa !21
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @onigenc_single_byte_mbc_enc_len(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 256) i32 @onigenc_single_byte_mbc_to_code(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !26
  %i.b = zext i8 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @onigenc_single_byte_code_to_mbclen(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @onigenc_single_byte_code_to_mbc(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #3 {
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
define dso_local noundef ptr @onigenc_single_byte_left_adjust_char_head(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone returned captures(ret: address, provenance) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @onigenc_always_true_is_allowed_reverse_match(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @onigenc_always_false_is_allowed_reverse_match(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @onigenc_ascii_is_code_ctype(i32 noundef %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
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
define dso_local i32 @onigenc_mbn_mbc_case_fold(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = load ptr, ptr %2, align 8, !tbaa !21     ; 13 uses
  %5 = ptrtoaddr ptr %i.b to i64
  %i.c = load i8, ptr %i.b, align 1, !tbaa !26    ; 2 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i8 %i.c to i64
  %i.f = getelementptr i8, ptr @OnigEncAsciiToLowerCaseTable, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !26
  store i8 %i.g, ptr %4, align 1, !tbaa !26
  %i.h = load ptr, ptr %2, align 8, !tbaa !21
  %i.i = getelementptr i8, ptr %i.h, i64 1
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult ptr %i.b, %3
  br i1 %i.o, label %onigenc_mbclen.exit, label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !14
  %i.q = tail call i32 %i.p(ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef nonnull %0) #11, !inline_history !20 ; 4 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = zext nneg i32 %i.q to i64
  %i.t = getelementptr i8, ptr %i.b, i64 %i.s
  %i.u = icmp ugt ptr %i.t, %3
  %i.v = ptrtoint ptr %3 to i64
  %i.w = ptrtoint ptr %i.b to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  br i1 %i.u, label %onigenc_mbclen.exit, label %iter.check

bb.g:                                             ; preds = %bb.e
  %i.z = icmp slt i32 %i.q, -1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = ptrtoint ptr %3 to i64
  %i.ab = ptrtoint ptr %i.b to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  br label %onigenc_mbclen.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp ult ptr %i.b, %3
  %i.af = zext i1 %i.ae to i32
  br label %onigenc_mbclen.exit

onigenc_mbclen.exit:                              ; preds = %bb.f, %bb.d, %bb.i, %bb.h
  %i.ag = phi i32 [ %i.af, %bb.i ], [ %i.k, %bb.d ], [ %i.ad, %bb.h ], [ %i.y, %bb.f ] ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.f, %onigenc_mbclen.exit
  %i.ai = phi i32 [ %i.ag, %onigenc_mbclen.exit ], [ %i.q, %bb.f ] ; 10 uses
  %i.aj = zext nneg i32 %i.ai to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.ai, 4
  %i.ak = sub i64 %5, %i.a
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check34 = icmp ult i32 %i.ai, 32
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aj, 28
  %n.vec = and i64 %i.aj, 2147483616              ; 6 uses
  %i.al = trunc nuw nsw i64 %n.vec to i32
  %i.am = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.an = getelementptr i8, ptr %4, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep35 = getelementptr i8, ptr %4, i64 %index ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !26
  %wide.load36 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !26
  %i.ap = getelementptr i8, ptr %next.gep35, i64 16
  store <16 x i8> %wide.load, ptr %next.gep35, align 1, !tbaa !26
  store <16 x i8> %wide.load36, ptr %i.ap, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aj
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i64 %i.aj, 2147483644            ; 5 uses
  %i.ar = trunc nuw nsw i64 %n.vec40 to i32
  %i.as = getelementptr i8, ptr %i.b, i64 %n.vec40
  %i.at = getelementptr i8, ptr %4, i64 %n.vec40
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %next.gep42 = getelementptr i8, ptr %i.b, i64 %index41
  %next.gep43 = getelementptr i8, ptr %4, i64 %index41
  %wide.load44 = load <4 x i8>, ptr %next.gep42, align 1, !tbaa !26
  store <4 x i8> %wide.load44, ptr %next.gep43, align 1, !tbaa !26
  %index.next45 = add nuw i64 %index41, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next45, %n.vec40
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %n.vec40, %i.aj
  br i1 %cmp.n46, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.028.ph = phi i32 [ 0, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ] ; 4 uses
  %.02127.ph = phi ptr [ %i.b, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ] ; 2 uses
  %.02326.ph = phi ptr [ %4, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ] ; 2 uses
  %i.av = sub i32 %i.ai, %.028.ph
  %xtraiter = and i32 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.028.prol = phi i32 [ %i.az, %.lr.ph.prol ], [ %.028.ph, %.lr.ph.preheader ]
  %.02127.prol = phi ptr [ %i.aw, %.lr.ph.prol ], [ %.02127.ph, %.lr.ph.preheader ] ; 2 uses
  %.02326.prol = phi ptr [ %i.ay, %.lr.ph.prol ], [ %.02326.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.aw = getelementptr i8, ptr %.02127.prol, i64 1 ; 2 uses
  %i.ax = load i8, ptr %.02127.prol, align 1, !tbaa !26
  %i.ay = getelementptr i8, ptr %.02326.prol, i64 1 ; 2 uses
  store i8 %i.ax, ptr %.02326.prol, align 1, !tbaa !26
  %i.az = add nuw nsw i32 %.028.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !50

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.028.unr = phi i32 [ %.028.ph, %.lr.ph.preheader ], [ %i.az, %.lr.ph.prol ]
  %.02127.unr = phi ptr [ %.02127.ph, %.lr.ph.preheader ], [ %i.aw, %.lr.ph.prol ]
  %.02326.unr = phi ptr [ %.02326.ph, %.lr.ph.preheader ], [ %i.ay, %.lr.ph.prol ]
  %i.ba = sub i32 %.028.ph, %i.ai
  %i.bb = icmp ugt i32 %i.ba, -8
  br i1 %i.bb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.028 = phi i32 [ %i.ca, %.lr.ph ], [ %.028.unr, %.lr.ph.prol.loopexit ]
  %.02127 = phi ptr [ %i.bx, %.lr.ph ], [ %.02127.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.02326 = phi ptr [ %i.bz, %.lr.ph ], [ %.02326.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bc = getelementptr i8, ptr %.02127, i64 1
  %i.bd = load i8, ptr %.02127, align 1, !tbaa !26
  %i.be = getelementptr i8, ptr %.02326, i64 1
  store i8 %i.bd, ptr %.02326, align 1, !tbaa !26
  %i.bf = getelementptr i8, ptr %.02127, i64 2
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !26
  %i.bh = getelementptr i8, ptr %.02326, i64 2
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !26
  %i.bi = getelementptr i8, ptr %.02127, i64 3
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !26
  %i.bk = getelementptr i8, ptr %.02326, i64 3
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !26
  %i.bl = getelementptr i8, ptr %.02127, i64 4
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !26
  %i.bn = getelementptr i8, ptr %.02326, i64 4
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !26
  %i.bo = getelementptr i8, ptr %.02127, i64 5
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !26
  %i.bq = getelementptr i8, ptr %.02326, i64 5
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !26
  %i.br = getelementptr i8, ptr %.02127, i64 6
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !26
  %i.bt = getelementptr i8, ptr %.02326, i64 6
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !26
  %i.bu = getelementptr i8, ptr %.02127, i64 7
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !26
  %i.bw = getelementptr i8, ptr %.02326, i64 7
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !26
  %i.bx = getelementptr i8, ptr %.02127, i64 8
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !26
  %i.bz = getelementptr i8, ptr %.02326, i64 8
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !26
  %i.ca = add nuw nsw i32 %.028, 8                ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.ca, %i.ai
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.d, %onigenc_mbclen.exit
  %i.cb = phi i32 [ 0, %bb.d ], [ %i.ag, %onigenc_mbclen.exit ], [ %i.ai, %middle.block ], [ %i.ai, %vec.epilog.middle.block ], [ %i.ai, %.lr.ph ], [ %i.ai, %.lr.ph.prol.loopexit ] ; 2 uses
end_hunk_0
