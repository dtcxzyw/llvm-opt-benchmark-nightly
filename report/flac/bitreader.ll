Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/bitreader?download=true
inline.NumInlined: 12
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@bitreader_read_from_client_:bb.a
  %i.em = zext i16 %i.el to i32
  %i.en = xor i32 %i.eb, %i.em
  br label %crc16_update_word_.exit.i

crc16_update_word_.exit.i:                        ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %.lr.ph.i.i.5, %.lr.ph.i.i.6, %.lr.ph.i.i.7, %bb.d
  %.0.lcssa.i.i = phi i32 [ %i.o, %bb.d ], [ %i.af, %.lr.ph.preheader.i.i ], [ %i.av, %.lr.ph.i.i.1 ], [ %i.bl, %.lr.ph.i.i.2 ], [ %i.cb, %.lr.ph.i.i.3 ], [ %i.cr, %.lr.ph.i.i.4 ], [ %i.dh, %.lr.ph.i.i.5 ], [ %i.dx, %.lr.ph.i.i.6 ], [ %i.en, %.lr.ph.i.i.7 ]
  store i32 %.0.lcssa.i.i, ptr %i.n, align 4, !tbaa !20
  store i32 0, ptr %i.h, align 4, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge60, %crc16_update_word_.exit.i, %bb.c
  %.pre56 = phi ptr [ %.pre56.pre61, %crc16_update_word_.exit.i ], [ %.pre56.pre61, %bb.c ], [ %.pre56.pre, %._crit_edge60 ] ; 2 uses
  %i.eo = phi i32 [ %i.j, %crc16_update_word_.exit.i ], [ %i.f, %bb.c ], [ %i.f, %._crit_edge60 ] ; 3 uses
  %i.ep = icmp ugt i32 %i.c, %i.eo
  br i1 %i.ep, label %bb.f, label %crc16_update_block_.exit

bb.f:                                             ; preds = %bb.e
  %i.eq = zext i32 %i.eo to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.pre56, i64 %i.eq
  %i.es = sub nuw i32 %i.c, %i.eo
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !20
  %i.ev = trunc i32 %i.eu to i16
  %i.ew = tail call zeroext i16 @FLAC__crc16_update_words64(ptr noundef %i.er, i32 noundef %i.es, i16 noundef zeroext %i.ev) #18
  %i.ex = zext i16 %i.ew to i32
  store i32 %i.ex, ptr %i.et, align 4, !tbaa !20
  %.pre = load i32, ptr %i.b, align 4, !tbaa !18
  %.pre55 = load ptr, ptr %0, align 8, !tbaa !11
  br label %crc16_update_block_.exit

crc16_update_block_.exit:                         ; preds = %bb.e, %bb.f
  %i.ey = phi ptr [ %.pre56, %bb.e ], [ %.pre55, %bb.f ] ; 2 uses
  %i.ez = phi i32 [ %i.c, %bb.e ], [ %.pre, %bb.f ] ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !22
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !29
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !30
  %.not50 = icmp ne i32 %i.fd, 0
  %i.fe = zext i1 %.not50 to i32
  %i.ff = zext i32 %i.ez to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ff
  %i.fh = sub i32 %i.fb, %i.ez
  %i.fi = add i32 %i.fh, %i.fe
  %i.fj = shl i32 %i.fi, 3
  %i.fk = zext i32 %i.fj to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ey, ptr noundef nonnull align 1 %i.fg, i64 noundef range(i64 0, 4294967296) %i.fk, i1 noundef false) #18
  %i.fl = load i32, ptr %i.fa, align 4, !tbaa !29
  %i.fm = sub i32 %i.fl, %i.ez                    ; 2 uses
  store i32 %i.fm, ptr %i.fa, align 4, !tbaa !29
  store i32 0, ptr %i.b, align 4, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge57, %crc16_update_block_.exit
  %i.fn = phi i32 [ %.pre58, %._crit_edge57 ], [ %i.fm, %crc16_update_block_.exit ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !15
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.fr = sub i32 %i.fp, %i.fn
  %i.fs = shl i32 %i.fr, 3                        ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !30 ; 4 uses
  %i.fv = sub i32 %i.fs, %i.fu
  %i.fw = zext i32 %i.fv to i64
  store i64 %i.fw, ptr %i.a, align 8, !tbaa !25
  %i.fx = icmp eq i32 %i.fs, %i.fu
  br i1 %i.fx, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fy = load ptr, ptr %0, align 8, !tbaa !11
  %i.fz = zext i32 %i.fn to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fz ; 3 uses
  %i.gb = zext i32 %i.fu to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gb
  %i.gd = load i64, ptr %i.ga, align 8, !tbaa !25 ; 2 uses
  %.not51 = icmp eq i32 %i.fu, 0
  br i1 %.not51, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ge = tail call i64 @llvm.bswap.i64(i64 %i.gd)
  store i64 %i.ge, ptr %i.ga, align 8, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !16
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !17
  %i.gj = call i32 %i.gg(ptr noundef nonnull %i.gc, ptr noundef nonnull %i.a, ptr noundef %i.gi) #18
  %.not52 = icmp eq i32 %i.gj, 0
  br i1 %.not52, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.gk = load ptr, ptr %0, align 8, !tbaa !11
  %i.gl = load i32, ptr %i.fq, align 4, !tbaa !29
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gm
  store i64 %i.gd, ptr %i.gn, align 8, !tbaa !25
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.go = load i32, ptr %i.fq, align 4, !tbaa !29 ; 3 uses
  %i.gp = shl i32 %i.go, 3
  %i.gq = load i32, ptr %i.ft, align 8, !tbaa !30
  %i.gr = add i32 %i.gp, %i.gq                    ; 2 uses
  %i.gs = load i64, ptr %i.a, align 8, !tbaa !25
  %i.gt = trunc i64 %i.gs to i32                  ; 2 uses
  %i.gu = add i32 %i.gr, 7
  %i.gv = add i32 %i.gu, %i.gt
  %i.gw = lshr i32 %i.gv, 3                       ; 2 uses
  %i.gx = icmp ult i32 %i.go, %i.gw
  br i1 %i.gx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.gy = load ptr, ptr %0, align 8, !tbaa !11    ; 5 uses
  %i.gz = zext nneg i32 %i.go to i64              ; 4 uses
  %wide.trip.count = zext nneg i32 %i.gw to i64   ; 3 uses
  %i.ha = sub nsw i64 %wide.trip.count, %i.gz
  %xtraiter = and i64 %i.ha, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.gz, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.prol ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !25
  %i.hd = call i64 @llvm.bswap.i64(i64 %i.hc)
  store i64 %i.hd, ptr %i.hb, align 8, !tbaa !25
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !34

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.gz, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.he = sub nsw i64 %i.gz, %wide.trip.count
  %i.hf = icmp ugt i64 %i.he, -4
  br i1 %i.hf, label %._crit_edge.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !25
  %i.hi = call i64 @llvm.bswap.i64(i64 %i.hh)
  store i64 %i.hi, ptr %i.hg, align 8, !tbaa !25
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !25
  %i.hm = call i64 @llvm.bswap.i64(i64 %i.hl)
  store i64 %i.hm, ptr %i.hk, align 8, !tbaa !25
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !25
  %i.hq = call i64 @llvm.bswap.i64(i64 %i.hp)
  store i64 %i.hq, ptr %i.ho, align 8, !tbaa !25
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !25
  %i.hu = call i64 @llvm.bswap.i64(i64 %i.ht)
  store i64 %i.hu, ptr %i.hs, align 8, !tbaa !25
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %.lr.ph.new, !llvm.loop !35

._crit_edge.loopexit:                             ; preds = %.lr.ph.new, %.prol.loopexit
  %.pre59 = load i64, ptr %i.a, align 8, !tbaa !25
  %.pre63 = trunc i64 %.pre59 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %.pre-phi = phi i32 [ %.pre63, %._crit_edge.loopexit ], [ %i.gt, %bb.l ]
  %i.hv = add i32 %i.gr, %.pre-phi                ; 2 uses
  %i.hw = lshr i32 %i.hv, 3
  store i32 %i.hw, ptr %i.fq, align 4, !tbaa !29
  %i.hx = and i32 %i.hv, 7
  store i32 %i.hx, ptr %i.ft, align 8, !tbaa !30
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %._crit_edge, %bb.k
  %.049 = phi i32 [ 0, %bb.k ], [ 1, %._crit_edge ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.049
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__bitreader_read_raw_int32(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %2)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ugt i32 %2, 32
  %i.e = add nsw i32 %2, -1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = select i1 %i.d, i32 0, i32 %i.h          ; 2 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !21
  %i.k = xor i32 %i.j, %i.i
  %i.l = sub i32 %i.k, %i.i
  store i32 %i.l, ptr %1, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__bitreader_read_raw_uint64(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = icmp ugt i32 %2, 32
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %2, -32
  %i.e = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.d)
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 32)
  %.not12 = icmp eq i32 %i.f, 0
  br i1 %.not12, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.a, align 4, !tbaa !21
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw i64 %i.h, 32
  %i.j = load i32, ptr %i.b, align 4, !tbaa !21
  %i.k = zext i32 %i.j to i64
  %i.l = or disjoint i64 %i.i, %i.k
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.m = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %2)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.b, align 4, !tbaa !21
  %i.o = zext i32 %i.n to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %storemerge = phi i64 [ %i.o, %bb.f ], [ %i.l, %bb.d ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.g
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__bitreader_read_raw_int64(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.d = icmp ugt i32 %2, 32
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = add i32 %2, -32
  %i.f = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.e)
  %.not11.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i, label %FLAC__bitreader_read_raw_uint64.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 32)
  %.not12.i = icmp eq i32 %i.g, 0
  br i1 %.not12.i, label %FLAC__bitreader_read_raw_uint64.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.a, align 4, !tbaa !21
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw i64 %i.i, 32
  %i.k = load i32, ptr %i.b, align 4, !tbaa !21
  %i.l = zext i32 %i.k to i64
  %i.m = or disjoint i64 %i.j, %i.l
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.n = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %2)
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %FLAC__bitreader_read_raw_uint64.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.b, align 4, !tbaa !21
  %i.p = zext i32 %i.o to i64
  br label %bb.h

FLAC__bitreader_read_raw_uint64.exit.thread:      ; preds = %bb.f, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %.09 = phi i64 [ %i.m, %bb.e ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.q = icmp ugt i32 %2, 64
  %i.r = add nsw i32 %2, -1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw i64 1, %i.s
  %i.u = select i1 %i.q, i64 0, i64 %i.t          ; 2 uses
  %i.v = xor i64 %.09, %i.u
  %i.w = sub i64 %i.v, %i.u
  store i64 %i.w, ptr %1, align 8, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %FLAC__bitreader_read_raw_uint64.exit.thread, %bb.a, %bb.h
  %.0 = phi i32 [ 1, %bb.h ], [ 0, %FLAC__bitreader_read_raw_uint64.exit.thread ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__bitreader_read_uint32_little_endian(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !21
  %i.c = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 8)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 8)
  %.not5 = icmp eq i32 %i.d, 0
  br i1 %.not5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.a, align 4, !tbaa !21
  %i.f = load i32, ptr %i.b, align 4, !tbaa !21
  %i.g = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 8)
  %.not6 = icmp eq i32 %i.g, 0
  br i1 %.not6, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.a, align 4, !tbaa !21
  %i.i = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 8)
  %.not7 = icmp eq i32 %i.i, 0
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = shl i32 %i.h, 16
  %i.k = shl i32 %i.e, 8
  %i.l = or i32 %i.f, %i.k
  %i.m = or i32 %i.j, %i.l
  %i.n = load i32, ptr %i.a, align 4, !tbaa !21
  %i.o = shl i32 %i.n, 24
  %i.p = or i32 %i.o, %i.m
  store i32 %i.p, ptr %1, align 4, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__bitreader_skip_bits_no_crc(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19
  %i.d = and i32 %i.c, 7                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %.not26 = icmp eq i32 %i.d, 0
  br i1 %.not26, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i32 8, %i.d
  %i.f = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %1) ; 2 uses
  %i.g = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %i.f)
  %.not27 = icmp eq i32 %i.g, 0
  br i1 %.not27, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sub nuw i32 %1, %i.f
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.020 = phi i32 [ %i.h, %bb.d ], [ %1, %bb.b ]  ; 3 uses
  %i.i = lshr i32 %.020, 3                        ; 2 uses
  %.not28 = icmp eq i32 %i.i, 0
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @FLAC__bitreader_skip_byte_block_aligned_no_crc(ptr noundef nonnull %0, i32 noundef %i.i)
  %.not29 = icmp eq i32 %i.j, 0
  br i1 %.not29, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = and i32 %.020, 7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.1 = phi i32 [ %i.k, %bb.g ], [ %.020, %bb.e ] ; 2 uses
  %.not30 = icmp eq i32 %.1, 0
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %.1)
  %.not31 = icmp eq i32 %i.l, 0
  br i1 %.not31, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.c, %bb.f, %bb.j
  %.122.ph = phi i32 [ 1, %bb.j ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.a
  %.122 = phi i32 [ 1, %bb.a ], [ %.122.ph, %.sink.split ]
  ret i32 %.122
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @FLAC__bitreader_skip_byte_block_aligned_no_crc(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !12
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %i.f = shl i32 %1, 3
  %i.g = icmp ult i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %i.d, align 4, !tbaa !13
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.a
  %cond38 = icmp eq i32 %1, 0
  br i1 %cond38, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %.039 = phi i32 [ %1, %.lr.ph ], [ %i.o, %bb.g ] ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %.not26 = icmp eq i32 %i.i, 0
  br i1 %.not26, label %.critedge.preheader, label %bb.f

.critedge.preheader:                              ; preds = %bb.e
  %i.j = icmp ugt i32 %.039, 7
  br i1 %i.j, label %.lr.ph43, label %.lr.ph47.preheader

.lr.ph43:                                         ; preds = %.critedge.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 @FLAC__bitreader_read_raw_uint32(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 8)
  %.not31 = icmp eq i32 %i.n, 0
  br i1 %.not31, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = add i32 %.039, -1                        ; 2 uses
  %cond = icmp eq i32 %i.o, 0
  br i1 %cond, label %.loopexit, label %bb.e, !llvm.loop !37

.preheader:                                       ; preds = %.critedge
  %.not2745 = icmp eq i32 %.2, 0
  br i1 %.not2745, label %.loopexit, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %.critedge.preheader, %.preheader
  %.346.ph = phi i32 [ %.039, %.critedge.preheader ], [ %.2, %.preheader ]
  br label %.lr.ph47

bb.h:                                             ; preds = %.lr.ph43, %.critedge
  %.142 = phi i32 [ %.039, %.lr.ph43 ], [ %.2, %.critedge ] ; 2 uses
  %i.p = load i32, ptr %i.k, align 4, !tbaa !18   ; 2 uses
  %i.q = load i32, ptr %i.l, align 4, !tbaa !29
  %i.r = icmp ult i32 %i.p, %i.q
  br i1 %i.r, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = add nuw i32 %i.p, 1
  store i32 %i.s, ptr %i.k, align 4, !tbaa !18
  %i.t = add i32 %.142, -8                        ; 2 uses
  %i.u = load i32, ptr %i.b, align 8, !tbaa !12
end_hunk_0
