inline.NumInlined: 20
inline.NumDeleted: 14
begin_hunk_0_@BrotliDecoderDecompressStream:bb.a
  %i.zw = load ptr, ptr %i.ae, align 8, !tbaa !44
  %i.zx = sub nsw i64 0, %i.zv
  %i.zy = getelementptr inbounds i8, ptr %i.zw, i64 %i.zx ; 3 uses
  store ptr %i.zy, ptr %i.ae, align 8, !tbaa !44
  %i.zz = and i64 %i.zo, 7                        ; 2 uses
  store i64 %i.zz, ptr %i.ak, align 8, !tbaa !50
  %notmask.i431 = shl nsw i64 -1, %i.zz
  %i.aaa = xor i64 %notmask.i431, -1
  %i.aab = load i64, ptr %i.c, align 8, !tbaa !51
  %i.aac = and i64 %i.aab, %i.aaa
  store i64 %i.aac, ptr %i.c, align 8, !tbaa !51
  %i.aad = load ptr, ptr %i.af, align 8, !tbaa !45
  %i.aae = ptrtoint ptr %i.aad to i64
  %i.aaf = ptrtoint ptr %i.zy to i64
  %i.aag = sub i64 %i.aae, %i.aaf
  store i64 %i.aag, ptr %1, align 8, !tbaa !29
  store ptr %i.zy, ptr %2, align 8, !tbaa !28
  br label %bb.ds

bb.ds:                                            ; preds = %BrotliBitReaderUnload.exit, %bb.dr
  store i32 26, ptr %0, align 8, !tbaa !9
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.v
  %i.aah = load ptr, ptr %i.ad, align 8, !tbaa !47
  %.not365 = icmp eq ptr %i.aah, null
  br i1 %.not365, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.aai = call fastcc i32 @WriteRingBuffer(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %spec.select, ptr noundef %5, i32 noundef 1) ; 2 uses
  %.not366 = icmp eq i32 %i.aai, 1
  br i1 %.not366, label %bb.dv, label %.backedge.backedge

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.aaj = load i64, ptr %1, align 8, !tbaa !29
  %i.aak = sub i64 %i.d, %i.aaj
  %i.aal = call fastcc i32 @SaveErrorCode(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.aak)
  br label %bb.dw

.loopexit:                                        ; preds = %bb.l, %bb.r, %.lr.ph636, %bb.s, %bb.u, %BrotliBitReaderUnload.exit412
  %.14 = phi i32 [ %.1311, %bb.u ], [ %.1311, %BrotliBitReaderUnload.exit412 ], [ 2, %bb.s ], [ 2, %.lr.ph636 ], [ %i.cg, %bb.l ], [ 2, %bb.r ]
  %i.aam = load i64, ptr %1, align 8, !tbaa !29
  %i.aan = sub i64 %i.d, %i.aam
  %i.aao = call fastcc i32 @SaveErrorCode(ptr noundef nonnull %0, i32 noundef %.14, i64 noundef %i.aan)
  br label %bb.dw

bb.dw:                                            ; preds = %.thread570, %.thread557, %bb.c, %.loopexit, %bb.dv, %bb.g
  %.7 = phi i32 [ %i.n, %bb.g ], [ %i.aao, %.loopexit ], [ %i.sd, %.thread557 ], [ %i.sg, %.thread570 ], [ %i.aal, %bb.dv ], [ 0, %bb.c ]
  ret i32 %.7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 4) i32 @SaveErrorCode(ptr nofree noundef captures(none) initializes((128, 132)) %0, i32 noundef %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %1, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !119
  %i.d = add i64 %i.c, %2
  store i64 %i.d, ptr %i.b, align 8, !tbaa !119
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !43
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !120
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !121
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.e, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %switch.tableidx = add i32 %1, -1
  %i.l = icmp ult i32 %switch.tableidx, 3
  %.0 = select i1 %i.l, i32 %1, i32 0
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -9, 4) i32 @WriteRingBuffer(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !122
  %i.g = sext i32 %i.f to i64
  %i.h = and i64 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !116
  %.phi.trans.insert9.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %.pre10.pre.i = load i32, ptr %.phi.trans.insert9.phi.trans.insert.i, align 4, !tbaa !114 ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %.pre.i, i32 %.pre10.pre.i)
  %i.j = sext i32 %spec.select.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !123
  %i.m = sext i32 %.pre10.pre.i to i64
  %i.n = mul i64 %i.l, %i.m
  %i.o = sub i64 %i.j, %i.d
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = load i64, ptr %1, align 8, !tbaa !29     ; 4 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.p) ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.s = load i32, ptr %i.r, align 4, !tbaa !58
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %.not48 = icmp eq ptr %i.u, null
  br i1 %.not48, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %2, align 8, !tbaa !28
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.i, i64 %spec.select, i1 false)
  %i.v = load ptr, ptr %2, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %spec.select
  store ptr %i.w, ptr %2, align 8, !tbaa !28
  %.pre = load i64, ptr %1, align 8, !tbaa !29
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.e, %bb.d
  %i.x = phi i64 [ %i.q, %bb.b ], [ %.pre, %bb.e ], [ %i.q, %bb.d ]
  %i.y = sub i64 %i.x, %spec.select
  store i64 %i.y, ptr %1, align 8, !tbaa !29
  %i.z = load i64, ptr %i.c, align 8, !tbaa !41
  %i.aa = add i64 %i.z, %spec.select              ; 2 uses
  store i64 %i.aa, ptr %i.c, align 8, !tbaa !41
  %.not49 = icmp eq ptr %3, null
  br i1 %.not49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  store i64 %i.aa, ptr %3, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  %i.ab = icmp ult i64 %i.q, %i.p
  %i.ac = load i32, ptr %.phi.trans.insert9.phi.trans.insert.i, align 4, !tbaa !114 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 772 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = lshr i32 %i.ae, 6
  %i.ag = and i32 %i.af, 63
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = icmp eq i32 %i.ac, %i.ah                ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp ne i32 %4, 0
  %or.cond = or i1 %i.aj, %i.ai
  %. = select i1 %or.cond, i32 3, i32 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  br i1 %i.ai, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ak = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !116 ; 3 uses
  %.not50 = icmp slt i32 %i.ak, %i.ac
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = sub nsw i32 %i.ak, %i.ac
  store i32 %i.al, ptr %.phi.trans.insert.i, align 8, !tbaa !116
  %i.am = load i64, ptr %i.k, align 8, !tbaa !123
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.k, align 8, !tbaa !123
  %.not51.not = icmp eq i32 %i.ak, %i.ac
  %i.ao = select i1 %.not51.not, i32 0, i32 8
  %i.ap = and i32 %i.ae, -9
  %i.aq = or disjoint i32 %i.ao, %i.ap
  store i32 %i.aq, ptr %i.ad, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.h, %bb.a
  %.041 = phi i32 [ -9, %bb.a ], [ %., %bb.h ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ]
  ret i32 %.041
}

declare hidden i32 @BrotliWarmupBitReader(ptr noundef) local_unnamed_addr #3

declare hidden void @BrotliDecoderStateMetablockBegin(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -31, 3) i32 @DecodeMetaBlockLength(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #8 {
.split:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 13 uses
  %.promoted255 = load i32, ptr %i.a, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 772 ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  switch i32 %.promoted255, label %BrotliSafeReadBits.exit95.thread [
    i32 0, label %.preheader172
    i32 1, label %bb.d
    i32 2, label %._crit_edge310
    i32 3, label %.loopexit.loopexit
    i32 4, label %.loopexit175.loopexit
    i32 5, label %.preheader168
    i32 6, label %.loopexit176.loopexit
    i32 7, label %.loopexit177.loopexit
  ]

2:                                                ; preds = %bb.b
  store i32 2, ptr %i.a, align 8, !tbaa !124
  br label %._crit_edge310

bb.a:                                             ; preds = %bb.i
  %3 = or i32 %i.be, 4
  store i32 %3, ptr %i.e, align 4
  store i32 5, ptr %i.a, align 8, !tbaa !124
  br label %.preheader168

._crit_edge310:                                   ; preds = %2, %.split
  %.promoted248.pre = load i64, ptr %i.b, align 8, !tbaa !50
  br label %bb.h

.preheader172:                                    ; preds = %.split
  %.promoted = load i64, ptr %i.b, align 8, !tbaa !50 ; 2 uses
  %i.h = icmp eq i64 %.promoted, 0
  br i1 %i.h, label %.lr.ph, label %.preheader172._crit_edge

.preheader172._crit_edge:                         ; preds = %.preheader172
  %.pre308 = load i64, ptr %1, align 8, !tbaa !51
  %i.i = add i64 %.promoted, -1
  br label %bb.b

.lr.ph:                                           ; preds = %.preheader172
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !45
  %.promoted225 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 3 uses
  %i.k = icmp eq ptr %.promoted225, %i.j
  br i1 %i.k, label %BrotliSafeReadBits.exit95.thread, label %BrotliPullByte.exit

.preheader168:                                    ; preds = %bb.a, %.split
  %.promoted257 = load i64, ptr %i.b, align 8, !tbaa !50 ; 2 uses
  %i.l = icmp eq i64 %.promoted257, 0
  br i1 %i.l, label %.lr.ph258.split, label %.preheader168._crit_edge

.preheader168._crit_edge:                         ; preds = %.preheader168
  %.pre = load i64, ptr %1, align 8, !tbaa !51
  %i.m = add i64 %.promoted257, -1
  br label %bb.q

BrotliPullByte.exit:                              ; preds = %.lr.ph
  %i.n = load i64, ptr %1, align 8, !tbaa !51
  %i.o = load i8, ptr %.promoted225, align 1, !tbaa !48
  %i.p = zext i8 %i.o to i64
  %i.q = or i64 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.promoted225, i64 1
  store ptr %i.r, ptr %i.c, align 8, !tbaa !44
  br label %bb.b

bb.b:                                             ; preds = %.preheader172._crit_edge, %BrotliPullByte.exit
  %i.s = phi i64 [ %i.q, %BrotliPullByte.exit ], [ %.pre308, %.preheader172._crit_edge ] ; 3 uses
  %.lcssa201 = phi i64 [ 7, %BrotliPullByte.exit ], [ %i.i, %.preheader172._crit_edge ]
  store i64 %.lcssa201, ptr %i.b, align 8, !tbaa !50
  %i.t = lshr i64 %i.s, 1
  store i64 %i.t, ptr %1, align 8, !tbaa !51
  %.not67 = trunc i64 %i.s to i1
  %i.u = trunc i64 %i.s to i32
  %i.v = and i32 %i.u, 1
  %i.w = load i32, ptr %i.e, align 4
  %i.x = and i32 %i.w, -8
  %i.y = or disjoint i32 %i.x, %i.v
  store i32 0, ptr %i.f, align 4, !tbaa !58
  store i32 %i.y, ptr %i.e, align 4
  br i1 %.not67, label %bb.c, label %2

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.a, align 8, !tbaa !124
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.split
  %.promoted233 = load i64, ptr %i.b, align 8, !tbaa !50 ; 2 uses
  %i.z = icmp eq i64 %.promoted233, 0
  br i1 %i.z, label %.lr.ph235, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre309 = load i64, ptr %1, align 8, !tbaa !51
  %i.aa = add i64 %.promoted233, -1
  br label %bb.e

.lr.ph235:                                        ; preds = %bb.d
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !45
  %.promoted239 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 3 uses
  %i.ac = icmp eq ptr %.promoted239, %i.ab
  br i1 %i.ac, label %BrotliSafeReadBits.exit95.thread, label %BrotliPullByte.exit98

BrotliPullByte.exit98:                            ; preds = %.lr.ph235
  %i.ad = load i64, ptr %1, align 8, !tbaa !51
  %i.ae = load i8, ptr %.promoted239, align 1, !tbaa !48
  %i.af = zext i8 %i.ae to i64
  %i.ag = or i64 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.promoted239, i64 1
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %BrotliPullByte.exit98
  %i.ai = phi i64 [ %i.ag, %BrotliPullByte.exit98 ], [ %.pre309, %._crit_edge ] ; 2 uses
  %.lcssa205 = phi i64 [ 7, %BrotliPullByte.exit98 ], [ %i.aa, %._crit_edge ] ; 2 uses
  %i.aj = and i64 %i.ai, 1
  store i64 %.lcssa205, ptr %i.b, align 8, !tbaa !50
  %i.ak = lshr i64 %i.ai, 1
  store i64 %i.ak, ptr %1, align 8, !tbaa !51
  %.not69 = icmp eq i64 %i.aj, 0
  br i1 %.not69, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.a, align 8, !tbaa !124
  br label %BrotliSafeReadBits.exit95.thread

bb.g:                                             ; preds = %bb.e
  store i32 2, ptr %i.a, align 8, !tbaa !124
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge310, %bb.g
  %.promoted248 = phi i64 [ %.promoted248.pre, %._crit_edge310 ], [ %.lcssa205, %bb.g ] ; 4 uses
  %i.al = icmp ult i64 %.promoted248, 2
  br i1 %i.al, label %.lr.ph250, label %._crit_edge312

._crit_edge312:                                   ; preds = %bb.h
  %.pre313 = load i64, ptr %1, align 8, !tbaa !51
  br label %bb.i

.lr.ph250:                                        ; preds = %bb.h
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !45
  %.promoted254 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 3 uses
  %i.an = icmp eq ptr %.promoted254, %i.am
  br i1 %i.an, label %BrotliSafeReadBits.exit95.thread, label %BrotliPullByte.exit100

BrotliPullByte.exit100:                           ; preds = %.lr.ph250
  %i.ao = load i64, ptr %1, align 8, !tbaa !51
  %i.ap = load i8, ptr %.promoted254, align 1, !tbaa !48
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, %.promoted248
  %i.as = or i64 %i.ar, %i.ao
  %i.at = or disjoint i64 %.promoted248, 8
  %i.au = getelementptr inbounds nuw i8, ptr %.promoted254, i64 1
  store ptr %i.au, ptr %i.c, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge312, %BrotliPullByte.exit100
  %i.av = phi i64 [ %i.as, %BrotliPullByte.exit100 ], [ %.pre313, %._crit_edge312 ] ; 2 uses
  %.lcssa209 = phi i64 [ %i.at, %BrotliPullByte.exit100 ], [ %.promoted248, %._crit_edge312 ]
  %i.aw = and i64 %i.av, 3                        ; 2 uses
  %i.ax = add i64 %.lcssa209, -2
  store i64 %i.ax, ptr %i.b, align 8, !tbaa !50
  %i.ay = lshr i64 %i.av, 2
  store i64 %i.ay, ptr %1, align 8, !tbaa !51
  %i.az = trunc nuw nsw i64 %i.aw to i32
  %i.ba = load i32, ptr %i.e, align 4
  %i.bb = shl nuw nsw i32 %i.az, 12
  %i.bc = or disjoint i32 %i.bb, 16384
  %i.bd = and i32 %i.ba, -1044481
  %i.be = or disjoint i32 %i.bd, %i.bc            ; 3 uses
  store i32 %i.be, ptr %i.e, align 4
  store i32 0, ptr %i.g, align 4, !tbaa !52
  %i.bf = icmp eq i64 %i.aw, 3
  br i1 %i.bf, label %bb.a, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 3, ptr %i.a, align 8, !tbaa !124
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.split
  %.pre314 = load i32, ptr %i.g, align 4, !tbaa !52
  %.pre315 = load i32, ptr %i.e, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j
  %i.bg = phi i32 [ %.pre315, %.loopexit.loopexit ], [ %i.be, %bb.j ] ; 2 uses
  %i.bh = phi i32 [ %.pre314, %.loopexit.loopexit ], [ 0, %bb.j ] ; 2 uses
  %i.bi = lshr i32 %i.bg, 12
  %i.bj = and i32 %i.bi, 255
  %i.bk = icmp slt i32 %i.bh, %i.bj
  br i1 %i.bk, label %.preheader163.lr.ph, label %._crit_edge284

.preheader163.lr.ph:                              ; preds = %.loopexit
  %.promoted277.pre = load i64, ptr %i.b, align 8, !tbaa !50
  br label %.preheader163

.preheader163:                                    ; preds = %.preheader163.lr.ph, %bb.n
  %.promoted277 = phi i64 [ %.promoted277.pre, %.preheader163.lr.ph ], [ %i.bx, %bb.n ] ; 4 uses
  %.0283 = phi i32 [ %i.bh, %.preheader163.lr.ph ], [ %i.bz, %bb.n ] ; 4 uses
  %i.bl = icmp ult i64 %.promoted277, 4
  br i1 %i.bl, label %.lr.ph278, label %.preheader163._crit_edge

.preheader163._crit_edge:                         ; preds = %.preheader163
  %.pre317 = load i64, ptr %1, align 8, !tbaa !51
  br label %bb.l

.lr.ph278:                                        ; preds = %.preheader163
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !45
  %.promoted282 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 3 uses
  %i.bn = icmp eq ptr %.promoted282, %i.bm
  br i1 %i.bn, label %bb.k, label %BrotliPullByte.exit102

BrotliPullByte.exit102:                           ; preds = %.lr.ph278
  %i.bo = load i64, ptr %1, align 8, !tbaa !51
  %i.bp = load i8, ptr %.promoted282, align 1, !tbaa !48
  %i.bq = zext i8 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, %.promoted277
  %i.bs = or i64 %i.br, %i.bo
  %i.bt = or disjoint i64 %.promoted277, 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.promoted282, i64 1
  store ptr %i.bu, ptr %i.c, align 8, !tbaa !44
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph278
  store i32 %.0283, ptr %i.g, align 4, !tbaa !52
  br label %BrotliSafeReadBits.exit95.thread

bb.l:                                             ; preds = %.preheader163._crit_edge, %BrotliPullByte.exit102
  %i.bv = phi i64 [ %i.bs, %BrotliPullByte.exit102 ], [ %.pre317, %.preheader163._crit_edge ] ; 2 uses
  %.lcssa181 = phi i64 [ %i.bt, %BrotliPullByte.exit102 ], [ %.promoted277, %.preheader163._crit_edge ]
  %i.bw = and i64 %i.bv, 15                       ; 2 uses
  %i.bx = add i64 %.lcssa181, -4                  ; 2 uses
  store i64 %i.bx, ptr %i.b, align 8, !tbaa !50
  %i.by = lshr i64 %i.bv, 4
  store i64 %i.by, ptr %1, align 8, !tbaa !51
  %i.bz = add nsw i32 %.0283, 1                   ; 3 uses
  %i.ca = load i32, ptr %i.e, align 4             ; 2 uses
  %i.cb = lshr i32 %i.ca, 12
  %i.cc = and i32 %i.cb, 255                      ; 2 uses
  %i.cd = icmp eq i32 %i.bz, %i.cc
  br i1 %i.cd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp sgt i32 %.0283, 3
  %i.cf = icmp eq i64 %i.bw, 0
  %or.cond = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond, label %BrotliSafeReadBits.exit95.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cg = shl nsw i32 %.0283, 2
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl i64 %i.bw, %i.ch
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = load i32, ptr %i.f, align 4, !tbaa !58
  %i.cl = or i32 %i.ck, %i.cj
  store i32 %i.cl, ptr %i.f, align 4, !tbaa !58
  %i.cm = icmp slt i32 %i.bz, %i.cc
  br i1 %i.cm, label %.preheader163, label %._crit_edge284, !llvm.loop !125

._crit_edge284:                                   ; preds = %bb.n, %.loopexit
  %i.cn = phi i32 [ %i.bg, %.loopexit ], [ %i.ca, %bb.n ]
  store i32 4, ptr %i.a, align 8, !tbaa !124
  br label %.loopexit175

.loopexit175.loopexit:                            ; preds = %.split
  %.pre318 = load i32, ptr %i.e, align 4
  br label %.loopexit175

.loopexit175:                                     ; preds = %.loopexit175.loopexit, %._crit_edge284
  %i.co = phi i32 [ %.pre318, %.loopexit175.loopexit ], [ %i.cn, %._crit_edge284 ]
  %i.cp = and i32 %i.co, 1
  %.not71 = icmp eq i32 %i.cp, 0
  br i1 %.not71, label %.preheader, label %bb.p

.preheader:                                       ; preds = %.loopexit175
  %.promoted285 = load i64, ptr %i.b, align 8, !tbaa !50 ; 2 uses
  %i.cq = icmp eq i64 %.promoted285, 0
  br i1 %i.cq, label %.lr.ph286.split, label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader
  %.pre319 = load i64, ptr %1, align 8, !tbaa !51
  %i.cr = add i64 %.promoted285, -1
  br label %bb.o

.lr.ph286.split:                                  ; preds = %.preheader
  %.promoted290 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 3 uses
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.ct = icmp eq ptr %.promoted290, %i.cs
  br i1 %i.ct, label %BrotliSafeReadBits.exit95.thread, label %BrotliPullByte.exit104

BrotliPullByte.exit104:                           ; preds = %.lr.ph286.split
  %i.cu = load i64, ptr %1, align 8, !tbaa !51
  %i.cv = load i8, ptr %.promoted290, align 1, !tbaa !48
  %i.cw = zext i8 %i.cv to i64
  %i.cx = or i64 %i.cu, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %.promoted290, i64 1
  store ptr %i.cy, ptr %i.c, align 8, !tbaa !44
  br label %bb.o

bb.o:                                             ; preds = %.preheader._crit_edge, %BrotliPullByte.exit104
  %i.cz = phi i64 [ %i.cx, %BrotliPullByte.exit104 ], [ %.pre319, %.preheader._crit_edge ] ; 2 uses
  %.lcssa = phi i64 [ 7, %BrotliPullByte.exit104 ], [ %i.cr, %.preheader._crit_edge ]
  store i64 %.lcssa, ptr %i.b, align 8, !tbaa !50
  %i.da = lshr i64 %i.cz, 1
  store i64 %i.da, ptr %1, align 8, !tbaa !51
  %i.db = load i32, ptr %i.e, align 4
  %i.dc = trunc i64 %i.cz to i32
  %i.dd = shl i32 %i.dc, 1
  %i.de = and i32 %i.dd, 2
  %i.df = and i32 %i.db, -3
  %i.dg = or disjoint i32 %i.df, %i.de
  store i32 %i.dg, ptr %i.e, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit175
  %i.dh = load i32, ptr %i.f, align 4, !tbaa !58
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.f, align 4, !tbaa !58
  store i32 0, ptr %i.a, align 8, !tbaa !124
  br label %BrotliSafeReadBits.exit95.thread

.lr.ph258.split:                                  ; preds = %.preheader168
  %.promoted260 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 3 uses
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.dk = icmp eq ptr %.promoted260, %i.dj
  br i1 %i.dk, label %BrotliSafeReadBits.exit95.thread, label %BrotliPullByte.exit106

BrotliPullByte.exit106:                           ; preds = %.lr.ph258.split
  %i.dl = load i64, ptr %1, align 8, !tbaa !51
  %i.dm = load i8, ptr %.promoted260, align 1, !tbaa !48
  %i.dn = zext i8 %i.dm to i64
  %i.do = or i64 %i.dl, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %.promoted260, i64 1
  store ptr %i.dp, ptr %i.c, align 8, !tbaa !44
  br label %bb.q

bb.q:                                             ; preds = %.preheader168._crit_edge, %BrotliPullByte.exit106
  %i.dq = phi i64 [ %i.do, %BrotliPullByte.exit106 ], [ %.pre, %.preheader168._crit_edge ] ; 2 uses
  %.lcssa197 = phi i64 [ 7, %BrotliPullByte.exit106 ], [ %i.m, %.preheader168._crit_edge ] ; 2 uses
  %i.dr = and i64 %i.dq, 1
  store i64 %.lcssa197, ptr %i.b, align 8, !tbaa !50
  %i.ds = lshr i64 %i.dq, 1
  store i64 %i.ds, ptr %1, align 8, !tbaa !51
  %.not63 = icmp eq i64 %i.dr, 0
  br i1 %.not63, label %bb.r, label %BrotliSafeReadBits.exit95.thread

bb.r:                                             ; preds = %bb.q
  store i32 6, ptr %i.a, align 8, !tbaa !124
  br label %.loopexit176

.loopexit176.loopexit:                            ; preds = %.split
  %.promoted262.pre = load i64, ptr %i.b, align 8, !tbaa !50
  br label %.loopexit176

.loopexit176:                                     ; preds = %.loopexit176.loopexit, %bb.r
  %.promoted262 = phi i64 [ %.promoted262.pre, %.loopexit176.loopexit ], [ %.lcssa197, %bb.r ] ; 4 uses
  %i.dt = icmp ult i64 %.promoted262, 2
  br i1 %i.dt, label %.lr.ph264, label %.loopexit176.._crit_edge265_crit_edge

.loopexit176.._crit_edge265_crit_edge:            ; preds = %.loopexit176
  %.pre303 = load i64, ptr %1, align 8, !tbaa !51
  br label %._crit_edge265

.lr.ph264:                                        ; preds = %.loopexit176
  %i.du = load ptr, ptr %i.d, align 8, !tbaa !45
  %.promoted268 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 3 uses
  %i.dv = icmp eq ptr %.promoted268, %i.du
  br i1 %i.dv, label %BrotliSafeReadBits.exit95.thread, label %BrotliPullByte.exit108

BrotliPullByte.exit108:                           ; preds = %.lr.ph264
  %i.dw = load i64, ptr %1, align 8, !tbaa !51
  %i.dx = load i8, ptr %.promoted268, align 1, !tbaa !48
  %i.dy = zext i8 %i.dx to i64
  %i.dz = shl nuw nsw i64 %i.dy, %.promoted262
  %i.ea = or i64 %i.dz, %i.dw
  %i.eb = or disjoint i64 %.promoted262, 8
  %i.ec = getelementptr inbounds nuw i8, ptr %.promoted268, i64 1
  store ptr %i.ec, ptr %i.c, align 8, !tbaa !44
  br label %._crit_edge265

._crit_edge265:                                   ; preds = %.loopexit176.._crit_edge265_crit_edge, %BrotliPullByte.exit108
  %i.ed = phi i64 [ %.pre303, %.loopexit176.._crit_edge265_crit_edge ], [ %i.ea, %BrotliPullByte.exit108 ] ; 2 uses
  %.lcssa193 = phi i64 [ %.promoted262, %.loopexit176.._crit_edge265_crit_edge ], [ %i.eb, %BrotliPullByte.exit108 ]
  %i.ee = and i64 %i.ed, 3                        ; 2 uses
  %i.ef = add i64 %.lcssa193, -2
  store i64 %i.ef, ptr %i.b, align 8, !tbaa !50
  %i.eg = lshr i64 %i.ed, 2
  store i64 %i.eg, ptr %1, align 8, !tbaa !51
  %i.eh = icmp eq i64 %i.ee, 0
  br i1 %i.eh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge265
  store i32 0, ptr %i.a, align 8, !tbaa !124
  br label %BrotliSafeReadBits.exit95.thread

bb.t:                                             ; preds = %._crit_edge265
  %i.ei = trunc nuw nsw i64 %i.ee to i32
  %i.ej = load i32, ptr %i.e, align 4
  %i.ek = shl nuw nsw i32 %i.ei, 12
  %i.el = and i32 %i.ej, -1044481
  %i.em = or disjoint i32 %i.el, %i.ek            ; 2 uses
  store i32 %i.em, ptr %i.e, align 4
  store i32 7, ptr %i.a, align 8, !tbaa !124
  br label %.loopexit177

.loopexit177.loopexit:                            ; preds = %.split
  %.pre304 = load i32, ptr %i.e, align 4
  br label %.loopexit177

.loopexit177:                                     ; preds = %.loopexit177.loopexit, %bb.t
  %i.en = phi i32 [ %.pre304, %.loopexit177.loopexit ], [ %i.em, %bb.t ]
  %i.eo = load i32, ptr %i.g, align 4, !tbaa !52  ; 2 uses
  %i.ep = lshr i32 %i.en, 12
  %i.eq = and i32 %i.ep, 255
  %i.er = icmp slt i32 %i.eo, %i.eq
  br i1 %i.er, label %.preheader165.lr.ph, label %.loopexit177.._crit_edge276_crit_edge

.loopexit177.._crit_edge276_crit_edge:            ; preds = %.loopexit177
  %.pre307 = load i32, ptr %i.f, align 4, !tbaa !58
  br label %._crit_edge276

.preheader165.lr.ph:                              ; preds = %.loopexit177
  %.promoted269.pre = load i64, ptr %i.b, align 8, !tbaa !50
  br label %.preheader165

.preheader165:                                    ; preds = %.preheader165.lr.ph, %bb.x
  %.promoted269 = phi i64 [ %.promoted269.pre, %.preheader165.lr.ph ], [ %i.fe, %bb.x ] ; 4 uses
  %.1275 = phi i32 [ %i.eo, %.preheader165.lr.ph ], [ %i.fg, %bb.x ] ; 4 uses
  %i.es = icmp ult i64 %.promoted269, 8
  br i1 %i.es, label %.lr.ph270, label %.preheader165._crit_edge

.preheader165._crit_edge:                         ; preds = %.preheader165
  %.pre306 = load i64, ptr %1, align 8, !tbaa !51
  br label %bb.v

.lr.ph270:                                        ; preds = %.preheader165
  %i.et = load ptr, ptr %i.d, align 8, !tbaa !45
  %.promoted274 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 3 uses
  %i.eu = icmp eq ptr %.promoted274, %i.et
  br i1 %i.eu, label %bb.u, label %BrotliPullByte.exit110

BrotliPullByte.exit110:                           ; preds = %.lr.ph270
  %i.ev = load i64, ptr %1, align 8, !tbaa !51
  %i.ew = load i8, ptr %.promoted274, align 1, !tbaa !48
  %i.ex = zext i8 %i.ew to i64
  %i.ey = shl nuw nsw i64 %i.ex, %.promoted269
  %i.ez = or i64 %i.ey, %i.ev
  %i.fa = or disjoint i64 %.promoted269, 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.promoted274, i64 1
  store ptr %i.fb, ptr %i.c, align 8, !tbaa !44
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph270
  store i32 %.1275, ptr %i.g, align 4, !tbaa !52
  br label %BrotliSafeReadBits.exit95.thread

bb.v:                                             ; preds = %.preheader165._crit_edge, %BrotliPullByte.exit110
  %i.fc = phi i64 [ %i.ez, %BrotliPullByte.exit110 ], [ %.pre306, %.preheader165._crit_edge ] ; 2 uses
  %.lcssa187 = phi i64 [ %i.fa, %BrotliPullByte.exit110 ], [ %.promoted269, %.preheader165._crit_edge ]
  %i.fd = and i64 %i.fc, 255                      ; 2 uses
  %i.fe = add i64 %.lcssa187, -8                  ; 2 uses
  store i64 %i.fe, ptr %i.b, align 8, !tbaa !50
  %i.ff = lshr i64 %i.fc, 8
  store i64 %i.ff, ptr %1, align 8, !tbaa !51
  %i.fg = add nsw i32 %.1275, 1                   ; 3 uses
  %i.fh = load i32, ptr %i.e, align 4
  %i.fi = lshr i32 %i.fh, 12
  %i.fj = and i32 %i.fi, 255                      ; 2 uses
  %i.fk = icmp eq i32 %i.fg, %i.fj
  br i1 %i.fk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fl = icmp sgt i32 %.1275, 0
  %i.fm = icmp eq i64 %i.fd, 0
  %or.cond3 = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %or.cond3, label %BrotliSafeReadBits.exit95.thread, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fn = shl nsw i32 %.1275, 3
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = shl i64 %i.fd, %i.fo
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = load i32, ptr %i.f, align 4, !tbaa !58
  %i.fs = or i32 %i.fr, %i.fq                     ; 2 uses
  store i32 %i.fs, ptr %i.f, align 4, !tbaa !58
  %i.ft = icmp slt i32 %i.fg, %i.fj
  br i1 %i.ft, label %.preheader165, label %._crit_edge276, !llvm.loop !126

._crit_edge276:                                   ; preds = %bb.x, %.loopexit177.._crit_edge276_crit_edge
  %i.fu = phi i32 [ %.pre307, %.loopexit177.._crit_edge276_crit_edge ], [ %i.fs, %bb.x ]
  %i.fv = add nsw i32 %i.fu, 1
  store i32 %i.fv, ptr %i.f, align 4, !tbaa !58
  store i32 0, ptr %i.a, align 8, !tbaa !124
  br label %BrotliSafeReadBits.exit95.thread

BrotliSafeReadBits.exit95.thread:                 ; preds = %bb.m, %bb.w, %.split, %.lr.ph, %.lr.ph235, %.lr.ph250, %.lr.ph264, %.lr.ph258.split, %.lr.ph286.split, %bb.q, %._crit_edge276, %bb.u, %bb.s, %bb.p, %bb.k, %bb.f
  %.059 = phi i32 [ -2, %bb.q ], [ 1, %bb.f ], [ 2, %bb.u ], [ 2, %bb.k ], [ 1, %bb.p ], [ 2, %.lr.ph258.split ], [ 2, %.lr.ph264 ], [ -31, %.split ], [ -3, %bb.w ], [ 1, %._crit_edge276 ], [ 1, %bb.s ], [ 2, %.lr.ph286.split ], [ 2, %.lr.ph235 ], [ 2, %.lr.ph250 ], [ 2, %.lr.ph ], [ -1, %bb.m ]
  ret i32 %.059
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @BrotliCalculateRingBufferSize(ptr nofree noundef captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 772
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = lshr i32 %i.b, 6
  %i.d = and i32 %i.c, 63
  %i.e = shl nuw i32 1, %i.d                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.g = load i32, ptr %i.f, align 4, !tbaa !114  ; 3 uses
  %.not = icmp eq i32 %i.g, 0
  %spec.select = select i1 %.not, i32 1024, i32 %i.g
  %i.h = icmp ne i32 %i.g, %i.e
  %i.i = and i32 %i.b, 4
  %.not24 = icmp eq i32 %i.i, 0
  %or.cond = and i1 %.not24, %i.h
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %.not25 = icmp eq ptr %i.k, null
  br i1 %.not25, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load i32, ptr %i.l, align 8, !tbaa !116
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.o = load i32, ptr %i.n, align 4, !tbaa !58
  %i.p = add nsw i32 %i.o, %.0
  %i.q = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.p)
  %i.r = and i32 %i.b, 16
  %.not26 = icmp eq i32 %i.r, 0
  br i1 %.not26, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader
  %.020 = phi i32 [ %i.s, %.preheader ], [ %i.e, %bb.d ] ; 2 uses
  %i.s = ashr i32 %.020, 1                        ; 2 uses
  %.not27 = icmp slt i32 %i.s, %i.q
  br i1 %.not27, label %.loopexit, label %.preheader, !llvm.loop !127

.loopexit:                                        ; preds = %.preheader, %bb.d
  %.1 = phi i32 [ %i.e, %bb.d ], [ %.020, %.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 768
  store i32 %.1, ptr %i.t, align 8, !tbaa !128
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -31, 3) i32 @DecodeVarLenUint8(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !129
  switch i32 %i.b, label %BrotliSafeReadBits.exit22.thread [
    i32 0, label %.preheader
    i32 1, label %._crit_edge
    i32 2, label %._crit_edge78
  ]

._crit_edge78:                                    ; preds = %bb.a
  %.pre79 = load i64, ptr %2, align 8, !tbaa !29
  br label %bb.h

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted60.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %bb.d

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load i64, ptr %i.c, align 8, !tbaa !50 ; 2 uses
  %i.d = icmp eq i64 %.promoted, 0
  br i1 %i.d, label %.lr.ph.split, label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader
  %.pre = load i64, ptr %1, align 8, !tbaa !51
  %i.e = add i64 %.promoted, -1
  br label %bb.b

.lr.ph.split:                                     ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.promoted58 = load ptr, ptr %i.f, align 8, !tbaa !44 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = icmp eq ptr %.promoted58, %i.h
  br i1 %i.i, label %BrotliSafeReadBits.exit22.thread, label %BrotliPullByte.exit

BrotliPullByte.exit:                              ; preds = %.lr.ph.split
  %i.j = load i64, ptr %1, align 8, !tbaa !51
  %i.k = load i8, ptr %.promoted58, align 1, !tbaa !48
  %i.l = zext i8 %i.k to i64
  %i.m = or i64 %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.promoted58, i64 1
  store ptr %i.n, ptr %i.f, align 8, !tbaa !44
  br label %bb.b

bb.b:                                             ; preds = %.preheader._crit_edge, %BrotliPullByte.exit
  %i.o = phi i64 [ %i.m, %BrotliPullByte.exit ], [ %.pre, %.preheader._crit_edge ] ; 2 uses
  %.lcssa53 = phi i64 [ 7, %BrotliPullByte.exit ], [ %i.e, %.preheader._crit_edge ] ; 2 uses
  %i.p = and i64 %i.o, 1
  store i64 %.lcssa53, ptr %i.c, align 8, !tbaa !50
  %i.q = lshr i64 %i.o, 1
  store i64 %i.q, ptr %1, align 8, !tbaa !51
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %2, align 8, !tbaa !29
  br label %BrotliSafeReadBits.exit22.thread

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %.promoted60 = phi i64 [ %.promoted60.pre, %._crit_edge ], [ %.lcssa53, %bb.b ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = icmp ult i64 %.promoted60, 3
  br i1 %i.t, label %.lr.ph62, label %.._crit_edge63_crit_edge

.._crit_edge63_crit_edge:                         ; preds = %bb.d
  %.pre77 = load i64, ptr %1, align 8, !tbaa !51
  br label %._crit_edge63

.lr.ph62:                                         ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45
  %.promoted66 = load ptr, ptr %i.u, align 8, !tbaa !44 ; 3 uses
  %i.x = icmp eq ptr %.promoted66, %i.w
  br i1 %i.x, label %bb.e, label %BrotliPullByte.exit25

BrotliPullByte.exit25:                            ; preds = %.lr.ph62
  %i.y = load i64, ptr %1, align 8, !tbaa !51
  %i.z = load i8, ptr %.promoted66, align 1, !tbaa !48
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, %.promoted60
  %i.ac = or i64 %i.ab, %i.y
  %i.ad = or disjoint i64 %.promoted60, 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.promoted66, i64 1
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !44
  br label %._crit_edge63

bb.e:                                             ; preds = %.lr.ph62
  store i32 1, ptr %i.a, align 8, !tbaa !129
  br label %BrotliSafeReadBits.exit22.thread

._crit_edge63:                                    ; preds = %.._crit_edge63_crit_edge, %BrotliPullByte.exit25
  %i.af = phi i64 [ %.pre77, %.._crit_edge63_crit_edge ], [ %i.ac, %BrotliPullByte.exit25 ] ; 2 uses
  %.lcssa49 = phi i64 [ %.promoted60, %.._crit_edge63_crit_edge ], [ %i.ad, %BrotliPullByte.exit25 ]
  %i.ag = and i64 %i.af, 7                        ; 3 uses
  %i.ah = add i64 %.lcssa49, -3
  store i64 %i.ah, ptr %i.s, align 8, !tbaa !50
  %i.ai = lshr i64 %i.af, 3
  store i64 %i.ai, ptr %1, align 8, !tbaa !51
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge63
  store i64 1, ptr %2, align 8, !tbaa !29
  store i32 0, ptr %i.a, align 8, !tbaa !129
  br label %BrotliSafeReadBits.exit22.thread

bb.g:                                             ; preds = %._crit_edge63
  store i64 %i.ag, ptr %2, align 8, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge78, %bb.g
  %i.ak = phi i64 [ %.pre79, %._crit_edge78 ], [ %i.ag, %bb.g ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted67 = load i64, ptr %i.al, align 8, !tbaa !50 ; 3 uses
  %i.am = icmp ult i64 %.promoted67, %i.ak
  br i1 %i.am, label %.lr.ph69, label %.._crit_edge70_crit_edge

.._crit_edge70_crit_edge:                         ; preds = %bb.h
  %.pre80 = load i64, ptr %1, align 8, !tbaa !51
  br label %._crit_edge70

.lr.ph69:                                         ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !45 ; 2 uses
  %.promoted73 = load ptr, ptr %i.an, align 8, !tbaa !44 ; 2 uses
  %i.aq = icmp eq ptr %.promoted73, %i.ap
  br i1 %i.aq, label %._crit_edge89, label %BrotliPullByte.exit27.preheader

BrotliPullByte.exit27.preheader:                  ; preds = %.lr.ph69
  %.promoted98 = load i64, ptr %1, align 8, !tbaa !51
  br label %BrotliPullByte.exit27

bb.i:                                             ; preds = %BrotliPullByte.exit27
  %i.ar = icmp eq ptr %i.ba, %i.ap
  br i1 %i.ar, label %._crit_edge89, label %BrotliPullByte.exit27, !llvm.loop !73

end_hunk_0
begin_hunk_1_@ReadHuffmanCode:.peel.begin
  %i.lb = add nsw i64 %i.kg, -14                  ; 2 uses
  %i.lc = add nuw nsw i64 %i.lb, %i.kc            ; 3 uses
  %.not65.i = icmp ult i64 %i.jw, %i.lc
  br i1 %.not65.i, label %select.unfold.i, label %bb.ak, !llvm.loop !142

bb.ak:                                            ; preds = %BitMask.exit.i116
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr @kBrotliBitMask, i64 %i.lb
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !29
  %i.lf = lshr i64 %.055.i, %i.kc
  %i.lg = and i64 %i.le, %i.lf                    ; 3 uses
  %i.lh = sub nuw i64 %i.jw, %i.lc
  store i64 %i.lh, ptr %i.d, align 8, !tbaa !50
  %i.li = load i64, ptr %i.a, align 8, !tbaa !51
  %i.lj = lshr i64 %i.li, %i.lc
  store i64 %i.lj, ptr %i.a, align 8, !tbaa !51
  %i.lk = load ptr, ptr %i.fn, align 8, !tbaa !61 ; 5 uses
  %i.ll = icmp eq i16 %i.kf, 16
  br i1 %i.ll, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.lm = load i64, ptr %i.fl, align 8, !tbaa !29
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.046.i.i = phi i64 [ 2, %bb.al ], [ 3, %bb.ak ]
  %.045.i.i = phi i64 [ %i.lm, %bb.al ], [ 0, %bb.ak ] ; 6 uses
  %i.ln = load i64, ptr %i.fm, align 8, !tbaa !29
  %.not.i68.i = icmp eq i64 %i.ln, %.045.i.i
  br i1 %.not.i68.i, label %bb.an, label %.thread.i118

.thread.i118:                                     ; preds = %bb.am
  store i64 %.045.i.i, ptr %i.fm, align 8, !tbaa !29
  br label %bb.ap

bb.an:                                            ; preds = %bb.am
  %.pr.i = load i64, ptr %i.h, align 8, !tbaa !29 ; 3 uses
  %.not51.i.i121 = icmp eq i64 %.pr.i, 0
  br i1 %.not51.i.i121, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lo = add i64 %.pr.i, -2
  %i.lp = shl i64 %i.lo, %.046.i.i
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.thread.i118
  %i.lq = phi i64 [ 0, %.thread.i118 ], [ %i.lp, %bb.ao ], [ 0, %bb.an ] ; 3 uses
  %i.lr = phi i64 [ 0, %.thread.i118 ], [ %.pr.i, %bb.ao ], [ 0, %bb.an ] ; 3 uses
  %i.ls = add nuw nsw i64 %i.lg, 3
  %i.lt = add i64 %i.ls, %i.lq                    ; 2 uses
  store i64 %i.lt, ptr %i.h, align 8, !tbaa !29
  %i.lu = sub i64 %i.lt, %i.lr                    ; 3 uses
  %i.lv = add i64 %i.lu, %.lcssa788182.i          ; 6 uses
  %i.lw = icmp ugt i64 %i.lv, %1
  br i1 %i.lw, label %.thread154, label %bb.aq

.thread154:                                       ; preds = %bb.ap
  store i64 %1, ptr %i.fk, align 8, !tbaa !29
  store i64 1048575, ptr %i.g, align 8, !tbaa !29
  br label %.critedge

bb.aq:                                            ; preds = %bb.ap
  %.not52.i.i119 = icmp eq i64 %.045.i.i, 0
  br i1 %.not52.i.i119, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.045.i.i ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !5  ; 2 uses
  %i.lz = add i64 %i.lq, 3
  %i.ma = add i64 %i.lz, %i.lg
  %i.mb = sub i64 %i.ma, %i.lr
  %i.mc = add i64 %i.lq, 2
  %i.md = add i64 %i.mc, %i.lg
  %i.me = sub i64 %i.md, %i.lr
  %xtraiter365 = and i64 %i.mb, 3                 ; 2 uses
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %.prol.loopexit363, label %.prol.preheader362

.prol.preheader362:                               ; preds = %bb.ar, %.prol.preheader362
  %i.mf = phi i64 [ %i.mk, %.prol.preheader362 ], [ %.lcssa788182.i, %bb.ar ] ; 3 uses
  %.0.i69.i.prol = phi i32 [ %i.mj, %.prol.preheader362 ], [ %i.ly, %bb.ar ]
  %prol.iter367 = phi i64 [ %prol.iter367.next, %.prol.preheader362 ], [ 0, %bb.ar ]
  %i.mg = trunc i64 %i.mf to i16
  %i.mh = sext i32 %.0.i69.i.prol to i64
  %i.mi = getelementptr inbounds [2 x i8], ptr %i.lk, i64 %i.mh
  store i16 %i.mg, ptr %i.mi, align 2, !tbaa !131
  %i.mj = trunc i64 %i.mf to i32                  ; 3 uses
  %i.mk = add i64 %i.mf, 1                        ; 2 uses
  %prol.iter367.next = add i64 %prol.iter367, 1   ; 2 uses
  %prol.iter367.cmp.not = icmp eq i64 %prol.iter367.next, %xtraiter365
  br i1 %prol.iter367.cmp.not, label %.prol.loopexit363, label %.prol.preheader362, !llvm.loop !143

.prol.loopexit363:                                ; preds = %.prol.preheader362, %bb.ar
  %.lcssa351.unr = phi i32 [ poison, %bb.ar ], [ %i.mj, %.prol.preheader362 ]
  %.unr = phi i64 [ %.lcssa788182.i, %bb.ar ], [ %i.mk, %.prol.preheader362 ]
  %.0.i69.i.unr = phi i32 [ %i.ly, %bb.ar ], [ %i.mj, %.prol.preheader362 ]
  %i.ml = icmp ult i64 %i.me, 3
  br i1 %i.ml, label %.unr-lcssa368, label %.new364

.new364:                                          ; preds = %.prol.loopexit363, %.new364
  %i.mm = phi i64 [ %i.nd, %.new364 ], [ %.unr, %.prol.loopexit363 ] ; 6 uses
  %.0.i69.i = phi i32 [ %i.nc, %.new364 ], [ %.0.i69.i.unr, %.prol.loopexit363 ]
  %i.mn = trunc i64 %i.mm to i16
  %i.mo = sext i32 %.0.i69.i to i64
  %i.mp = getelementptr inbounds [2 x i8], ptr %i.lk, i64 %i.mo
  store i16 %i.mn, ptr %i.mp, align 2, !tbaa !131
  %i.mq = add i64 %i.mm, 1                        ; 2 uses
  %i.mr = trunc i64 %i.mq to i16
  %sext371 = shl i64 %i.mm, 32
  %i.ms = ashr exact i64 %sext371, 31
  %i.mt = getelementptr inbounds i8, ptr %i.lk, i64 %i.ms
  store i16 %i.mr, ptr %i.mt, align 2, !tbaa !131
  %i.mu = add i64 %i.mm, 2                        ; 2 uses
  %i.mv = trunc i64 %i.mu to i16
  %sext372 = shl i64 %i.mq, 32
  %i.mw = ashr exact i64 %sext372, 31
  %i.mx = getelementptr inbounds i8, ptr %i.lk, i64 %i.mw
  store i16 %i.mv, ptr %i.mx, align 2, !tbaa !131
  %i.my = add i64 %i.mm, 3                        ; 2 uses
  %i.mz = trunc i64 %i.my to i16
  %sext373 = shl i64 %i.mu, 32
  %i.na = ashr exact i64 %sext373, 31
  %i.nb = getelementptr inbounds i8, ptr %i.lk, i64 %i.na
  store i16 %i.mz, ptr %i.nb, align 2, !tbaa !131
  %i.nc = trunc i64 %i.my to i32                  ; 2 uses
  %i.nd = add i64 %i.mm, 4                        ; 2 uses
  %.not53.i.i120.3 = icmp eq i64 %i.nd, %i.lv
  br i1 %.not53.i.i120.3, label %.unr-lcssa368, label %.new364, !llvm.loop !140

.unr-lcssa368:                                    ; preds = %.new364, %.prol.loopexit363
  %.lcssa351 = phi i32 [ %.lcssa351.unr, %.prol.loopexit363 ], [ %i.nc, %.new364 ]
  store i64 %i.lv, ptr %i.fk, align 8, !tbaa !29
  store i32 %.lcssa351, ptr %i.lx, align 4, !tbaa !5
  %i.ne = sub i64 15, %.045.i.i
  %i.nf = shl i64 %i.lu, %i.ne
  %i.ng = sub i64 %i.jk, %i.nf                    ; 2 uses
  store i64 %i.ng, ptr %i.g, align 8, !tbaa !29
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.045.i.i ; 2 uses
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !131
  %i.nj = trunc i64 %i.lu to i16
  %i.nk = add i16 %i.ni, %i.nj
  store i16 %i.nk, ptr %i.nh, align 2, !tbaa !131
  br label %select.unfold.i

bb.as:                                            ; preds = %bb.aq
  store i64 %i.lv, ptr %i.fk, align 8, !tbaa !29
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.as, %.unr-lcssa368, %BitMask.exit.i116, %ProcessSingleCodeLength.exit.i123, %bb.ag
  %i.nl = phi i64 [ %i.kz, %ProcessSingleCodeLength.exit.i123 ], [ %i.jk, %bb.ag ], [ %i.jk, %BitMask.exit.i116 ], [ %i.jk, %bb.as ], [ %i.ng, %.unr-lcssa368 ] ; 2 uses
  %.lcssa7880.i = phi i64 [ %i.la, %ProcessSingleCodeLength.exit.i123 ], [ %.lcssa788182.i, %bb.ag ], [ %.lcssa788182.i, %BitMask.exit.i116 ], [ %i.lv, %bb.as ], [ %i.lv, %.unr-lcssa368 ] ; 2 uses
  %.3.i = phi i32 [ 0, %ProcessSingleCodeLength.exit.i123 ], [ 1, %bb.ag ], [ 1, %BitMask.exit.i116 ], [ 0, %bb.as ], [ 0, %.unr-lcssa368 ]
  %i.nm = icmp ult i64 %.lcssa7880.i, %1
  br i1 %i.nm, label %bb.ab, label %thread-pre-split

thread-pre-split:                                 ; preds = %select.unfold.i, %ReadSymbolCodeLengths.exit.thread, %ReadSymbolCodeLengths.exit.thread149
  %i.nn = phi i64 [ %.075106.lcssa.sink.i.ph, %ReadSymbolCodeLengths.exit.thread149 ], [ %.pr.pre, %ReadSymbolCodeLengths.exit.thread ], [ %i.nl, %select.unfold.i ]
  %.not81 = icmp eq i64 %i.nn, 0
  br i1 %.not81, label %thread-pre-split.thread, label %.critedge

thread-pre-split.thread:                          ; preds = %bb.ab, %thread-pre-split
  %i.no = load ptr, ptr %i.fn, align 8, !tbaa !61
  %i.np = tail call i32 @BrotliBuildHuffmanTable(ptr noundef %2, i32 noundef 8, ptr noundef %i.no, ptr noundef nonnull %i.i) #21
  %.not82 = icmp eq ptr %3, null
  br i1 %.not82, label %bb.au, label %bb.at

bb.at:                                            ; preds = %thread-pre-split.thread
  %i.nq = zext i32 %i.np to i64
  store i64 %i.nq, ptr %3, align 8, !tbaa !29
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %thread-pre-split.thread
  store i32 0, ptr %i.b, align 8, !tbaa !62
  br label %.critedge

.critedge:                                        ; preds = %bb.ad, %._crit_edge.i, %bb.h, %.peel.begin, %.lr.ph.peel, %._crit_edge.i101, %.thread62.i, %.lr.ph69.i._crit_edge, %.thread154, %.thread, %bb.au, %thread-pre-split, %bb.k, %bb.d
  %.6 = phi i32 [ -7, %thread-pre-split ], [ -7, %.thread154 ], [ -5, %bb.h ], [ 2, %bb.d ], [ 2, %.lr.ph69.i._crit_edge ], [ 2, %.lr.ph.peel ], [ 1, %bb.k ], [ 2, %.thread ], [ 1, %bb.au ], [ -6, %._crit_edge.i101 ], [ -4, %._crit_edge.i ], [ 2, %.thread62.i ], [ -31, %.peel.begin ], [ 2, %bb.ad ]
  ret i32 %.6
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -26, 4) i32 @CopyUncompressedBlockToOutput(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(none) %3) unnamed_addr #10 {
bb.a:
  %i.a = tail call fastcc i32 @BrotliEnsureRingBuffer(ptr noundef %3)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.thread48, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 756 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 132 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 100 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 772 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.pre = load i32, ptr %i.b, align 4, !tbaa !144
  br label %4

4:                                                ; preds = %4, %.preheader
  switch i32 %.pre, label %4 [
    i32 0, label %BrotliGetRemainingBytes.exit
    i32 1, label %.loopexit
  ]

.outer:                                           ; preds = %bb.f, %bb.e
  store i32 0, ptr %i.b, align 4, !tbaa !144
  br label %BrotliGetRemainingBytes.exit

BrotliGetRemainingBytes.exit:                     ; preds = %4, %.outer
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp ugt i64 %i.r, 1073741824
  %.pre65 = load i64, ptr %i.f, align 8, !tbaa !50 ; 3 uses
  %i.t = lshr i64 %.pre65, 3
  %i.u = add nuw nsw i64 %i.t, %i.r
  %i.v = trunc i64 %i.u to i32
  %.0.i = select i1 %i.s, i32 1073741824, i32 %i.v
  %i.w = load i32, ptr %i.g, align 4, !tbaa !58
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %.0.i) ; 2 uses
  %i.x = load i32, ptr %i.h, align 8, !tbaa !116  ; 3 uses
  %i.y = add nsw i32 %i.x, %spec.select
  %i.z = load i32, ptr %i.i, align 4, !tbaa !114  ; 2 uses
  %i.aa = icmp sgt i32 %i.y, %i.z
  %i.ab = sub nsw i32 %i.z, %i.x
  %.139 = select i1 %i.aa, i32 %i.ab, i32 %spec.select ; 5 uses
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.ad = sext i32 %i.x to i64
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = sext i32 %.139 to i64                   ; 2 uses
  %i.ag = icmp ugt i64 %.pre65, 7
  %i.ah = icmp ne i32 %.139, 0                    ; 2 uses
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %BrotliGetRemainingBytes.exit
  %.pre66 = load i64, ptr %i.c, align 8, !tbaa !51
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.aj = phi i64 [ %i.ao, %.lr.ph ], [ %.pre66, %.lr.ph.preheader ]
  %.0.i4655 = phi i64 [ %i.aq, %.lr.ph ], [ %i.af, %.lr.ph.preheader ]
  %.013.i54 = phi ptr [ %i.ap, %.lr.ph ], [ %i.ae, %.lr.ph.preheader ] ; 2 uses
  %i.ak = trunc i64 %i.aj to i8
  store i8 %i.ak, ptr %.013.i54, align 1, !tbaa !48
  %i.al = load i64, ptr %i.f, align 8, !tbaa !50
  %i.am = add i64 %i.al, -8                       ; 3 uses
  store i64 %i.am, ptr %i.f, align 8, !tbaa !50
  %i.an = load i64, ptr %i.c, align 8, !tbaa !51
  %i.ao = lshr i64 %i.an, 8                       ; 2 uses
  store i64 %i.ao, ptr %i.c, align 8, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i54, i64 1 ; 2 uses
  %i.aq = add i64 %.0.i4655, -1                   ; 3 uses
  %i.ar = icmp ugt i64 %i.am, 7
  %i.as = icmp ne i64 %i.aq, 0                    ; 2 uses
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !145

._crit_edge:                                      ; preds = %.lr.ph, %BrotliGetRemainingBytes.exit
  %.013.i.lcssa = phi ptr [ %i.ae, %BrotliGetRemainingBytes.exit ], [ %i.ap, %.lr.ph ]
  %.0.i46.lcssa = phi i64 [ %i.af, %BrotliGetRemainingBytes.exit ], [ %i.aq, %.lr.ph ] ; 2 uses
  %.lcssa51 = phi i64 [ %.pre65, %BrotliGetRemainingBytes.exit ], [ %i.am, %.lr.ph ] ; 2 uses
  %.lcssa = phi i1 [ %i.ah, %BrotliGetRemainingBytes.exit ], [ %i.as, %.lr.ph ]
  %i.au = icmp ult i64 %.lcssa51, 64
  br i1 %i.au, label %bb.b, label %BrotliBitReaderNormalize.exit.i

bb.b:                                             ; preds = %._crit_edge
  %notmask.i.i = shl nsw i64 -1, %.lcssa51
  %i.av = xor i64 %notmask.i.i, -1
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !51
  %i.ax = and i64 %i.aw, %i.av
  store i64 %i.ax, ptr %i.c, align 8, !tbaa !51
  br label %BrotliBitReaderNormalize.exit.i

BrotliBitReaderNormalize.exit.i:                  ; preds = %bb.b, %._crit_edge
  br i1 %.lcssa, label %bb.c, label %BrotliCopyBytes.exit

bb.c:                                             ; preds = %BrotliBitReaderNormalize.exit.i
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.013.i.lcssa, ptr align 1 %i.ay, i64 %.0.i46.lcssa, i1 false)
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0.i46.lcssa
  store ptr %i.ba, ptr %i.e, align 8, !tbaa !44
  br label %BrotliCopyBytes.exit

BrotliCopyBytes.exit:                             ; preds = %BrotliBitReaderNormalize.exit.i, %bb.c
  %i.bb = load i32, ptr %i.h, align 8, !tbaa !116
  %i.bc = add nsw i32 %i.bb, %.139                ; 2 uses
  store i32 %i.bc, ptr %i.h, align 8, !tbaa !116
  %i.bd = load i32, ptr %i.g, align 4, !tbaa !58  ; 2 uses
  %i.be = sub nsw i32 %i.bd, %.139
  store i32 %i.be, ptr %i.g, align 4, !tbaa !58
  %i.bf = load i32, ptr %i.k, align 4
  %i.bg = lshr i32 %i.bf, 6
  %i.bh = and i32 %i.bg, 63
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = icmp slt i32 %i.bc, %i.bi
  br i1 %i.bj, label %bb.d, label %.thread

.thread:                                          ; preds = %BrotliCopyBytes.exit
  store i32 1, ptr %i.b, align 4, !tbaa !144
  br label %.loopexit

bb.d:                                             ; preds = %BrotliCopyBytes.exit
  %i.bk = icmp eq i32 %i.bd, %.139
  %. = select i1 %i.bk, i32 1, i32 2
  br label %.thread48

.loopexit:                                        ; preds = %4, %.thread
  %i.bl = tail call fastcc i32 @WriteRingBuffer(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) ; 2 uses
  %.not44 = icmp eq i32 %i.bl, 1
  br i1 %.not44, label %bb.e, label %.thread48

bb.e:                                             ; preds = %.loopexit
  %i.bm = load i32, ptr %i.i, align 4, !tbaa !114
  %i.bn = load i32, ptr %i.k, align 4
  %i.bo = lshr i32 %i.bn, 6
  %i.bp = and i32 %i.bo, 63
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = icmp eq i32 %i.bm, %i.bq
  br i1 %i.br, label %bb.f, label %.outer

bb.f:                                             ; preds = %bb.e
  %i.bs = load i32, ptr %i.l, align 4, !tbaa !53
  store i32 %i.bs, ptr %i.m, align 8, !tbaa !115
  br label %.outer

.thread48:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.5 = phi i32 [ -26, %bb.a ], [ %., %bb.d ], [ %i.bl, %.loopexit ]
  ret i32 %.5
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 1, 3) i32 @SkipMetadataBlock(ptr nofree noundef captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !58   ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50   ; 4 uses
  %i.h = icmp ugt i64 %i.g, 7
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.i = trunc i64 %i.g to i32
  %i.j = ashr i32 %i.i, 3
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.d) ; 4 uses
  %i.k = sext i32 %spec.select to i64             ; 2 uses
  %.not66 = icmp eq i32 %spec.select, 0
  br i1 %.not66, label %bb.e, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.promoted = load i64, ptr %i.b, align 8, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi i64 [ %.promoted, %.lr.ph ], [ %i.p, %bb.d ] ; 2 uses
  %.0.i4447 = phi i64 [ %i.k, %.lr.ph ], [ %i.r, %bb.d ]
  %.013.i46 = phi ptr [ %i.a, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %i.m = phi i64 [ %i.g, %.lr.ph ], [ %i.o, %bb.d ]
  %i.n = trunc i64 %i.l to i8
  store i8 %i.n, ptr %.013.i46, align 1, !tbaa !48
  %i.o = add i64 %i.m, -8                         ; 4 uses
  %i.p = lshr i64 %i.l, 8                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i46, i64 1 ; 2 uses
  %i.r = add nsw i64 %.0.i4447, -1                ; 3 uses
  %i.s = icmp ugt i64 %i.o, 7
  %i.t = icmp ne i64 %i.r, 0                      ; 2 uses
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !145

._crit_edge:                                      ; preds = %bb.d
  store i64 %i.p, ptr %i.b, align 8, !tbaa !51
  store i64 %i.o, ptr %i.f, align 8, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.lcssa45 = phi i64 [ %i.o, %._crit_edge ], [ %i.g, %bb.c ] ; 2 uses
  %.013.i.lcssa = phi ptr [ %i.q, %._crit_edge ], [ %i.a, %bb.c ]
  %.0.i44.lcssa = phi i64 [ %i.r, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %.lcssa = phi i1 [ %i.t, %._crit_edge ], [ false, %bb.c ]
  %i.v = icmp ult i64 %.lcssa45, 64
  br i1 %i.v, label %bb.f, label %BrotliBitReaderNormalize.exit.i

bb.f:                                             ; preds = %bb.e
  %notmask.i.i = shl nsw i64 -1, %.lcssa45
  %i.w = xor i64 %notmask.i.i, -1
  %i.x = load i64, ptr %i.b, align 8, !tbaa !51
  %i.y = and i64 %i.x, %i.w
  store i64 %i.y, ptr %i.b, align 8, !tbaa !51
  br label %BrotliBitReaderNormalize.exit.i

BrotliBitReaderNormalize.exit.i:                  ; preds = %bb.f, %bb.e
  br i1 %.lcssa, label %bb.g, label %BrotliCopyBytes.exit

bb.g:                                             ; preds = %BrotliBitReaderNormalize.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !44  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.013.i.lcssa, ptr align 1 %i.aa, i64 %.0.i44.lcssa, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.0.i44.lcssa
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !44
  br label %BrotliCopyBytes.exit

BrotliCopyBytes.exit:                             ; preds = %BrotliBitReaderNormalize.exit.i, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !146 ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %BrotliCopyBytes.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !57
  call void %i.ad(ptr noundef %i.af, ptr noundef nonnull %i.a, i64 noundef %i.k) #21
  %.pre = load i32, ptr %i.c, align 4, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %BrotliCopyBytes.exit
  %i.ag = phi i32 [ %.pre, %bb.h ], [ %i.d, %BrotliCopyBytes.exit ] ; 2 uses
  %i.ah = sub nsw i32 %i.ag, %spec.select         ; 2 uses
  store i32 %i.ah, ptr %i.c, align 4, !tbaa !58
  %.not41 = icmp eq i32 %i.ag, %spec.select
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %.not41, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %i.ai = phi i32 [ %i.ah, %bb.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44 ; 3 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1073741824
  br i1 %i.aq, label %BrotliGetRemainingBytes.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load i64, ptr %i.f, align 8, !tbaa !50
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, %i.ap
  %i.au = trunc i64 %i.at to i32
  br label %BrotliGetRemainingBytes.exit

BrotliGetRemainingBytes.exit:                     ; preds = %bb.j, %bb.k
  %.0.i = phi i32 [ %i.au, %bb.k ], [ 1073741824, %bb.j ]
  %spec.select43 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %.0.i) ; 5 uses
  %i.av = icmp sgt i32 %spec.select43, 0
  br i1 %i.av, label %bb.l, label %bb.o

bb.l:                                             ; preds = %BrotliGetRemainingBytes.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !146 ; 2 uses
  %.not42 = icmp eq ptr %i.ax, null
  br i1 %.not42, label %._crit_edge60, label %bb.m

._crit_edge60:                                    ; preds = %bb.l
  %.pre61 = zext nneg i32 %spec.select43 to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !57
  %i.ba = zext nneg i32 %spec.select43 to i64     ; 2 uses
  call void %i.ax(ptr noundef %i.az, ptr noundef %i.am, i64 noundef %i.ba) #21
  %.pre58 = load ptr, ptr %i.al, align 8, !tbaa !44
  %.pre59 = load i32, ptr %i.c, align 4, !tbaa !58
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge60, %bb.m
  %.pre-phi = phi i64 [ %.pre61, %._crit_edge60 ], [ %i.ba, %bb.m ]
  %i.bb = phi i32 [ %i.ai, %._crit_edge60 ], [ %.pre59, %bb.m ] ; 2 uses
  %i.bc = phi ptr [ %i.am, %._crit_edge60 ], [ %.pre58, %bb.m ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.pre-phi
  store ptr %i.bd, ptr %i.al, align 8, !tbaa !44
  %i.be = sub nsw i32 %i.bb, %spec.select43
  store i32 %i.be, ptr %i.c, align 4, !tbaa !58
  %i.bf = icmp eq i32 %i.bb, %spec.select43
  br i1 %i.bf, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %BrotliGetRemainingBytes.exit
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.a, %bb.i, %bb.o
  %.134 = phi i32 [ 1, %bb.i ], [ 1, %bb.a ], [ 2, %bb.o ], [ 1, %bb.n ]
  ret i32 %.134
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -31, 3) i32 @DecodeContextMap(i64 noundef range(i64 0, -3) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 852 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !64
  switch i32 %i.d, label %.critedge [
    i32 0, label %bb.b
    i32 1, label %bb.g
    i32 2, label %._crit_edge211
    i32 3, label %._crit_edge213
    i32 4, label %bb.s
  ]

._crit_edge213:                                   ; preds = %bb.a
  %.phi.trans.insert214 = getelementptr inbounds nuw i8, ptr %3, i64 2696
  %.pre215 = load i64, ptr %.phi.trans.insert214, align 8, !tbaa !147
  br label %bb.i

._crit_edge211:                                   ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 2688
  %.pre212 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !148
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @DecodeVarLenUint8(ptr noundef nonnull %3, ptr noundef nonnull %i.b, ptr noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %1, align 8, !tbaa !29
end_hunk_1
