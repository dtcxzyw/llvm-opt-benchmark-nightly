Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/decompress_bunzip2?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@get_bits:bb.a
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 60
  %.pre64 = load i32, ptr %.phi.trans.insert, align 4
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 41108      ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 60         ; 2 uses
  %.pre = load i64, ptr %i.e, align 8
  %.pre61 = load i64, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.k = phi i32 [ %i.b, %.lr.ph ], [ %i.ag, %bb.i ]
  %i.l = phi i64 [ %.pre61, %.lr.ph ], [ %i.v, %bb.i ] ; 2 uses
  %i.m = phi i64 [ %.pre, %.lr.ph ], [ %i.aj, %bb.i ] ; 2 uses
  %.054 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.i ]
  %.03153 = phi i8 [ %1, %.lr.ph ], [ %.132, %bb.i ] ; 3 uses
  %i.n = icmp eq i64 %i.m, %i.l
  br i1 %i.n, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.g, align 4
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.h, align 8
  %i.q = load ptr, ptr %i.i, align 8
  %i.r = tail call i64 %i.p(ptr noundef %i.q, i64 noundef 4096) #10 ; 3 uses
  store i64 %i.r, ptr %i.f, align 8
  %i.s = icmp slt i64 %i.r, 1
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 -3, ptr %i.g, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %.pre62 = load i32, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.t = phi i64 [ 0, %bb.f ], [ %i.m, %bb.b ]    ; 2 uses
  %i.u = phi i32 [ %.pre62, %bb.f ], [ %i.k, %bb.b ] ; 4 uses
  %i.v = phi i64 [ %i.r, %bb.f ], [ %i.l, %bb.b ]
  %i.w = icmp ugt i32 %i.u, 23
  %.pre63 = load i32, ptr %i.j, align 4           ; 2 uses
  br i1 %i.w, label %bb.h, label %._crit_edge65

._crit_edge65:                                    ; preds = %bb.g
  %.pre66 = zext i8 %.03153 to i32
  %i.x = add nuw nsw i32 %i.u, 8
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = zext nneg i32 %i.u to i64
  %notmask38 = shl nsw i64 -1, %i.y
  %i.z = trunc i64 %notmask38 to i32
  %i.aa = xor i32 %i.z, -1
  %i.ab = and i32 %.pre63, %i.aa
  %i.ac = trunc i32 %i.u to i8
  %i.ad = sub i8 %.03153, %i.ac                   ; 2 uses
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = shl i32 %i.ab, %i.ae
  store i32 0, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge65, %bb.h
  %.pre-phi = phi i32 [ %.pre66, %._crit_edge65 ], [ %i.ae, %bb.h ] ; 2 uses
  %i.ag = phi i32 [ %i.x, %._crit_edge65 ], [ 8, %bb.h ] ; 4 uses
  %.132 = phi i8 [ %.03153, %._crit_edge65 ], [ %i.ad, %bb.h ] ; 2 uses
  %.1 = phi i32 [ %.054, %._crit_edge65 ], [ %i.af, %bb.h ] ; 2 uses
  %i.ah = shl i32 %.pre63, 8
  %i.ai = load ptr, ptr %i.i, align 8
  %i.aj = add i64 %i.t, 1                         ; 2 uses
  store i64 %i.aj, ptr %i.e, align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.t
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = or disjoint i32 %i.ah, %i.am            ; 2 uses
  store i32 %i.an, ptr %i.j, align 4
  store i32 %i.ag, ptr %i.a, align 8
  %i.ao = icmp samesign ult i32 %i.ag, %.pre-phi
  br i1 %i.ao, label %bb.b, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.i, %.._crit_edge_crit_edge
  %i.ap = phi i32 [ %.pre64, %.._crit_edge_crit_edge ], [ %i.an, %bb.i ]
  %.031.lcssa = phi i8 [ %1, %.._crit_edge_crit_edge ], [ %.132, %bb.i ]
  %.0.lcssa = phi i32 [ 0, %.._crit_edge_crit_edge ], [ %.1, %bb.i ]
  %.lcssa41 = phi i32 [ %i.b, %.._crit_edge_crit_edge ], [ %i.ag, %bb.i ]
  %.lcssa = phi i32 [ %i.c, %.._crit_edge_crit_edge ], [ %.pre-phi, %bb.i ]
  %i.aq = sub nuw i32 %.lcssa41, %.lcssa          ; 2 uses
  store i32 %i.aq, ptr %i.a, align 8
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = zext nneg i8 %.031.lcssa to i64
  %notmask = shl nsw i64 -1, %i.as
  %i.at = trunc i64 %notmask to i32
  %i.au = xor i32 %i.at, -1
  %i.av = and i32 %i.ar, %i.au
  %i.aw = or i32 %i.av, %.0.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %._crit_edge, %bb.e
  %.033 = phi i32 [ %i.aw, %._crit_edge ], [ 0, %bb.e ], [ 0, %bb.c ]
  ret i32 %.033
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_noprof(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc range(i32 -7, 1) i32 @get_next_block(ptr nofree noundef %0) unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca [258 x i8], align 16              ; 9 uses
  %i.b = alloca [21 x i16], align 16              ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 1104
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 1112
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 1116       ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 41112      ; 5 uses
  %i.i = getelementptr i8, ptr %0, i64 42136      ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 42392      ; 12 uses
  %i.k = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 24) #11, !srcloc !37 ; 2 uses
  %i.l = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 24) #11, !srcloc !38 ; 2 uses
  %i.m = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 32) #11, !srcloc !39
  %i.n = getelementptr i8, ptr %0, i64 1088
  store i32 %i.m, ptr %i.n, align 8
  %i.o = icmp eq i32 %i.k, 1536581
  %i.p = icmp eq i32 %i.l, 3690640
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond, label %.loopexit358, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ne i32 %i.k, 3227993
  %i.r = icmp ne i32 %i.l, 2511705
  %or.cond3 = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond3, label %.loopexit358, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 1) #11, !srcloc !40
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.d, label %.loopexit358

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 24) #11, !srcloc !41 ; 3 uses
  %.not335 = icmp ult i32 %i.t, %i.f
  br i1 %.not335, label %bb.e, label %.loopexit358

bb.e:                                             ; preds = %bb.d
  %i.u = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 16) #11, !srcloc !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit370
  %.0270393 = phi i32 [ 0, %bb.e ], [ %.3273, %.loopexit370 ] ; 2 uses
  %.0289392 = phi i32 [ 0, %bb.e ], [ %i.ah, %.loopexit370 ] ; 3 uses
  %i.v = lshr exact i32 32768, %.0289392
  %i.w = and i32 %i.v, %i.u
  %.not352 = icmp eq i32 %i.w, 0
  br i1 %.not352, label %.loopexit370, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 16) #11, !srcloc !43
  %i.y = shl nuw nsw i32 %.0289392, 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.j
  %.1271391 = phi i32 [ %.0270393, %bb.g ], [ %.2272, %bb.j ] ; 3 uses
  %.0283390 = phi i32 [ 0, %bb.g ], [ %i.ag, %bb.j ] ; 3 uses
  %i.z = lshr exact i32 32768, %.0283390
  %i.aa = and i32 %i.z, %i.x
  %.not353 = icmp eq i32 %i.aa, 0
  br i1 %.not353, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw nsw i32 %.0283390, %i.y
  %i.ac = trunc nuw i32 %i.ab to i8
  %i.ad = add i32 %.1271391, 1
  %i.ae = sext i32 %.1271391 to i64
  %i.af = getelementptr i8, ptr %i.i, i64 %i.ae
  store i8 %i.ac, ptr %i.af, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.2272 = phi i32 [ %i.ad, %bb.i ], [ %.1271391, %bb.h ] ; 2 uses
  %i.ag = add nuw nsw i32 %.0283390, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ag, 16
  br i1 %exitcond.not, label %.loopexit370, label %bb.h, !llvm.loop !17

.loopexit370:                                     ; preds = %bb.j, %bb.f
  %.3273 = phi i32 [ %.0270393, %bb.f ], [ %.2272, %bb.j ] ; 4 uses
  %i.ah = add nuw nsw i32 %.0289392, 1            ; 2 uses
  %exitcond498.not = icmp eq i32 %i.ah, 16
  br i1 %exitcond498.not, label %bb.k, label %bb.f, !llvm.loop !18

bb.k:                                             ; preds = %.loopexit370
  %i.ai = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 3) #11, !srcloc !44 ; 4 uses
  %i.aj = add i32 %i.ai, -7
  %or.cond5 = icmp ult i32 %i.aj, -5
  br i1 %or.cond5, label %.loopexit358, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 15) #11, !srcloc !45 ; 4 uses
  %.not336 = icmp eq i32 %i.ak, 0
  br i1 %.not336, label %.loopexit358, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %wide.trip.count = zext nneg i32 %i.ai to i64
  br label %.lr.ph

.preheader368:                                    ; preds = %.lr.ph
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.preheader366.preheader, label %.lr.ph451

.preheader366.preheader:                          ; preds = %.preheader368
  %wide.trip.count511 = zext nneg i32 %i.ak to i64
  br label %.preheader366

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.am = trunc i64 %indvars.iv to i8
  %i.an = getelementptr i8, ptr %i.j, i64 %indvars.iv
  store i8 %i.am, ptr %i.an, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond500.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond500.not, label %.preheader368, label %.lr.ph, !llvm.loop !19

.preheader366:                                    ; preds = %.preheader366.preheader, %._crit_edge402
  %indvars.iv508 = phi i64 [ 0, %.preheader366.preheader ], [ %indvars.iv.next509, %._crit_edge402 ] ; 2 uses
  %i.ao = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 1) #11, !srcloc !46
  %.not349395 = icmp eq i32 %i.ao, 0
  br i1 %.not349395, label %._crit_edge.thread, label %.lr.ph659

._crit_edge.thread:                               ; preds = %.preheader366
  %i.ap = load i8, ptr %i.j, align 8
  br label %._crit_edge402

.lr.ph397:                                        ; preds = %.lr.ph659
  %exitcond501.not = icmp eq i32 %i.aq, %i.ai
  br i1 %exitcond501.not, label %.loopexit358, label %.lr.ph659, !llvm.loop !20

.lr.ph659:                                        ; preds = %.preheader366, %.lr.ph397
  %.1284396658 = phi i32 [ %i.aq, %.lr.ph397 ], [ 0, %.preheader366 ]
  %i.aq = add nuw i32 %.1284396658, 1             ; 4 uses
  %i.ar = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 1) #11, !srcloc !46
  %.not349 = icmp eq i32 %i.ar, 0
  br i1 %.not349, label %.lr.ph401.preheader, label %.lr.ph397, !llvm.loop !20

.lr.ph401.preheader:                              ; preds = %.lr.ph659
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = getelementptr i8, ptr %i.j, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %i.av = sext i32 %i.aq to i64
  br label %.lr.ph401

.lr.ph401:                                        ; preds = %.lr.ph401.preheader, %.lr.ph401
  %indvars.iv505 = phi i64 [ %i.av, %.lr.ph401.preheader ], [ %indvars.iv.next506, %.lr.ph401 ] ; 2 uses
  %indvars.iv.next506 = add nsw i64 %indvars.iv505, -1 ; 3 uses
  %i.aw = getelementptr i8, ptr %i.j, i64 %indvars.iv.next506
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = getelementptr i8, ptr %i.j, i64 %indvars.iv505
  store i8 %i.ax, ptr %i.ay, align 1
  %.not350 = icmp eq i64 %indvars.iv.next506, 0
  br i1 %.not350, label %._crit_edge402, label %.lr.ph401, !llvm.loop !21

._crit_edge402:                                   ; preds = %.lr.ph401, %._crit_edge.thread
  %i.az = phi i8 [ %i.ap, %._crit_edge.thread ], [ %i.au, %.lr.ph401 ] ; 2 uses
  %i.ba = getelementptr i8, ptr %i.g, i64 %indvars.iv508
  store i8 %i.az, ptr %i.ba, align 1
  store i8 %i.az, ptr %i.j, align 8
  %indvars.iv.next509 = add nuw nsw i64 %indvars.iv508, 1 ; 2 uses
  %exitcond512.not = icmp eq i64 %indvars.iv.next509, %wide.trip.count511
  br i1 %exitcond512.not, label %.lr.ph451, label %.preheader366, !llvm.loop !22

.lr.ph451:                                        ; preds = %._crit_edge402, %.preheader368
  %i.bb = add i32 %.3273, 2                       ; 5 uses
  %.not348411 = icmp sgt i32 %i.bb, 0             ; 2 uses
  %i.bc = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.bd = icmp ult i32 %.3273, 2147483646
  %i.be = getelementptr i8, ptr %0, i64 33884     ; 3 uses
  %wide.trip.count542 = zext nneg i32 %i.ai to i64
  %wide.trip.count516 = zext nneg i32 %i.bb to i64
  %wide.trip.count521 = zext nneg i32 %i.bb to i64
  %wide.trip.count526 = zext nneg i32 %i.bb to i64
  %wide.trip.count534 = zext nneg i32 %i.bb to i64
  br label %bb.m

.preheader363.._crit_edge442_crit_edge:           ; preds = %.preheader363, %._crit_edge442.loopexit
  %.4.lcssa = phi i32 [ %i.el, %._crit_edge442.loopexit ], [ 0, %.preheader363 ]
  %.3.lcssa = phi i32 [ %i.eq, %._crit_edge442.loopexit ], [ -1, %.preheader363 ]
  %i.bf = zext nneg i32 %.0265.lcssa593596 to i64 ; 2 uses
  %i.bg = getelementptr [4 x i8], ptr %i.ds, i64 %i.bf ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  store i32 2147483647, ptr %i.bh, align 4
  %i.bi = getelementptr [2 x i8], ptr %i.b, i64 %i.bf
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add i32 %.3.lcssa, %i.bk
  store i32 %i.bl, ptr %i.bg, align 4
  %i.bm = getelementptr [4 x i8], ptr %i.dr, i64 %i.du
  store i32 0, ptr %i.bm, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %indvars.iv.next540 = add nuw nsw i64 %indvars.iv539, 1 ; 2 uses
  %exitcond543.not = icmp eq i64 %indvars.iv.next540, %wide.trip.count542
  br i1 %exitcond543.not, label %.preheader360, label %bb.m, !llvm.loop !23

.preheader360:                                    ; preds = %.preheader363.._crit_edge442_crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(1024) %i.h, i8 0, i64 1024, i1 false)
  br label %bb.s

bb.m:                                             ; preds = %.lr.ph451, %.preheader363.._crit_edge442_crit_edge
  %indvars.iv539 = phi i64 [ 0, %.lr.ph451 ], [ %indvars.iv.next540, %.preheader363.._crit_edge442_crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(258) %i.a, i8 0, i64 258, i1 false), !annotation !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.b, i8 0, i64 42, i1 false), !annotation !47
  %i.bn = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 5) #11, !srcloc !48
  br i1 %.not348411, label %.preheader361.preheader, label %._crit_edge422.thread

.preheader361.preheader:                          ; preds = %bb.m
  %i.bo = add i32 %i.bn, -1
  br label %.preheader361

.preheader361:                                    ; preds = %.preheader361.preheader, %bb.n
  %indvars.iv513 = phi i64 [ 0, %.preheader361.preheader ], [ %indvars.iv.next514, %bb.n ] ; 2 uses
  %.1280413 = phi i32 [ %i.bo, %.preheader361.preheader ], [ %.2281405, %bb.n ] ; 2 uses
  %i.bp = icmp ugt i32 %.1280413, 19
  br i1 %i.bp, label %.loopexit358.loopexit476, label %.lr.ph406

.lr.ph406:                                        ; preds = %.preheader361, %bb.o
  %.2281405 = phi i32 [ %i.ca, %bb.o ], [ %.1280413, %.preheader361 ] ; 3 uses
  %i.bq = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 2) #11, !srcloc !49 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 2
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph406
  %i.bs = load i32, ptr %i.bc, align 8
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.bc, align 8
  %i.bu = trunc nuw nsw i32 %.2281405 to i8
  %i.bv = add nuw nsw i8 %i.bu, 1
  %i.bw = getelementptr i8, ptr %i.a, i64 %indvars.iv513
  store i8 %i.bv, ptr %i.bw, align 1
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %exitcond517.not = icmp eq i64 %indvars.iv.next514, %wide.trip.count516
  br i1 %exitcond517.not, label %._crit_edge415, label %.preheader361, !llvm.loop !24

bb.o:                                             ; preds = %.lr.ph406
  %i.bx = add nuw i32 %i.bq, 1
  %i.by = and i32 %i.bx, 2
  %i.bz = add nsw i32 %.2281405, -1
  %i.ca = add nsw i32 %i.bz, %i.by                ; 2 uses
  %i.cb = icmp ugt i32 %i.ca, 19
  br i1 %i.cb, label %.loopexit358.loopexit476, label %.lr.ph406

._crit_edge415:                                   ; preds = %bb.n
  %.pre = load i8, ptr %i.a, align 16
  %i.cc = zext i8 %.pre to i32                    ; 3 uses
  br i1 %i.bd, label %.lr.ph421, label %._crit_edge422.thread

.lr.ph421:                                        ; preds = %._crit_edge415, %.lr.ph421
  %indvars.iv518 = phi i64 [ %indvars.iv.next519, %.lr.ph421 ], [ 1, %._crit_edge415 ] ; 2 uses
  %.0265419 = phi i32 [ %.1266, %.lr.ph421 ], [ %i.cc, %._crit_edge415 ] ; 2 uses
  %.0267418 = phi i32 [ %.1268, %.lr.ph421 ], [ %i.cc, %._crit_edge415 ] ; 2 uses
  %i.cd = getelementptr i8, ptr %i.a, i64 %indvars.iv518
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i32                    ; 3 uses
  %i.cg = icmp samesign ult i32 %.0265419, %i.cf
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.0267418, i32 %i.cf)
  %.1268 = select i1 %i.cg, i32 %.0267418, i32 %spec.select ; 5 uses
  %.1266 = tail call i32 @llvm.umax.i32(i32 %.0265419, i32 %i.cf) ; 5 uses
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1 ; 2 uses
  %exitcond522.not = icmp eq i64 %indvars.iv.next519, %wide.trip.count521
  br i1 %exitcond522.not, label %._crit_edge422, label %.lr.ph421, !llvm.loop !25

._crit_edge422.thread:                            ; preds = %._crit_edge415, %bb.m
  %.0267.lcssa.ph = phi i32 [ %i.cc, %._crit_edge415 ], [ 0, %bb.m ] ; 4 uses
  %i.ch = getelementptr [1204 x i8], ptr %i.be, i64 %indvars.iv539 ; 5 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 1196
  store i32 %.0267.lcssa.ph, ptr %i.ci, align 4
  %i.cj = getelementptr i8, ptr %i.ch, i64 1200
  store i32 %.0267.lcssa.ph, ptr %i.cj, align 4
  %i.ck = getelementptr i8, ptr %i.ch, i64 80
  %i.cl = getelementptr i8, ptr %i.ch, i64 -4
  br label %.lr.ph435

._crit_edge422:                                   ; preds = %.lr.ph421
  %i.cm = getelementptr [1204 x i8], ptr %i.be, i64 %indvars.iv539 ; 6 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 1196
  store i32 %.1268, ptr %i.cn, align 4
  %i.co = getelementptr i8, ptr %i.cm, i64 1200
  store i32 %.1266, ptr %i.co, align 4
  %i.cp = getelementptr i8, ptr %i.cm, i64 80     ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cm, i64 -4     ; 2 uses
  %.not347431 = icmp sgt i32 %.1268, %.1266
  br i1 %.not347431, label %.lr.ph437.preheader, label %.lr.ph435

.lr.ph435:                                        ; preds = %._crit_edge422.thread, %._crit_edge422
  %i.cr = phi ptr [ %i.cl, %._crit_edge422.thread ], [ %i.cq, %._crit_edge422 ] ; 3 uses
  %i.cs = phi ptr [ %i.ck, %._crit_edge422.thread ], [ %i.cp, %._crit_edge422 ] ; 2 uses
  %i.ct = phi ptr [ %i.ch, %._crit_edge422.thread ], [ %i.cm, %._crit_edge422 ] ; 2 uses
  %.0265.lcssa592 = phi i32 [ %.0267.lcssa.ph, %._crit_edge422.thread ], [ %.1266, %._crit_edge422 ] ; 5 uses
  %.0267.lcssa590 = phi i32 [ %.0267.lcssa.ph, %._crit_edge422.thread ], [ %.1268, %._crit_edge422 ] ; 4 uses
  %i.cu = getelementptr [1204 x i8], ptr %i.be, i64 %indvars.iv539
  %i.cv = getelementptr i8, ptr %i.cu, i64 164
  %i.cw = zext nneg i32 %.0267.lcssa590 to i64    ; 2 uses
  %i.cx = shl nuw nsw i64 %i.cw, 1
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.cx
  %i.cy = sub nsw i32 %.0265.lcssa592, %.0267.lcssa590
  %i.cz = shl nuw i32 %i.cy, 1
  %i.da = zext i32 %i.cz to i64
  %i.db = add nuw nsw i64 %i.da, 2
  call void @llvm.memset.p0.i64(ptr noundef align 2 %scevgep, i8 0, i64 %i.db, i1 false)
  br label %.outer614

.lr.ph437.preheader:                              ; preds = %._crit_edge429, %._crit_edge422
  %.0267.lcssa591599 = phi i32 [ %.1268, %._crit_edge422 ], [ %.0267.lcssa590, %._crit_edge429 ]
  %.0265.lcssa593597 = phi i32 [ %.1266, %._crit_edge422 ], [ %.0265.lcssa592, %._crit_edge429 ]
  %i.dc = phi ptr [ %i.cm, %._crit_edge422 ], [ %i.ct, %._crit_edge429 ]
  %i.dd = phi ptr [ %i.cp, %._crit_edge422 ], [ %i.cs, %._crit_edge429 ]
  %i.de = phi ptr [ %i.cq, %._crit_edge422 ], [ %i.cr, %._crit_edge429 ]
  br label %.lr.ph437

bb.p:                                             ; preds = %.outer614, %._crit_edge429.thread
  %indvars.iv528 = phi i64 [ %indvars.iv.next529601, %._crit_edge429.thread ], [ %indvars.iv528.ph, %.outer614 ] ; 6 uses
  %i.df = getelementptr [4 x i8], ptr %i.cr, i64 %indvars.iv528
  store i32 0, ptr %i.df, align 4
  br i1 %.not348411, label %.lr.ph428, label %._crit_edge429.thread

.lr.ph428:                                        ; preds = %bb.p, %bb.r
  %indvars.iv523 = phi i64 [ %indvars.iv.next524, %bb.r ], [ 0, %bb.p ] ; 3 uses
  %.1426 = phi i32 [ %.2, %bb.r ], [ %.0433.ph, %bb.p ] ; 3 uses
  %i.dg = getelementptr i8, ptr %i.a, i64 %indvars.iv523
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = zext i8 %i.dh to i64
  %i.dj = icmp eq i64 %indvars.iv528, %i.di
  br i1 %i.dj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph428
  %i.dk = add i32 %.1426, 1
  %i.dl = sext i32 %.1426 to i64
  %i.dm = getelementptr [4 x i8], ptr %i.cv, i64 %i.dl
end_hunk_0
begin_hunk_1_@get_next_block:bb.a
  %i.gr = load i32, ptr %i.fi, align 4
  %i.gs = sub i32 %i.gr, %.9298
  %i.gt = load i32, ptr %i.es, align 8
  %i.gu = add i32 %i.gs, %i.gt
  store i32 %i.gu, ptr %i.es, align 8
  %i.gv = load i32, ptr %i.fi, align 4            ; 2 uses
  %i.gw = icmp sgt i32 %.9298, %i.gv
  br i1 %i.gw, label %.loopexit358, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gx = sub i32 %i.gv, %.9298
  %i.gy = ashr i32 %.4287, %i.gx
  %i.gz = getelementptr [4 x i8], ptr %.3311, i64 %i.gm
  %i.ha = load i32, ptr %i.gz, align 4
  %i.hb = sub i32 %i.gy, %i.ha                    ; 2 uses
  %i.hc = icmp ugt i32 %i.hb, 257
  br i1 %i.hc, label %.loopexit358, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hd = getelementptr i8, ptr %.3315, i64 164
  %i.he = zext nneg i32 %i.hb to i64
  %i.hf = getelementptr [4 x i8], ptr %i.hd, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4            ; 4 uses
  %i.hh = icmp ult i32 %i.hg, 2
  %.not346 = icmp eq i32 %.0276, 0                ; 2 uses
  br i1 %i.hh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %spec.select354 = select i1 %.not346, i32 0, i32 %.6
  %spec.select355 = tail call i32 @llvm.umax.i32(i32 %.0276, i32 1) ; 2 uses
  %i.hi = shl i32 %spec.select355, %i.hg
  %i.hj = add i32 %i.hi, %spec.select354
  %i.hk = shl i32 %spec.select355, 1
  br label %bb.t

bb.ae:                                            ; preds = %bb.ac
  br i1 %.not346, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hl = add i32 %.6, %.0301.ph
  %.not340 = icmp slt i32 %i.hl, %i.f
  br i1 %.not340, label %bb.ag, label %.loopexit358

bb.ag:                                            ; preds = %bb.af
  %i.hm = load i8, ptr %i.j, align 8
  %i.hn = zext i8 %i.hm to i64
  %i.ho = getelementptr i8, ptr %i.i, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1             ; 2 uses
  %i.hq = zext i8 %i.hp to i64
  %i.hr = getelementptr [4 x i8], ptr %i.h, i64 %i.hq ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = add i32 %i.hs, %.6
  store i32 %i.ht, ptr %i.hr, align 4
  %.not341463 = icmp eq i32 %.6, 0
  br i1 %.not341463, label %.loopexit, label %.lr.ph467

.lr.ph467:                                        ; preds = %bb.ag
  %i.hu = zext i8 %i.hp to i32
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph467, %bb.ah
  %.8465 = phi i32 [ %.6, %.lr.ph467 ], [ %i.hv, %bb.ah ]
  %.1302464 = phi i32 [ %.0301.ph, %.lr.ph467 ], [ %i.hw, %bb.ah ] ; 2 uses
  %i.hv = add i32 %.8465, -1                      ; 2 uses
  %i.hw = add i32 %.1302464, 1                    ; 2 uses
  %i.hx = sext i32 %.1302464 to i64
  %i.hy = getelementptr [4 x i8], ptr %i.d, i64 %i.hx
  store i32 %i.hu, ptr %i.hy, align 4
  %.not341 = icmp eq i32 %i.hv, 0
  br i1 %.not341, label %.loopexit, label %bb.ah, !llvm.loop !33

.loopexit:                                        ; preds = %bb.ah, %bb.ag, %bb.ae
  %.2303 = phi i32 [ %.0301.ph, %bb.ae ], [ %.0301.ph, %bb.ag ], [ %i.hw, %bb.ah ] ; 8 uses
  %.9 = phi i32 [ %.6, %bb.ae ], [ -1, %bb.ag ], [ -1, %bb.ah ]
  %i.hz = icmp sgt i32 %i.hg, %.3273
  br i1 %i.hz, label %.preheader356, label %bb.ai

bb.ai:                                            ; preds = %.loopexit
  %.not342 = icmp slt i32 %.2303, %i.f
  br i1 %.not342, label %bb.aj, label %.loopexit358

bb.aj:                                            ; preds = %bb.ai
  %i.ia = add i32 %i.hg, -1                       ; 2 uses
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr i8, ptr %i.j, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1             ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.10 = phi i32 [ %i.ia, %bb.aj ], [ %i.ie, %bb.ak ] ; 2 uses
  %i.ie = add i32 %.10, -1                        ; 3 uses
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr i8, ptr %i.j, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1
  %i.ii = sext i32 %.10 to i64
  %i.ij = getelementptr i8, ptr %i.j, i64 %i.ii
  store i8 %i.ih, ptr %i.ij, align 1
  %.not343 = icmp eq i32 %i.ie, 0
  br i1 %.not343, label %bb.al, label %bb.ak, !llvm.loop !34

bb.al:                                            ; preds = %bb.ak
  store i8 %i.id, ptr %i.j, align 8
  %i.ik = zext i8 %i.id to i64
  %i.il = getelementptr i8, ptr %i.i, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1             ; 2 uses
  %i.in = zext i8 %i.im to i64
  %i.io = getelementptr [4 x i8], ptr %i.h, i64 %i.in ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = add i32 %i.ip, 1
  store i32 %i.iq, ptr %i.io, align 4
  %i.ir = zext i8 %i.im to i32
  %i.is = add nsw i32 %.2303, 1
  %i.it = sext i32 %.2303 to i64
  %i.iu = getelementptr [4 x i8], ptr %i.d, i64 %i.it
  store i32 %i.ir, ptr %i.iu, align 4
  br label %.outer

.outer:                                           ; preds = %.preheader357, %bb.al
  %.2314.ph = phi ptr [ %i.dq, %.preheader357 ], [ %.3315, %bb.al ]
  %.2310.ph = phi ptr [ %i.dr, %.preheader357 ], [ %.3311, %bb.al ]
  %.2306.ph = phi ptr [ %i.ds, %.preheader357 ], [ %.3307, %bb.al ]
  %.0301.ph = phi i32 [ 0, %.preheader357 ], [ %i.is, %bb.al ] ; 4 uses
  %.0299.ph = phi i32 [ 0, %.preheader357 ], [ %.1300, %bb.al ]
  %.6.ph = phi i32 [ %.4.lcssa, %.preheader357 ], [ %.9, %bb.al ]
  %.0274.ph = phi i32 [ 0, %.preheader357 ], [ %.1275, %bb.al ]
  br label %bb.t

.preheader:                                       ; preds = %.preheader356
  %i.iv = icmp sgt i32 %.2303, 0
  br i1 %i.iv, label %.lr.ph472.preheader, label %._crit_edge473

.lr.ph472.preheader:                              ; preds = %.preheader
  %wide.trip.count556 = zext nneg i32 %.2303 to i64
  br label %.lr.ph472

.preheader356:                                    ; preds = %.loopexit, %.preheader356
  %indvars.iv548 = phi i64 [ %indvars.iv.next549, %.preheader356 ], [ 0, %.loopexit ] ; 2 uses
  %.5288470 = phi i32 [ %i.iy, %.preheader356 ], [ 0, %.loopexit ] ; 2 uses
  %i.iw = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv548 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4
  %i.iy = add i32 %i.ix, %.5288470
  store i32 %.5288470, ptr %i.iw, align 4
  %indvars.iv.next549 = add nuw nsw i64 %indvars.iv548, 1 ; 2 uses
  %exitcond551.not = icmp eq i64 %indvars.iv.next549, 256
  br i1 %exitcond551.not, label %.preheader, label %.preheader356, !llvm.loop !35

.lr.ph472:                                        ; preds = %.lr.ph472.preheader, %.lr.ph472
  %indvars.iv552 = phi i64 [ 0, %.lr.ph472.preheader ], [ %indvars.iv.next553, %.lr.ph472 ] ; 3 uses
  %i.iz = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv552
  %i.ja = load i32, ptr %i.iz, align 4
  %i.jb = trunc nuw nsw i64 %indvars.iv552 to i32
  %i.jc = shl i32 %i.jb, 8
  %i.jd = and i32 %i.ja, 255
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = getelementptr [4 x i8], ptr %i.h, i64 %i.je ; 3 uses
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr [4 x i8], ptr %i.d, i64 %i.jh ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = or i32 %i.jj, %i.jc
  store i32 %i.jk, ptr %i.ji, align 4
  %i.jl = load i32, ptr %i.jf, align 4
  %i.jm = add i32 %i.jl, 1
  store i32 %i.jm, ptr %i.jf, align 4
  %indvars.iv.next553 = add nuw nsw i64 %indvars.iv552, 1 ; 2 uses
  %exitcond557.not = icmp eq i64 %indvars.iv.next553, %wide.trip.count556
  br i1 %exitcond557.not, label %._crit_edge473.thread, label %.lr.ph472, !llvm.loop !36

._crit_edge473:                                   ; preds = %.preheader
  %.not344 = icmp eq i32 %.2303, 0
  br i1 %.not344, label %bb.an, label %._crit_edge473.thread

._crit_edge473.thread:                            ; preds = %.lr.ph472, %._crit_edge473
  %.not345 = icmp ult i32 %i.t, %.2303
  br i1 %.not345, label %bb.am, label %.loopexit358

bb.am:                                            ; preds = %._crit_edge473.thread
  %i.jn = zext i32 %i.t to i64
  %i.jo = getelementptr [4 x i8], ptr %i.d, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4            ; 2 uses
  %i.jq = getelementptr i8, ptr %0, i64 4
  %i.jr = and i32 %i.jp, 255
  %i.js = getelementptr i8, ptr %0, i64 16
  store i32 %i.jr, ptr %i.js, align 8
  %i.jt = ashr i32 %i.jp, 8
  store i32 %i.jt, ptr %i.jq, align 4
  %i.ju = getelementptr i8, ptr %0, i64 8
  store i32 5, ptr %i.ju, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge473
  %i.jv = getelementptr i8, ptr %0, i64 12
  store i32 %.2303, ptr %i.jv, align 4
  br label %.loopexit358

.loopexit358.loopexit476:                         ; preds = %.preheader361, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.loopexit358

.loopexit358:                                     ; preds = %.lr.ph397, %bb.ai, %bb.af, %bb.aa, %bb.ab, %bb.u, %.loopexit358.loopexit476, %._crit_edge473.thread, %bb.l, %bb.k, %bb.d, %bb.c, %bb.b, %bb.a, %bb.an
  %.2318 = phi i32 [ -5, %bb.k ], [ -1, %bb.a ], [ -2, %bb.b ], [ -7, %bb.c ], [ -5, %bb.d ], [ -5, %bb.l ], [ -5, %bb.aa ], [ 0, %bb.an ], [ -5, %._crit_edge473.thread ], [ -5, %.loopexit358.loopexit476 ], [ -5, %bb.ai ], [ -5, %bb.u ], [ -5, %bb.ab ], [ -5, %bb.af ], [ -5, %.lr.ph397 ]
  ret i32 %.2318
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { cold noredzone "no-builtin-wcslen" }
attributes #12 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i64 23024}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = !{i64 21952}
!15 = !{i64 20468}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = !{i64 5599}
!38 = !{i64 5622}
!39 = !{i64 5657}
!40 = !{i64 6003}
!41 = !{i64 6063}
!42 = !{i64 6474}
!43 = !{i64 6567}
!44 = !{i64 6767}
!45 = !{i64 7135}
!46 = !{i64 7326}
!47 = !{!"auto-init"}
!48 = !{i64 8315}
!49 = !{i64 8672}
!50 = !{i64 12918}
end_hunk_1
