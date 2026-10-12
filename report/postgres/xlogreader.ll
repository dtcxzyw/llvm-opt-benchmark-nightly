Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/xlogreader?download=true
inline.NumInlined: 27
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@DecodeXLogRecord:bb.a
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hs = load i64, ptr %i.hr, align 8            ; 2 uses
  %i.ht = lshr i64 %i.hs, 32
  %i.hu = trunc nuw i64 %i.ht to i32
  %i.hv = trunc i64 %i.hs to i32
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %i.hu, i32 noundef %i.hv)
  br label %.thread322

.thread322:                                       ; preds = %bb.ad, %bb.af, %bb.ai, %bb.an, %bb.o, %bb.ah, %bb.q, %bb.j, %.thread315, %bb.ar
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.hx = load ptr, ptr %i.hw, align 8
  store ptr %i.hx, ptr %4, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %.thread322, %._crit_edge445.thread
  %.0268 = phi i1 [ false, %.thread322 ], [ true, %._crit_edge445.thread ]
  ret i1 %.0268
}

; Function Attrs: nounwind uwtable
define dso_local void @XLogRecGetBlockTag(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %.not.i = icmp slt i32 %i.d, %i.e
  br i1 %.not.i, label %XLogRecGetBlockTagExtended.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.g = zext i8 %1 to i64
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %i.g ; 4 uses
  %i.i = load i8, ptr %i.h, align 8, !range !6, !noundef !7
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %XLogRecGetBlockTagExtended.exit

bb.c:                                             ; preds = %bb.b
  %.not22.i = icmp eq ptr %2, null
  br i1 %.not22.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not23.i = icmp eq ptr %3, null
  br i1 %.not23.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i32, ptr %i.l, align 8
  store i32 %i.m, ptr %3, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not24.i = icmp eq ptr %4, null
  br i1 %.not24.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.o = load i32, ptr %i.n, align 4
  store i32 %i.o, ptr %4, align 4
  br label %bb.i

XLogRecGetBlockTagExtended.exit:                  ; preds = %bb.b, %bb.a
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %i.e) #14
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @XLogRecGetBlockTagExtended(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i8 %1 to i32
  %.not = icmp slt i32 %i.d, %i.e
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.g = zext i8 %1 to i64
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %i.g ; 5 uses
  %i.i = load i8, ptr %i.h, align 8, !range !6, !noundef !7
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %.not22 = icmp eq ptr %2, null
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not23 = icmp eq ptr %3, null
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i32, ptr %i.l, align 8
  store i32 %i.m, ptr %3, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not24 = icmp eq ptr %4, null
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.o = load i32, ptr %i.n, align 4
  store i32 %i.o, ptr %4, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not25 = icmp eq ptr %5, null
  br i1 %.not25, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = load i32, ptr %i.p, align 8
  store i32 %i.q, ptr %5, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.j ], [ true, %bb.i ]
  ret i1 %.0
}

declare void @pg_log_generic(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @XLogRecGetBlockData(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = zext i8 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp slt i32 %i.e, %i.a
  br i1 %i.f, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.h = zext i8 %1 to i64
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.h ; 4 uses
  %i.j = load i8, ptr %i.i, align 8, !range !6, !noundef !7
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 47
  %i.m = load i8, ptr %i.l, align 1, !range !6, !noundef !7
  %i.n = trunc nuw i8 %i.m to i1
  %.not14 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not14, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %2, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.p = load i16, ptr %i.o, align 8
  %i.q = zext i16 %i.p to i64
  store i64 %i.q, ptr %2, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.b, %bb.h
  %.0 = phi ptr [ null, %bb.a ], [ %i.s, %bb.h ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @RestoreBlockImage(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %3 = alloca %struct.PGAlignedBlock, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.b = zext i8 %1 to i32                        ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %i.f, %i.b
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.i = zext i8 %1 to i64
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.i ; 8 uses
  %i.k = load i8, ptr %i.j, align 8, !range !6, !noundef !7
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = lshr i64 %i.n, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = trunc i64 %i.n to i32
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.b)
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 29
  %i.s = load i8, ptr %i.r, align 1, !range !6, !noundef !7
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = lshr i64 %i.v, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = trunc i64 %i.v to i32
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef nonnull %0, ptr noundef nonnull @.str.19, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.b)
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 46
  %i.ac = load i8, ptr %i.ab, align 2
  %i.ad = zext i8 %i.ac to i32                    ; 4 uses
  %i.ae = and i32 %i.ad, 28
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = and i32 %i.ad, 4
  %.not81 = icmp eq i32 %i.af, 0
  br i1 %.not81, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.ah = load i16, ptr %i.ag, align 4
  %i.ai = zext i16 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 42
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = zext i16 %i.ak to i32
  %i.am = sub nsw i32 8192, %i.al
  %i.an = call i32 @pglz_decompress(ptr noundef %i.aa, i32 noundef %i.ai, ptr noundef nonnull %3, i32 noundef %i.am, i1 noundef zeroext true) #14
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ap = and i32 %i.ad, 8
  %.not82 = icmp eq i32 %i.ap, 0
  br i1 %.not82, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.as = lshr i64 %i.ar, 32
  %i.at = trunc nuw i64 %i.as to i32
  %i.au = trunc i64 %i.ar to i32
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, i32 noundef %i.at, i32 noundef %i.au, ptr noundef nonnull @.str.21, i32 noundef %i.b)
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.av = and i32 %i.ad, 16
  %.not83 = icmp eq i32 %i.av, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load i64, ptr %i.aw, align 8            ; 2 uses
  %i.ay = lshr i64 %i.ax, 32
  %i.az = trunc nuw i64 %i.ay to i32              ; 2 uses
  %i.ba = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %.not83, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, i32 noundef %i.az, i32 noundef %i.ba, ptr noundef nonnull @.str.22, i32 noundef %i.b)
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, i32 noundef %i.az, i32 noundef %i.ba, i32 noundef %i.b)
  br label %.critedge

bb.n:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = lshr i64 %i.bc, 32
  %i.be = trunc nuw i64 %i.bd to i32
  %i.bf = trunc i64 %i.bc to i32
  call void (ptr, ptr, ...) @report_invalid_record(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, i32 noundef %i.be, i32 noundef %i.bf, i32 noundef %i.b)
  br label %.critedge

bb.o:                                             ; preds = %bb.h, %bb.f
  %.1 = phi ptr [ %i.aa, %bb.f ], [ %3, %bb.h ]   ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 42 ; 3 uses
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = icmp eq i16 %i.bh, 0
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %2, ptr noundef nonnull align 1 dereferenceable(8192) %.1, i64 8192, i1 false)
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 8
  %i.bl = zext i16 %i.bk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %.1, i64 %i.bl, i1 false)
  %i.bm = load i16, ptr %i.bj, align 8
  %i.bn = zext i16 %i.bm to i64                   ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %i.bn ; 2 uses
  %i.bp = load i16, ptr %i.bg, align 2            ; 3 uses
  %i.bq = zext i16 %i.bp to i64                   ; 4 uses
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = and i64 %i.br, 7
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.r, label %.loopexit.sink.split

bb.r:                                             ; preds = %bb.q
  %i.bu = and i64 %i.bq, 7
  %i.bv = icmp eq i64 %i.bu, 0
  %i.bw = icmp ult i16 %i.bp, 1025
  %or.cond3 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond3, label %bb.s, label %.loopexit.sink.split

bb.s:                                             ; preds = %bb.r
  %.not85 = icmp eq i16 %i.bp, 0
  br i1 %.not85, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.bx = add i64 %i.a, %i.bn                     ; 2 uses
  %i.by = add i64 %i.bx, %i.bq
  %i.bz = add i64 %i.bx, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.by, i64 %i.bz)
  %i.ca = xor i64 %i.a, -1
  %i.cb = add i64 %umax, %i.ca
  %i.cc = sub i64 %i.cb, %i.bn
  %i.cd = and i64 %i.cc, -8
  %i.ce = add i64 %i.cd, 8
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.q, %bb.r, %.lr.ph.preheader
  %.sink = phi i64 [ %i.ce, %.lr.ph.preheader ], [ %i.bq, %bb.r ], [ %i.bq, %bb.q ]
  call void @llvm.memset.p0.i64(ptr align 1 %i.bo, i8 0, i64 %.sink, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.s
  %i.cf = load i16, ptr %i.bj, align 8            ; 2 uses
  %i.cg = zext i16 %i.cf to i32
  %i.ch = load i16, ptr %i.bg, align 2
  %i.ci = zext i16 %i.ch to i32
  %i.cj = add nuw nsw i32 %i.ci, %i.cg            ; 2 uses
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck
  %i.cm = zext i16 %i.cf to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cm
  %i.co = sub nsw i32 8192, %i.cj
  %i.cp = sext i32 %i.co to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.cn, i64 %i.cp, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.n, %bb.j, %bb.l, %bb.p, %.loopexit, %bb.e, %bb.c
  %.178 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ true, %bb.p ], [ true, %.loopexit ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.n ], [ false, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i1 %.178
}

declare i32 @pglz_decompress(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare ptr @palloc(i64 noundef) local_unnamed_addr #3

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @ValidXLogRecordHeader(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %3, align 8                ; 2 uses
  %i.b = icmp ult i32 %i.a, 24
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %1, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = trunc i64 %1 to i32
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %i.d, i32 noundef %i.e, i32 noundef 24, i32 noundef %i.a)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %or.cond = icmp slt i8 %i.g, 23
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = zext nneg i8 %i.g to i32
  %i.i = lshr i64 %1, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = trunc i64 %1 to i32
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %i.k)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 6 uses
  br i1 %4, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = icmp ult i64 %i.m, %1
  br i1 %i.n, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = lshr i64 %i.m, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = trunc i64 %i.m to i32
  %i.r = lshr i64 %1, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = trunc i64 %1 to i32
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.s, i32 noundef %i.t)
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %.not = icmp eq i64 %i.m, %2
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = lshr i64 %i.m, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = trunc i64 %i.m to i32
  %i.x = lshr i64 %1, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = trunc i64 %1 to i32
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %i.y, i32 noundef %i.z)
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.i, %bb.g, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.g ], [ false, %bb.i ], [ true, %bb.h ], [ true, %bb.f ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

declare i32 @pg_vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { cold noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, !8}
!1 = distinct !{!1, !8}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = distinct !{!10, !8, !12}
!11 = distinct !{null, null}
!12 = !{!"llvm.loop.peeled.count", i32 1}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !19}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
