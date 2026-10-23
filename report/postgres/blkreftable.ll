Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/blkreftable?download=true
inline.NumInlined: 43
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@BlockRefTableGetEntry:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.z = load i32, ptr %i.y, align 8
  store i32 %i.z, ptr %3, align 4
  br label %bb.d

bb.d:                                             ; preds = %blockreftable_lookup.exit.thread, %bb.c
  %.114.ph.i.i8 = phi ptr [ null, %blockreftable_lookup.exit.thread ], [ %i.s, %bb.c ]
  ret ptr %.114.ph.i.i8
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @BlockRefTableEntryGetBlocks(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = lshr i32 %1, 16                          ; 3 uses
  %i.b = lshr i32 %2, 16
  %i.c = and i32 %2, 65535
  %.not = icmp ne i32 %i.c, 0
  %i.d = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %.183 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.f) ; 3 uses
  %i.g = icmp samesign ult i32 %i.a, %.183
  br i1 %i.g, label %.lr.ph156, label %.thread113

.lr.ph156:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = and i32 %1, 65535
  %i.k = add nsw i32 %.183, -1
  %i.l = lshr i32 %1, 16                          ; 2 uses
  %i.m = zext nneg i32 %i.l to i64
  %i.n = zext nneg i32 %i.a to i64
  %i.o = zext nneg i32 %i.k to i64
  %i.p = add nuw nsw i32 %.183, %i.l
  %i.q = sub nsw i32 %i.p, %i.a
  %wide.trip.count165 = zext i32 %i.q to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph156, %.loopexit
  %indvars.iv163 = phi i64 [ %i.m, %.lr.ph156 ], [ %indvars.iv.next164, %.loopexit ] ; 6 uses
  %.074155 = phi i32 [ 0, %.lr.ph156 ], [ %.10.ph, %.loopexit ] ; 4 uses
  %i.r = load ptr, ptr %i.h, align 8
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv163
  %i.t = load i16, ptr %i.s, align 2              ; 2 uses
  %i.u = load ptr, ptr %i.i, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv163
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq i64 %indvars.iv163, %i.n
  %spec.select105 = select i1 %i.x, i32 %i.j, i32 0 ; 3 uses
  %i.y = icmp eq i64 %indvars.iv163, %i.o
  %indvars.iv163.tr = trunc nuw i64 %indvars.iv163 to i32
  %i.z = shl nuw i32 %indvars.iv163.tr, 16        ; 3 uses
  %i.aa = sub i32 %2, %i.z
  %.072 = select i1 %i.y, i32 %i.aa, i32 65536    ; 3 uses
  switch i16 %i.t, label %.lr.ph.preheader [
    i16 4096, label %.preheader
    i16 0, label %.loopexit
  ]

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i16 %i.t to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.b
  %.not104146 = icmp ult i32 %spec.select105, %.072
  br i1 %.not104146, label %.lr.ph150, label %.loopexit

.lr.ph150:                                        ; preds = %.preheader, %.thread
  %.071149 = phi i32 [ %i.an, %.thread ], [ %spec.select105, %.preheader ] ; 4 uses
  %.175148 = phi i32 [ %.377112, %.thread ], [ %.074155, %.preheader ] ; 3 uses
  %i.ab = lshr i32 %.071149, 4
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = zext i16 %i.ae to i32
  %i.ag = and i32 %.071149, 15
  %i.ah = shl nuw nsw i32 1, %i.ag
  %i.ai = and i32 %i.ah, %i.af
  %.not102 = icmp eq i32 %i.ai, 0
  br i1 %.not102, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph150
  %i.aj = add i32 %.071149, %i.z
  %i.ak = add i32 %.175148, 1                     ; 3 uses
  %i.al = sext i32 %.175148 to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %3, i64 %i.al
  store i32 %i.aj, ptr %i.am, align 4
  %.not103.not = icmp eq i32 %i.ak, %4
  br i1 %.not103.not, label %.thread113, label %.thread

.thread:                                          ; preds = %.lr.ph150, %bb.c
  %.377112 = phi i32 [ %i.ak, %bb.c ], [ %.175148, %.lr.ph150 ] ; 2 uses
  %i.an = add i32 %.071149, 1                     ; 2 uses
  %exitcond162.not = icmp eq i32 %i.an, %.072
  br i1 %exitcond162.not, label %.loopexit, label %.lr.ph150, !llvm.loop !16

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread116
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.thread116 ] ; 2 uses
  %.579143 = phi i32 [ %.074155, %.lr.ph.preheader ], [ %.7121, %.thread116 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i32                   ; 3 uses
  %.not99 = icmp samesign ule i32 %spec.select105, %i.aq
  %i.ar = icmp ugt i32 %.072, %i.aq
  %or.cond = select i1 %.not99, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.d, label %.thread116

bb.d:                                             ; preds = %.lr.ph
  %i.as = or disjoint i32 %i.z, %i.aq
  %i.at = add i32 %.579143, 1                     ; 3 uses
  %i.au = sext i32 %.579143 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %3, i64 %i.au
  store i32 %i.as, ptr %i.av, align 4
  %.not100.not = icmp eq i32 %i.at, %4
  br i1 %.not100.not, label %.thread113, label %.thread116

.thread116:                                       ; preds = %.lr.ph, %bb.d
  %.7121 = phi i32 [ %i.at, %bb.d ], [ %.579143, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !17

.loopexit:                                        ; preds = %.thread, %.thread116, %bb.b, %.preheader
  %.10.ph = phi i32 [ %.7121, %.thread116 ], [ %.074155, %.preheader ], [ %.074155, %bb.b ], [ %.377112, %.thread ] ; 2 uses
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count165
  br i1 %exitcond166.not, label %.thread113, label %bb.b, !llvm.loop !18

.thread113:                                       ; preds = %.loopexit, %bb.c, %bb.d, %bb.a
  %.13 = phi i32 [ %i.ak, %bb.c ], [ %i.at, %bb.d ], [ 0, %bb.a ], [ %.10.ph, %.loopexit ]
  ret i32 %.13
}

; Function Attrs: nounwind uwtable
define void @WriteBlockRefTable(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
BlockRefTableWrite.exit:
  %3 = alloca %struct.BlockRefTableKey, align 16  ; 4 uses
  %4 = alloca %struct.BlockRefTableKey, align 16  ; 5 uses
  %5 = alloca %struct.BlockRefTableBuffer, align 8 ; 14 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 1697321851, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65552) %i.b, i8 0, i64 65552, i1 false)
  store ptr %1, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 65560 ; 7 uses
  %i.e = load ptr, ptr @pg_comp_crc32c, align 8
  %i.f = call i32 %i.e(i32 noundef -1, ptr noundef nonnull %i.a, i64 noundef 4) #11, !inline_history !3
  store i32 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 65552 ; 13 uses
  %.pre74 = load ptr, ptr %0, align 8
  %.pre = load i32, ptr %i.a, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store i32 %.pre, ptr %i.h, align 8
  store i32 4, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.pre74, i64 8
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %BlockRefTableWrite.exit
  %i.k = zext i32 %i.j to i64
  %i.l = call ptr @palloc_mul(i64 noundef 24, i64 noundef %i.k) #11 ; 3 uses
  %i.m = load ptr, ptr %0, align 8                ; 3 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.not18.i = icmp eq i64 %i.n, 0
  br i1 %.not18.i, label %blockreftable_start_iterate.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.q = phi i64 [ 0, %.lr.ph.i ], [ %i.v, %bb.c ]
  %.01215.i = phi i32 [ 0, %.lr.ph.i ], [ %i.u, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.t = load i8, ptr %i.s, align 4
  %.not.i = icmp eq i8 %i.t, 1
  br i1 %.not.i, label %bb.c, label %blockreftable_start_iterate.exit

bb.c:                                             ; preds = %bb.b
  %i.u = add i32 %.01215.i, 1                     ; 2 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp ugt i64 %i.n, %i.v
  br i1 %i.w, label %bb.b, label %blockreftable_start_iterate.exit, !llvm.loop !19

blockreftable_start_iterate.exit:                 ; preds = %bb.b, %bb.c, %bb.a
  %.2.i = phi i32 [ -1, %bb.a ], [ %.01215.i, %bb.b ], [ -1, %bb.c ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %blockreftable_start_iterate.exit
  %i.x = phi ptr [ %i.m, %blockreftable_start_iterate.exit ], [ %.pre75, %.critedge ] ; 2 uses
  %.sroa.7.0 = phi i1 [ false, %blockreftable_start_iterate.exit ], [ %spec.select, %.critedge ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %.2.i, %blockreftable_start_iterate.exit ], [ %i.ag, %.critedge ]
  %.042 = phi i32 [ 0, %blockreftable_start_iterate.exit ], [ %i.al, %.critedge ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.7.1 = phi i1 [ %.sroa.7.0, %bb.d ], [ %spec.select, %bb.f ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.d ], [ %i.ag, %bb.f ] ; 2 uses
  %i.aa = phi i1 [ %.sroa.7.0, %bb.d ], [ %6, %bb.f ]
  br i1 %i.aa, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.y, align 8
  %i.ac = zext i32 %.sroa.0.1 to i64
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %i.ac ; 6 uses
  %i.ae = add i32 %.sroa.0.1, -1                  ; 2 uses
  %i.af = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ag = and i32 %i.af, %i.ae                    ; 2 uses
  %i.ah = xor i32 %i.ae, %.2.i
  %i.ai = and i32 %i.af, %i.ah
  %6 = icmp eq i32 %i.ai, 0                       ; 2 uses
  %spec.select = select i1 %6, i1 true, i1 %.sroa.7.1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ak = load i8, ptr %i.aj, align 4
  %.not.i49 = icmp eq i8 %i.ak, 1
  br i1 %.not.i49, label %blockreftable_iterate.exit, label %bb.e

blockreftable_iterate.exit:                       ; preds = %bb.f
  %i.al = add i32 %.042, 1
  %i.am = zext i32 %.042 to i64
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.am ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.an, ptr noundef nonnull align 8 dereferenceable(12) %i.ad, i64 12, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 %i.ap, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 %i.as, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.av = load i32, ptr %i.au, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 20 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i32 %i.av, ptr %i.aw, align 4
  %.not4883 = icmp eq i32 %i.av, 0
  br i1 %.not4883, label %.critedge, label %.lr.ph85

.lr.ph85:                                         ; preds = %blockreftable_iterate.exit
  %i.ay = zext i32 %i.av to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.az = trunc nuw i64 %i.bb to i32
  store i32 %i.az, ptr %i.aw, align 4
  %.not48 = icmp eq i64 %i.bb, 0
  br i1 %.not48, label %.critedge, label %bb.h, !llvm.loop !20

bb.h:                                             ; preds = %.lr.ph85, %bb.g
  %indvars.iv84 = phi i64 [ %i.ay, %.lr.ph85 ], [ %i.bb, %bb.g ]
  %i.ba = load ptr, ptr %i.ax, align 8
  %i.bb = add nsw i64 %indvars.iv84, -1           ; 4 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = icmp eq i16 %i.bd, 0
  br i1 %i.be, label %bb.g, label %..critedge_crit_edge86, !llvm.loop !20

..critedge_crit_edge86:                           ; preds = %bb.h
  br label %.critedge, !llvm.loop !20

.critedge:                                        ; preds = %bb.g, %..critedge_crit_edge86, %blockreftable_iterate.exit
  %.pre75 = load ptr, ptr %0, align 8
  br label %bb.d, !llvm.loop !21

bb.i:                                             ; preds = %bb.e
  %i.bf = zext i32 %.042 to i64
  call void @pg_qsort(ptr noundef %i.l, i64 noundef %i.bf, i64 noundef 24, ptr noundef nonnull @BlockRefTableComparator) #11
  %i.bg = load ptr, ptr %0, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 8
  %.not64 = icmp eq i32 %i.bi, 0
  br i1 %.not64, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.i, %._crit_edge
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %._crit_edge ], [ 0, %bb.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv71 ; 4 uses
  %i.bk = load ptr, ptr @pg_comp_crc32c, align 8
  %i.bl = load i32, ptr %i.d, align 8
  %i.bm = call i32 %i.bk(i32 noundef %i.bl, ptr noundef %i.bj, i64 noundef 24) #11, !inline_history !3
  store i32 %i.bm, ptr %i.d, align 8
  %i.bn = load i32, ptr %i.g, align 8             ; 3 uses
  %i.bo = add i32 %i.bn, 24
  %i.bp = icmp sgt i32 %i.bo, 65536
  br i1 %i.bp, label %bb.j, label %BlockRefTableWrite.exit51

bb.j:                                             ; preds = %.lr.ph63
  %i.bq = load ptr, ptr %5, align 8
  %i.br = load ptr, ptr %i.c, align 8
  %i.bs = call i32 %i.bq(ptr noundef %i.br, ptr noundef nonnull %i.h, i32 noundef %i.bn) #11, !inline_history !3 ; 0 uses
  store i32 0, ptr %i.g, align 8
  br label %BlockRefTableWrite.exit51

BlockRefTableWrite.exit51:                        ; preds = %.lr.ph63, %bb.j
  %i.bt = phi i32 [ 0, %bb.j ], [ %i.bn, %.lr.ph63 ]
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.h, i64 %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bv, ptr noundef nonnull align 1 dereferenceable(24) %i.bj, i64 24, i1 false)
  %i.bw = load i32, ptr %i.g, align 8
  %i.bx = add i32 %i.bw, 24
  store i32 %i.bx, ptr %i.g, align 8
  %i.by = load ptr, ptr %0, align 8               ; 2 uses
  %i.bz = load <2 x i64>, ptr %i.bj, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x i64> %i.bz, ptr %4, align 16
  %i.ca = call i32 @hash_bytes(ptr noundef nonnull %4, i32 noundef 16) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.cb = load <2 x i64>, ptr %4, align 16
  store <2 x i64> %i.cb, ptr %3, align 16
  %i.cc = getelementptr i8, ptr %i.by, i64 12
  %.val.i.i = load i32, ptr %i.cc, align 4        ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.01220.i.i = and i32 %.val.i.i, %i.ca          ; 2 uses
  %i.cf = zext i32 %.01220.i.i to i64
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.ci = load i8, ptr %i.ch, align 4
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %blockreftable_lookup.exit, label %.lr.ph.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ck = add i32 %.01221.i.i, 1
  %.012.i.i = and i32 %i.ck, %.val.i.i            ; 2 uses
  %i.cl = zext i32 %.012.i.i to i64
  %i.cm = getelementptr inbounds nuw [56 x i8], ptr %i.ce, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %i.co = load i8, ptr %i.cn, align 4
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %blockreftable_lookup.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BlockRefTableWrite.exit51, %bb.k
  %i.cq = phi ptr [ %i.cm, %bb.k ], [ %i.cg, %BlockRefTableWrite.exit51 ] ; 2 uses
  %.01221.i.i = phi i32 [ %.012.i.i, %bb.k ], [ %.01220.i.i, %BlockRefTableWrite.exit51 ]
  %i.cr = load i128, ptr %i.cq, align 1
  %i.cs = load i128, ptr %3, align 16
  %i.ct = icmp ne i128 %i.cr, %i.cs
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %blockreftable_lookup.exit, label %bb.k

blockreftable_lookup.exit:                        ; preds = %bb.k, %.lr.ph.i.i, %BlockRefTableWrite.exit51
  %.114.ph.i.i = phi ptr [ null, %BlockRefTableWrite.exit51 ], [ null, %bb.k ], [ %i.cq, %.lr.ph.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.cx = load i32, ptr %i.cw, align 4            ; 2 uses
  %.not47 = icmp eq i32 %i.cx, 0
  br i1 %.not47, label %BlockRefTableWrite.exit52, label %bb.l

bb.l:                                             ; preds = %blockreftable_lookup.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %.114.ph.i.i, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8            ; 3 uses
  %i.da = shl i32 %i.cx, 1                        ; 5 uses
  %i.db = load ptr, ptr @pg_comp_crc32c, align 8
  %i.dc = load i32, ptr %i.d, align 8
  %i.dd = sext i32 %i.da to i64                   ; 2 uses
  %i.de = call i32 %i.db(i32 noundef %i.dc, ptr noundef %i.cz, i64 noundef %i.dd) #11, !inline_history !3
  store i32 %i.de, ptr %i.d, align 8
  %i.df = load i32, ptr %i.g, align 8             ; 3 uses
  %i.dg = add i32 %i.df, %i.da
  %i.dh = icmp sgt i32 %i.dg, 65536
  br i1 %i.dh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.di = load ptr, ptr %5, align 8
  %i.dj = load ptr, ptr %i.c, align 8
  %i.dk = call i32 %i.di(ptr noundef %i.dj, ptr noundef nonnull %i.h, i32 noundef %i.df) #11, !inline_history !3 ; 0 uses
  store i32 0, ptr %i.g, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dl = phi i32 [ 0, %bb.m ], [ %i.df, %bb.l ]
  %i.dm = icmp sgt i32 %i.da, 65535
  br i1 %i.dm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dn = load ptr, ptr %5, align 8
  %i.do = load ptr, ptr %i.c, align 8
  %i.dp = call i32 %i.dn(ptr noundef %i.do, ptr noundef %i.cz, i32 noundef %i.da) #11, !inline_history !3 ; 0 uses
  br label %BlockRefTableWrite.exit52

bb.p:                                             ; preds = %bb.n
  %i.dq = sext i32 %i.dl to i64
  %i.dr = getelementptr inbounds i8, ptr %i.h, i64 %i.dq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dr, ptr align 1 %i.cz, i64 %i.dd, i1 false)
  %i.ds = load i32, ptr %i.g, align 8
  %i.dt = add i32 %i.ds, %i.da
  store i32 %i.dt, ptr %i.g, align 8
  br label %BlockRefTableWrite.exit52

BlockRefTableWrite.exit52:                        ; preds = %bb.p, %bb.o, %blockreftable_lookup.exit
  %i.du = getelementptr inbounds nuw i8, ptr %.114.ph.i.i, i64 24 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8
  %.not65 = icmp eq i32 %i.dv, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %BlockRefTableWrite.exit52
  %i.dw = getelementptr inbounds nuw i8, ptr %.114.ph.i.i, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %.114.ph.i.i, i64 48
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %BlockRefTableWrite.exit53
  %indvars.iv68 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next69, %BlockRefTableWrite.exit53 ] ; 3 uses
  %i.dy = load ptr, ptr %i.dw, align 8
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dy, i64 %indvars.iv68
  %i.ea = load i16, ptr %i.dz, align 2            ; 3 uses
  %i.eb = icmp eq i16 %i.ea, 0
  br i1 %i.eb, label %BlockRefTableWrite.exit53, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ec = load ptr, ptr %i.dx, align 8
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv68
end_hunk_0
