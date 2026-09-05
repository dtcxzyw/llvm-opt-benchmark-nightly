Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/mcmc?download=true
begin_hunk_0_@mcmc_token_get_flag_arg_32:bb.a

_mcmc_token.exit:                                 ; preds = %bb.b
  %i.l = zext i16 %i.d to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %.0.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.c, label %mcmc_tokto32.exit

bb.c:                                             ; preds = %_mcmc_token.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 3 uses
  %i.t = add i64 %i.p, 4294967295
  %i.u = and i64 %i.t, 4294967295                 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u ; 2 uses
  %i.w = icmp samesign ugt i64 %i.u, 11
  br i1 %i.w, label %mcmc_tokto32.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i8, ptr %i.s, align 1, !tbaa !23
  %.fr63.i = freeze i8 %i.x
  %i.y = icmp eq i8 %.fr63.i, 45                  ; 2 uses
  %spec.select.idx.i = zext i1 %i.y to i64        ; 2 uses
  %.not4959.i = icmp samesign eq i64 %i.u, %spec.select.idx.i
  br i1 %.not4959.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.s, i64 %spec.select.idx.i ; 2 uses
  br i1 %i.y, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.f
  %.13661.us.i = phi ptr [ %i.ag, %bb.f ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %.03860.us.i = phi i32 [ %i.af, %bb.f ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.z = load i8, ptr %.13661.us.i, align 1, !tbaa !23
  %i.aa = add i8 %i.z, -48                        ; 2 uses
  %or.cond.us.i = icmp ult i8 %i.aa, 10
  br i1 %or.cond.us.i, label %bb.e, label %mcmc_tokto32.exit

bb.e:                                             ; preds = %.lr.ph.split.us.i
  %i.ab = zext nneg i8 %i.aa to i32               ; 2 uses
  %i.ac = xor i32 %i.ab, 2147483646
  %i.ad = udiv i32 %i.ac, 10
  %.not51.us.i = icmp sgt i32 %.03860.us.i, %i.ad
  br i1 %.not51.us.i, label %mcmc_tokto32.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = mul nsw i32 %.03860.us.i, 10
  %i.af = add nsw i32 %i.ae, %i.ab                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.13661.us.i, i64 1 ; 2 uses
  %.not49.us.i = icmp eq ptr %i.ag, %i.v
  br i1 %.not49.us.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !3

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.h
  %.13661.i = phi ptr [ %i.an, %bb.h ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %.03860.i = phi i32 [ %i.am, %bb.h ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.ah = load i8, ptr %.13661.i, align 1, !tbaa !23
  %i.ai = add i8 %i.ah, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.ai, 10
  br i1 %or.cond.i, label %bb.g, label %mcmc_tokto32.exit

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.aj = zext nneg i8 %i.ai to i32               ; 2 uses
  %.nonneg.i = sub nuw i32 -2147483648, %i.aj
  %i.ak = udiv i32 %.nonneg.i, 10
  %.neg.i = sub nsw i32 0, %i.ak
  %.not52.i = icmp slt i32 %.03860.i, %.neg.i
  br i1 %.not52.i, label %mcmc_tokto32.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = mul nsw i32 %.03860.i, 10
  %i.am = sub nsw i32 %i.al, %i.aj                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.13661.i, i64 1 ; 2 uses
  %.not49.i = icmp eq ptr %i.an, %i.v
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %bb.f, %bb.h, %bb.d
  %.038.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.am, %bb.h ], [ %i.af, %bb.f ]
  store i32 %.038.lcssa.i, ptr %3, align 4, !tbaa !29
  br label %mcmc_tokto32.exit

mcmc_tokto32.exit:                                ; preds = %bb.e, %.lr.ph.split.us.i, %bb.g, %.lr.ph.split.i, %._crit_edge.i, %bb.c, %_mcmc_token.exit
  %.0 = phi i32 [ -1, %_mcmc_token.exit ], [ 0, %._crit_edge.i ], [ -2, %bb.c ], [ -1, %bb.g ], [ -3, %.lr.ph.split.i ], [ -3, %.lr.ph.split.us.i ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -3, 1) i32 @mcmc_token_get_flag_arg_64(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.a ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !25
  %i.e = getelementptr i8, ptr %i.c, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !25
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %i.h, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !23
  %i.k = icmp eq i8 %i.j, 32
  br i1 %i.k, label %bb.b, label %_mcmc_token.exit, !llvm.loop !0

_mcmc_token.exit:                                 ; preds = %bb.b
  %i.l = zext i16 %i.d to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %.0.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.c, label %mcmc_tokto64.exit

bb.c:                                             ; preds = %_mcmc_token.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 3 uses
  %i.t = add i64 %i.p, 4294967295
  %i.u = and i64 %i.t, 4294967295                 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u ; 2 uses
  %i.w = icmp samesign ugt i64 %i.u, 22
  br i1 %i.w, label %mcmc_tokto64.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i8, ptr %i.s, align 1, !tbaa !23
  %.fr62.i = freeze i8 %i.x
  %i.y = icmp eq i8 %.fr62.i, 45                  ; 2 uses
  %spec.select.idx.i = zext i1 %i.y to i64        ; 2 uses
  %.not4858.i = icmp samesign eq i64 %i.u, %spec.select.idx.i
  br i1 %.not4858.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.s, i64 %spec.select.idx.i ; 2 uses
  br i1 %i.y, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.f
  %.13660.us.i = phi ptr [ %i.ag, %bb.f ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %.03859.us.i = phi i64 [ %i.af, %bb.f ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.z = load i8, ptr %.13660.us.i, align 1, !tbaa !23
  %i.aa = add i8 %i.z, -48                        ; 2 uses
  %or.cond.us.i = icmp ult i8 %i.aa, 10
  br i1 %or.cond.us.i, label %bb.e, label %mcmc_tokto64.exit

bb.e:                                             ; preds = %.lr.ph.split.us.i
  %i.ab = zext nneg i8 %i.aa to i64               ; 2 uses
  %i.ac = xor i64 %i.ab, 9223372036854775806
  %i.ad = udiv i64 %i.ac, 10
  %.not50.us.i = icmp sgt i64 %.03859.us.i, %i.ad
  br i1 %.not50.us.i, label %mcmc_tokto64.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = mul nsw i64 %.03859.us.i, 10
  %i.af = add nsw i64 %i.ae, %i.ab                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.13660.us.i, i64 1 ; 2 uses
  %.not48.us.i = icmp eq ptr %i.ag, %i.v
  br i1 %.not48.us.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !4

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.h
  %.13660.i = phi ptr [ %i.an, %bb.h ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %.03859.i = phi i64 [ %i.am, %bb.h ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.ah = load i8, ptr %.13660.i, align 1, !tbaa !23
  %i.ai = add i8 %i.ah, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.ai, 10
  br i1 %or.cond.i, label %bb.g, label %mcmc_tokto64.exit

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.aj = zext nneg i8 %i.ai to i64               ; 2 uses
  %.nonneg.i = sub nuw i64 -9223372036854775808, %i.aj
  %i.ak = udiv i64 %.nonneg.i, 10
  %.neg.i = sub nsw i64 0, %i.ak
  %.not51.i = icmp slt i64 %.03859.i, %.neg.i
  br i1 %.not51.i, label %mcmc_tokto64.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = mul nsw i64 %.03859.i, 10
  %i.am = sub nsw i64 %i.al, %i.aj                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.13660.i, i64 1 ; 2 uses
  %.not48.i = icmp eq ptr %i.an, %i.v
  br i1 %.not48.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !4

._crit_edge.i:                                    ; preds = %bb.f, %bb.h, %bb.d
  %.038.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.am, %bb.h ], [ %i.af, %bb.f ]
  store i64 %.038.lcssa.i, ptr %3, align 8, !tbaa !30
  br label %mcmc_tokto64.exit

mcmc_tokto64.exit:                                ; preds = %bb.e, %.lr.ph.split.us.i, %bb.g, %.lr.ph.split.i, %._crit_edge.i, %bb.c, %_mcmc_token.exit
  %.0 = phi i32 [ -1, %_mcmc_token.exit ], [ 0, %._crit_edge.i ], [ -2, %bb.c ], [ -1, %bb.g ], [ -3, %.lr.ph.split.i ], [ -3, %.lr.ph.split.us.i ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -2, 1) i32 @mcmc_token_has_flag(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i8 noundef signext %2) local_unnamed_addr #3 {
bb.a:
  %i.a = add i8 %2, -123
  %or.cond = icmp ult i8 %i.a, -58
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i8 %2 to i64
  %i.c = add nuw nsw i64 %i.b, 4294967231
  %3 = and i64 %i.c, 4294967295
  %i.d = shl nuw nsw i64 1, %3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22
  %i.g = and i64 %i.f, %i.d
  %.not = icmp eq i64 %i.g, 0
  %. = select i1 %.not, i32 -2, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %., %bb.b ], [ -1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local ptr @mcmc_token_get_flag(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i8 noundef signext %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !28    ; 2 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !21      ; 2 uses
  %i.d = icmp ult i8 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %.thread28

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.f = zext i8 %i.b to i64
  %wide.trip.count = zext i8 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread28, label %bb.c, !llvm.loop !5

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  %i.h = load i16, ptr %i.g, align 2, !tbaa !25
  %i.i = zext i16 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !23
  %i.l = icmp eq i8 %i.k, %2
  br i1 %i.l, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !25
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi ptr [ %i.r, %bb.d ], [ %i.s, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !23
  %i.u = icmp eq i8 %i.t, 32
  br i1 %i.u, label %bb.e, label %_mcmc_token_len.exit, !llvm.loop !6

_mcmc_token_len.exit:                             ; preds = %bb.e
  %i.v = ptrtoint ptr %.0.i to i64
  %i.w = ptrtoint ptr %i.n to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = add nsw i32 %i.y, -1
  %i.aa = icmp sgt i32 %i.y, 1
  br i1 %i.aa, label %bb.f, label %.thread28

bb.f:                                             ; preds = %_mcmc_token_len.exit
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.z, ptr %3, align 4, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  br label %.thread28

.thread28:                                        ; preds = %bb.b, %bb.a, %_mcmc_token_len.exit, %bb.h
  %i.ac = phi ptr [ %i.ab, %bb.h ], [ null, %_mcmc_token_len.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %i.ac
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -3, 1) i32 @mcmc_token_get_flag_u32(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i8 noundef signext %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !28    ; 2 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !21      ; 2 uses
  %i.d = icmp ult i8 %i.b, %i.c
  br i1 %i.d, label %.lr.ph.i, label %mcmc_toktou32.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.f = zext i8 %i.b to i64
  %wide.trip.count.i = zext i8 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %mcmc_toktou32.exit, label %bb.c, !llvm.loop !5

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.f, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.h = load i16, ptr %i.g, align 2, !tbaa !25
  %i.i = zext i16 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !23
  %i.l = icmp eq i8 %i.k, %2
  br i1 %i.l, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !25
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.r, %bb.d ], [ %i.s, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !23
  %i.u = icmp eq i8 %i.t, 32
  br i1 %i.u, label %bb.e, label %_mcmc_token_len.exit.i, !llvm.loop !6

_mcmc_token_len.exit.i:                           ; preds = %bb.e
  %i.v = ptrtoint ptr %.0.i.i to i64
  %i.w = ptrtoint ptr %i.n to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = add i64 %i.x, 4294967295
  %i.aa = icmp slt i32 %i.y, 2
  %i.ab = and i64 %i.z, 4294967295                ; 3 uses
  %i.ac = icmp samesign ugt i64 %i.ab, 11
  %or.cond = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond, label %mcmc_toktou32.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %_mcmc_token_len.exit.i
  %.not.i36 = icmp eq i64 %i.ab, 0
  br i1 %.not.i36, label %.preheader.i._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %bb.f
  %i.ad = mul nuw i32 %.021.i37, 10
  %i.ae = add i32 %i.ad, %i.ai                    ; 2 uses
  %i.af = add nsw i64 %.in, -1                    ; 2 uses
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %.preheader.i._crit_edge, label %.lr.ph, !llvm.loop !1

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.in = phi i64 [ %i.af, %.preheader.i ], [ %i.ab, %.preheader.i.preheader ]
  %.pn = phi ptr [ %.019.i38, %.preheader.i ], [ %i.n, %.preheader.i.preheader ]
  %.021.i37 = phi i32 [ %i.ae, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %.019.i38 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.ag = load i8, ptr %.019.i38, align 1, !tbaa !23
  %i.ah = add i8 %i.ag, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.ah, 10
  br i1 %or.cond.i, label %bb.f, label %mcmc_toktou32.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ai = zext nneg i8 %i.ah to i32               ; 2 uses
  %i.aj = xor i32 %i.ai, -1
  %i.ak = udiv i32 %i.aj, 10
  %.not29.i.not = icmp ugt i32 %.021.i37, %i.ak
  br i1 %.not29.i.not, label %mcmc_toktou32.exit, label %.preheader.i, !llvm.loop !1

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %.preheader.i.preheader
  %.021.i.lcssa = phi i32 [ 0, %.preheader.i.preheader ], [ %i.ae, %.preheader.i ]
  store i32 %.021.i.lcssa, ptr %3, align 4, !tbaa !29
  br label %mcmc_toktou32.exit

mcmc_toktou32.exit:                               ; preds = %bb.b, %bb.f, %.lr.ph, %bb.a, %_mcmc_token_len.exit.i, %.preheader.i._crit_edge
  %.0 = phi i32 [ -2, %_mcmc_token_len.exit.i ], [ 0, %.preheader.i._crit_edge ], [ -1, %bb.f ], [ -2, %bb.a ], [ -3, %.lr.ph ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -3, 1) i32 @mcmc_token_get_flag_u64(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i8 noundef signext %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !28    ; 2 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !21      ; 2 uses
  %i.d = icmp ult i8 %i.b, %i.c
  br i1 %i.d, label %.lr.ph.i, label %mcmc_toktou64.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.f = zext i8 %i.b to i64
  %wide.trip.count.i = zext i8 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %mcmc_toktou64.exit, label %bb.c, !llvm.loop !5

end_hunk_0
