Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@dbdataColumn:bb.a
  %i.u = icmp sgt i32 %i.r, %i.t
  br i1 %i.u, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !654
  %i.x = zext nneg i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 2 uses
  %.val = load i8, ptr %i.y, align 1, !tbaa !52
  %i.z = getelementptr i8, ptr %i.y, i64 1
  %.val47 = load i8, ptr %i.z, align 1, !tbaa !52
  %i.aa = zext i8 %.val to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = zext i8 %.val47 to i32
  %i.ad = or disjoint i32 %i.ab, %i.ac
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ae = phi i32 [ %.pre, %bb.e ], [ %i.t, %bb.g ]
  %.041 = phi i32 [ %i.o, %bb.e ], [ %i.ad, %bb.g ] ; 2 uses
  %.not46 = icmp sgt i32 %.041, %i.ae
  br i1 %.not46, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !654
  %i.ah = zext nneg i32 %.041 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 1
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  %i.al = zext i32 %i.ak to i64
  tail call void @sqlite3_result_int64(ptr noundef %1, i64 noundef %i.al) #45
  br label %.critedge

bb.j:                                             ; preds = %bb.a
  switch i32 %2, label %.critedge [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !650
  %i.ao = sext i32 %i.an to i64
  tail call void @sqlite3_result_int64(ptr noundef %1, i64 noundef %i.ao) #45
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !651
  tail call void @sqlite3_result_int(ptr noundef %1, i32 noundef %i.aq) #45
  br label %.critedge

bb.m:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !652
  tail call void @sqlite3_result_int(ptr noundef %1, i32 noundef %i.as) #45
  br label %.critedge

bb.n:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load i32, ptr %i.at, align 8, !tbaa !652
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !1179
  tail call void @sqlite3_result_int64(ptr noundef %1, i64 noundef %i.ax) #45
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !661
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !660
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !663 ; 10 uses
  %.not45 = icmp ult ptr %i.bc, %i.be
  br i1 %.not45, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !662
  %i.bh = call fastcc i32 @dbdataGetVarintU32(ptr noundef %i.bg, ptr noundef %i.a) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !657
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !130 ; 2 uses
  %i.bl = trunc i64 %i.bk to i32                  ; 11 uses
  %i.bm = ptrtoint ptr %i.bc to i64
  %i.bn = ptrtoint ptr %i.be to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp sgt i32 %i.bl, -1
  br i1 %i.bp, label %bb.r, label %dbdataValue.exit

bb.r:                                             ; preds = %bb.q
  %i.bq = icmp ult i32 %i.bl, 12
  br i1 %i.bq, label %switch.lookup, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = add nsw i32 %i.bl, -12
  %i.bs = sdiv i32 %i.br, 2
  %i.bt = sext i32 %i.bs to i64
  br label %dbdataValueBytes.exit.i

switch.lookup:                                    ; preds = %bb.r
  %i.bu = and i64 %i.bk, 15
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dbdataColumn, i64 %i.bu
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %dbdataValueBytes.exit.i

dbdataValueBytes.exit.i:                          ; preds = %switch.lookup, %bb.s
  %.0.i.i = phi i64 [ %i.bt, %bb.s ], [ %switch.ext, %switch.lookup ]
  %.not.i = icmp slt i64 %i.bo, %.0.i.i
  br i1 %.not.i, label %bb.aj, label %bb.t

bb.t:                                             ; preds = %dbdataValueBytes.exit.i
  switch i32 %i.bl, label %bb.ad [
    i32 0, label %bb.u
    i32 10, label %bb.u
    i32 11, label %bb.u
    i32 8, label %bb.v
    i32 9, label %bb.w
    i32 1, label %bb.x
    i32 2, label %bb.x
    i32 3, label %bb.x
    i32 4, label %bb.x
    i32 5, label %bb.x
    i32 6, label %bb.x
    i32 7, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.t
  tail call void @sqlite3_result_null(ptr noundef %1) #45
  br label %dbdataValue.exit

bb.v:                                             ; preds = %bb.t
  tail call void @sqlite3_result_int(ptr noundef %1, i32 noundef 0) #45
  br label %dbdataValue.exit

bb.w:                                             ; preds = %bb.t
  tail call void @sqlite3_result_int(ptr noundef %1, i32 noundef 1) #45
  br label %dbdataValue.exit

bb.x:                                             ; preds = %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  %i.bv = load i8, ptr %i.be, align 1, !tbaa !52
  %i.bw = sext i8 %i.bv to i64                    ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 5 uses
  switch i32 %i.bl, label %.thread.i [
    i32 7, label %bb.y
    i32 6, label %bb.y
    i32 5, label %bb.z
    i32 4, label %bb.aa
    i32 3, label %bb.ab
    i32 2, label %.thread62.i
  ]

.thread62.i:                                      ; preds = %bb.x
  %i.by = shl nsw i64 %i.bw, 8
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !52
  %i.ca = zext i8 %i.bz to i64
  %i.cb = or disjoint i64 %i.by, %i.ca
  br label %.thread.i

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.cc = shl nsw i64 %i.bw, 16
  %i.cd = load i8, ptr %i.bx, align 1, !tbaa !52
  %i.ce = zext i8 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 8
  %i.cg = or disjoint i64 %i.cf, %i.cc
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !52
  %i.cj = zext i8 %i.ci to i64
  %i.ck = or disjoint i64 %i.cg, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 3
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.053.i = phi i64 [ %i.ck, %bb.y ], [ %i.bw, %bb.x ]
  %.0.i = phi ptr [ %i.cl, %bb.y ], [ %i.bx, %bb.x ] ; 3 uses
  %i.cm = shl nsw i64 %.053.i, 16
  %i.cn = load i8, ptr %.0.i, align 1, !tbaa !52
  %i.co = zext i8 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 8
  %i.cq = or disjoint i64 %i.cp, %i.cm
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !52
  %i.ct = zext i8 %i.cs to i64
  %i.cu = or disjoint i64 %i.cq, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.154.i = phi i64 [ %i.cu, %bb.z ], [ %i.bw, %bb.x ]
  %.1.i = phi ptr [ %i.cv, %bb.z ], [ %i.bx, %bb.x ] ; 2 uses
  %i.cw = shl nsw i64 %.154.i, 8
  %i.cx = load i8, ptr %.1.i, align 1, !tbaa !52
  %i.cy = zext i8 %i.cx to i64
  %i.cz = or disjoint i64 %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.255.i = phi i64 [ %i.cz, %bb.aa ], [ %i.bw, %bb.x ]
  %.2.i = phi ptr [ %i.da, %bb.aa ], [ %i.bx, %bb.x ] ; 2 uses
  %i.db = load i8, ptr %.2.i, align 1, !tbaa !52
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  %i.de = shl nsw i64 %.255.i, 16
  %i.df = shl nuw nsw i64 %i.dc, 8
  %i.dg = or disjoint i64 %i.df, %i.de
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !52
  %i.di = zext i8 %i.dh to i64
  %i.dj = or disjoint i64 %i.dg, %i.di            ; 2 uses
  %i.dk = icmp eq i32 %i.bl, 7
  br i1 %i.dk, label %bb.ac, label %.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.dl = bitcast i64 %i.dj to double
  tail call void @sqlite3_result_double(ptr noundef %1, double noundef %i.dl) #45
  br label %dbdataValue.exit

.thread.i:                                        ; preds = %bb.ab, %.thread62.i, %bb.x
  %.461.i = phi i64 [ %i.cb, %.thread62.i ], [ %i.dj, %bb.ab ], [ %i.bw, %bb.x ]
  tail call void @sqlite3_result_int64(ptr noundef %1, i64 noundef %.461.i) #45
  br label %dbdataValue.exit

bb.ad:                                            ; preds = %bb.t
  %i.dm = add nsw i32 %i.bl, -12
  %i.dn = sdiv i32 %i.dm, 2                       ; 4 uses
  %i.do = and i32 %i.bl, 1
  %.not59.i = icmp eq i32 %i.do, 0
  br i1 %.not59.i, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  switch i32 %i.bj, label %bb.ah [
    i32 3, label %bb.af
    i32 2, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  tail call void @sqlite3_result_text16be(ptr noundef %1, ptr noundef %i.be, i32 noundef %i.dn, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %dbdataValue.exit

bb.ag:                                            ; preds = %bb.ae
  tail call void @sqlite3_result_text16le(ptr noundef %1, ptr noundef %i.be, i32 noundef %i.dn, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %dbdataValue.exit

bb.ah:                                            ; preds = %bb.ae
  tail call void @sqlite3_result_text(ptr noundef %1, ptr noundef %i.be, i32 noundef %i.dn, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %dbdataValue.exit

bb.ai:                                            ; preds = %bb.ad
  tail call void @sqlite3_result_blob(ptr noundef %1, ptr noundef %i.be, i32 noundef %i.dn, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %dbdataValue.exit

bb.aj:                                            ; preds = %dbdataValueBytes.exit.i
  %i.dp = icmp eq i32 %i.bl, 7
  br i1 %i.dp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @sqlite3_result_double(ptr noundef %1, double noundef 0.000000e+00) #45
  br label %dbdataValue.exit

bb.al:                                            ; preds = %bb.aj
  %i.dq = icmp samesign ult i32 %i.bl, 7
  br i1 %i.dq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void @sqlite3_result_int(ptr noundef %1, i32 noundef 0) #45
  br label %dbdataValue.exit

bb.an:                                            ; preds = %bb.al
  %i.dr = and i32 %i.bl, 1
  %.not58.i = icmp eq i32 %i.dr, 0
  br i1 %.not58.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @sqlite3_result_text(ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef null) #45
  br label %dbdataValue.exit

bb.ap:                                            ; preds = %bb.an
  tail call void @sqlite3_result_blob(ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef null) #45
  br label %dbdataValue.exit

dbdataValue.exit:                                 ; preds = %bb.q, %bb.u, %bb.v, %bb.w, %bb.ac, %.thread.i, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.ak, %bb.am, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.c, %bb.b, %bb.o, %dbdataValue.exit, %bb.p, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %bb.i
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @dbdataRowid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !658
  store i64 %i.b, ptr %1, align 8, !tbaa !130
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dbdataLoadPage(ptr %.8.val, i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #4 {
bb.a:
  store ptr null, ptr %1, align 8, !tbaa !88
  store i32 0, ptr %2, align 4, !tbaa !53
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %0 to i64
  %i.b = tail call i32 @sqlite3_bind_int64(ptr noundef %.8.val, i32 noundef 2, i64 noundef %i.a) #45 ; 0 uses
  %i.c = tail call i32 @sqlite3_step(ptr noundef %.8.val) #45
  %i.d = icmp eq i32 %i.c, 100
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @sqlite3_column_bytes(ptr noundef %.8.val, i32 noundef 0) #45 ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i32 %i.e, 100
  %i.h = zext nneg i32 %i.g to i64
  %i.i = tail call ptr @sqlite3_malloc64(i64 noundef %i.h) #45 ; 4 uses
  %.not2 = icmp eq ptr %i.i, null                 ; 2 uses
  br i1 %.not2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @sqlite3_column_blob(ptr noundef %.8.val, i32 noundef 0) #45
  %i.k = zext nneg i32 %i.e to i64                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %i.j, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(100) %i.l, i8 0, i64 100, i1 false)
  br label %bb.f

.thread:                                          ; preds = %bb.b, %bb.c
  %i.m = tail call i32 @sqlite3_reset(ptr noundef %.8.val) #45
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.e ], [ 7, %bb.d ]
  store ptr %i.i, ptr %1, align 8, !tbaa !88
  store i32 %i.e, ptr %2, align 4, !tbaa !53
  %i.n = tail call i32 @sqlite3_reset(ptr noundef %.8.val) #45
  %spec.select = select i1 %.not2, i32 %.0, i32 %i.n
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.f ], [ %i.m, %.thread ]
  ret i32 %.3
}

declare i32 @sqlite3_bind_int64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 1, 10) i32 @dbdataGetVarintU32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !52      ; 2 uses
  %i.b = and i8 %i.a, 127
  %i.c = zext nneg i8 %i.b to i64                 ; 2 uses
  %i.d = icmp sgt i8 %i.a, -1
  br i1 %i.d, label %dbdataGetVarint.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i64 %i.c, 7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !52    ; 2 uses
  %i.h = and i8 %i.g, 127
  %i.i = zext nneg i8 %i.h to i64
  %i.j = or disjoint i64 %i.e, %i.i               ; 2 uses
  %i.k = icmp sgt i8 %i.g, -1
  br i1 %i.k, label %dbdataGetVarint.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = shl nuw nsw i64 %i.j, 7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !52    ; 2 uses
  %i.o = and i8 %i.n, 127
  %i.p = zext nneg i8 %i.o to i64
  %i.q = or disjoint i64 %i.l, %i.p               ; 2 uses
  %i.r = icmp sgt i8 %i.n, -1
  br i1 %i.r, label %dbdataGetVarint.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = shl nuw nsw i64 %i.q, 7
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !52    ; 2 uses
  %i.v = and i8 %i.u, 127
  %i.w = zext nneg i8 %i.v to i64
  %i.x = or disjoint i64 %i.s, %i.w               ; 2 uses
  %i.y = icmp sgt i8 %i.u, -1
  br i1 %i.y, label %dbdataGetVarint.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = shl nuw nsw i64 %i.x, 7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !52  ; 2 uses
  %i.ac = and i8 %i.ab, 127
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = or disjoint i64 %i.z, %i.ad             ; 2 uses
  %i.af = icmp sgt i8 %i.ab, -1
  br i1 %i.af, label %dbdataGetVarint.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = shl nuw nsw i64 %i.ae, 7
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !52  ; 2 uses
end_hunk_0
