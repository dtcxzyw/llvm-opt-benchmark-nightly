Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/decompress_bunzip2?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@get_bits:bb.a
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
  %i.ai = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 3) #11, !srcloc !44 ; 5 uses
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
  %wide.trip.count505 = zext nneg i32 %i.ak to i64
  %exitcond501.not651 = icmp eq i32 %i.ai, 0
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
  %indvars.iv502 = phi i64 [ 0, %.preheader366.preheader ], [ %indvars.iv.next503, %._crit_edge402 ] ; 2 uses
  %i.ao = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 1) #11, !srcloc !46
  %.not349395 = icmp eq i32 %i.ao, 0
  br i1 %.not349395, label %._crit_edge.thread, label %.lr.ph397.preheader

.lr.ph397.preheader:                              ; preds = %.preheader366
  br i1 %exitcond501.not651, label %.loopexit358, label %.lr.ph653

._crit_edge.thread:                               ; preds = %.preheader366
  %i.ap = load i8, ptr %i.j, align 8
  br label %._crit_edge402

.lr.ph397:                                        ; preds = %.lr.ph653
  %exitcond501.not = icmp eq i32 %i.aq, %i.ai
  br i1 %exitcond501.not, label %.loopexit358, label %.lr.ph653, !llvm.loop !20

.lr.ph653:                                        ; preds = %.lr.ph397.preheader, %.lr.ph397
  %.1284396652 = phi i32 [ %i.aq, %.lr.ph397 ], [ 0, %.lr.ph397.preheader ]
  %i.aq = add nuw i32 %.1284396652, 1             ; 4 uses
  %i.ar = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 1) #11, !srcloc !46
  %.not349 = icmp eq i32 %i.ar, 0
  br i1 %.not349, label %.lr.ph401.preheader, label %.lr.ph397, !llvm.loop !20

.lr.ph401.preheader:                              ; preds = %.lr.ph653
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = getelementptr i8, ptr %i.j, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %1 = sext i32 %i.aq to i64
  br label %.lr.ph401

.lr.ph401:                                        ; preds = %.lr.ph401.preheader, %.lr.ph401
  %indvars.iv505 = phi i64 [ %1, %.lr.ph401.preheader ], [ %indvars.iv.next506, %.lr.ph401 ] ; 2 uses
  %indvars.iv.next506 = add nsw i64 %indvars.iv505, -1 ; 3 uses
  %i.av = getelementptr i8, ptr %i.j, i64 %indvars.iv.next506
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr i8, ptr %i.j, i64 %indvars.iv505
  store i8 %i.aw, ptr %i.ax, align 1
  %.not350 = icmp eq i64 %indvars.iv.next506, 0
  br i1 %.not350, label %._crit_edge402, label %.lr.ph401, !llvm.loop !21

._crit_edge402:                                   ; preds = %.lr.ph401, %._crit_edge.thread
  %i.ay = phi i8 [ %i.ap, %._crit_edge.thread ], [ %i.au, %.lr.ph401 ] ; 2 uses
  %i.az = getelementptr i8, ptr %i.g, i64 %indvars.iv502
  store i8 %i.ay, ptr %i.az, align 1
  store i8 %i.ay, ptr %i.j, align 8
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1 ; 2 uses
  %exitcond506.not = icmp eq i64 %indvars.iv.next503, %wide.trip.count505
  br i1 %exitcond506.not, label %.lr.ph451, label %.preheader366, !llvm.loop !22

.lr.ph451:                                        ; preds = %._crit_edge402, %.preheader368
  %i.ba = add i32 %.3273, 2                       ; 5 uses
  %.not348411 = icmp sgt i32 %i.ba, 0             ; 2 uses
  %i.bb = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.bc = icmp ult i32 %.3273, 2147483646
  %i.bd = getelementptr i8, ptr %0, i64 33884     ; 3 uses
  %wide.trip.count536 = zext nneg i32 %i.ai to i64
  %wide.trip.count510 = zext nneg i32 %i.ba to i64
  %wide.trip.count515 = zext nneg i32 %i.ba to i64
  %wide.trip.count520 = zext nneg i32 %i.ba to i64
  %wide.trip.count528 = zext nneg i32 %i.ba to i64
  br label %bb.m

.preheader363.._crit_edge442_crit_edge:           ; preds = %.preheader363, %._crit_edge442.loopexit
  %.4.lcssa = phi i32 [ %i.ek, %._crit_edge442.loopexit ], [ 0, %.preheader363 ]
  %.3.lcssa = phi i32 [ %i.ep, %._crit_edge442.loopexit ], [ -1, %.preheader363 ]
  %i.be = zext nneg i32 %.0265.lcssa587590 to i64 ; 2 uses
  %i.bf = getelementptr [4 x i8], ptr %i.dr, i64 %i.be ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  store i32 2147483647, ptr %i.bg, align 4
  %i.bh = getelementptr [2 x i8], ptr %i.b, i64 %i.be
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = zext i16 %i.bi to i32
  %i.bk = add i32 %.3.lcssa, %i.bj
  store i32 %i.bk, ptr %i.bf, align 4
  %i.bl = getelementptr [4 x i8], ptr %i.dq, i64 %i.dt
  store i32 0, ptr %i.bl, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %indvars.iv.next534 = add nuw nsw i64 %indvars.iv533, 1 ; 2 uses
  %exitcond537.not = icmp eq i64 %indvars.iv.next534, %wide.trip.count536
  br i1 %exitcond537.not, label %.preheader360, label %bb.m, !llvm.loop !23

.preheader360:                                    ; preds = %.preheader363.._crit_edge442_crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(1024) %i.h, i8 0, i64 1024, i1 false)
  br label %bb.s

bb.m:                                             ; preds = %.lr.ph451, %.preheader363.._crit_edge442_crit_edge
  %indvars.iv533 = phi i64 [ 0, %.lr.ph451 ], [ %indvars.iv.next534, %.preheader363.._crit_edge442_crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(258) %i.a, i8 0, i64 258, i1 false), !annotation !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.b, i8 0, i64 42, i1 false), !annotation !47
  %i.bm = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 5) #11, !srcloc !48
  br i1 %.not348411, label %.preheader361.preheader, label %._crit_edge422.thread

.preheader361.preheader:                          ; preds = %bb.m
  %i.bn = add i32 %i.bm, -1
  br label %.preheader361

.preheader361:                                    ; preds = %.preheader361.preheader, %bb.n
  %indvars.iv507 = phi i64 [ 0, %.preheader361.preheader ], [ %indvars.iv.next508, %bb.n ] ; 2 uses
  %.1280413 = phi i32 [ %i.bn, %.preheader361.preheader ], [ %.2281405, %bb.n ] ; 2 uses
  %i.bo = icmp ugt i32 %.1280413, 19
  br i1 %i.bo, label %.loopexit358.loopexit476, label %.lr.ph406

.lr.ph406:                                        ; preds = %.preheader361, %bb.o
  %.2281405 = phi i32 [ %i.bz, %bb.o ], [ %.1280413, %.preheader361 ] ; 3 uses
  %i.bp = tail call fastcc i32 @get_bits(ptr noundef %0, i8 noundef zeroext 2) #11, !srcloc !49 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 2
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph406
  %i.br = load i32, ptr %i.bb, align 8
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bb, align 8
  %i.bt = trunc nuw nsw i32 %.2281405 to i8
  %i.bu = add nuw nsw i8 %i.bt, 1
  %i.bv = getelementptr i8, ptr %i.a, i64 %indvars.iv507
  store i8 %i.bu, ptr %i.bv, align 1
  %indvars.iv.next508 = add nuw nsw i64 %indvars.iv507, 1 ; 2 uses
  %exitcond511.not = icmp eq i64 %indvars.iv.next508, %wide.trip.count510
  br i1 %exitcond511.not, label %._crit_edge415, label %.preheader361, !llvm.loop !24

bb.o:                                             ; preds = %.lr.ph406
  %i.bw = add nuw i32 %i.bp, 1
  %i.bx = and i32 %i.bw, 2
  %i.by = add nsw i32 %.2281405, -1
  %i.bz = add nsw i32 %i.by, %i.bx                ; 2 uses
  %i.ca = icmp ugt i32 %i.bz, 19
  br i1 %i.ca, label %.loopexit358.loopexit476, label %.lr.ph406

._crit_edge415:                                   ; preds = %bb.n
  %.pre = load i8, ptr %i.a, align 16
  %i.cb = zext i8 %.pre to i32                    ; 3 uses
  br i1 %i.bc, label %.lr.ph421, label %._crit_edge422.thread

.lr.ph421:                                        ; preds = %._crit_edge415, %.lr.ph421
  %indvars.iv512 = phi i64 [ %indvars.iv.next513, %.lr.ph421 ], [ 1, %._crit_edge415 ] ; 2 uses
  %.0265419 = phi i32 [ %.1266, %.lr.ph421 ], [ %i.cb, %._crit_edge415 ] ; 2 uses
  %.0267418 = phi i32 [ %.1268, %.lr.ph421 ], [ %i.cb, %._crit_edge415 ] ; 2 uses
  %i.cc = getelementptr i8, ptr %i.a, i64 %indvars.iv512
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i32                    ; 3 uses
  %i.cf = icmp samesign ult i32 %.0265419, %i.ce
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.0267418, i32 %i.ce)
  %.1268 = select i1 %i.cf, i32 %.0267418, i32 %spec.select ; 5 uses
  %.1266 = tail call i32 @llvm.umax.i32(i32 %.0265419, i32 %i.ce) ; 5 uses
  %indvars.iv.next513 = add nuw nsw i64 %indvars.iv512, 1 ; 2 uses
  %exitcond516.not = icmp eq i64 %indvars.iv.next513, %wide.trip.count515
  br i1 %exitcond516.not, label %._crit_edge422, label %.lr.ph421, !llvm.loop !25

._crit_edge422.thread:                            ; preds = %._crit_edge415, %bb.m
  %.0267.lcssa.ph = phi i32 [ %i.cb, %._crit_edge415 ], [ 0, %bb.m ] ; 4 uses
  %i.cg = getelementptr [1204 x i8], ptr %i.bd, i64 %indvars.iv533 ; 5 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 1196
  store i32 %.0267.lcssa.ph, ptr %i.ch, align 4
  %i.ci = getelementptr i8, ptr %i.cg, i64 1200
  store i32 %.0267.lcssa.ph, ptr %i.ci, align 4
  %i.cj = getelementptr i8, ptr %i.cg, i64 80
  %i.ck = getelementptr i8, ptr %i.cg, i64 -4
  br label %.lr.ph435

._crit_edge422:                                   ; preds = %.lr.ph421
  %i.cl = getelementptr [1204 x i8], ptr %i.bd, i64 %indvars.iv533 ; 6 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 1196
  store i32 %.1268, ptr %i.cm, align 4
  %i.cn = getelementptr i8, ptr %i.cl, i64 1200
  store i32 %.1266, ptr %i.cn, align 4
  %i.co = getelementptr i8, ptr %i.cl, i64 80     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cl, i64 -4     ; 2 uses
  %.not347431 = icmp sgt i32 %.1268, %.1266
  br i1 %.not347431, label %.lr.ph437.preheader, label %.lr.ph435

.lr.ph435:                                        ; preds = %._crit_edge422.thread, %._crit_edge422
  %i.cq = phi ptr [ %i.ck, %._crit_edge422.thread ], [ %i.cp, %._crit_edge422 ] ; 3 uses
  %i.cr = phi ptr [ %i.cj, %._crit_edge422.thread ], [ %i.co, %._crit_edge422 ] ; 2 uses
  %i.cs = phi ptr [ %i.cg, %._crit_edge422.thread ], [ %i.cl, %._crit_edge422 ] ; 2 uses
  %.0265.lcssa586 = phi i32 [ %.0267.lcssa.ph, %._crit_edge422.thread ], [ %.1266, %._crit_edge422 ] ; 5 uses
  %.0267.lcssa584 = phi i32 [ %.0267.lcssa.ph, %._crit_edge422.thread ], [ %.1268, %._crit_edge422 ] ; 4 uses
  %i.ct = getelementptr [1204 x i8], ptr %i.bd, i64 %indvars.iv533
  %i.cu = getelementptr i8, ptr %i.ct, i64 164
  %i.cv = zext nneg i32 %.0267.lcssa584 to i64    ; 2 uses
  %i.cw = shl nuw nsw i64 %i.cv, 1
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.cw
  %i.cx = sub nsw i32 %.0265.lcssa586, %.0267.lcssa584
  %i.cy = shl nuw i32 %i.cx, 1
  %i.cz = zext i32 %i.cy to i64
  %i.da = add nuw nsw i64 %i.cz, 2
  call void @llvm.memset.p0.i64(ptr noundef align 2 %scevgep, i8 0, i64 %i.da, i1 false)
  br label %.outer608

.lr.ph437.preheader:                              ; preds = %._crit_edge429, %._crit_edge422
  %.0267.lcssa585593 = phi i32 [ %.1268, %._crit_edge422 ], [ %.0267.lcssa584, %._crit_edge429 ]
  %.0265.lcssa587591 = phi i32 [ %.1266, %._crit_edge422 ], [ %.0265.lcssa586, %._crit_edge429 ]
  %i.db = phi ptr [ %i.cl, %._crit_edge422 ], [ %i.cs, %._crit_edge429 ]
  %i.dc = phi ptr [ %i.co, %._crit_edge422 ], [ %i.cr, %._crit_edge429 ]
  %i.dd = phi ptr [ %i.cp, %._crit_edge422 ], [ %i.cq, %._crit_edge429 ]
  br label %.lr.ph437

bb.p:                                             ; preds = %.outer608, %._crit_edge429.thread
  %indvars.iv522 = phi i64 [ %indvars.iv.next523595, %._crit_edge429.thread ], [ %indvars.iv522.ph, %.outer608 ] ; 6 uses
  %i.de = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv522
  store i32 0, ptr %i.de, align 4
  br i1 %.not348411, label %.lr.ph428, label %._crit_edge429.thread

.lr.ph428:                                        ; preds = %bb.p, %bb.r
  %indvars.iv517 = phi i64 [ %indvars.iv.next518, %bb.r ], [ 0, %bb.p ] ; 3 uses
  %.1426 = phi i32 [ %.2, %bb.r ], [ %.0433.ph, %bb.p ] ; 3 uses
  %i.df = getelementptr i8, ptr %i.a, i64 %indvars.iv517
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = zext i8 %i.dg to i64
  %i.di = icmp eq i64 %indvars.iv522, %i.dh
  br i1 %i.di, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph428
  %i.dj = add i32 %.1426, 1
  %i.dk = sext i32 %.1426 to i64
  %i.dl = getelementptr [4 x i8], ptr %i.cu, i64 %i.dk
  %i.dm = trunc nuw nsw i64 %indvars.iv517 to i32
  store i32 %i.dm, ptr %i.dl, align 4
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph428, %bb.q
  %.2 = phi i32 [ %i.dj, %bb.q ], [ %.1426, %.lr.ph428 ] ; 2 uses
  %indvars.iv.next518 = add nuw nsw i64 %indvars.iv517, 1 ; 2 uses
  %exitcond521.not = icmp eq i64 %indvars.iv.next518, %wide.trip.count520
  br i1 %exitcond521.not, label %._crit_edge429, label %.lr.ph428, !llvm.loop !26

._crit_edge429:                                   ; preds = %bb.r
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1
  %i.dn = trunc nuw i64 %indvars.iv522 to i32
  %.not347.not = icmp sgt i32 %.0265.lcssa586, %i.dn
  br i1 %.not347.not, label %.outer608, label %.lr.ph437.preheader, !llvm.loop !27

.outer608:                                        ; preds = %._crit_edge429, %.lr.ph435
  %indvars.iv522.ph = phi i64 [ %indvars.iv.next523, %._crit_edge429 ], [ %i.cv, %.lr.ph435 ]
  %.0433.ph = phi i32 [ %.2, %._crit_edge429 ], [ 0, %.lr.ph435 ]
  br label %bb.p
end_hunk_0
