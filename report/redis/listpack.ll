inline.NumInlined: 103
inline.NumDeleted: 11
begin_hunk_0_@lpFindCbInternal:bb.a
  br label %bb.y

bb.w:                                             ; preds = %lpEncodeBacklenBytes.exit96.i, %lpEncodeBacklenBytes.exit.i, %lpEncodeBacklenBytes.exit93.i
  %.sink = phi i64 [ %i.bi, %lpEncodeBacklenBytes.exit96.i ], [ %i.bb, %lpEncodeBacklenBytes.exit93.i ], [ %i.s, %lpEncodeBacklenBytes.exit.i ]
  %.051.ph = phi i64 [ %i.bo, %lpEncodeBacklenBytes.exit96.i ], [ %i.be, %lpEncodeBacklenBytes.exit93.i ], [ %i.t, %lpEncodeBacklenBytes.exit.i ] ; 2 uses
  %.3.ph = phi i64 [ 5, %lpEncodeBacklenBytes.exit96.i ], [ 2, %lpEncodeBacklenBytes.exit93.i ], [ 1, %lpEncodeBacklenBytes.exit.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 %.3.ph
  %.not41 = icmp uge ptr %.1, %i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.1, i64 %.051.ph
  %i.bu = icmp ult ptr %i.bt, %i.j
  %i.bv = select i1 %.not41, i1 %i.bu, i1 false, !prof !22
  br i1 %i.bv, label %bb.y, label %bb.x, !prof !22
end_hunk_0
begin_hunk_1_@lpFindCbInternal:bb.a

bb.y:                                             ; preds = %lpGetWithSize.exit, %bb.w
  %.085.i63 = phi ptr [ %i.bs, %bb.w ], [ null, %lpGetWithSize.exit ]
  %.361 = phi i64 [ %.051.ph, %bb.w ], [ %.250, %lpGetWithSize.exit ] ; 2 uses
  %.05159 = phi i64 [ %.sink, %bb.w ], [ %.084.i, %lpGetWithSize.exit ]
  %i.bw = tail call i32 %3(ptr noundef nonnull %0, ptr noundef nonnull %.1, ptr noundef %2, ptr noundef %.085.i63, i64 noundef %.05159) #23
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %lpFirst.exit.thread, label %bb.z, !prof !18
end_hunk_1
begin_hunk_2_@lpInsert:bb.a
  %.0121 = phi ptr [ %i.ak, %bb.n ], [ %4, %bb.a ] ; 6 uses
  %i.bf = ptrtoint ptr %.0121 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 3 uses
  br i1 %i.d, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_2
begin_hunk_3_@lpInsert:bb.a
  br label %lpEncodeBacklen.exit

lpEncodeBacklen.exit:                             ; preds = %bb.aa, %bb.z, %bb.x, %bb.v, %.thread162, %bb.s
  %i.cz = phi i64 [ 0, %bb.s ], [ %.pr, %bb.x ], [ %.pr, %bb.v ], [ %.pr, %bb.aa ], [ %.pr, %bb.z ], [ %i.bm, %.thread162 ] ; 4 uses
  %.0120161 = phi ptr [ null, %bb.s ], [ %.0120.ph, %bb.x ], [ %.0120.ph, %bb.v ], [ %.0120.ph, %bb.aa ], [ %.0120.ph, %bb.z ], [ %.0120160166, %.thread162 ]
  %.0122159 = phi i1 [ false, %bb.s ], [ %.0122.ph, %bb.x ], [ %.0122.ph, %bb.v ], [ %.0122.ph, %bb.aa ], [ %.0122.ph, %bb.z ], [ %.0122158168, %.thread162 ]
  %i.da = phi i64 [ 0, %bb.s ], [ 3, %bb.x ], [ 2, %bb.v ], [ 5, %bb.aa ], [ 4, %bb.z ], [ 1, %.thread162 ] ; 3 uses
end_hunk_3
begin_hunk_4_@lpInsert:bb.a
  br i1 %i.fi, label %bb.bj, label %bb.an

bb.an:                                            ; preds = %lpEncodeBacklen.exit._crit_edge
  %i.fj = icmp samesign ugt i64 %i.fh, %i.dr
  br i1 %i.fj, label %bb.ao, label %bb.aq

end_hunk_4
begin_hunk_5_@lpInsert:bb.a
  br i1 %i.fl, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fm = call ptr @zrealloc_usable(ptr noundef nonnull %0, i64 noundef %i.fh, ptr noundef null, ptr noundef null) #23 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.bj, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %.0117 = phi ptr [ %0, %bb.an ], [ %0, %bb.ao ], [ %i.fm, %bb.ap ] ; 3 uses
  %.0115 = getelementptr inbounds nuw i8, ptr %.0117, i64 %i.bh ; 3 uses
  %i.fo = icmp eq i32 %.1124, 0                   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0115, i64 %i.cz
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.da
end_hunk_5
begin_hunk_6_@lpInsert:bb.a
  %.sink.idx = select i1 %i.fo, i64 0, i64 %i.fe
  %.sink = getelementptr inbounds nuw i8, ptr %.0115, i64 %.sink.idx
  %i.fs = sub i64 %i.dr, %.sink209
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fq, ptr nonnull align 1 %.sink, i64 %i.fs, i1 false)
  %i.ft = icmp samesign ult i64 %i.fh, %i.dr
  br i1 %i.ft, label %bb.ar, label %bb.at

end_hunk_6
begin_hunk_7_@lpInsert:bb.a
  %i.gj = getelementptr inbounds nuw i8, ptr %.1116, i64 %.sink26.i
  %i.gk = zext i32 %3 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gj, ptr nonnull readonly align 1 %1, i64 %i.gk, i1 false)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !16
  br label %bb.bg

bb.bf:                                            ; preds = %bb.az
end_hunk_7
begin_hunk_8_@lpInsert:bb.a
  unreachable

bb.bg:                                            ; preds = %bb.ay, %lpEncodeString.exit
  %7 = phi i64 [ %i.cz, %bb.ay ], [ %.pre, %lpEncodeString.exit ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.1116, i64 %7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gl, ptr nonnull align 1 %i.b, i64 %i.da, i1 false)
  %i.gm = icmp ne i32 %.1124, 2
  %or.cond = or i1 %i.f, %i.gm
end_hunk_8
begin_hunk_9_@lpBatchInsert:bb.a
bb.ar:                                            ; preds = %bb.v
  %i.fe = ptrtoint ptr %.0130 to i64
  %i.ff = ptrtoint ptr %0 to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 2 uses
  %i.fh = icmp samesign ugt i64 %i.bj, %i.bi
  br i1 %i.fh, label %bb.as, label %bb.au

end_hunk_9
begin_hunk_10_@lpBatchInsert:bb.a
  br i1 %i.fj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fk = call ptr @zrealloc_usable(ptr noundef nonnull %0, i64 noundef %i.bj, ptr noundef null, ptr noundef null) #23 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.bo, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %.0128.a = phi ptr [ %0, %bb.ar ], [ %0, %bb.as ], [ %i.fk, %bb.at ] ; 6 uses
  %.0128 = getelementptr inbounds nuw i8, ptr %.0128.a, i64 %i.fg ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0128, i64 %i.fd
  %i.fn = sub i64 %i.bi, %i.fg
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fm, ptr nonnull align 1 %.0128, i64 %i.fn, i1 false)
  %.not145 = icmp eq ptr %5, null
  br i1 %.not145, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.au, %bb.bb
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %bb.bb ], [ 0, %bb.au ] ; 3 uses
  %.1129149.us = phi ptr [ %i.gp, %bb.bb ], [ %.0128, %bb.au ] ; 8 uses
  %i.fo = getelementptr inbounds nuw [40 x i8], ptr %.0132, i64 %indvars.iv161 ; 6 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !35
  %i.fq = icmp eq i32 %i.fp, 0
end_hunk_10
begin_hunk_11_@lpBatchInsert:bb.a
  %i.gk = phi i64 [ %i.gj, %bb.ba ], [ %.pre171, %lpEncodeString.exit.us ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.1129149.us, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fo, i64 25
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fo, i64 32 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gl, ptr nonnull align 1 %i.gm, i64 %i.go, i1 false)
  %7 = load i64, ptr %i.gn, align 8, !tbaa !40
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 %7
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count
  br i1 %exitcond166.not, label %.split152.us, label %.split.us, !llvm.loop !42

.split152.us:                                     ; preds = %bb.bi, %bb.bb
  %i.gq = getelementptr inbounds nuw i8, ptr %.0128.a, i64 4 ; 3 uses
  %i.gr = load i16, ptr %i.gq, align 1            ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0128.a, i64 5
  %.not143 = icmp eq i16 %i.gr, -1
  br i1 %.not143, label %bb.bm, label %bb.bj

.split:                                           ; preds = %bb.au, %bb.bi
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %bb.bi ], [ 0, %bb.au ] ; 3 uses
  %.1129149 = phi ptr [ %i.hu, %bb.bi ], [ %.0128, %bb.au ] ; 9 uses
  store ptr %.1129149, ptr %5, align 8, !tbaa !19
  %i.gt = getelementptr inbounds nuw [40 x i8], ptr %.0132, i64 %indvars.iv155 ; 6 uses
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !35
end_hunk_11
begin_hunk_12_@lpBatchInsert:bb.a
  %i.hp = phi i64 [ %.pre169, %lpEncodeString.exit ], [ %i.gy, %bb.bc ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.1129149, i64 %i.hp ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gt, i64 25
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gt, i64 32 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hq, ptr nonnull align 1 %i.hr, i64 %i.ht, i1 false)
  %8 = load i64, ptr %i.hs, align 8, !tbaa !40
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 %8
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count
  br i1 %exitcond160.not, label %.split152.us, label %.split, !llvm.loop !42
end_hunk_12
begin_hunk_13_@lpBatchInsert:bb.a

bb.bm:                                            ; preds = %.split152.us, %bb.bl, %bb.bk
  %i.ia = trunc nuw i64 %i.bj to i32
  store i32 %i.ia, ptr %.0128.a, align 1
  %.not144 = icmp eq ptr %.0132, %6
  br i1 %.not144, label %bb.bo, label %bb.bn

end_hunk_13
begin_hunk_14_@lpBatchInsert:bb.a
  br label %bb.bo

bb.bo:                                            ; preds = %bb.at, %bb.bn, %bb.bm, %bb.v
  %.1 = phi ptr [ null, %bb.v ], [ null, %bb.at ], [ %.0128.a, %bb.bn ], [ %.0128.a, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret ptr %.1
}
end_hunk_14
begin_hunk_15_@lpCompare:bb.a
  br label %bb.t

bb.r:                                             ; preds = %bb.c, %bb.e, %bb.g
  %.061.ph.in = phi i32 [ %i.q, %bb.g ], [ %i.n, %bb.e ], [ %i.f, %bb.c ]
  %.pn = phi i64 [ 5, %bb.g ], [ 2, %bb.e ], [ 1, %bb.c ]
  %i.au = icmp eq i32 %.061.ph.in, %2
  br i1 %i.au, label %bb.s, label %.thread73

bb.s:                                             ; preds = %bb.r
  %5 = zext i32 %2 to i64
  %.0.i.i.ph = getelementptr inbounds nuw i8, ptr %0, i64 %.pn
  %bcmp = tail call i32 @bcmp(ptr nonnull %.0.i.i.ph, ptr %1, i64 %5)
  %i.av = icmp eq i32 %bcmp, 0
  br label %.thread73

end_hunk_15
begin_hunk_16_@lpRandomPair:bb.a
  br label %bb.x

bb.w:                                             ; preds = %bb.h, %bb.j, %bb.l
  %.0.ph.in = phi i32 [ %i.z, %bb.l ], [ %i.w, %bb.j ], [ %i.o, %bb.h ]
  %.pn = phi i64 [ 5, %bb.l ], [ 2, %bb.j ], [ 1, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pn
  store i32 %.0.ph.in, ptr %i.i, align 4, !tbaa !9
  br label %lpGetValue.exit

end_hunk_16
begin_hunk_17_@lpRandomPair:bb.a
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ab, %bb.ad, %bb.af
  %.035.ph.in = phi i32 [ %i.bx, %bb.af ], [ %i.bu, %bb.ad ], [ %i.bm, %bb.ab ]
  %.pn48 = phi i64 [ 5, %bb.af ], [ 2, %bb.ad ], [ 1, %bb.ab ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.pn48
  store i32 %.035.ph.in, ptr %i.bg, align 4, !tbaa !9
  br label %lpGetValue.exit24

end_hunk_17
begin_hunk_18_@lpRandomPairs:bb.a
  br i1 %i.aj, label %bb.h, label %._crit_edge133, !llvm.loop !58

bb.h:                                             ; preds = %.lr.ph132, %.loopexit
  %.049129 = phi ptr [ %i.v, %.lr.ph132 ], [ %.0.i, %.loopexit ] ; 11 uses
  %.050128 = phi i32 [ 0, %.lr.ph132 ], [ %.151.lcssa, %.loopexit ] ; 3 uses
  %.052126 = phi i32 [ %i.t, %.lr.ph132 ], [ %i.ey, %.loopexit ] ; 3 uses
  %.083125 = phi i64 [ 0, %.lr.ph132 ], [ %.184, %.loopexit ]
  %.085124 = phi i64 [ 0, %.lr.ph132 ], [ %.186, %.loopexit ]
  %.087123 = phi i32 [ 0, %.lr.ph132 ], [ %.188, %.loopexit ]
  %.089122 = phi i32 [ 0, %.lr.ph132 ], [ %.190, %.loopexit ]
  %i.ak = load i8, ptr %.049129, align 1, !tbaa !13 ; 6 uses
end_hunk_18
begin_hunk_19_@lpRandomPairs:bb.a

bb.i:                                             ; preds = %bb.h
  %i.ao = and i32 %i.al, 63
  br label %5

bb.j:                                             ; preds = %bb.h
  %i.ap = and i32 %i.al, 240
end_hunk_19
begin_hunk_20_@lpRandomPairs:bb.a
  %i.au = load i8, ptr %i.at, align 1, !tbaa !13
  %i.av = zext i8 %i.au to i32
  %i.aw = or disjoint i32 %i.as, %i.av
  br label %5

bb.l:                                             ; preds = %bb.j
  %i.ax = icmp eq i8 %i.ak, -16
end_hunk_20
begin_hunk_21_@lpRandomPairs:bb.a
bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.az = load i32, ptr %i.ay, align 1
  br label %5

bb.n:                                             ; preds = %bb.l
  %i.ba = icmp sgt i8 %i.ak, -1
end_hunk_21
begin_hunk_22_@lpRandomPairs:bb.a
  %i.cc = or disjoint i64 %i.cb, 12345678900000000
  br label %bb.x

5:                                                ; preds = %bb.i, %bb.k, %bb.m
  %.091.ph.in = phi i32 [ %i.az, %bb.m ], [ %i.aw, %bb.k ], [ %i.ao, %bb.i ]
  %.pn = phi i64 [ 5, %bb.m ], [ 2, %bb.k ], [ 1, %bb.i ]
  %.0.i.i.ph = getelementptr inbounds nuw i8, ptr %.049129, i64 %.pn
  br label %lpGetValue.exit

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.o
  %.061.i.i = phi i64 [ %i.bb, %bb.o ], [ %i.bk, %bb.q ], [ %i.bn, %bb.s ], [ %i.bv, %bb.t ], [ %i.by, %bb.u ], [ %i.ca, %bb.v ], [ %i.cc, %bb.w ] ; 3 uses
  %.060.i.i = phi i64 [ -1, %bb.o ], [ 4096, %bb.q ], [ 32768, %bb.s ], [ 8388608, %bb.t ], [ 2147483648, %bb.u ], [ -9223372036854775808, %bb.v ], [ -1, %bb.w ]
end_hunk_22
begin_hunk_23_@lpRandomPairs:bb.a
  %.062.i.i = select i1 %.not66.i.i, i64 %.061.i.i, i64 %i.cd
  br label %lpGetValue.exit

lpGetValue.exit:                                  ; preds = %5, %bb.x
  %.0.i.i97 = phi ptr [ null, %bb.x ], [ %.0.i.i.ph, %5 ] ; 2 uses
  %.190 = phi i32 [ %.089122, %bb.x ], [ %.091.ph.in, %5 ] ; 3 uses
  %.186 = phi i64 [ %.062.i.i, %bb.x ], [ %.085124, %5 ] ; 3 uses
  %i.ce = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.049129) ; 12 uses
  %.not59 = icmp eq ptr %i.ce, null
  br i1 %.not59, label %bb.y, label %bb.z, !prof !18

end_hunk_23
begin_hunk_24_@lpRandomPairs:bb.a

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i32 %i.cg, 63
  br label %6

bb.ab:                                            ; preds = %bb.z
  %i.ck = and i32 %i.cg, 240
end_hunk_24
begin_hunk_25_@lpRandomPairs:bb.a
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !13
  %i.cq = zext i8 %i.cp to i32
  %i.cr = or disjoint i32 %i.cn, %i.cq
  br label %6

bb.ad:                                            ; preds = %bb.ab
  %i.cs = icmp eq i8 %i.cf, -16
end_hunk_25
begin_hunk_26_@lpRandomPairs:bb.a
bb.ae:                                            ; preds = %bb.ad
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.cu = load i32, ptr %i.ct, align 1
  br label %6

bb.af:                                            ; preds = %bb.ad
  %i.cv = icmp sgt i8 %i.cf, -1
end_hunk_26
begin_hunk_27_@lpRandomPairs:bb.a
  %i.dx = or disjoint i64 %i.dw, 12345678900000000
  br label %bb.ap

6:                                                ; preds = %bb.aa, %bb.ac, %bb.ae
  %.092.ph.in = phi i32 [ %i.cu, %bb.ae ], [ %i.cr, %bb.ac ], [ %i.cj, %bb.aa ]
  %.pn109 = phi i64 [ 5, %bb.ae ], [ 2, %bb.ac ], [ 1, %bb.aa ]
  %.0.i.i73.ph = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.pn109
  br label %lpGetValue.exit63

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ag
  %.061.i.i67 = phi i64 [ %i.cw, %bb.ag ], [ %i.df, %bb.ai ], [ %i.di, %bb.ak ], [ %i.dq, %bb.al ], [ %i.dt, %bb.am ], [ %i.dv, %bb.an ], [ %i.dx, %bb.ao ] ; 3 uses
  %.060.i.i68 = phi i64 [ -1, %bb.ag ], [ 4096, %bb.ai ], [ 32768, %bb.ak ], [ 8388608, %bb.al ], [ 2147483648, %bb.am ], [ -9223372036854775808, %bb.an ], [ -1, %bb.ao ]
end_hunk_27
begin_hunk_28_@lpRandomPairs:bb.a
  %.062.i.i72 = select i1 %.not66.i.i70, i64 %.061.i.i67, i64 %i.dy
  br label %lpGetValue.exit63

lpGetValue.exit63:                                ; preds = %6, %bb.ap
  %.0.i.i73103 = phi ptr [ null, %bb.ap ], [ %.0.i.i73.ph, %6 ]
  %.188 = phi i32 [ %.087123, %bb.ap ], [ %.092.ph.in, %6 ] ; 2 uses
  %.184 = phi i64 [ %.062.i.i72, %bb.ap ], [ %.083125, %6 ] ; 2 uses
  %i.dz = icmp ult i32 %.050128, %1
  br i1 %i.dz, label %.lr.ph113, label %.lr.ph120.preheader

end_hunk_28
begin_hunk_29_@lpRandomPairsUnique:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.au ] ; 3 uses
  %.084 = phi i32 [ %spec.select, %.lr.ph ], [ %i.dx, %bb.au ] ; 2 uses
  %.03282 = phi ptr [ %i.s, %.lr.ph ], [ %i.dw, %bb.au ]
  %.05981 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.au ]
  %.06080 = phi i32 [ 0, %.lr.ph ], [ %.161, %bb.au ]
  %i.z = call ptr @lpNextRandom(ptr noundef nonnull %0, ptr noundef nonnull %.03282, ptr noundef nonnull %i.c, i32 noundef %.084, i32 noundef %4) ; 12 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.j, label %bb.k, !prof !18

end_hunk_29
begin_hunk_30_@lpRandomPairsUnique:bb.a

bb.l:                                             ; preds = %bb.k
  %i.ae = and i32 %i.ab, 63
  br label %5

bb.m:                                             ; preds = %bb.k
  %i.af = and i32 %i.ab, 240
end_hunk_30
begin_hunk_31_@lpRandomPairsUnique:bb.a
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13
  %i.al = zext i8 %i.ak to i32
  %i.am = or disjoint i32 %i.ai, %i.al
  br label %5

bb.o:                                             ; preds = %bb.m
  %i.an = icmp eq i8 %i.aa, -16
end_hunk_31
begin_hunk_32_@lpRandomPairsUnique:bb.a
bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ap = load i32, ptr %i.ao, align 1
  br label %5

bb.q:                                             ; preds = %bb.o
  %i.aq = icmp sgt i8 %i.aa, -1
end_hunk_32
begin_hunk_33_@lpRandomPairsUnique:bb.a
  %i.bs = or disjoint i64 %i.br, 12345678900000000
  br label %bb.aa

5:                                                ; preds = %bb.l, %bb.n, %bb.p
  %.064.ph.in = phi i32 [ %i.ap, %bb.p ], [ %i.am, %bb.n ], [ %i.ae, %bb.l ]
  %.pn = phi i64 [ 5, %bb.p ], [ 2, %bb.n ], [ 1, %bb.l ]
  %.0.i.i.ph = getelementptr inbounds nuw i8, ptr %i.z, i64 %.pn
  br label %lpGetValue.exit

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %bb.r
  %.061.i.i = phi i64 [ %i.ar, %bb.r ], [ %i.ba, %bb.t ], [ %i.bd, %bb.v ], [ %i.bl, %bb.w ], [ %i.bo, %bb.x ], [ %i.bq, %bb.y ], [ %i.bs, %bb.z ] ; 3 uses
  %.060.i.i = phi i64 [ -1, %bb.r ], [ 4096, %bb.t ], [ 32768, %bb.v ], [ 8388608, %bb.w ], [ 2147483648, %bb.x ], [ -9223372036854775808, %bb.y ], [ -1, %bb.z ]
end_hunk_33
begin_hunk_34_@lpRandomPairsUnique:bb.a
  %.062.i.i = select i1 %.not66.i.i, i64 %.061.i.i, i64 %i.bt
  br label %lpGetValue.exit

lpGetValue.exit:                                  ; preds = %5, %bb.aa
  %.0.i.i70 = phi ptr [ null, %bb.aa ], [ %.0.i.i.ph, %5 ]
  %.262 = phi i32 [ %.06080, %bb.aa ], [ %.064.ph.in, %5 ] ; 3 uses
  %.2 = phi i64 [ %.062.i.i, %bb.aa ], [ %.05981, %5 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  store ptr %.0.i.i70, ptr %i.bu, align 8, !tbaa !33
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 %.262, ptr %i.bv, align 8, !tbaa !38
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %.2, ptr %i.bw, align 8, !tbaa !37
  %i.bx = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %i.z) ; 12 uses
  %.not39 = icmp eq ptr %i.bx, null
  br i1 %.not39, label %bb.ab, label %bb.ac, !prof !18

end_hunk_34
begin_hunk_35_@lpRandomPairsUnique:bb.a

bb.ae:                                            ; preds = %bb.ad
  %i.cd = and i32 %i.ca, 63
  br label %6

bb.af:                                            ; preds = %bb.ad
  %i.ce = and i32 %i.ca, 240
end_hunk_35
begin_hunk_36_@lpRandomPairsUnique:bb.a
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !13
  %i.ck = zext i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ch, %i.ck
  br label %6

bb.ah:                                            ; preds = %bb.af
  %i.cm = icmp eq i8 %i.bz, -16
end_hunk_36
begin_hunk_37_@lpRandomPairsUnique:bb.a
bb.ai:                                            ; preds = %bb.ah
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.co = load i32, ptr %i.cn, align 1
  br label %6

bb.aj:                                            ; preds = %bb.ah
  %i.cp = icmp sgt i8 %i.bz, -1
end_hunk_37
begin_hunk_38_@lpRandomPairsUnique:bb.a
  %i.dr = or disjoint i64 %i.dq, 12345678900000000
  br label %bb.at

6:                                                ; preds = %bb.ae, %bb.ag, %bb.ai
  %.065.ph.in = phi i32 [ %i.co, %bb.ai ], [ %i.cl, %bb.ag ], [ %i.cd, %bb.ae ]
  %.pn78 = phi i64 [ 5, %bb.ai ], [ 2, %bb.ag ], [ 1, %bb.ae ]
  %.0.i.i52.ph = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.pn78
  br label %lpGetValue.exit43

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.ak
  %.061.i.i46 = phi i64 [ %i.cq, %bb.ak ], [ %i.cz, %bb.am ], [ %i.dc, %bb.ao ], [ %i.dk, %bb.ap ], [ %i.dn, %bb.aq ], [ %i.dp, %bb.ar ], [ %i.dr, %bb.as ] ; 3 uses
  %.060.i.i47 = phi i64 [ -1, %bb.ak ], [ 4096, %bb.am ], [ 32768, %bb.ao ], [ 8388608, %bb.ap ], [ 2147483648, %bb.aq ], [ -9223372036854775808, %bb.ar ], [ -1, %bb.as ]
end_hunk_38
begin_hunk_39_@lpRandomPairsUnique:bb.a
  %.062.i.i51 = select i1 %.not66.i.i49, i64 %.061.i.i46, i64 %i.ds
  br label %lpGetValue.exit43

lpGetValue.exit43:                                ; preds = %6, %bb.at
  %.0.i.i5276 = phi ptr [ null, %bb.at ], [ %.0.i.i52.ph, %6 ]
  %.363 = phi i32 [ %.262, %bb.at ], [ %.065.ph.in, %6 ] ; 2 uses
  %.3 = phi i64 [ %.062.i.i51, %bb.at ], [ %.2, %6 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  store ptr %.0.i.i5276, ptr %i.dt, align 8, !tbaa !33
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
end_hunk_39
