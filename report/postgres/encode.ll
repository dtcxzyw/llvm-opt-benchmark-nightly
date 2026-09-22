Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/encode?download=true
inline.NumInlined: 87
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@binary_decode:bb.a
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @text_to_cstring(ptr noundef %i.g) #11 ; 6 uses
  %i.i = tail call i32 @pg_strcasecmp(ptr noundef nonnull @.str.6, ptr noundef %i.h) #11
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @pg_strcasecmp(ptr noundef nonnull @.str.3, ptr noundef %i.h) #11
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @pg_strcasecmp(ptr noundef nonnull @.str.4, ptr noundef %i.h) #11
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @pg_strcasecmp(ptr noundef nonnull @.str.2, ptr noundef %i.h) #11
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @pg_strcasecmp(ptr noundef nonnull @.str.5, ptr noundef %i.h) #11
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.t = tail call i32 @errcode(i32 noundef 50856066) #11 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef %i.h) #11 ; 0 uses
  %i.v = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 119, ptr noundef nonnull @__func__.binary_decode) #11
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa.i = phi ptr [ @enclist, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @enclist, i64 40), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @enclist, i64 80), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @enclist, i64 120), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @enclist, i64 160), %bb.e ] ; 2 uses
  %i.w = load i8, ptr %i.d, align 1               ; 3 uses
  %i.x = and i8 %i.w, 1
  %.not.i = icmp eq i8 %i.x, 0
  %.v.i = select i1 %.not.i, i64 4, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i ; 2 uses
  %i.z = zext i8 %i.w to i32                      ; 2 uses
  %i.aa = icmp eq i8 %i.w, 1
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %i.d, i64 1
  %.val.i = load i8, ptr %i.ab, align 1           ; 2 uses
  %i.ac = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.ac, 3
  %i.ad = icmp eq i8 %.val.i, 18
  %i.ae = select i1 %i.ad, i64 16, i64 0
  %i.af = select i1 %or.cond.i.i.i, i64 8, i64 %i.ae
  br label %VARSIZE_ANY_EXHDR.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = and i32 %i.z, 1
  %.not.i23 = icmp eq i32 %i.ag, 0
  br i1 %.not.i23, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = lshr i32 %i.z, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = add nsw i64 %i.ai, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = load i32, ptr %i.d, align 4
  %i.al = lshr i32 %i.ak, 2
  %i.am = add nsw i32 %i.al, -4
  %i.an = zext i32 %i.am to i64
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.h, %bb.j, %bb.k
  %.0.i = phi i64 [ %i.af, %bb.h ], [ %i.aj, %bb.j ], [ %i.an, %bb.k ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i64 %i.ap(ptr noundef nonnull %i.y, i64 noundef %.0.i) #11 ; 3 uses
  %i.ar = icmp ugt i64 %i.aq, 1073741819
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.as = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.at = tail call i32 @errcode(i32 noundef 261) #11 ; 0 uses
  %i.au = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.10) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 133, ptr noundef nonnull @__func__.binary_decode) #11
  unreachable

bb.m:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.av = add nuw nsw i64 %i.aq, 4
  %i.aw = tail call ptr @palloc(i64 noundef %i.av) #11 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ba = tail call i64 %i.ay(ptr noundef nonnull %i.y, i64 noundef %.0.i, ptr noundef nonnull %i.az) #11 ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, %i.aq
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = tail call zeroext i1 @errstart_cold(i32 noundef 22, ptr noundef null) #12 ; 0 uses
  %i.bd = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.11) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 141, ptr noundef nonnull @__func__.binary_decode) #11
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.be = trunc nuw nsw i64 %i.ba to i32
  %i.bf = shl nuw i32 %i.be, 2
  %i.bg = add nuw i32 %i.bf, 16
  store i32 %i.bg, ptr %i.aw, align 4
  %i.bh = ptrtoint ptr %i.aw to i64
  ret i64 %i.bh
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i64 0, -1) i64 @hex_encode(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) #3 {
bb.a:
  %i.a = and i64 %1, -16                          ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.032 = phi i64 [ %i.t, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.032
  %.val = load <2 x i64>, ptr %i.b, align 1       ; 2 uses
  %i.c = bitcast <2 x i64> %.val to <16 x i8>
  %i.d = and <16 x i8> %i.c, splat (i8 15)        ; 2 uses
  %i.e = icmp samesign ugt <16 x i8> %i.d, splat (i8 9)
  %i.f = select <16 x i1> %i.e, <16 x i8> splat (i8 87), <16 x i8> splat (i8 48)
  %i.g = add nuw nsw <16 x i8> %i.f, %i.d         ; 2 uses
  %i.h = bitcast <2 x i64> %.val to <4 x i32>
  %i.i = lshr <4 x i32> %i.h, splat (i32 4)
  %i.j = bitcast <4 x i32> %i.i to <16 x i8>
  %i.k = and <16 x i8> %i.j, splat (i8 15)        ; 2 uses
  %i.l = icmp samesign ugt <16 x i8> %i.k, splat (i8 9)
  %i.m = select <16 x i1> %i.l, <16 x i8> splat (i8 87), <16 x i8> splat (i8 48)
  %i.n = add nuw nsw <16 x i8> %i.m, %i.k         ; 2 uses
  %i.o = shl i64 %.032, 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.o ; 2 uses
  %i.q = shufflevector <16 x i8> %i.n, <16 x i8> %i.g, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.q, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = shufflevector <16 x i8> %i.n, <16 x i8> %i.g, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.s, ptr %i.r, align 1
  %i.t = add nuw i64 %.032, 16                    ; 3 uses
  %i.u = icmp ult i64 %i.t, %i.a
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %.not.i = icmp eq i64 %1, %.0.lcssa
  br i1 %.not.i, label %hex_encode_scalar.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.w = shl i64 %.0.lcssa, 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.011.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.y, %.lr.ph.i.preheader ] ; 2 uses
  %.0910.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.x, %.lr.ph.i.preheader ] ; 2 uses
  %i.z = load i8, ptr %.011.i, align 1
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr @hextbl, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  store i16 %i.ad, ptr %.0910.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i, i64 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i, i64 2
  %i.ag = icmp ult ptr %i.ae, %i.v
  br i1 %i.ag, label %.lr.ph.i, label %hex_encode_scalar.exit, !llvm.loop !7

hex_encode_scalar.exit:                           ; preds = %.lr.ph.i, %._crit_edge
  %i.ah = shl i64 %1, 1
  ret i64 %i.ah
}

; Function Attrs: nounwind uwtable
define dso_local i64 @hex_decode(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @hex_decode_safe(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef null)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i64 @hex_decode_safe(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = and i64 %1, -32                          ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.044 = phi i1 [ %i.ab, %.lr.ph ], [ true, %bb.a ]
  %.02043 = phi i64 [ %i.ah, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.02043 ; 2 uses
  %.val2127 = load <16 x i8>, ptr %i.b, align 1   ; 4 uses
  %i.c = icmp slt <16 x i8> %.val2127, splat (i8 58)
  %i.d = icmp sgt <16 x i8> %.val2127, splat (i8 64)
  %i.e = select <16 x i1> %i.c, <16 x i8> splat (i8 48), <16 x i8> zeroinitializer
  %i.f = select <16 x i1> %i.d, <16 x i8> splat (i8 55), <16 x i8> %i.e
  %i.g = icmp sgt <16 x i8> %.val2127, splat (i8 96)
  %i.h = select <16 x i1> %i.g, <16 x i8> splat (i8 87), <16 x i8> %i.f
  %i.i = tail call <16 x i8> @llvm.ssub.sat.v16i8(<16 x i8> %.val2127, <16 x i8> %i.h) ; 2 uses
  %i.j = bitcast <16 x i8> %i.i to <4 x i32>      ; 2 uses
  %i.k = lshr <4 x i32> %i.j, splat (i32 8)
  %.inner = and <4 x i32> %i.k, splat (i32 983055)
  %i.l = shl <4 x i32> %i.j, splat (i32 4)
  %.inner102 = and <4 x i32> %i.l, splat (i32 15728880)
  %.inner103 = or disjoint <4 x i32> %.inner, %.inner102
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val28 = load <16 x i8>, ptr %i.m, align 1     ; 4 uses
  %i.n = icmp slt <16 x i8> %.val28, splat (i8 58)
  %i.o = icmp sgt <16 x i8> %.val28, splat (i8 64)
  %i.p = select <16 x i1> %i.n, <16 x i8> splat (i8 48), <16 x i8> zeroinitializer
  %i.q = select <16 x i1> %i.o, <16 x i8> splat (i8 55), <16 x i8> %i.p
  %i.r = icmp sgt <16 x i8> %.val28, splat (i8 96)
  %i.s = select <16 x i1> %i.r, <16 x i8> splat (i8 87), <16 x i8> %i.q
  %i.t = tail call <16 x i8> @llvm.ssub.sat.v16i8(<16 x i8> %.val28, <16 x i8> %i.s) ; 2 uses
  %i.u = bitcast <16 x i8> %i.t to <4 x i32>      ; 2 uses
  %i.v = lshr <4 x i32> %i.u, splat (i32 8)
  %.inner104 = and <4 x i32> %i.v, splat (i32 983055)
  %i.w = shl <4 x i32> %i.u, splat (i32 4)
  %.inner105 = and <4 x i32> %i.w, splat (i32 15728880)
  %.inner106 = or disjoint <4 x i32> %.inner104, %.inner105
  %i.x = or <16 x i8> %i.t, %i.i
  %i.y = icmp ugt <16 x i8> %i.x, splat (i8 15)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = icmp eq i16 %i.z, 0
  %i.ab = and i1 %.044, %i.aa                     ; 2 uses
  %i.ac = lshr exact i64 %.02043, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %i.ae = bitcast <4 x i32> %.inner103 to <8 x i16>
  %i.af = bitcast <4 x i32> %.inner106 to <8 x i16>
  %i.ag = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ae, <8 x i16> %i.af)
  store <16 x i8> %i.ag, ptr %i.ad, align 1
  %i.ah = add nuw i64 %.02043, 32                 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %i.a
  br i1 %i.ai, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !8

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.aj = select i1 %i.ab, i64 %i.ah, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.aj, %._crit_edge.loopexit ] ; 3 uses
  %i.ak = lshr exact i64 %.0.lcssa, 1             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 5 uses
  %.not58.i = icmp eq i64 %1, %.0.lcssa
  br i1 %.not58.i, label %.outer._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.outer.i
  %.0.ph56.i = phi ptr [ %i.bq, %.outer.i ], [ %i.al, %.lr.ph.i.preheader ] ; 3 uses
  %.035.ph55.i = phi ptr [ %i.bn, %.outer.i ], [ %i.an, %.lr.ph.i.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.03553.i = phi ptr [ %.035.ph55.i, %.lr.ph.i ], [ %i.ap, %bb.c ] ; 6 uses
  %i.ao = load i8, ptr %.03553.i, align 1         ; 3 uses
  switch i8 %i.ao, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %.03553.i, i64 1 ; 2 uses
  %i.aq = icmp ult ptr %i.ap, %i.am
  br i1 %i.aq, label %bb.b, label %.outer._crit_edge.i, !llvm.loop !9

bb.d:                                             ; preds = %bb.b
  %i.ar = icmp ult i8 %i.ao, 127
  br i1 %i.ar, label %get_hex.exit.i, label %get_hex.exit.thread.i

get_hex.exit.i:                                   ; preds = %bb.d
  %i.as = zext nneg i8 %i.ao to i64
  %i.at = getelementptr inbounds nuw i8, ptr @hexlookup, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %i.av = icmp sgt i8 %i.au, -1
  br i1 %i.av, label %bb.f, label %get_hex.exit.thread.i

get_hex.exit.thread.i:                            ; preds = %get_hex.exit.i, %bb.d
  %i.aw = tail call zeroext i1 @errsave_start(ptr noundef %3, ptr noundef null) #11
  br i1 %i.aw, label %bb.e, label %hex_decode_safe_scalar.exit

bb.e:                                             ; preds = %get_hex.exit.thread.i
  %i.ax = tail call i32 @errcode(i32 noundef 50856066) #11 ; 0 uses
  %i.ay = tail call i32 @pg_mblen_range(ptr noundef nonnull %.03553.i, ptr noundef nonnull %i.am) #11
  %i.az = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.12, i32 noundef %i.ay, ptr noundef nonnull %.03553.i) #11 ; 0 uses
  tail call void @errsave_finish(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 293, ptr noundef nonnull @__func__.hex_decode_safe_scalar) #11
  br label %hex_decode_safe_scalar.exit

bb.f:                                             ; preds = %get_hex.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.03553.i, i64 1 ; 4 uses
  %.not.i23 = icmp ult ptr %i.ba, %i.am
  br i1 %.not.i23, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = tail call zeroext i1 @errsave_start(ptr noundef %3, ptr noundef null) #11
  br i1 %i.bb, label %bb.h, label %hex_decode_safe_scalar.exit

bb.h:                                             ; preds = %bb.g
  %i.bc = tail call i32 @errcode(i32 noundef 50856066) #11 ; 0 uses
  %i.bd = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.13) #11 ; 0 uses
  tail call void @errsave_finish(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 298, ptr noundef nonnull @__func__.hex_decode_safe_scalar) #11
  br label %hex_decode_safe_scalar.exit

bb.i:                                             ; preds = %bb.f
  %.val.i = load i8, ptr %i.ba, align 1           ; 2 uses
  %i.be = icmp ult i8 %.val.i, 127
  br i1 %i.be, label %get_hex.exit41.i, label %get_hex.exit41.thread.i

get_hex.exit41.i:                                 ; preds = %bb.i
  %i.bf = zext nneg i8 %.val.i to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @hexlookup, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1             ; 2 uses
  %i.bi = icmp sgt i8 %i.bh, -1
  br i1 %i.bi, label %.outer.i, label %get_hex.exit41.thread.i

get_hex.exit41.thread.i:                          ; preds = %get_hex.exit41.i, %bb.i
  %i.bj = tail call zeroext i1 @errsave_start(ptr noundef %3, ptr noundef null) #11
  br i1 %i.bj, label %bb.j, label %hex_decode_safe_scalar.exit

bb.j:                                             ; preds = %get_hex.exit41.thread.i
  %i.bk = tail call i32 @errcode(i32 noundef 50856066) #11 ; 0 uses
  %i.bl = tail call i32 @pg_mblen_range(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.am) #11
  %i.bm = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.12, i32 noundef %i.bl, ptr noundef nonnull %i.ba) #11 ; 0 uses
  tail call void @errsave_finish(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 303, ptr noundef nonnull @__func__.hex_decode_safe_scalar) #11
  br label %hex_decode_safe_scalar.exit

.outer.i:                                         ; preds = %get_hex.exit41.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.03553.i, i64 2 ; 2 uses
  %i.bo = shl i8 %i.au, 4
  %i.bp = or i8 %i.bh, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.ph56.i, i64 1 ; 2 uses
  store i8 %i.bp, ptr %.0.ph56.i, align 1
  %i.br = icmp ult ptr %i.bn, %i.am
  br i1 %i.br, label %.lr.ph.i, label %.outer._crit_edge.i, !llvm.loop !9

.outer._crit_edge.i:                              ; preds = %.outer.i, %bb.c, %._crit_edge
  %.0.ph.lcssa52.i = phi ptr [ %.0.ph56.i, %bb.c ], [ %i.al, %._crit_edge ], [ %i.bq, %.outer.i ]
  %i.bs = ptrtoint ptr %.0.ph.lcssa52.i to i64
  %i.bt = ptrtoint ptr %i.al to i64
  %i.bu = sub i64 %i.bs, %i.bt
  br label %hex_decode_safe_scalar.exit

hex_decode_safe_scalar.exit:                      ; preds = %get_hex.exit.thread.i, %bb.e, %bb.g, %bb.h, %get_hex.exit41.thread.i, %bb.j, %.outer._crit_edge.i
  %.036.i = phi i64 [ 0, %get_hex.exit.thread.i ], [ 0, %bb.g ], [ %i.bu, %.outer._crit_edge.i ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %get_hex.exit41.thread.i ]
  %i.bv = add i64 %.036.i, %i.ak
  ret i64 %i.bv
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.ssub.sat.v16i8(<16 x i8>, <16 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #6

declare zeroext i1 @errsave_start(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @pg_mblen_range(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @errsave_finish(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @pg_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i64 0, -1) i64 @hex_enc_len(ptr nofree readnone captures(none) %0, i64 noundef %1) #7 {
bb.a:
  %i.a = shl i64 %1, 1
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i64 0, -9223372036854775808) i64 @hex_dec_len(ptr nofree readnone captures(none) %0, i64 noundef %1) #7 {
bb.a:
  %i.a = lshr i64 %1, 1
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @pg_base64_enc_len(ptr nofree readnone captures(none) %0, i64 noundef %1) #7 {
bb.a:
  %i.a = add i64 %1, 2
  %i.b = udiv i64 %i.a, 3
  %i.c = shl i64 %i.b, 2
  %i.d = udiv i64 %1, 57
  %i.e = add i64 %i.c, %i.d
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i64 0, 4611686018427387904) i64 @pg_base64_dec_len(ptr nofree readnone captures(none) %0, i64 noundef %1) #7 {
bb.a:
  %i.a = mul i64 %1, 3
  %i.b = lshr i64 %i.a, 2
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @pg_base64_encode(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr noundef %2) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %.not68.i = icmp eq i64 %1, 0
  br i1 %.not68.i, label %pg_base64_encode_internal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 76
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.d, %.lr.ph.i
  %.063.i = phi i32 [ %.1.i, %bb.d ], [ 0, %.lr.ph.i ]
  %.04862.i = phi i32 [ %.149.i, %bb.d ], [ 2, %.lr.ph.i ] ; 3 uses
end_hunk_0
