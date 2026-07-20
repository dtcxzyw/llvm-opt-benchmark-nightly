inline.NumInlined: 213
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@get_char_length_tree1:bb.a
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35   ; 3 uses
  %.not89 = icmp eq ptr %i.w, null
  br i1 %.not89, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %.lr.ph102
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %i.z = call fastcc i32 @get_char_length_tree1(ptr noundef %i.y, ptr noundef %1, ptr noundef %i.b, i32 noundef %i.c) ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0                     ; 2 uses
  %i.ab = load i32, ptr %i.a, align 4
  %i.ac = load i32, ptr %i.b, align 4
  %.not91 = icmp ne i32 %i.ab, %i.ac
  %i.ad = select i1 %i.aa, i1 %.not91, i1 false
  %.177 = select i1 %i.ad, i32 1, i32 %.076100
  br i1 %i.aa, label %.lr.ph102, label %.critedge94, !llvm.loop !253

.critedge2:                                       ; preds = %.lr.ph102
  %.not90 = icmp eq i32 %.076100, 0
  br i1 %.not90, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge2
  %i.ae = icmp eq i32 %3, 0
  %. = select i1 %i.ae, i32 -2, i32 -1
  br label %.critedge94

bb.f:                                             ; preds = %.critedge2
  %i.af = load i32, ptr %i.a, align 4, !tbaa !7
  store i32 %i.af, ptr %2, align 4, !tbaa !7
  br label %.critedge94

.critedge94:                                      ; preds = %bb.d, %bb.c, %bb.e, %bb.f
  %.175 = phi i32 [ %., %bb.e ], [ 0, %bb.f ], [ %i.t, %bb.c ], [ %i.z, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.critedge

bb.g:                                             ; preds = %bb.a
  %i.ag = getelementptr i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !150 ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !152 ; 2 uses
  %i.ak = icmp ult ptr %i.ah, %i.aj
  br i1 %i.ak, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.g
  %i.al = getelementptr i8, ptr %1, i64 72
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %i.am = phi ptr [ %i.aj, %.lr.ph ], [ %i.av, %bb.j ] ; 2 uses
  %i.an = phi i32 [ 0, %.lr.ph ], [ %i.ba, %bb.j ]
  %.07399 = phi ptr [ %i.ah, %.lr.ph ], [ %i.az, %bb.j ] ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !75 ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !155 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ao, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !156
  %i.at = icmp eq i32 %i.aq, %i.as
  br i1 %i.at, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = tail call i32 @onigenc_mbclen(ptr noundef %.07399, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ao) #22
  %.pre = load i32, ptr %2, align 4, !tbaa !7
  %.pre105 = load ptr, ptr %i.ai, align 8, !tbaa !152
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.av = phi ptr [ %.pre105, %bb.i ], [ %i.am, %bb.h ] ; 2 uses
  %i.aw = phi i32 [ %.pre, %bb.i ], [ %i.an, %bb.h ]
  %i.ax = phi i32 [ %i.au, %bb.i ], [ %i.aq, %bb.h ]
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %.07399, i64 %i.ay ; 2 uses
  %i.ba = add i32 %i.aw, 1                        ; 2 uses
  store i32 %i.ba, ptr %2, align 4, !tbaa !7
  %i.bb = icmp ult ptr %i.az, %i.av
  br i1 %i.bb, label %bb.h, label %.critedge, !llvm.loop !254

bb.k:                                             ; preds = %bb.a
  %i.bc = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !145
  %i.be = getelementptr i8, ptr %0, i64 20
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !143
  %i.bg = icmp eq i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !146
  %i.bj = call fastcc i32 @get_char_length_tree1(ptr noundef %i.bi, ptr noundef %1, ptr noundef %i.a, i32 noundef %i.c) ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bl = load i32, ptr %i.bc, align 8, !tbaa !145 ; 3 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %distance_multiply.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !7   ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = sext i32 %i.bl to i64
  %i.bq = udiv i64 -1, %i.bp
  %i.br = icmp ugt i64 %i.bq, %i.bo
  %i.bs = mul i32 %i.bn, %i.bl
  %i.bt = select i1 %i.br, i32 %i.bs, i32 -1
  br label %distance_multiply.exit

distance_multiply.exit:                           ; preds = %bb.m, %bb.n
  %.0.i95 = phi i32 [ 0, %bb.m ], [ %i.bt, %bb.n ]
  store i32 %.0.i95, ptr %2, align 4, !tbaa !7
  br label %.critedge

bb.o:                                             ; preds = %bb.a
  %i.bu = getelementptr i8, ptr %0, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !35
  %i.bw = and i32 %i.bv, 128
  %.not88 = icmp eq i32 %i.bw, 0
  br i1 %.not88, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr i8, ptr %0, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !35
  %i.bz = tail call fastcc i32 @get_char_length_tree1(ptr noundef %i.by, ptr noundef %1, ptr noundef %2, i32 noundef %i.c)
  br label %.critedge

bb.q:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !7
  br label %.critedge

bb.r:                                             ; preds = %bb.a, %bb.a
  store i32 1, ptr %2, align 4, !tbaa !7
  br label %.critedge

bb.s:                                             ; preds = %bb.a
  %i.ca = getelementptr i8, ptr %0, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !147 ; 2 uses
  %i.cc = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.cb)
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %.split, label %.critedge

.split:                                           ; preds = %bb.s
  %i.ce = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cb, i1 true)
  switch i32 %i.ce, label %.critedge [
    i32 0, label %bb.t
    i32 1, label %bb.x
    i32 2, label %bb.x
    i32 3, label %bb.x
  ]

bb.t:                                             ; preds = %.split
  %i.cf = getelementptr i8, ptr %0, i64 4         ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !137
  %i.ch = and i32 %i.cg, 4
  %.not = icmp eq i32 %i.ch, 0
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr i8, ptr %0, i64 48
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !255
  store i32 %i.cj, ptr %2, align 4, !tbaa !7
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.ck = getelementptr i8, ptr %0, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !139
  %i.cm = tail call fastcc i32 @get_char_length_tree1(ptr noundef %i.cl, ptr noundef %1, ptr noundef %2, i32 noundef %i.c) ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.co = load i32, ptr %2, align 4, !tbaa !7
  %i.cp = getelementptr i8, ptr %0, i64 48
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !255
  %i.cq = load i32, ptr %i.cf, align 4, !tbaa !35
  %i.cr = or i32 %i.cq, 4
  store i32 %i.cr, ptr %i.cf, align 4, !tbaa !35
  br label %.critedge

bb.x:                                             ; preds = %.split, %.split, %.split
  %i.cs = getelementptr i8, ptr %0, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !139
  %i.cu = tail call fastcc i32 @get_char_length_tree1(ptr noundef %i.ct, ptr noundef %1, ptr noundef %2, i32 noundef %i.c)
  br label %.critedge

bb.y:                                             ; preds = %bb.a
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %.preheader, %bb.b, %bb.g, %bb.x, %bb.v, %bb.w, %bb.u, %bb.s, %.split, %bb.o, %distance_multiply.exit, %bb.l, %bb.k, %bb.p, %bb.y, %bb.r, %bb.q, %.critedge94, %bb.a
  %.4 = phi i32 [ -1, %bb.y ], [ %i.cm, %bb.v ], [ %i.cu, %bb.x ], [ %.175, %.critedge94 ], [ 0, %bb.s ], [ 0, %bb.b ], [ -1, %bb.k ], [ %i.bz, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ -1, %bb.o ], [ 0, %bb.a ], [ 0, %distance_multiply.exit ], [ %i.bj, %bb.l ], [ 0, %.split ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.g ], [ %i.g, %.preheader ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.4
}

declare ptr @onig_node_new_anchor(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @optimize_node_left(ptr nofree noundef captures(address) %0, ptr noundef nonnull initializes((0, 61), (88, 125), (152, 189)) %1, ptr noundef nonnull %2) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 5 uses
  %3 = alloca %struct.OptEnv, align 8             ; 7 uses
  %4 = alloca %struct.NodeOptInfo, align 8        ; 23 uses
  %5 = ptrtoint ptr %4 to i64                     ; 4 uses
  %6 = alloca %struct.NodeOptInfo, align 8        ; 15 uses
  %7 = alloca %struct.NodeOptInfo, align 8        ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %8 = alloca %struct.NodeOptInfo, align 8        ; 13 uses
  %9 = ptrtoint ptr %8 to i64                     ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 52         ; 7 uses
  store i32 -1, ptr %i.f, align 4, !tbaa !93
  %i.g = getelementptr i8, ptr %1, i64 56         ; 8 uses
  store i32 0, ptr %i.g, align 8, !tbaa !92
  %i.h = getelementptr i8, ptr %1, i64 60         ; 13 uses
  store i8 0, ptr %i.h, align 4, !tbaa !35
  %i.i = getelementptr i8, ptr %1, i64 88         ; 5 uses
  %i.j = getelementptr i8, ptr %1, i64 116        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.i, i8 0, i64 28, i1 false)
  store i32 -1, ptr %i.j, align 4, !tbaa !93
  %i.k = getelementptr i8, ptr %1, i64 120        ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !92
  %i.l = getelementptr i8, ptr %1, i64 124        ; 4 uses
  store i8 0, ptr %i.l, align 4, !tbaa !35
  %i.m = getelementptr i8, ptr %1, i64 152        ; 7 uses
  %i.n = getelementptr i8, ptr %1, i64 180
  store i32 -1, ptr %i.n, align 4, !tbaa !93
  %i.o = getelementptr i8, ptr %1, i64 184        ; 3 uses
  store i32 0, ptr %i.o, align 8, !tbaa !92
  %i.p = getelementptr i8, ptr %1, i64 188
  store i8 0, ptr %i.p, align 4, !tbaa !35
  %i.q = getelementptr i8, ptr %1, i64 216        ; 10 uses
  %i.r = getelementptr i8, ptr %1, i64 24         ; 3 uses
  %i.s = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 32
  %i.u = getelementptr i8, ptr %1, i64 160        ; 2 uses
  %i.v = getelementptr i8, ptr %1, i64 224        ; 3 uses
  %.sink798.sroa.gep = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sink798.sroa.gep1032 = getelementptr inbounds nuw i8, ptr %7, i64 88
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.fc, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.ain, %bb.fc ] ; 37 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %1, i8 0, i64 52, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.m, i8 0, i64 28, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(288) %i.q, ptr noundef nonnull align 8 dereferenceable(288) @clear_opt_map_info.clean_info, i64 noundef 288, i1 noundef false) #22
  %.val9.i = load i64, ptr %2, align 8, !tbaa !95 ; 2 uses
  %.val10.i = load i64, ptr %i.s, align 8, !tbaa !94 ; 2 uses
  store i64 %.val9.i, ptr %i.r, align 8, !tbaa !95
  store i64 %.val10.i, ptr %i.t, align 8, !tbaa !94
  store i64 %.val9.i, ptr %i.m, align 8, !tbaa !95
  store i64 %.val10.i, ptr %i.u, align 8, !tbaa !94
  %i.w = load <2 x i64>, ptr %2, align 8, !tbaa !34
  store <2 x i64> %i.w, ptr %i.q, align 8, !tbaa !34
  %i.x = load i32, ptr %.tr, align 8, !tbaa !35
  switch i32 %i.x, label %common.ret1057 [
    i32 8, label %bb.b
    i32 9, label %bb.as
    i32 0, label %bb.bn
    i32 1, label %bb.cg
    i32 2, label %bb.cn
    i32 3, label %bb.da
    i32 7, label %bb.db
    i32 4, label %bb.dj
    i32 10, label %bb.ds
    i32 5, label %bb.dv
    i32 6, label %bb.eq
  ]

bb.b:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull readonly align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !256
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aa = getelementptr i8, ptr %2, i64 16
  %i.ab = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ac = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.af = getelementptr i8, ptr %1, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 224 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 2 uses
  %i.an = getelementptr i8, ptr %1, i64 48        ; 3 uses
  %i.ao = getelementptr i8, ptr %1, i64 112       ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 44
  %i.au = getelementptr i8, ptr %1, i64 104       ; 2 uses
  %i.av = getelementptr i8, ptr %1, i64 108
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 216 ; 3 uses
  %i.ba = getelementptr i8, ptr %1, i64 240
  %i.bb = add i64 %5, 59
  %i.bc = add i64 %i.a, 124
  %i.bd = add i64 %5, 59
  %i.be = add i64 %5, 59
  %i.bf = add i64 %i.a, 60
  %i.bg = add i64 %5, 59
  br label %bb.c

bb.c:                                             ; preds = %concat_left_node_opt_info.exit, %bb.b
  %.0253 = phi ptr [ %.tr, %bb.b ], [ %i.kf, %concat_left_node_opt_info.exit ] ; 2 uses
  %i.bh = getelementptr i8, ptr %.0253, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !35
  %i.bj = call fastcc i32 @optimize_node_left(ptr noundef %i.bi, ptr noundef %4, ptr noundef %3) ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %concat_opt_anc_info.exit.i, label %.critedge

concat_opt_anc_info.exit.i:                       ; preds = %bb.c
  %.val = load i64, ptr %4, align 8, !tbaa !95    ; 3 uses
  %.val321 = load i64, ptr %i.y, align 8, !tbaa !94 ; 4 uses
  %i.bl = load i64, ptr %3, align 8, !tbaa !95    ; 3 uses
  %i.bm = icmp eq i64 %i.bl, -1
  %i.bn = icmp eq i64 %.val, -1
  %or.cond.i.i = or i1 %i.bn, %i.bm
  %i.bo = xor i64 %.val, -1
  %.not.i.i = icmp ugt i64 %i.bl, %i.bo
  %or.cond10.i.i = or i1 %.not.i.i, %or.cond.i.i
  %i.bp = add i64 %i.bl, %.val
  %.0.i.i = select i1 %or.cond10.i.i, i64 -1, i64 %i.bp
  store i64 %.0.i.i, ptr %3, align 8, !tbaa !95
  %i.bq = load i64, ptr %i.z, align 8, !tbaa !94  ; 3 uses
  %i.br = icmp eq i64 %i.bq, -1
  %i.bs = icmp eq i64 %.val321, -1
  %or.cond.i6.i = or i1 %i.bs, %i.br
  %i.bt = xor i64 %.val321, -1
  %.not.i7.i = icmp ugt i64 %i.bq, %i.bt
  %or.cond10.i8.i = or i1 %.not.i7.i, %or.cond.i6.i
  %i.bu = add i64 %i.bq, %.val321
  %.0.i9.i = select i1 %or.cond10.i8.i, i64 -1, i64 %i.bu
  store i64 %.0.i9.i, ptr %i.z, align 8, !tbaa !94
  %i.bv = load ptr, ptr %i.aa, align 8, !tbaa !76 ; 10 uses
  %i.bw = load i64, ptr %i.ac, align 8, !tbaa !108 ; 2 uses
  %i.bx = load i32, ptr %i.ab, align 8, !tbaa !105
  %i.by = icmp ne i64 %i.bw, 0                    ; 2 uses
  %i.bz = load i32, ptr %i.ad, align 8
  %i.ca = select i1 %i.by, i32 0, i32 %i.bz
  %.sroa.0.0.i = or i32 %i.ca, %i.bx              ; 3 uses
  %i.cb = load i32, ptr %i.ae, align 4, !tbaa !106
  %i.cc = icmp eq i64 %.val321, 0                 ; 3 uses
  %i.cd = load i32, ptr %i.af, align 4, !tbaa !106 ; 2 uses
  %i.ce = and i32 %i.cd, 2048
  %.pn.i.i = select i1 %i.cc, i32 %i.cd, i32 %i.ce
  %storemerge.i.i = or i32 %.pn.i.i, %i.cb        ; 3 uses
  %.sroa.10.0.insert.ext96.i = zext i32 %storemerge.i.i to i64
  %.sroa.10.0.insert.shift97.i = shl nuw i64 %.sroa.10.0.insert.ext96.i, 32
  %.sroa.0.0.insert.ext93.i = zext i32 %.sroa.0.0.i to i64
  %.sroa.0.0.insert.insert95.i = or disjoint i64 %.sroa.10.0.insert.shift97.i, %.sroa.0.0.insert.ext93.i
  store i64 %.sroa.0.0.insert.insert95.i, ptr %i.ab, align 8
  %i.cf = load i32, ptr %i.ah, align 8, !tbaa !90 ; 3 uses
  %i.cg = icmp slt i32 %i.cf, 1                   ; 2 uses
  %brmerge.i = or i1 %i.by, %i.cg
  br i1 %brmerge.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %concat_opt_anc_info.exit.i
  %i.ch = load i32, ptr %i.ak, align 8, !tbaa !91
  %i.ci = icmp sgt i32 %i.ch, 0
  %i.cj = icmp eq i64 %i.bw, 0
  %or.cond381 = and i1 %i.cj, %i.ci
  br i1 %or.cond381, label %.thread371, label %bb.f

.thread:                                          ; preds = %concat_opt_anc_info.exit.i
  %i.ck = load i32, ptr %i.ai, align 8, !tbaa !105
  %i.cl = or i32 %i.ck, %.sroa.0.0.i
  %i.cm = load i32, ptr %i.aj, align 4, !tbaa !106
  %i.cn = and i32 %storemerge.i.i, 2048
  %.pn.i67.i = select i1 %i.cc, i32 %storemerge.i.i, i32 %i.cn
  %storemerge.i68.i = or i32 %i.cm, %.pn.i67.i
  %.sroa.10.0.insert.ext.i = zext i32 %storemerge.i68.i to i64
  %.sroa.10.0.insert.shift.i = shl nuw i64 %.sroa.10.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.cl to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.10.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ai, align 8
  %i.co = load i32, ptr %i.ak, align 8, !tbaa !91
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.thread371, label %bb.f

.thread371:                                       ; preds = %bb.d, %.thread
  %i.cq = load i64, ptr %i.al, align 8, !tbaa !257
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread371
  %i.cs = load i32, ptr %i.am, align 8, !tbaa !258
  %i.ct = or i32 %i.cs, %.sroa.0.0.i
  store i32 %i.ct, ptr %i.am, align 8, !tbaa !258
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %.thread371, %bb.d
  %i.cu = load i32, ptr %i.an, align 8, !tbaa !259
  %i.cv = load i32, ptr %i.ao, align 8, !tbaa !260
  br i1 %i.cc, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ao, align 8, !tbaa !260
  store i32 0, ptr %i.an, align 8, !tbaa !259
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %i.cg, label %bb.y, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not61.i = icmp eq i32 %i.cu, 0
  br i1 %.not61.i, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cw = load i32, ptr %i.f, align 4, !tbaa !93  ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 0
  %i.cy = load i32, ptr %i.ap, align 4, !tbaa !93 ; 2 uses
  br i1 %i.cx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.cy, ptr %i.f, align 4, !tbaa !93
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.not.i.i323 = icmp eq i32 %i.cw, %i.cy
  br i1 %.not.i.i323, label %bb.m, label %.sink.split.i

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cz = zext nneg i32 %i.cf to i64              ; 3 uses
  %i.da = getelementptr i8, ptr %i.aq, i64 %i.cz  ; 6 uses
  %i.db = load i32, ptr %i.g, align 8, !tbaa !92  ; 2 uses
  %i.dc = icmp ult ptr %i.aq, %i.da
  br i1 %i.dc, label %.lr.ph51.i.i, label %._crit_edge.i.i

.lr.ph51.i.i:                                     ; preds = %bb.m
  %i.dd = getelementptr i8, ptr %i.bv, i64 16
  %i.de = getelementptr i8, ptr %i.bv, i64 20
  %i.df = add i64 %i.be, %i.cz
  %i.dg = add i64 %i.bg, %i.cz
  br label %bb.n

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %middle.block985, %vec.epilog.middle.block1002, %.preheader.i.i
  %.139.lcssa.i.i = phi ptr [ %.03849.i.i, %.preheader.i.i ], [ %i.er, %vec.epilog.middle.block1002 ], [ %i.eh, %middle.block985 ], [ %i.ex, %.lr.ph.i.i ] ; 3 uses
  %.1.lcssa.i.i = phi i32 [ %.050.i.i, %.preheader.i.i ], [ %i.eq, %vec.epilog.middle.block1002 ], [ %i.eg, %middle.block985 ], [ %i.ez, %.lr.ph.i.i ] ; 2 uses
  %i.dh = icmp ult ptr %.139.lcssa.i.i, %i.da
  br i1 %i.dh, label %bb.n, label %._crit_edge.i.i, !llvm.loop !261

bb.n:                                             ; preds = %.loopexit.i.i, %.lr.ph51.i.i
  %.050.i.i = phi i32 [ %i.db, %.lr.ph51.i.i ], [ %.1.lcssa.i.i, %.loopexit.i.i ] ; 13 uses
  %.03849.i.i = phi ptr [ %i.aq, %.lr.ph51.i.i ], [ %.139.lcssa.i.i, %.loopexit.i.i ] ; 12 uses
  %.03849.i.i968 = ptrtoint ptr %.03849.i.i to i64 ; 3 uses
  %i.di = load i32, ptr %i.dd, align 8, !tbaa !155 ; 2 uses
  %i.dj = load i32, ptr %i.de, align 4, !tbaa !156
  %i.dk = icmp eq i32 %i.di, %i.dj
  br i1 %i.dk, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dl = call i32 @onigenc_mbclen(ptr noundef %.03849.i.i, ptr noundef nonnull %i.da, ptr noundef nonnull %i.bv) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dm = phi i32 [ %i.dl, %bb.o ], [ %i.di, %bb.n ] ; 5 uses
  %i.dn = add i32 %i.dm, %.050.i.i
  %i.do = icmp sgt i32 %i.dn, 24
  br i1 %i.do, label %._crit_edge.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.p
  %i.dp = icmp sgt i32 %i.dm, 0
  %i.dq = icmp ult ptr %.03849.i.i, %i.da
  %i.dr = and i1 %i.dq, %i.dp
  br i1 %i.dr, label %iter.check990, label %.loopexit.i.i

iter.check990:                                    ; preds = %.preheader.i.i
  %i.ds = sub i64 %i.dg, %.03849.i.i968
  %i.dt = add nsw i32 %i.dm, -1
  %i.du = zext i32 %i.dt to i64
  %umin972 = call i64 @llvm.umin.i64(i64 %i.ds, i64 %i.du) ; 3 uses
  %i.dv = add nuw nsw i64 %umin972, 1             ; 5 uses
  %min.iters.check973 = icmp samesign ult i64 %umin972, 3
  br i1 %min.iters.check973, label %.lr.ph.i.i.preheader, label %vector.scevcheck967

vector.scevcheck967:                              ; preds = %iter.check990
  %i.dw = sub i64 %i.df, %.03849.i.i968
  %i.dx = add nsw i32 %i.dm, -1
  %i.dy = zext i32 %i.dx to i64
  %umin969 = call i64 @llvm.umin.i64(i64 %i.dw, i64 %i.dy)
  %i.dz = trunc nuw i64 %umin969 to i32
  %i.ea = add i32 %.050.i.i, %i.dz
  %i.eb = icmp slt i32 %i.ea, %.050.i.i
  br i1 %i.eb, label %.lr.ph.i.i.preheader, label %vector.memcheck970

vector.memcheck970:                               ; preds = %vector.scevcheck967
  %i.ec = sext i32 %.050.i.i to i64
  %i.ed = add i64 %i.bf, %i.ec
  %i.ee = sub i64 %.03849.i.i968, %i.ed
  %diff.check971 = icmp ugt i64 %i.ee, -32
  br i1 %diff.check971, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check974

vector.main.loop.iter.check974:                   ; preds = %vector.memcheck970
  %min.iters.check975 = icmp samesign ult i64 %umin972, 31
  br i1 %min.iters.check975, label %vec.epilog.ph994, label %vector.ph976

vector.ph976:                                     ; preds = %vector.main.loop.iter.check974
  %n.mod.vf977 = and i64 %i.dv, 28
  %n.vec978 = and i64 %i.dv, 8589934560           ; 5 uses
  %i.ef = trunc i64 %n.vec978 to i32              ; 2 uses
  %i.eg = add i32 %.050.i.i, %i.ef                ; 2 uses
  %i.eh = getelementptr i8, ptr %.03849.i.i, i64 %n.vec978 ; 2 uses
  br label %vector.body979

vector.body979:                                   ; preds = %vector.body979, %vector.ph976
  %index980 = phi i64 [ 0, %vector.ph976 ], [ %index.next984, %vector.body979 ] ; 3 uses
  %i.ei = trunc i64 %index980 to i32
  %i.ej = add i32 %.050.i.i, %i.ei
  %next.gep981 = getelementptr i8, ptr %.03849.i.i, i64 %index980 ; 2 uses
  %i.ek = getelementptr i8, ptr %next.gep981, i64 16
  %wide.load982 = load <16 x i8>, ptr %next.gep981, align 1, !tbaa !35
  %wide.load983 = load <16 x i8>, ptr %i.ek, align 1, !tbaa !35
  %i.el = sext i32 %i.ej to i64
  %i.em = getelementptr i8, ptr %i.h, i64 %i.el   ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 16
  store <16 x i8> %wide.load982, ptr %i.em, align 1, !tbaa !35
  store <16 x i8> %wide.load983, ptr %i.en, align 1, !tbaa !35
  %index.next984 = add nuw i64 %index980, 32      ; 2 uses
  %i.eo = icmp eq i64 %index.next984, %n.vec978
  br i1 %i.eo, label %middle.block985, label %vector.body979, !llvm.loop !262

middle.block985:                                  ; preds = %vector.body979
  %cmp.n986 = icmp eq i64 %i.dv, %n.vec978
  br i1 %cmp.n986, label %.loopexit.i.i, label %vec.epilog.iter.check992

vec.epilog.iter.check992:                         ; preds = %middle.block985
  %min.epilog.iters.check993 = icmp eq i64 %n.mod.vf977, 0
  br i1 %min.epilog.iters.check993, label %.lr.ph.i.i.preheader, label %vec.epilog.ph994, !prof !265

vec.epilog.ph994:                                 ; preds = %vector.main.loop.iter.check974, %vec.epilog.iter.check992
  %vec.epilog.resume.val987 = phi i64 [ %n.vec978, %vec.epilog.iter.check992 ], [ 0, %vector.main.loop.iter.check974 ]
  %n.vec996 = and i64 %i.dv, 8589934588           ; 4 uses
  %i.ep = trunc i64 %n.vec996 to i32              ; 2 uses
  %i.eq = add i32 %.050.i.i, %i.ep                ; 2 uses
  %i.er = getelementptr i8, ptr %.03849.i.i, i64 %n.vec996 ; 2 uses
  br label %vec.epilog.vector.body997

vec.epilog.vector.body997:                        ; preds = %vec.epilog.vector.body997, %vec.epilog.ph994
  %index998 = phi i64 [ %vec.epilog.resume.val987, %vec.epilog.ph994 ], [ %index.next1001, %vec.epilog.vector.body997 ] ; 3 uses
  %i.es = trunc i64 %index998 to i32
  %i.et = add i32 %.050.i.i, %i.es
  %next.gep999 = getelementptr i8, ptr %.03849.i.i, i64 %index998
  %wide.load1000 = load <4 x i8>, ptr %next.gep999, align 1, !tbaa !35
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr i8, ptr %i.h, i64 %i.eu
  store <4 x i8> %wide.load1000, ptr %i.ev, align 1, !tbaa !35
  %index.next1001 = add nuw i64 %index998, 4      ; 2 uses
  %i.ew = icmp eq i64 %index.next1001, %n.vec996
  br i1 %i.ew, label %vec.epilog.middle.block1002, label %vec.epilog.vector.body997, !llvm.loop !266

vec.epilog.middle.block1002:                      ; preds = %vec.epilog.vector.body997
  %cmp.n1003 = icmp eq i64 %i.dv, %n.vec996
  br i1 %cmp.n1003, label %.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck970, %vector.scevcheck967, %iter.check990, %vec.epilog.iter.check992, %vec.epilog.middle.block1002
  %.147.i.i.ph = phi i32 [ %.050.i.i, %iter.check990 ], [ %.050.i.i, %vector.scevcheck967 ], [ %.050.i.i, %vector.memcheck970 ], [ %i.eg, %vec.epilog.iter.check992 ], [ %i.eq, %vec.epilog.middle.block1002 ]
  %.13946.i.i.ph = phi ptr [ %.03849.i.i, %iter.check990 ], [ %.03849.i.i, %vector.scevcheck967 ], [ %.03849.i.i, %vector.memcheck970 ], [ %i.eh, %vec.epilog.iter.check992 ], [ %i.er, %vec.epilog.middle.block1002 ]
  %.04045.i.i.ph = phi i32 [ 0, %iter.check990 ], [ 0, %vector.scevcheck967 ], [ 0, %vector.memcheck970 ], [ %i.ef, %vec.epilog.iter.check992 ], [ %i.ep, %vec.epilog.middle.block1002 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.147.i.i = phi i32 [ %i.ez, %.lr.ph.i.i ], [ %.147.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.13946.i.i = phi ptr [ %i.ex, %.lr.ph.i.i ], [ %.13946.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.04045.i.i = phi i32 [ %i.fc, %.lr.ph.i.i ], [ %.04045.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ex = getelementptr i8, ptr %.13946.i.i, i64 1 ; 3 uses
  %i.ey = load i8, ptr %.13946.i.i, align 1, !tbaa !35
  %i.ez = add i32 %.147.i.i, 1                    ; 2 uses
  %i.fa = sext i32 %.147.i.i to i64
  %i.fb = getelementptr i8, ptr %i.h, i64 %i.fa
  store i8 %i.ey, ptr %i.fb, align 1, !tbaa !35
  %i.fc = add nuw nsw i32 %.04045.i.i, 1          ; 2 uses
  %i.fd = icmp slt i32 %i.fc, %i.dm
  %i.fe = icmp ult ptr %i.ex, %i.da
  %i.ff = and i1 %i.fe, %i.fd
  br i1 %i.ff, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !267

._crit_edge.i.i:                                  ; preds = %bb.p, %.loopexit.i.i, %bb.m
  %.038.lcssa.i.i = phi ptr [ %i.aq, %bb.m ], [ %.03849.i.i, %bb.p ], [ %.139.lcssa.i.i, %.loopexit.i.i ]
  %.0.lcssa.i.i = phi i32 [ %i.db, %bb.m ], [ %.050.i.i, %bb.p ], [ %.1.lcssa.i.i, %.loopexit.i.i ]
  store i32 %.0.lcssa.i.i, ptr %i.g, align 8, !tbaa !92
  %i.fg = icmp eq ptr %.038.lcssa.i.i, %i.da
  %i.fh = load i32, ptr %i.ar, align 8
  %i.fi = freeze i32 %i.fh
  %.fr.i.i = select i1 %i.fg, i32 %i.fi, i32 0    ; 2 uses
  store i32 %.fr.i.i, ptr %i.an, align 8, !tbaa !268
  %i.fj = load i32, ptr %i.as, align 8, !tbaa !105
  %i.fk = load i32, ptr %i.aj, align 4, !tbaa !106
  %i.fl = load i32, ptr %i.at, align 4, !tbaa !106
  %i.fm = and i32 %i.fl, 2048
  %storemerge.i.i.i = or i32 %i.fm, %i.fk
  %.not44.i.i = icmp eq i32 %.fr.i.i, 0
  %i.fn = select i1 %.not44.i.i, i32 0, i32 %storemerge.i.i.i
  %.sroa.5.0.insert.ext.i.i = zext i32 %i.fn to i64
  %.sroa.5.0.insert.shift.i.i = shl nuw i64 %.sroa.5.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.fj to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.as, align 8
  br label %.sink.split.i

bb.q:                                             ; preds = %bb.i
  %.not62.i = icmp eq i32 %i.cv, 0
  br i1 %.not62.i, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fo = load i32, ptr %i.j, align 4, !tbaa !93  ; 2 uses
  %i.fp = icmp slt i32 %i.fo, 0
  %i.fq = load i32, ptr %i.ap, align 4, !tbaa !93 ; 2 uses
  br i1 %i.fp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.fq, ptr %i.j, align 4, !tbaa !93
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %.not.i69.i = icmp eq i32 %i.fo, %i.fq
  br i1 %.not.i69.i, label %bb.u, label %.sink.split.i

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fr = zext nneg i32 %i.cf to i64              ; 3 uses
  %i.fs = getelementptr i8, ptr %i.aq, i64 %i.fr  ; 6 uses
  %i.ft = load i32, ptr %i.k, align 8, !tbaa !92  ; 2 uses
  %i.fu = icmp ult ptr %i.aq, %i.fs
  br i1 %i.fu, label %.lr.ph51.i81.i, label %._crit_edge.i70.i

.lr.ph51.i81.i:                                   ; preds = %bb.u
  %i.fv = getelementptr i8, ptr %i.bv, i64 16
  %i.fw = getelementptr i8, ptr %i.bv, i64 20
  %i.fx = add i64 %i.bb, %i.fr
  %i.fy = add i64 %i.bd, %i.fr
  br label %bb.v

.loopexit.i85.i:                                  ; preds = %.lr.ph.i88.i, %middle.block945, %vec.epilog.middle.block962, %.preheader.i84.i
  %.139.lcssa.i86.i = phi ptr [ %.03849.i83.i, %.preheader.i84.i ], [ %i.hj, %vec.epilog.middle.block962 ], [ %i.gz, %middle.block945 ], [ %i.hp, %.lr.ph.i88.i ] ; 3 uses
  %.1.lcssa.i87.i = phi i32 [ %.050.i82.i, %.preheader.i84.i ], [ %i.hi, %vec.epilog.middle.block962 ], [ %i.gy, %middle.block945 ], [ %i.hr, %.lr.ph.i88.i ] ; 2 uses
  %i.fz = icmp ult ptr %.139.lcssa.i86.i, %i.fs
  br i1 %i.fz, label %bb.v, label %._crit_edge.i70.i, !llvm.loop !261

bb.v:                                             ; preds = %.loopexit.i85.i, %.lr.ph51.i81.i
  %.050.i82.i = phi i32 [ %i.ft, %.lr.ph51.i81.i ], [ %.1.lcssa.i87.i, %.loopexit.i85.i ] ; 13 uses
  %.03849.i83.i = phi ptr [ %i.aq, %.lr.ph51.i81.i ], [ %.139.lcssa.i86.i, %.loopexit.i85.i ] ; 12 uses
  %.03849.i83.i928 = ptrtoint ptr %.03849.i83.i to i64 ; 3 uses
  %i.ga = load i32, ptr %i.fv, align 8, !tbaa !155 ; 2 uses
  %i.gb = load i32, ptr %i.fw, align 4, !tbaa !156
  %i.gc = icmp eq i32 %i.ga, %i.gb
  br i1 %i.gc, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gd = call i32 @onigenc_mbclen(ptr noundef %.03849.i83.i, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.bv) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ge = phi i32 [ %i.gd, %bb.w ], [ %i.ga, %bb.v ] ; 5 uses
  %i.gf = add i32 %i.ge, %.050.i82.i
  %i.gg = icmp sgt i32 %i.gf, 24
  br i1 %i.gg, label %._crit_edge.i70.i, label %.preheader.i84.i

.preheader.i84.i:                                 ; preds = %bb.x
  %i.gh = icmp sgt i32 %i.ge, 0
  %i.gi = icmp ult ptr %.03849.i83.i, %i.fs
  %i.gj = and i1 %i.gi, %i.gh
  br i1 %i.gj, label %iter.check950, label %.loopexit.i85.i

iter.check950:                                    ; preds = %.preheader.i84.i
  %i.gk = sub i64 %i.fy, %.03849.i83.i928
  %i.gl = add nsw i32 %i.ge, -1
  %i.gm = zext i32 %i.gl to i64
  %umin932 = call i64 @llvm.umin.i64(i64 %i.gk, i64 %i.gm) ; 3 uses
  %i.gn = add nuw nsw i64 %umin932, 1             ; 5 uses
  %min.iters.check933 = icmp samesign ult i64 %umin932, 3
  br i1 %min.iters.check933, label %.lr.ph.i88.i.preheader, label %vector.scevcheck927

vector.scevcheck927:                              ; preds = %iter.check950
  %i.go = sub i64 %i.fx, %.03849.i83.i928
  %i.gp = add nsw i32 %i.ge, -1
  %i.gq = zext i32 %i.gp to i64
  %umin929 = call i64 @llvm.umin.i64(i64 %i.go, i64 %i.gq)
  %i.gr = trunc nuw i64 %umin929 to i32
  %i.gs = add i32 %.050.i82.i, %i.gr
  %i.gt = icmp slt i32 %i.gs, %.050.i82.i
  br i1 %i.gt, label %.lr.ph.i88.i.preheader, label %vector.memcheck930

vector.memcheck930:                               ; preds = %vector.scevcheck927
  %i.gu = sext i32 %.050.i82.i to i64
  %i.gv = add i64 %i.bc, %i.gu
  %i.gw = sub i64 %.03849.i83.i928, %i.gv
  %diff.check931 = icmp ugt i64 %i.gw, -32
  br i1 %diff.check931, label %.lr.ph.i88.i.preheader, label %vector.main.loop.iter.check934

vector.main.loop.iter.check934:                   ; preds = %vector.memcheck930
  %min.iters.check935 = icmp samesign ult i64 %umin932, 31
  br i1 %min.iters.check935, label %vec.epilog.ph954, label %vector.ph936

vector.ph936:                                     ; preds = %vector.main.loop.iter.check934
  %n.mod.vf937 = and i64 %i.gn, 28
  %n.vec938 = and i64 %i.gn, 8589934560           ; 5 uses
  %i.gx = trunc i64 %n.vec938 to i32              ; 2 uses
  %i.gy = add i32 %.050.i82.i, %i.gx              ; 2 uses
  %i.gz = getelementptr i8, ptr %.03849.i83.i, i64 %n.vec938 ; 2 uses
  br label %vector.body939

vector.body939:                                   ; preds = %vector.body939, %vector.ph936
  %index940 = phi i64 [ 0, %vector.ph936 ], [ %index.next944, %vector.body939 ] ; 3 uses
  %i.ha = trunc i64 %index940 to i32
  %i.hb = add i32 %.050.i82.i, %i.ha
  %next.gep941 = getelementptr i8, ptr %.03849.i83.i, i64 %index940 ; 2 uses
  %i.hc = getelementptr i8, ptr %next.gep941, i64 16
  %wide.load942 = load <16 x i8>, ptr %next.gep941, align 1, !tbaa !35
  %wide.load943 = load <16 x i8>, ptr %i.hc, align 1, !tbaa !35
  %i.hd = sext i32 %i.hb to i64
  %i.he = getelementptr i8, ptr %i.l, i64 %i.hd   ; 2 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 16
  store <16 x i8> %wide.load942, ptr %i.he, align 1, !tbaa !35
  store <16 x i8> %wide.load943, ptr %i.hf, align 1, !tbaa !35
  %index.next944 = add nuw i64 %index940, 32      ; 2 uses
  %i.hg = icmp eq i64 %index.next944, %n.vec938
  br i1 %i.hg, label %middle.block945, label %vector.body939, !llvm.loop !269

middle.block945:                                  ; preds = %vector.body939
  %cmp.n946 = icmp eq i64 %i.gn, %n.vec938
  br i1 %cmp.n946, label %.loopexit.i85.i, label %vec.epilog.iter.check952

vec.epilog.iter.check952:                         ; preds = %middle.block945
  %min.epilog.iters.check953 = icmp eq i64 %n.mod.vf937, 0
  br i1 %min.epilog.iters.check953, label %.lr.ph.i88.i.preheader, label %vec.epilog.ph954, !prof !265

vec.epilog.ph954:                                 ; preds = %vector.main.loop.iter.check934, %vec.epilog.iter.check952
  %vec.epilog.resume.val947 = phi i64 [ %n.vec938, %vec.epilog.iter.check952 ], [ 0, %vector.main.loop.iter.check934 ]
  %n.vec956 = and i64 %i.gn, 8589934588           ; 4 uses
  %i.hh = trunc i64 %n.vec956 to i32              ; 2 uses
  %i.hi = add i32 %.050.i82.i, %i.hh              ; 2 uses
  %i.hj = getelementptr i8, ptr %.03849.i83.i, i64 %n.vec956 ; 2 uses
  br label %vec.epilog.vector.body957

vec.epilog.vector.body957:                        ; preds = %vec.epilog.vector.body957, %vec.epilog.ph954
  %index958 = phi i64 [ %vec.epilog.resume.val947, %vec.epilog.ph954 ], [ %index.next961, %vec.epilog.vector.body957 ] ; 3 uses
  %i.hk = trunc i64 %index958 to i32
  %i.hl = add i32 %.050.i82.i, %i.hk
  %next.gep959 = getelementptr i8, ptr %.03849.i83.i, i64 %index958
  %wide.load960 = load <4 x i8>, ptr %next.gep959, align 1, !tbaa !35
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr i8, ptr %i.l, i64 %i.hm
  store <4 x i8> %wide.load960, ptr %i.hn, align 1, !tbaa !35
  %index.next961 = add nuw i64 %index958, 4       ; 2 uses
  %i.ho = icmp eq i64 %index.next961, %n.vec956
  br i1 %i.ho, label %vec.epilog.middle.block962, label %vec.epilog.vector.body957, !llvm.loop !270

vec.epilog.middle.block962:                       ; preds = %vec.epilog.vector.body957
  %cmp.n963 = icmp eq i64 %i.gn, %n.vec956
  br i1 %cmp.n963, label %.loopexit.i85.i, label %.lr.ph.i88.i.preheader

.lr.ph.i88.i.preheader:                           ; preds = %vector.memcheck930, %vector.scevcheck927, %iter.check950, %vec.epilog.iter.check952, %vec.epilog.middle.block962
  %.147.i89.i.ph = phi i32 [ %.050.i82.i, %iter.check950 ], [ %.050.i82.i, %vector.scevcheck927 ], [ %.050.i82.i, %vector.memcheck930 ], [ %i.gy, %vec.epilog.iter.check952 ], [ %i.hi, %vec.epilog.middle.block962 ]
  %.13946.i90.i.ph = phi ptr [ %.03849.i83.i, %iter.check950 ], [ %.03849.i83.i, %vector.scevcheck927 ], [ %.03849.i83.i, %vector.memcheck930 ], [ %i.gz, %vec.epilog.iter.check952 ], [ %i.hj, %vec.epilog.middle.block962 ]
  %.04045.i91.i.ph = phi i32 [ 0, %iter.check950 ], [ 0, %vector.scevcheck927 ], [ 0, %vector.memcheck930 ], [ %i.gx, %vec.epilog.iter.check952 ], [ %i.hh, %vec.epilog.middle.block962 ]
  br label %.lr.ph.i88.i

.lr.ph.i88.i:                                     ; preds = %.lr.ph.i88.i.preheader, %.lr.ph.i88.i
  %.147.i89.i = phi i32 [ %i.hr, %.lr.ph.i88.i ], [ %.147.i89.i.ph, %.lr.ph.i88.i.preheader ] ; 2 uses
  %.13946.i90.i = phi ptr [ %i.hp, %.lr.ph.i88.i ], [ %.13946.i90.i.ph, %.lr.ph.i88.i.preheader ] ; 2 uses
  %.04045.i91.i = phi i32 [ %i.hu, %.lr.ph.i88.i ], [ %.04045.i91.i.ph, %.lr.ph.i88.i.preheader ]
  %i.hp = getelementptr i8, ptr %.13946.i90.i, i64 1 ; 3 uses
  %i.hq = load i8, ptr %.13946.i90.i, align 1, !tbaa !35
  %i.hr = add i32 %.147.i89.i, 1                  ; 2 uses
  %i.hs = sext i32 %.147.i89.i to i64
  %i.ht = getelementptr i8, ptr %i.l, i64 %i.hs
  store i8 %i.hq, ptr %i.ht, align 1, !tbaa !35
  %i.hu = add nuw nsw i32 %.04045.i91.i, 1        ; 2 uses
  %i.hv = icmp slt i32 %i.hu, %i.ge
  %i.hw = icmp ult ptr %i.hp, %i.fs
  %i.hx = and i1 %i.hw, %i.hv
  br i1 %i.hx, label %.lr.ph.i88.i, label %.loopexit.i85.i, !llvm.loop !271

._crit_edge.i70.i:                                ; preds = %bb.x, %.loopexit.i85.i, %bb.u
  %.038.lcssa.i71.i = phi ptr [ %i.aq, %bb.u ], [ %.03849.i83.i, %bb.x ], [ %.139.lcssa.i86.i, %.loopexit.i85.i ]
  %.0.lcssa.i72.i = phi i32 [ %i.ft, %bb.u ], [ %.050.i82.i, %bb.x ], [ %.1.lcssa.i87.i, %.loopexit.i85.i ]
  store i32 %.0.lcssa.i72.i, ptr %i.k, align 8, !tbaa !92
  %i.hy = icmp eq ptr %.038.lcssa.i71.i, %i.fs
  %i.hz = load i32, ptr %i.ar, align 8
  %i.ia = freeze i32 %i.hz
  %.fr.i73.i = select i1 %i.hy, i32 %i.ia, i32 0  ; 2 uses
  store i32 %.fr.i73.i, ptr %i.ao, align 8, !tbaa !268
  %i.ib = load i32, ptr %i.au, align 8, !tbaa !105
  %i.ic = load i32, ptr %i.aj, align 4, !tbaa !106
  %i.id = load i32, ptr %i.av, align 4, !tbaa !106
  %i.ie = and i32 %i.id, 2048
  %storemerge.i.i74.i = or i32 %i.ie, %i.ic
  %.not44.i75.i = icmp eq i32 %.fr.i73.i, 0
  %i.if = select i1 %.not44.i75.i, i32 0, i32 %storemerge.i.i74.i
  %.sroa.5.0.insert.ext.i77.i = zext i32 %i.if to i64
  %.sroa.5.0.insert.shift.i78.i = shl nuw i64 %.sroa.5.0.insert.ext.i77.i, 32
  %.sroa.0.0.insert.ext.i79.i = zext i32 %i.ib to i64
  %.sroa.0.0.insert.insert.i80.i = or disjoint i64 %.sroa.5.0.insert.shift.i78.i, %.sroa.0.0.insert.ext.i79.i
  store i64 %.sroa.0.0.insert.insert.i80.i, ptr %i.au, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %._crit_edge.i70.i, %bb.l, %._crit_edge.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ag, i8 0, i64 28, i1 false)
  store i32 -1, ptr %i.ap, align 4, !tbaa !93
  store i32 0, ptr %i.ah, align 8, !tbaa !92
  store i8 0, ptr %i.aq, align 4, !tbaa !35
  br label %bb.y

bb.y:                                             ; preds = %.sink.split.i, %bb.q, %bb.h
  call fastcc void @select_opt_exact_info(ptr noundef %i.bv, ptr noundef nonnull %i.i, ptr noundef nonnull %i.ag)
  call fastcc void @select_opt_exact_info(ptr noundef %i.bv, ptr noundef nonnull %i.i, ptr noundef nonnull %i.aw)
  %i.ig = load i32, ptr %i.o, align 8, !tbaa !272 ; 2 uses
  %i.ih = icmp sgt i32 %i.ig, 0
  br i1 %i.ih, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.ii = load i64, ptr %i.y, align 8, !tbaa !108 ; 2 uses
  %.not63.i = icmp eq i64 %i.ii, 0
  br i1 %.not63.i, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ij = trunc i64 %i.ii to i32                  ; 2 uses
  %i.ik = icmp sgt i32 %i.ig, %i.ij
  br i1 %i.ik, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.ij, ptr %i.o, align 8, !tbaa !272
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.il = load i64, ptr %i.u, align 8, !tbaa !273
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @select_opt_exact_info(ptr noundef %i.bv, ptr noundef nonnull %i.r, ptr noundef nonnull %i.m)
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  call fastcc void @select_opt_exact_info(ptr noundef %i.bv, ptr noundef nonnull %i.i, ptr noundef nonnull %i.m)
  br label %bb.ah

bb.af:                                            ; preds = %bb.y
  %i.in = load i32, ptr %i.ax, align 8, !tbaa !272
  %i.io = icmp sgt i32 %i.in, 0
  br i1 %i.io, label %bb.ag, label %bb.ah

end_hunk_0
begin_hunk_1_@optimize_node_left:bb.a
  %.0.i9.i.i = select i1 %or.cond10.i8.i.i, i64 -1, i64 %i.kd
  store i64 %.0.i9.i.i, ptr %i.ac, align 8, !tbaa !94
  %i.ke = getelementptr i8, ptr %.0253, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !35 ; 2 uses
  %.not315 = icmp eq ptr %i.kf, null
  br i1 %.not315, label %.critedge, label %bb.c, !llvm.loop !276

.critedge:                                        ; preds = %bb.c, %concat_left_node_opt_info.exit
  %.lcssa644 = phi i32 [ %i.bj, %bb.c ], [ 0, %concat_left_node_opt_info.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.ret1057

bb.as:                                            ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.kg = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ki = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.kj = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.kk = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.kl = getelementptr i8, ptr %2, i64 16
  %i.km = getelementptr inbounds nuw i8, ptr %6, i64 216
  %i.kn = getelementptr i8, ptr %1, i64 240       ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.kp = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.kq = getelementptr inbounds nuw i8, ptr %6, i64 244 ; 2 uses
  %i.kr = getelementptr i8, ptr %1, i64 244       ; 3 uses
  %i.ks = getelementptr i8, ptr %1, i64 232       ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %6, i64 232
  %i.ku = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.at

bb.at:                                            ; preds = %alt_merge_node_opt_info.exit, %bb.as
  %.0254 = phi ptr [ %.tr, %bb.as ], [ %i.mn, %alt_merge_node_opt_info.exit ] ; 3 uses
  %i.kw = getelementptr i8, ptr %.0254, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !35
  %i.ky = call fastcc i32 @optimize_node_left(ptr noundef %i.kx, ptr noundef %6, ptr noundef %2) ; 2 uses
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %bb.au, label %.critedge3

bb.au:                                            ; preds = %bb.at
  %i.la = icmp eq ptr %.0254, %.tr
  br i1 %i.la, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull readonly align 8 dereferenceable(504) %6, i64 504, i1 false), !tbaa.struct !277
  br label %alt_merge_node_opt_info.exit

bb.aw:                                            ; preds = %bb.au
  %i.lb = load <2 x i32>, ptr %i.kh, align 8, !tbaa !7
  %i.lc = load <2 x i32>, ptr %i.kg, align 8, !tbaa !7
  %i.ld = and <2 x i32> %i.lc, %i.lb
  store <2 x i32> %i.ld, ptr %i.kg, align 8, !tbaa !7
  call fastcc void @alt_merge_opt_exact_info(ptr noundef nonnull %i.r, ptr noundef nonnull readonly %i.ki, ptr noundef nonnull readonly %2)
  call fastcc void @alt_merge_opt_exact_info(ptr noundef nonnull %i.i, ptr noundef nonnull readonly %i.kj, ptr noundef nonnull readonly %2)
  call fastcc void @alt_merge_opt_exact_info(ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.kk, ptr noundef nonnull readonly %2)
  %i.le = load ptr, ptr %i.kl, align 8, !tbaa !76
  %i.lf = load i32, ptr %i.kn, align 8, !tbaa !275
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %alt_merge_opt_map_info.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lh = load i32, ptr %i.ko, align 8, !tbaa !275
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lj = load i64, ptr %i.v, align 8, !tbaa !278 ; 2 uses
  %i.lk = load i64, ptr %i.km, align 8, !tbaa !104 ; 3 uses
  %i.ll = icmp ult i64 %i.lj, %i.lk
  br i1 %i.ll, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(288) %i.q, ptr noundef nonnull align 8 dereferenceable(288) @clear_opt_map_info.clean_info, i64 noundef 288, i1 noundef false) #22
  br label %alt_merge_opt_map_info.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.lm = load i64, ptr %i.q, align 8, !tbaa !95
  %i.ln = icmp ugt i64 %i.lm, %i.lk
  br i1 %i.ln, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i64 %i.lk, ptr %i.q, align 8, !tbaa !95
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.lo = load i64, ptr %i.kp, align 8, !tbaa !94 ; 2 uses
  %i.lp = icmp ult i64 %i.lj, %i.lo
  br i1 %i.lp, label %bb.bd, label %alt_merge_mml.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  store i64 %i.lo, ptr %i.v, align 8, !tbaa !94
  br label %alt_merge_mml.exit.i.i

alt_merge_mml.exit.i.i:                           ; preds = %bb.bd, %bb.bc
  %i.lq = getelementptr i8, ptr %i.le, i64 20
  %i.lr = load i8, ptr %i.kq, align 4, !tbaa !35
  %.not.peel.i.i = icmp eq i8 %i.lr, 0
  br i1 %.not.peel.i.i, label %bb.be, label %.thread.i.i

.thread.i.i:                                      ; preds = %alt_merge_mml.exit.i.i
  store i8 1, ptr %i.kr, align 4, !tbaa !35
  br label %bb.bf

bb.be:                                            ; preds = %alt_merge_mml.exit.i.i
  %.pre.i.i = load i8, ptr %i.kr, align 4, !tbaa !35
  %i.ls = icmp eq i8 %.pre.i.i, 0
  br i1 %i.ls, label %.peel.next.i.i.preheader, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.thread.i.i
  %i.lt = load i32, ptr %i.lq, align 4, !tbaa !156
  %i.lu = icmp sgt i32 %i.lt, 1
  %spec.select.i.i = select i1 %i.lu, i32 20, i32 5
  br label %.peel.next.i.i.preheader

.peel.next.i.i.preheader:                         ; preds = %bb.bf, %bb.be
  %.026.i.i.ph = phi i32 [ 0, %bb.be ], [ %spec.select.i.i, %bb.bf ]
  br label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.peel.next.i.i.preheader, %bb.bj
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bj ], [ 1, %.peel.next.i.i.preheader ] ; 5 uses
  %.026.i.i = phi i32 [ %.1.i.i, %bb.bj ], [ %.026.i.i.ph, %.peel.next.i.i.preheader ] ; 2 uses
  %i.lv = getelementptr i8, ptr %i.kq, i64 %indvars.iv.i.i
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !35
  %.not.i.i326 = icmp eq i8 %i.lw, 0
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.kr, i64 %indvars.iv.i.i ; 2 uses
  br i1 %.not.i.i326, label %bb.bg, label %.thread36.i.i

.thread36.i.i:                                    ; preds = %.peel.next.i.i
  store i8 1, ptr %.phi.trans.insert.i.i, align 1, !tbaa !35
  br label %bb.bh

bb.bg:                                            ; preds = %.peel.next.i.i
  %.pre31.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !tbaa !35
  %i.lx = icmp eq i8 %.pre31.i.i, 0
  br i1 %i.lx, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread36.i.i
  %i.ly = icmp samesign ult i64 %indvars.iv.i.i, 128
  br i1 %i.ly, label %bb.bi, label %map_position_value.exit.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.lz = getelementptr [2 x i8], ptr @map_position_value.ByteValTable, i64 %indvars.iv.i.i
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !96
  %i.mb = sext i16 %i.ma to i32
  br label %map_position_value.exit.i.i

map_position_value.exit.i.i:                      ; preds = %bb.bi, %bb.bh
  %.0.i.i.i327 = phi i32 [ 4, %bb.bh ], [ %i.mb, %bb.bi ]
  %i.mc = add i32 %.0.i.i.i327, %.026.i.i
  br label %bb.bj

bb.bj:                                            ; preds = %map_position_value.exit.i.i, %bb.bg
  %.1.i.i = phi i32 [ %i.mc, %map_position_value.exit.i.i ], [ %.026.i.i, %bb.bg ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 256
  br i1 %exitcond.not.i.i, label %.loopexit.i.i328, label %.peel.next.i.i, !llvm.loop !279

.loopexit.i.i328:                                 ; preds = %bb.bj
  store i32 %.1.i.i, ptr %i.kn, align 8, !tbaa !275
  %i.md = load <2 x i32>, ptr %i.kt, align 8, !tbaa !7
  %i.me = load <2 x i32>, ptr %i.ks, align 8, !tbaa !7
  %i.mf = and <2 x i32> %i.me, %i.md
  store <2 x i32> %i.mf, ptr %i.ks, align 8, !tbaa !7
  br label %alt_merge_opt_map_info.exit.i

alt_merge_opt_map_info.exit.i:                    ; preds = %.loopexit.i.i328, %bb.az, %bb.aw
  %i.mg = load i64, ptr %1, align 8, !tbaa !95
  %i.mh = load i64, ptr %6, align 8, !tbaa !95    ; 2 uses
  %i.mi = icmp ugt i64 %i.mg, %i.mh
  br i1 %i.mi, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %alt_merge_opt_map_info.exit.i
  store i64 %i.mh, ptr %1, align 8, !tbaa !95
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %alt_merge_opt_map_info.exit.i
  %i.mj = load i64, ptr %i.ku, align 8, !tbaa !94
  %i.mk = load i64, ptr %i.kv, align 8, !tbaa !94 ; 2 uses
  %i.ml = icmp ult i64 %i.mj, %i.mk
  br i1 %i.ml, label %bb.bm, label %alt_merge_node_opt_info.exit

bb.bm:                                            ; preds = %bb.bl
  store i64 %i.mk, ptr %i.ku, align 8, !tbaa !94
  br label %alt_merge_node_opt_info.exit

alt_merge_node_opt_info.exit:                     ; preds = %bb.av, %bb.bl, %bb.bm
  %i.mm = getelementptr i8, ptr %.0254, i64 16
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !35 ; 2 uses
  %.not314 = icmp eq ptr %i.mn, null
  br i1 %.not314, label %.critedge3, label %bb.at, !llvm.loop !281

.critedge3:                                       ; preds = %bb.at, %alt_merge_node_opt_info.exit
  %.lcssa645 = phi i32 [ %i.ky, %bb.at ], [ 0, %alt_merge_node_opt_info.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.ret1057

bb.bn:                                            ; preds = %tailrecurse
  %i.mo = getelementptr i8, ptr %.tr, i64 16      ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !152 ; 13 uses
  %10 = ptrtoint ptr %i.mp to i64                 ; 4 uses
  %i.mq = getelementptr i8, ptr %.tr, i64 8       ; 3 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !150 ; 6 uses
  %i.ms = ptrtoint ptr %i.mp to i64
  %i.mt = ptrtoint ptr %i.mr to i64
  %i.mu = sub i64 %i.ms, %i.mt                    ; 7 uses
  %i.mv = getelementptr i8, ptr %.tr, i64 24
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !35 ; 2 uses
  %i.mx = and i32 %i.mw, 2
  %.not309 = icmp eq i32 %i.mx, 0
  br i1 %.not309, label %bb.bo, label %bb.bx

bb.bo:                                            ; preds = %bb.bn
  %i.my = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !76 ; 3 uses
  %i.na = icmp ult ptr %i.mr, %i.mp
  br i1 %i.na, label %.lr.ph35.i, label %concat_opt_exact_info_str.exit

.lr.ph35.i:                                       ; preds = %bb.bo
  %i.nb = getelementptr i8, ptr %i.mz, i64 16
  %i.nc = getelementptr i8, ptr %i.mz, i64 20
  %i.nd = add i64 %i.a, 60
  br label %bb.bp

.loopexit.i:                                      ; preds = %.lr.ph.i, %middle.block905, %vec.epilog.middle.block922, %.preheader.i
  %.125.lcssa.i = phi i32 [ %.02433.i, %.preheader.i ], [ %i.os, %vec.epilog.middle.block922 ], [ %i.oi, %middle.block905 ], [ %i.pa, %.lr.ph.i ] ; 3 uses
  %.1.lcssa.i = phi ptr [ %.034.i, %.preheader.i ], [ %i.oq, %vec.epilog.middle.block922 ], [ %i.og, %middle.block905 ], [ %i.oy, %.lr.ph.i ] ; 2 uses
  %i.ne = icmp ult ptr %.1.lcssa.i, %i.mp
  %i.nf = icmp slt i32 %.125.lcssa.i, 24
  %i.ng = select i1 %i.ne, i1 %i.nf, i1 false
  br i1 %i.ng, label %bb.bp, label %concat_opt_exact_info_str.exit, !llvm.loop !282

bb.bp:                                            ; preds = %.loopexit.i, %.lr.ph35.i
  %.034.i = phi ptr [ %i.mr, %.lr.ph35.i ], [ %.1.lcssa.i, %.loopexit.i ] ; 11 uses
  %.02433.i = phi i32 [ 0, %.lr.ph35.i ], [ %.125.lcssa.i, %.loopexit.i ] ; 13 uses
  %.034.i888 = ptrtoint ptr %.034.i to i64        ; 3 uses
  %i.nh = load i32, ptr %i.nb, align 8, !tbaa !155 ; 2 uses
  %i.ni = load i32, ptr %i.nc, align 4, !tbaa !156
  %i.nj = icmp eq i32 %i.nh, %i.ni
  br i1 %i.nj, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.nk = tail call i32 @onigenc_mbclen(ptr noundef %.034.i, ptr noundef nonnull %i.mp, ptr noundef nonnull %i.mz) #22
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.nl = phi i32 [ %i.nk, %bb.bq ], [ %i.nh, %bb.bp ] ; 5 uses
  %i.nm = add i32 %i.nl, %.02433.i
  %i.nn = icmp sgt i32 %i.nm, 24
  br i1 %i.nn, label %concat_opt_exact_info_str.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.br
  %i.no = icmp sgt i32 %i.nl, 0
  %i.np = icmp ult ptr %.034.i, %i.mp
  %i.nq = and i1 %i.np, %i.no
  br i1 %i.nq, label %iter.check910, label %.loopexit.i

iter.check910:                                    ; preds = %.preheader.i
  %i.nr = xor i64 %.034.i888, -1
  %i.ns = add i64 %i.nr, %10
  %i.nt = add nsw i32 %i.nl, -1
  %i.nu = zext i32 %i.nt to i64
  %umin892 = call i64 @llvm.umin.i64(i64 %i.ns, i64 %i.nu) ; 3 uses
  %i.nv = add nuw nsw i64 %umin892, 1             ; 5 uses
  %min.iters.check893 = icmp samesign ult i64 %umin892, 3
  br i1 %min.iters.check893, label %.lr.ph.i.preheader, label %vector.scevcheck887

vector.scevcheck887:                              ; preds = %iter.check910
  %i.nw = xor i64 %.034.i888, -1
  %i.nx = add i64 %i.nw, %10
  %i.ny = add nsw i32 %i.nl, -1
  %i.nz = zext i32 %i.ny to i64
  %umin889 = call i64 @llvm.umin.i64(i64 %i.nx, i64 %i.nz)
  %i.oa = trunc nuw i64 %umin889 to i32
  %i.ob = add i32 %.02433.i, %i.oa
  %i.oc = icmp slt i32 %i.ob, %.02433.i
  br i1 %i.oc, label %.lr.ph.i.preheader, label %vector.memcheck890

vector.memcheck890:                               ; preds = %vector.scevcheck887
  %i.od = sext i32 %.02433.i to i64
  %i.oe = add i64 %i.nd, %i.od
  %i.of = sub i64 %.034.i888, %i.oe
  %diff.check891 = icmp ugt i64 %i.of, -32
  br i1 %diff.check891, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check894

vector.main.loop.iter.check894:                   ; preds = %vector.memcheck890
  %min.iters.check895 = icmp samesign ult i64 %umin892, 31
  br i1 %min.iters.check895, label %vec.epilog.ph914, label %vector.ph896

vector.ph896:                                     ; preds = %vector.main.loop.iter.check894
  %n.mod.vf897 = and i64 %i.nv, 28
  %n.vec898 = and i64 %i.nv, 8589934560           ; 5 uses
  %i.og = getelementptr i8, ptr %.034.i, i64 %n.vec898 ; 2 uses
  %i.oh = trunc i64 %n.vec898 to i32              ; 2 uses
  %i.oi = add i32 %.02433.i, %i.oh                ; 2 uses
  br label %vector.body899

vector.body899:                                   ; preds = %vector.body899, %vector.ph896
  %index900 = phi i64 [ 0, %vector.ph896 ], [ %index.next904, %vector.body899 ] ; 3 uses
  %next.gep901 = getelementptr i8, ptr %.034.i, i64 %index900 ; 2 uses
  %i.oj = trunc i64 %index900 to i32
  %i.ok = add i32 %.02433.i, %i.oj
  %i.ol = getelementptr i8, ptr %next.gep901, i64 16
  %wide.load902 = load <16 x i8>, ptr %next.gep901, align 1, !tbaa !35
  %wide.load903 = load <16 x i8>, ptr %i.ol, align 1, !tbaa !35
  %i.om = sext i32 %i.ok to i64
  %i.on = getelementptr i8, ptr %i.h, i64 %i.om   ; 2 uses
  %i.oo = getelementptr i8, ptr %i.on, i64 16
  store <16 x i8> %wide.load902, ptr %i.on, align 1, !tbaa !35
  store <16 x i8> %wide.load903, ptr %i.oo, align 1, !tbaa !35
  %index.next904 = add nuw i64 %index900, 32      ; 2 uses
  %i.op = icmp eq i64 %index.next904, %n.vec898
  br i1 %i.op, label %middle.block905, label %vector.body899, !llvm.loop !283

middle.block905:                                  ; preds = %vector.body899
  %cmp.n906 = icmp eq i64 %i.nv, %n.vec898
  br i1 %cmp.n906, label %.loopexit.i, label %vec.epilog.iter.check912

vec.epilog.iter.check912:                         ; preds = %middle.block905
  %min.epilog.iters.check913 = icmp eq i64 %n.mod.vf897, 0
  br i1 %min.epilog.iters.check913, label %.lr.ph.i.preheader, label %vec.epilog.ph914, !prof !265

vec.epilog.ph914:                                 ; preds = %vector.main.loop.iter.check894, %vec.epilog.iter.check912
  %vec.epilog.resume.val907 = phi i64 [ %n.vec898, %vec.epilog.iter.check912 ], [ 0, %vector.main.loop.iter.check894 ]
  %n.vec916 = and i64 %i.nv, 8589934588           ; 4 uses
  %i.oq = getelementptr i8, ptr %.034.i, i64 %n.vec916 ; 2 uses
  %i.or = trunc i64 %n.vec916 to i32              ; 2 uses
  %i.os = add i32 %.02433.i, %i.or                ; 2 uses
  br label %vec.epilog.vector.body917

vec.epilog.vector.body917:                        ; preds = %vec.epilog.vector.body917, %vec.epilog.ph914
  %index918 = phi i64 [ %vec.epilog.resume.val907, %vec.epilog.ph914 ], [ %index.next921, %vec.epilog.vector.body917 ] ; 3 uses
  %next.gep919 = getelementptr i8, ptr %.034.i, i64 %index918
  %i.ot = trunc i64 %index918 to i32
  %i.ou = add i32 %.02433.i, %i.ot
  %wide.load920 = load <4 x i8>, ptr %next.gep919, align 1, !tbaa !35
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr i8, ptr %i.h, i64 %i.ov
  store <4 x i8> %wide.load920, ptr %i.ow, align 1, !tbaa !35
  %index.next921 = add nuw i64 %index918, 4       ; 2 uses
  %i.ox = icmp eq i64 %index.next921, %n.vec916
  br i1 %i.ox, label %vec.epilog.middle.block922, label %vec.epilog.vector.body917, !llvm.loop !284

vec.epilog.middle.block922:                       ; preds = %vec.epilog.vector.body917
  %cmp.n923 = icmp eq i64 %i.nv, %n.vec916
  br i1 %cmp.n923, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck890, %vector.scevcheck887, %iter.check910, %vec.epilog.iter.check912, %vec.epilog.middle.block922
  %.131.i.ph = phi ptr [ %.034.i, %iter.check910 ], [ %.034.i, %vector.scevcheck887 ], [ %.034.i, %vector.memcheck890 ], [ %i.og, %vec.epilog.iter.check912 ], [ %i.oq, %vec.epilog.middle.block922 ]
  %.12530.i.ph = phi i32 [ %.02433.i, %iter.check910 ], [ %.02433.i, %vector.scevcheck887 ], [ %.02433.i, %vector.memcheck890 ], [ %i.oi, %vec.epilog.iter.check912 ], [ %i.os, %vec.epilog.middle.block922 ]
  %.02629.i.ph = phi i32 [ 0, %iter.check910 ], [ 0, %vector.scevcheck887 ], [ 0, %vector.memcheck890 ], [ %i.oh, %vec.epilog.iter.check912 ], [ %i.or, %vec.epilog.middle.block922 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.131.i = phi ptr [ %i.oy, %.lr.ph.i ], [ %.131.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.12530.i = phi i32 [ %i.pa, %.lr.ph.i ], [ %.12530.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02629.i = phi i32 [ %i.pd, %.lr.ph.i ], [ %.02629.i.ph, %.lr.ph.i.preheader ]
  %i.oy = getelementptr i8, ptr %.131.i, i64 1    ; 3 uses
  %i.oz = load i8, ptr %.131.i, align 1, !tbaa !35
  %i.pa = add i32 %.12530.i, 1                    ; 2 uses
  %i.pb = sext i32 %.12530.i to i64
  %i.pc = getelementptr i8, ptr %i.h, i64 %i.pb
  store i8 %i.oz, ptr %i.pc, align 1, !tbaa !35
  %i.pd = add nuw nsw i32 %.02629.i, 1            ; 2 uses
  %i.pe = icmp slt i32 %i.pd, %i.nl
  %i.pf = icmp ult ptr %i.oy, %i.mp
  %i.pg = and i1 %i.pf, %i.pe
  br i1 %i.pg, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !285

concat_opt_exact_info_str.exit:                   ; preds = %.loopexit.i, %bb.br, %bb.bo
  %.024.lcssa.i = phi i32 [ 0, %bb.bo ], [ %.125.lcssa.i, %.loopexit.i ], [ %.02433.i, %bb.br ] ; 2 uses
  store i32 %.024.lcssa.i, ptr %i.g, align 8, !tbaa !92
  store i32 0, ptr %i.f, align 4, !tbaa !286
  %.not310 = icmp eq i64 %i.mu, 0
  br i1 %.not310, label %add_char_opt_map_info.exit, label %bb.bs

bb.bs:                                            ; preds = %concat_opt_exact_info_str.exit
  %i.ph = load ptr, ptr %i.mq, align 8, !tbaa !150
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !35  ; 3 uses
  %i.pj = load ptr, ptr %i.my, align 8, !tbaa !76
  %i.pk = getelementptr i8, ptr %1, i64 244
  %i.pl = zext i8 %i.pi to i64                    ; 2 uses
  %i.pm = getelementptr i8, ptr %i.pk, i64 %i.pl  ; 2 uses
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !35
  %i.po = icmp eq i8 %i.pn, 0
  br i1 %i.po, label %bb.bt, label %add_char_opt_map_info.exit

bb.bt:                                            ; preds = %bb.bs
  store i8 1, ptr %i.pm, align 1, !tbaa !35
  %i.pp = icmp sgt i8 %i.pi, -1
  br i1 %i.pp, label %bb.bu, label %map_position_value.exit.i

bb.bu:                                            ; preds = %bb.bt
  %i.pq = icmp eq i8 %i.pi, 0
  br i1 %i.pq, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.pr = getelementptr i8, ptr %i.pj, i64 20
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !156
  %i.pt = icmp sgt i32 %i.ps, 1
  br i1 %i.pt, label %map_position_value.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.pu = getelementptr [2 x i8], ptr @map_position_value.ByteValTable, i64 %i.pl
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !96
  %i.pw = sext i16 %i.pv to i32
  br label %map_position_value.exit.i

map_position_value.exit.i:                        ; preds = %bb.bw, %bb.bv, %bb.bt
  %.0.i.i329 = phi i32 [ 20, %bb.bv ], [ %i.pw, %bb.bw ], [ 4, %bb.bt ]
  %i.px = getelementptr i8, ptr %1, i64 240       ; 2 uses
  %i.py = load i32, ptr %i.px, align 8, !tbaa !275
  %i.pz = add i32 %i.py, %.0.i.i329
  store i32 %i.pz, ptr %i.px, align 8, !tbaa !275
  br label %add_char_opt_map_info.exit

add_char_opt_map_info.exit:                       ; preds = %map_position_value.exit.i, %bb.bs, %concat_opt_exact_info_str.exit
  store i64 %i.mu, ptr %1, align 8, !tbaa !95
  %i.qa = getelementptr i8, ptr %1, i64 8
  store i64 %i.mu, ptr %i.qa, align 8, !tbaa !94
  br label %bb.ce

bb.bx:                                            ; preds = %bb.bn
  %i.qb = and i32 %i.mw, 4
  %.not311 = icmp eq i32 %i.qb, 0
  %i.qc = getelementptr i8, ptr %2, i64 16        ; 3 uses
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !76 ; 4 uses
  br i1 %.not311, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qe = tail call i32 @onigenc_strlen(ptr noundef %i.qd, ptr noundef %i.mr, ptr noundef %i.mp) #22
  %i.qf = load ptr, ptr %i.qc, align 8, !tbaa !76
  %i.qg = getelementptr i8, ptr %i.qf, i64 16
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !155
  %i.qi = sext i32 %i.qh to i64
  %i.qj = sext i32 %i.qe to i64
  %i.qk = mul nsw i64 %i.qi, %i.qj
  br label %.thread372

bb.bz:                                            ; preds = %bb.bx
  %i.ql = icmp ult ptr %i.mr, %i.mp
  br i1 %i.ql, label %.lr.ph35.i331, label %concat_opt_exact_info_str.exit342

.lr.ph35.i331:                                    ; preds = %bb.bz
  %i.qm = getelementptr i8, ptr %i.qd, i64 16
  %i.qn = getelementptr i8, ptr %i.qd, i64 20
  %i.qo = add i64 %i.a, 60
  br label %bb.ca

.loopexit.i335:                                   ; preds = %.lr.ph.i338, %middle.block865, %vec.epilog.middle.block882, %.preheader.i334
  %.125.lcssa.i336 = phi i32 [ %.02433.i333, %.preheader.i334 ], [ %i.sd, %vec.epilog.middle.block882 ], [ %i.rt, %middle.block865 ], [ %i.sl, %.lr.ph.i338 ] ; 3 uses
  %.1.lcssa.i337 = phi ptr [ %.034.i332, %.preheader.i334 ], [ %i.sb, %vec.epilog.middle.block882 ], [ %i.rr, %middle.block865 ], [ %i.sj, %.lr.ph.i338 ] ; 2 uses
  %i.qp = icmp ult ptr %.1.lcssa.i337, %i.mp
  %i.qq = icmp slt i32 %.125.lcssa.i336, 24
  %i.qr = select i1 %i.qp, i1 %i.qq, i1 false
  br i1 %i.qr, label %bb.ca, label %concat_opt_exact_info_str.exit342, !llvm.loop !282

bb.ca:                                            ; preds = %.loopexit.i335, %.lr.ph35.i331
  %.034.i332 = phi ptr [ %i.mr, %.lr.ph35.i331 ], [ %.1.lcssa.i337, %.loopexit.i335 ] ; 11 uses
  %.02433.i333 = phi i32 [ 0, %.lr.ph35.i331 ], [ %.125.lcssa.i336, %.loopexit.i335 ] ; 13 uses
  %.034.i332848 = ptrtoint ptr %.034.i332 to i64  ; 3 uses
  %i.qs = load i32, ptr %i.qm, align 8, !tbaa !155 ; 2 uses
  %i.qt = load i32, ptr %i.qn, align 4, !tbaa !156
  %i.qu = icmp eq i32 %i.qs, %i.qt
  br i1 %i.qu, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qv = tail call i32 @onigenc_mbclen(ptr noundef %.034.i332, ptr noundef nonnull %i.mp, ptr noundef nonnull %i.qd) #22
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.qw = phi i32 [ %i.qv, %bb.cb ], [ %i.qs, %bb.ca ] ; 5 uses
  %i.qx = add i32 %i.qw, %.02433.i333
  %i.qy = icmp sgt i32 %i.qx, 24
  br i1 %i.qy, label %concat_opt_exact_info_str.exit342, label %.preheader.i334

.preheader.i334:                                  ; preds = %bb.cc
  %i.qz = icmp sgt i32 %i.qw, 0
  %i.ra = icmp ult ptr %.034.i332, %i.mp
  %i.rb = and i1 %i.ra, %i.qz
  br i1 %i.rb, label %iter.check870, label %.loopexit.i335

iter.check870:                                    ; preds = %.preheader.i334
  %i.rc = xor i64 %.034.i332848, -1
  %i.rd = add i64 %i.rc, %10
  %i.re = add nsw i32 %i.qw, -1
  %i.rf = zext i32 %i.re to i64
  %umin852 = call i64 @llvm.umin.i64(i64 %i.rd, i64 %i.rf) ; 3 uses
  %i.rg = add nuw nsw i64 %umin852, 1             ; 5 uses
  %min.iters.check853 = icmp samesign ult i64 %umin852, 3
  br i1 %min.iters.check853, label %.lr.ph.i338.preheader, label %vector.scevcheck847

vector.scevcheck847:                              ; preds = %iter.check870
  %i.rh = xor i64 %.034.i332848, -1
  %i.ri = add i64 %i.rh, %10
  %i.rj = add nsw i32 %i.qw, -1
  %i.rk = zext i32 %i.rj to i64
  %umin849 = call i64 @llvm.umin.i64(i64 %i.ri, i64 %i.rk)
  %i.rl = trunc nuw i64 %umin849 to i32
  %i.rm = add i32 %.02433.i333, %i.rl
  %i.rn = icmp slt i32 %i.rm, %.02433.i333
  br i1 %i.rn, label %.lr.ph.i338.preheader, label %vector.memcheck850

vector.memcheck850:                               ; preds = %vector.scevcheck847
  %i.ro = sext i32 %.02433.i333 to i64
  %i.rp = add i64 %i.qo, %i.ro
  %i.rq = sub i64 %.034.i332848, %i.rp
  %diff.check851 = icmp ugt i64 %i.rq, -32
  br i1 %diff.check851, label %.lr.ph.i338.preheader, label %vector.main.loop.iter.check854

vector.main.loop.iter.check854:                   ; preds = %vector.memcheck850
  %min.iters.check855 = icmp samesign ult i64 %umin852, 31
  br i1 %min.iters.check855, label %vec.epilog.ph874, label %vector.ph856

vector.ph856:                                     ; preds = %vector.main.loop.iter.check854
  %n.mod.vf857 = and i64 %i.rg, 28
  %n.vec858 = and i64 %i.rg, 8589934560           ; 5 uses
  %i.rr = getelementptr i8, ptr %.034.i332, i64 %n.vec858 ; 2 uses
  %i.rs = trunc i64 %n.vec858 to i32              ; 2 uses
  %i.rt = add i32 %.02433.i333, %i.rs             ; 2 uses
  br label %vector.body859

vector.body859:                                   ; preds = %vector.body859, %vector.ph856
  %index860 = phi i64 [ 0, %vector.ph856 ], [ %index.next864, %vector.body859 ] ; 3 uses
  %next.gep861 = getelementptr i8, ptr %.034.i332, i64 %index860 ; 2 uses
  %i.ru = trunc i64 %index860 to i32
  %i.rv = add i32 %.02433.i333, %i.ru
  %i.rw = getelementptr i8, ptr %next.gep861, i64 16
  %wide.load862 = load <16 x i8>, ptr %next.gep861, align 1, !tbaa !35
  %wide.load863 = load <16 x i8>, ptr %i.rw, align 1, !tbaa !35
  %i.rx = sext i32 %i.rv to i64
  %i.ry = getelementptr i8, ptr %i.h, i64 %i.rx   ; 2 uses
  %i.rz = getelementptr i8, ptr %i.ry, i64 16
  store <16 x i8> %wide.load862, ptr %i.ry, align 1, !tbaa !35
  store <16 x i8> %wide.load863, ptr %i.rz, align 1, !tbaa !35
  %index.next864 = add nuw i64 %index860, 32      ; 2 uses
  %i.sa = icmp eq i64 %index.next864, %n.vec858
  br i1 %i.sa, label %middle.block865, label %vector.body859, !llvm.loop !287

middle.block865:                                  ; preds = %vector.body859
  %cmp.n866 = icmp eq i64 %i.rg, %n.vec858
  br i1 %cmp.n866, label %.loopexit.i335, label %vec.epilog.iter.check872

vec.epilog.iter.check872:                         ; preds = %middle.block865
  %min.epilog.iters.check873 = icmp eq i64 %n.mod.vf857, 0
  br i1 %min.epilog.iters.check873, label %.lr.ph.i338.preheader, label %vec.epilog.ph874, !prof !265

vec.epilog.ph874:                                 ; preds = %vector.main.loop.iter.check854, %vec.epilog.iter.check872
  %vec.epilog.resume.val867 = phi i64 [ %n.vec858, %vec.epilog.iter.check872 ], [ 0, %vector.main.loop.iter.check854 ]
  %n.vec876 = and i64 %i.rg, 8589934588           ; 4 uses
  %i.sb = getelementptr i8, ptr %.034.i332, i64 %n.vec876 ; 2 uses
  %i.sc = trunc i64 %n.vec876 to i32              ; 2 uses
  %i.sd = add i32 %.02433.i333, %i.sc             ; 2 uses
  br label %vec.epilog.vector.body877

vec.epilog.vector.body877:                        ; preds = %vec.epilog.vector.body877, %vec.epilog.ph874
  %index878 = phi i64 [ %vec.epilog.resume.val867, %vec.epilog.ph874 ], [ %index.next881, %vec.epilog.vector.body877 ] ; 3 uses
  %next.gep879 = getelementptr i8, ptr %.034.i332, i64 %index878
  %i.se = trunc i64 %index878 to i32
  %i.sf = add i32 %.02433.i333, %i.se
  %wide.load880 = load <4 x i8>, ptr %next.gep879, align 1, !tbaa !35
  %i.sg = sext i32 %i.sf to i64
  %i.sh = getelementptr i8, ptr %i.h, i64 %i.sg
  store <4 x i8> %wide.load880, ptr %i.sh, align 1, !tbaa !35
  %index.next881 = add nuw i64 %index878, 4       ; 2 uses
  %i.si = icmp eq i64 %index.next881, %n.vec876
  br i1 %i.si, label %vec.epilog.middle.block882, label %vec.epilog.vector.body877, !llvm.loop !288

vec.epilog.middle.block882:                       ; preds = %vec.epilog.vector.body877
  %cmp.n883 = icmp eq i64 %i.rg, %n.vec876
  br i1 %cmp.n883, label %.loopexit.i335, label %.lr.ph.i338.preheader

.lr.ph.i338.preheader:                            ; preds = %vector.memcheck850, %vector.scevcheck847, %iter.check870, %vec.epilog.iter.check872, %vec.epilog.middle.block882
  %.131.i339.ph = phi ptr [ %.034.i332, %iter.check870 ], [ %.034.i332, %vector.scevcheck847 ], [ %.034.i332, %vector.memcheck850 ], [ %i.rr, %vec.epilog.iter.check872 ], [ %i.sb, %vec.epilog.middle.block882 ]
  %.12530.i340.ph = phi i32 [ %.02433.i333, %iter.check870 ], [ %.02433.i333, %vector.scevcheck847 ], [ %.02433.i333, %vector.memcheck850 ], [ %i.rt, %vec.epilog.iter.check872 ], [ %i.sd, %vec.epilog.middle.block882 ]
  %.02629.i341.ph = phi i32 [ 0, %iter.check870 ], [ 0, %vector.scevcheck847 ], [ 0, %vector.memcheck850 ], [ %i.rs, %vec.epilog.iter.check872 ], [ %i.sc, %vec.epilog.middle.block882 ]
  br label %.lr.ph.i338

.lr.ph.i338:                                      ; preds = %.lr.ph.i338.preheader, %.lr.ph.i338
  %.131.i339 = phi ptr [ %i.sj, %.lr.ph.i338 ], [ %.131.i339.ph, %.lr.ph.i338.preheader ] ; 2 uses
  %.12530.i340 = phi i32 [ %i.sl, %.lr.ph.i338 ], [ %.12530.i340.ph, %.lr.ph.i338.preheader ] ; 2 uses
  %.02629.i341 = phi i32 [ %i.so, %.lr.ph.i338 ], [ %.02629.i341.ph, %.lr.ph.i338.preheader ]
  %i.sj = getelementptr i8, ptr %.131.i339, i64 1 ; 3 uses
  %i.sk = load i8, ptr %.131.i339, align 1, !tbaa !35
  %i.sl = add i32 %.12530.i340, 1                 ; 2 uses
  %i.sm = sext i32 %.12530.i340 to i64
  %i.sn = getelementptr i8, ptr %i.h, i64 %i.sm
  store i8 %i.sk, ptr %i.sn, align 1, !tbaa !35
  %i.so = add nuw nsw i32 %.02629.i341, 1         ; 2 uses
  %i.sp = icmp slt i32 %i.so, %i.qw
  %i.sq = icmp ult ptr %i.sj, %i.mp
  %i.sr = and i1 %i.sq, %i.sp
  br i1 %i.sr, label %.lr.ph.i338, label %.loopexit.i335, !llvm.loop !289

concat_opt_exact_info_str.exit342:                ; preds = %.loopexit.i335, %bb.cc, %bb.bz
  %.024.lcssa.i330 = phi i32 [ 0, %bb.bz ], [ %.125.lcssa.i336, %.loopexit.i335 ], [ %.02433.i333, %bb.cc ]
  store i32 %.024.lcssa.i330, ptr %i.g, align 8, !tbaa !92
  store i32 1, ptr %i.f, align 4, !tbaa !286
  %.not312 = icmp eq i64 %i.mu, 0
  br i1 %.not312, label %.thread372, label %bb.cd

bb.cd:                                            ; preds = %concat_opt_exact_info_str.exit342
  %i.ss = load ptr, ptr %i.mq, align 8, !tbaa !150
  %i.st = load ptr, ptr %i.mo, align 8, !tbaa !152
  %i.su = load ptr, ptr %i.qc, align 8, !tbaa !76
  %i.sv = getelementptr i8, ptr %2, i64 28
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !81
  %i.sx = tail call fastcc i32 @add_char_amb_opt_map_info(ptr noundef nonnull %i.q, ptr noundef %i.ss, ptr noundef %i.st, ptr noundef %i.su, i32 noundef %i.sw) ; 2 uses
  %.not313 = icmp eq i32 %i.sx, 0
  br i1 %.not313, label %.thread372, label %common.ret1057

.thread372:                                       ; preds = %bb.by, %bb.cd, %concat_opt_exact_info_str.exit342
  %.0256 = phi i64 [ %i.qk, %bb.by ], [ %i.mu, %bb.cd ], [ 0, %concat_opt_exact_info_str.exit342 ]
  store i64 %i.mu, ptr %1, align 8, !tbaa !95
  %i.sy = getelementptr i8, ptr %1, i64 8
  store i64 %.0256, ptr %i.sy, align 8, !tbaa !94
  %.pre691 = load i32, ptr %i.g, align 8, !tbaa !90
  br label %bb.ce

bb.ce:                                            ; preds = %.thread372, %add_char_opt_map_info.exit
  %i.sz = phi i32 [ %.pre691, %.thread372 ], [ %.024.lcssa.i, %add_char_opt_map_info.exit ]
  %i.ta = sext i32 %i.sz to i64
  %i.tb = icmp eq i64 %i.mu, %i.ta
  br i1 %i.tb, label %bb.cf, label %common.ret1057

bb.cf:                                            ; preds = %bb.ce
  %i.tc = getelementptr i8, ptr %1, i64 48
  store i32 1, ptr %i.tc, align 8, !tbaa !259
  br label %common.ret1057

bb.cg:                                            ; preds = %tailrecurse
  %i.td = getelementptr i8, ptr %.tr, i64 40
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !189
  %.not304 = icmp eq ptr %i.te, null
  br i1 %.not304, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.tf = getelementptr i8, ptr %.tr, i64 4       ; 2 uses
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !192
  %i.th = and i32 %i.tg, 1
  %.not305 = icmp eq i32 %i.th, 0
  br i1 %.not305, label %.preheader, label %bb.cj

.preheader:                                       ; preds = %bb.ch
  %i.ti = getelementptr i8, ptr %.tr, i64 8       ; 2 uses
  %i.tj = getelementptr i8, ptr %1, i64 244       ; 3 uses
  %i.tk = getelementptr i8, ptr %1, i64 240       ; 4 uses
  %i.tl = load i32, ptr %i.ti, align 8, !tbaa !7
  %i.tm = and i32 %i.tl, 1
  %.not306.peel = icmp eq i32 %i.tm, 0
  br i1 %.not306.peel, label %.peel.next676.preheader, label %bb.ci

.peel.next676.preheader:                          ; preds = %bb.ci, %map_position_value.exit.i343.peel, %.preheader
  br label %.peel.next676

bb.ci:                                            ; preds = %.preheader
  %i.tn = load i8, ptr %i.tj, align 4, !tbaa !35
  %i.to = icmp eq i8 %i.tn, 0
  br i1 %i.to, label %map_position_value.exit.i343.peel, label %.peel.next676.preheader

map_position_value.exit.i343.peel:                ; preds = %bb.ci
  %i.tp = getelementptr i8, ptr %2, i64 16
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !76
  store i8 1, ptr %i.tj, align 4, !tbaa !35
  %i.tr = getelementptr i8, ptr %i.tq, i64 20
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !156
  %i.tt = icmp sgt i32 %i.ts, 1
  %spec.select = select i1 %i.tt, i32 20, i32 5
  %i.tu = load i32, ptr %i.tk, align 8, !tbaa !275
  %i.tv = add i32 %i.tu, %spec.select
  store i32 %i.tv, ptr %i.tk, align 8, !tbaa !275
  br label %.peel.next676.preheader

bb.cj:                                            ; preds = %bb.ch, %bb.cg
  %i.tw = getelementptr i8, ptr %2, i64 16
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !76 ; 2 uses
  %i.ty = getelementptr i8, ptr %i.tx, i64 20
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !156
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr i8, ptr %i.tx, i64 16
  %i.uc = load i32, ptr %i.ub, align 8, !tbaa !155
  %i.ud = sext i32 %i.uc to i64
  store i64 %i.ua, ptr %1, align 8, !tbaa !95
  %i.ue = getelementptr i8, ptr %1, i64 8
  store i64 %i.ud, ptr %i.ue, align 8, !tbaa !94
  br label %common.ret1057

.peel.next676:                                    ; preds = %.peel.next676.preheader, %add_char_opt_map_info.exit345
  %indvars.iv671 = phi i64 [ %indvars.iv.next672, %add_char_opt_map_info.exit345 ], [ 1, %.peel.next676.preheader ] ; 6 uses
  %i.uf = trunc nuw nsw i64 %indvars.iv671 to i32
  %i.ug = lshr i64 %indvars.iv671, 5
  %i.uh = and i64 %i.ug, 134217727
  %i.ui = getelementptr [4 x i8], ptr %i.ti, i64 %i.uh
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !7
  %i.uk = and i32 %i.uf, 31
end_hunk_1
begin_hunk_2_@optimize_node_left:bb.a
  store i64 %i.aai, ptr %i.b, align 8, !tbaa !34
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.aak = phi i64 [ %i.aai, %bb.do ], [ %i.aah, %bb.dn ]
  %i.aal = load i64, ptr %i.c, align 8, !tbaa !34 ; 2 uses
  %i.aam = load i64, ptr %i.e, align 8, !tbaa !34 ; 3 uses
  %i.aan = icmp ult i64 %i.aal, %i.aam
  br i1 %i.aan, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  store i64 %i.aam, ptr %i.c, align 8, !tbaa !34
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dp, %bb.dq
  %i.aao = phi i64 [ %i.aal, %bb.dp ], [ %i.aam, %bb.dq ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aap = load i32, ptr %i.zr, align 8, !tbaa !171
  %i.aaq = sext i32 %i.aap to i64
  %i.aar = icmp slt i64 %indvars.iv.next, %i.aaq
  br i1 %i.aar, label %.lr.ph634, label %.thread375.sink.split, !llvm.loop !296

.thread375.sink.split:                            ; preds = %bb.dr, %.preheader388.._crit_edge_crit_edge, %bb.dj
  %.sink800 = phi i64 [ 0, %bb.dj ], [ %.pre685, %.preheader388.._crit_edge_crit_edge ], [ %i.aak, %bb.dr ]
  %.sink = phi i64 [ -1, %bb.dj ], [ %.pre686, %.preheader388.._crit_edge_crit_edge ], [ %i.aao, %bb.dr ]
  store i64 %.sink800, ptr %1, align 8, !tbaa !95
  %i.aas = getelementptr i8, ptr %1, i64 8
  store i64 %.sink, ptr %i.aas, align 8, !tbaa !94
  br label %.thread375

.thread375:                                       ; preds = %bb.dm, %.lr.ph634, %.thread375.sink.split, %bb.dl, %bb.dk
  %.7 = phi i32 [ 0, %.thread375.sink.split ], [ %i.zq, %bb.dl ], [ %i.zk, %bb.dk ], [ %i.aaa, %.lr.ph634 ], [ %i.aag, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %common.ret1057

bb.ds:                                            ; preds = %tailrecurse
  %i.aat = getelementptr i8, ptr %.tr, i64 4
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !35
  %i.aav = and i32 %i.aau, 128
  %.not291 = icmp eq i32 %i.aav, 0
  br i1 %.not291, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  store i64 0, ptr %1, align 8, !tbaa !95
  %i.aaw = getelementptr i8, ptr %1, i64 8
  store i64 -1, ptr %i.aaw, align 8, !tbaa !94
  br label %common.ret1057

common.ret1057:                                   ; preds = %.split, %bb.dc, %is_left_anchor.exit.i, %bb.cd, %bb.fd, %is_set_opt_anc_info.exit, %bb.fb, %bb.fa, %bb.ez, %bb.ex, %bb.cj, %.loopexit678, %bb.cf, %bb.ce, %bb.ep, %.thread375, %bb.dt, %bb.di, %bb.db, %bb.da, %.loopexit, %.critedge3, %.critedge, %tailrecurse, %.split6, %bb.eq, %bb.er, %bb.du
  %common.ret1057.op = phi i32 [ %i.ahe, %bb.er ], [ %i.abe, %bb.du ], [ %i.ahu, %bb.fb ], [ %i.ahu, %bb.ez ], [ %i.ahu, %bb.fa ], [ %.lcssa644, %.critedge ], [ %.lcssa645, %.critedge3 ], [ 0, %bb.cj ], [ 0, %bb.ce ], [ 0, %.loopexit ], [ 0, %bb.da ], [ 0, %.split ], [ %i.sx, %bb.cd ], [ %i.yg, %bb.di ], [ 0, %bb.db ], [ %.7, %.thread375 ], [ 0, %bb.dt ], [ 0, %bb.dc ], [ %i.abh, %bb.ep ], [ %i.ahu, %is_set_opt_anc_info.exit ], [ 0, %bb.cf ], [ 0, %.loopexit678 ], [ 0, %bb.fd ], [ 0, %is_left_anchor.exit.i ], [ 0, %bb.ex ], [ 0, %.split6 ], [ -6, %tailrecurse ], [ 0, %bb.eq ]
  ret i32 %common.ret1057.op

bb.du:                                            ; preds = %bb.ds
  %i.aax = getelementptr i8, ptr %2, i64 24       ; 3 uses
  %i.aay = load i32, ptr %i.aax, align 8, !tbaa !79
  %i.aaz = getelementptr i8, ptr %.tr, i64 32     ; 2 uses
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !35
  %i.abb = getelementptr i8, ptr %i.aba, i64 16
  %i.abc = load i32, ptr %i.abb, align 8, !tbaa !35
  store i32 %i.abc, ptr %i.aax, align 8, !tbaa !79
  %i.abd = load ptr, ptr %i.aaz, align 8, !tbaa !35
  %i.abe = tail call fastcc i32 @optimize_node_left(ptr noundef %i.abd, ptr noundef %1, ptr noundef %2)
  store i32 %i.aay, ptr %i.aax, align 8, !tbaa !79
  br label %common.ret1057

bb.dv:                                            ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.abf = getelementptr i8, ptr %.tr, i64 8      ; 2 uses
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !146
  %i.abh = call fastcc i32 @optimize_node_left(ptr noundef %i.abg, ptr noundef %8, ptr noundef %2) ; 2 uses
  %.not284 = icmp eq i32 %i.abh, 0
  br i1 %.not284, label %bb.dw, label %bb.ep

bb.dw:                                            ; preds = %bb.dv
  %i.abi = getelementptr i8, ptr %.tr, i64 16     ; 3 uses
  %i.abj = load i32, ptr %i.abi, align 8, !tbaa !145 ; 3 uses
  %i.abk = icmp eq i32 %i.abj, 0
  br i1 %i.abk, label %bb.dx, label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  %i.abl = getelementptr i8, ptr %.tr, i64 20
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !143 ; 2 uses
  %i.abn = icmp eq i32 %i.abm, -1
  br i1 %i.abn, label %bb.dy, label %distance_multiply.exit

bb.dy:                                            ; preds = %bb.dx
  %i.abo = load i64, ptr %i.s, align 8, !tbaa !297
  %i.abp = icmp eq i64 %i.abo, 0
  br i1 %i.abp, label %bb.dz, label %distance_multiply.exit.thread

bb.dz:                                            ; preds = %bb.dy
  %i.abq = load ptr, ptr %i.abf, align 8, !tbaa !146
  %i.abr = load i32, ptr %i.abq, align 8, !tbaa !35
  %i.abs = icmp eq i32 %i.abr, 3
  br i1 %i.abs, label %bb.ea, label %distance_multiply.exit.thread

bb.ea:                                            ; preds = %bb.dz
  %i.abt = getelementptr i8, ptr %.tr, i64 24
  %i.abu = load i32, ptr %i.abt, align 8, !tbaa !141
  %.not288 = icmp eq i32 %i.abu, 0
  br i1 %.not288, label %distance_multiply.exit.thread, label %distance_multiply.exit.thread.sink.split

distance_multiply.exit.thread.sink.split:         ; preds = %bb.ea
  %i.abv = getelementptr i8, ptr %2, i64 24
  %i.abw = load i32, ptr %i.abv, align 8, !tbaa !79
  %i.abx = and i32 %i.abw, 4
  %.not289 = icmp eq i32 %i.abx, 0
  %i.aby = getelementptr i8, ptr %1, i64 16       ; 2 uses
  %i.abz = load i32, ptr %i.aby, align 8, !tbaa !105
  %. = select i1 %.not289, i32 16384, i32 32768
  %i.aca = or i32 %i.abz, %.
  store i32 %i.aca, ptr %i.aby, align 8, !tbaa !105
  br label %distance_multiply.exit.thread

bb.eb:                                            ; preds = %bb.dw
  %i.acb = icmp sgt i32 %i.abj, 0
  br i1 %i.acb, label %bb.ec, label %..thread378_crit_edge

..thread378_crit_edge:                            ; preds = %bb.eb
  %.phi.trans.insert.phi.trans.insert = getelementptr i8, ptr %.tr, i64 20
  %.pre684.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !143
  br label %.thread378

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull readonly align 8 dereferenceable(504) %8, i64 504, i1 false), !tbaa.struct !277
  %i.acc = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.acd = load i32, ptr %i.acc, align 8, !tbaa !90
  %i.ace = icmp slt i32 %i.acd, 1
  %i.acf = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.acg = load i32, ptr %i.acf, align 8          ; 2 uses
  %i.ach = icmp eq i32 %i.acg, 0
  %or.cond.not805 = select i1 %i.ace, i1 true, i1 %i.ach
  %.pre682 = load i32, ptr %i.abi, align 8, !tbaa !145 ; 3 uses
  %.not285627 = icmp slt i32 %.pre682, 2
  %or.cond801 = select i1 %or.cond.not805, i1 true, i1 %.not285627
  br i1 %or.cond801, label %.critedge5.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ec
  %i.aci = getelementptr i8, ptr %2, i64 16
  %i.acj = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.ack = getelementptr inbounds nuw i8, ptr %8, i64 60 ; 4 uses
  %i.acl = getelementptr i8, ptr %1, i64 48
  %i.acm = getelementptr i8, ptr %1, i64 40       ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.aco = getelementptr i8, ptr %1, i64 44
  %.val322.pre = load i32, ptr %i.g, align 8, !tbaa !92
  %i.acp = add i64 %9, 59
  %i.acq = add i64 %i.a, 60
  %i.acr = add i64 %9, 59
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph, %concat_opt_exact_info.exit
  %i.acs = phi i32 [ %.pre682, %.lr.ph ], [ %i.afo, %concat_opt_exact_info.exit ] ; 2 uses
  %i.act = phi i32 [ %i.acg, %.lr.ph ], [ %i.afp, %concat_opt_exact_info.exit ] ; 2 uses
  %.val322 = phi i32 [ %.val322.pre, %.lr.ph ], [ %.val322679, %concat_opt_exact_info.exit ] ; 4 uses
  %.0257628 = phi i32 [ 2, %.lr.ph ], [ %i.afq, %concat_opt_exact_info.exit ] ; 2 uses
  %i.acu = icmp slt i32 %.val322, 24
  br i1 %i.acu, label %bb.ee, label %.critedge5

bb.ee:                                            ; preds = %bb.ed
  %i.acv = load ptr, ptr %i.aci, align 8, !tbaa !76 ; 3 uses
  %i.acw = load i32, ptr %i.f, align 4, !tbaa !93 ; 2 uses
  %i.acx = icmp slt i32 %i.acw, 0
  %i.acy = load i32, ptr %i.acj, align 4, !tbaa !93 ; 2 uses
  br i1 %i.acx, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i32 %i.acy, ptr %i.f, align 4, !tbaa !93
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  %.not.i356 = icmp eq i32 %i.acw, %i.acy
  br i1 %.not.i356, label %bb.eh, label %concat_opt_exact_info.exit

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.acz = load i32, ptr %i.acc, align 8, !tbaa !92
  %i.ada = sext i32 %i.acz to i64                 ; 3 uses
  %i.adb = getelementptr i8, ptr %i.ack, i64 %i.ada ; 6 uses
  %i.adc = icmp ult ptr %i.ack, %i.adb
  br i1 %i.adc, label %.lr.ph51.i, label %._crit_edge.i

.lr.ph51.i:                                       ; preds = %bb.eh
  %i.add = getelementptr i8, ptr %i.acv, i64 16
  %i.ade = getelementptr i8, ptr %i.acv, i64 20
  %i.adf = add i64 %i.acp, %i.ada
  %i.adg = add i64 %i.acr, %i.ada
  br label %bb.ei

.loopexit.i362:                                   ; preds = %.lr.ph.i364, %middle.block, %vec.epilog.middle.block, %.preheader.i361
  %.139.lcssa.i = phi ptr [ %.03849.i, %.preheader.i361 ], [ %i.aer, %vec.epilog.middle.block ], [ %i.aeh, %middle.block ], [ %i.aex, %.lr.ph.i364 ] ; 3 uses
  %.1.lcssa.i363 = phi i32 [ %.050.i, %.preheader.i361 ], [ %i.aeq, %vec.epilog.middle.block ], [ %i.aeg, %middle.block ], [ %i.aez, %.lr.ph.i364 ] ; 2 uses
  %i.adh = icmp ult ptr %.139.lcssa.i, %i.adb
  br i1 %i.adh, label %bb.ei, label %._crit_edge.i.loopexit, !llvm.loop !261

bb.ei:                                            ; preds = %.loopexit.i362, %.lr.ph51.i
  %.050.i = phi i32 [ %.val322, %.lr.ph51.i ], [ %.1.lcssa.i363, %.loopexit.i362 ] ; 13 uses
  %.03849.i = phi ptr [ %i.ack, %.lr.ph51.i ], [ %.139.lcssa.i, %.loopexit.i362 ] ; 12 uses
  %.03849.i831 = ptrtoint ptr %.03849.i to i64    ; 3 uses
  %i.adi = load i32, ptr %i.add, align 8, !tbaa !155 ; 2 uses
  %i.adj = load i32, ptr %i.ade, align 4, !tbaa !156
  %i.adk = icmp eq i32 %i.adi, %i.adj
  br i1 %i.adk, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.adl = call i32 @onigenc_mbclen(ptr noundef %.03849.i, ptr noundef nonnull %i.adb, ptr noundef nonnull %i.acv) #22
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.adm = phi i32 [ %i.adl, %bb.ej ], [ %i.adi, %bb.ei ] ; 5 uses
  %i.adn = add i32 %i.adm, %.050.i
  %i.ado = icmp sgt i32 %i.adn, 24
  br i1 %i.ado, label %._crit_edge.i.loopexit, label %.preheader.i361

.preheader.i361:                                  ; preds = %bb.ek
  %i.adp = icmp sgt i32 %i.adm, 0
  %i.adq = icmp ult ptr %.03849.i, %i.adb
  %i.adr = and i1 %i.adq, %i.adp
  br i1 %i.adr, label %iter.check, label %.loopexit.i362

iter.check:                                       ; preds = %.preheader.i361
  %i.ads = sub i64 %i.adg, %.03849.i831
  %i.adt = add nsw i32 %i.adm, -1
  %i.adu = zext i32 %i.adt to i64
  %umin832 = call i64 @llvm.umin.i64(i64 %i.ads, i64 %i.adu) ; 3 uses
  %i.adv = add nuw nsw i64 %umin832, 1            ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin832, 3
  br i1 %min.iters.check, label %.lr.ph.i364.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.adw = sub i64 %i.adf, %.03849.i831
  %i.adx = add nsw i32 %i.adm, -1
  %i.ady = zext i32 %i.adx to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.adw, i64 %i.ady)
  %i.adz = trunc nuw i64 %umin to i32
  %i.aea = add i32 %.050.i, %i.adz
  %i.aeb = icmp slt i32 %i.aea, %.050.i
  br i1 %i.aeb, label %.lr.ph.i364.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aec = sext i32 %.050.i to i64
  %i.aed = add i64 %i.acq, %i.aec
  %i.aee = sub i64 %.03849.i831, %i.aed
  %diff.check = icmp ugt i64 %i.aee, -32
  br i1 %diff.check, label %.lr.ph.i364.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check833 = icmp samesign ult i64 %umin832, 31
  br i1 %min.iters.check833, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.adv, 28
  %n.vec = and i64 %i.adv, 8589934560             ; 5 uses
  %i.aef = trunc i64 %n.vec to i32                ; 2 uses
  %i.aeg = add i32 %.050.i, %i.aef                ; 2 uses
  %i.aeh = getelementptr i8, ptr %.03849.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aei = trunc i64 %index to i32
  %i.aej = add i32 %.050.i, %i.aei
  %next.gep = getelementptr i8, ptr %.03849.i, i64 %index ; 2 uses
  %i.aek = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !35
  %wide.load834 = load <16 x i8>, ptr %i.aek, align 1, !tbaa !35
  %i.ael = sext i32 %i.aej to i64
  %i.aem = getelementptr i8, ptr %i.h, i64 %i.ael ; 2 uses
  %i.aen = getelementptr i8, ptr %i.aem, i64 16
  store <16 x i8> %wide.load, ptr %i.aem, align 1, !tbaa !35
  store <16 x i8> %wide.load834, ptr %i.aen, align 1, !tbaa !35
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aeo = icmp eq i64 %index.next, %n.vec
  br i1 %i.aeo, label %middle.block, label %vector.body, !llvm.loop !298

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.adv, %n.vec
  br i1 %cmp.n, label %.loopexit.i362, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i364.preheader, label %vec.epilog.ph, !prof !265

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec838 = and i64 %i.adv, 8589934588          ; 4 uses
  %i.aep = trunc i64 %n.vec838 to i32             ; 2 uses
  %i.aeq = add i32 %.050.i, %i.aep                ; 2 uses
  %i.aer = getelementptr i8, ptr %.03849.i, i64 %n.vec838 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index839 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next842, %vec.epilog.vector.body ] ; 3 uses
  %i.aes = trunc i64 %index839 to i32
  %i.aet = add i32 %.050.i, %i.aes
  %next.gep840 = getelementptr i8, ptr %.03849.i, i64 %index839
  %wide.load841 = load <4 x i8>, ptr %next.gep840, align 1, !tbaa !35
  %i.aeu = sext i32 %i.aet to i64
  %i.aev = getelementptr i8, ptr %i.h, i64 %i.aeu
  store <4 x i8> %wide.load841, ptr %i.aev, align 1, !tbaa !35
  %index.next842 = add nuw i64 %index839, 4       ; 2 uses
  %i.aew = icmp eq i64 %index.next842, %n.vec838
  br i1 %i.aew, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !299

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n843 = icmp eq i64 %i.adv, %n.vec838
  br i1 %cmp.n843, label %.loopexit.i362, label %.lr.ph.i364.preheader

.lr.ph.i364.preheader:                            ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.147.i.ph = phi i32 [ %.050.i, %iter.check ], [ %.050.i, %vector.scevcheck ], [ %.050.i, %vector.memcheck ], [ %i.aeg, %vec.epilog.iter.check ], [ %i.aeq, %vec.epilog.middle.block ]
  %.13946.i.ph = phi ptr [ %.03849.i, %iter.check ], [ %.03849.i, %vector.scevcheck ], [ %.03849.i, %vector.memcheck ], [ %i.aeh, %vec.epilog.iter.check ], [ %i.aer, %vec.epilog.middle.block ]
  %.04045.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %i.aef, %vec.epilog.iter.check ], [ %i.aep, %vec.epilog.middle.block ]
  br label %.lr.ph.i364

.lr.ph.i364:                                      ; preds = %.lr.ph.i364.preheader, %.lr.ph.i364
  %.147.i = phi i32 [ %i.aez, %.lr.ph.i364 ], [ %.147.i.ph, %.lr.ph.i364.preheader ] ; 2 uses
  %.13946.i = phi ptr [ %i.aex, %.lr.ph.i364 ], [ %.13946.i.ph, %.lr.ph.i364.preheader ] ; 2 uses
  %.04045.i = phi i32 [ %i.afc, %.lr.ph.i364 ], [ %.04045.i.ph, %.lr.ph.i364.preheader ]
  %i.aex = getelementptr i8, ptr %.13946.i, i64 1 ; 3 uses
  %i.aey = load i8, ptr %.13946.i, align 1, !tbaa !35
  %i.aez = add i32 %.147.i, 1                     ; 2 uses
  %i.afa = sext i32 %.147.i to i64
  %i.afb = getelementptr i8, ptr %i.h, i64 %i.afa
  store i8 %i.aey, ptr %i.afb, align 1, !tbaa !35
  %i.afc = add nuw nsw i32 %.04045.i, 1           ; 2 uses
  %i.afd = icmp slt i32 %i.afc, %i.adm
  %i.afe = icmp ult ptr %i.aex, %i.adb
  %i.aff = and i1 %i.afe, %i.afd
  br i1 %i.aff, label %.lr.ph.i364, label %.loopexit.i362, !llvm.loop !300

._crit_edge.i.loopexit:                           ; preds = %.loopexit.i362, %bb.ek
  %.038.lcssa.i.ph = phi ptr [ %.03849.i, %bb.ek ], [ %.139.lcssa.i, %.loopexit.i362 ]
  %.0.lcssa.i.ph = phi i32 [ %.050.i, %bb.ek ], [ %.1.lcssa.i363, %.loopexit.i362 ]
  %.pre = load i32, ptr %i.acf, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.eh
  %i.afg = phi i32 [ %i.act, %bb.eh ], [ %.pre, %._crit_edge.i.loopexit ]
  %.038.lcssa.i = phi ptr [ %i.ack, %bb.eh ], [ %.038.lcssa.i.ph, %._crit_edge.i.loopexit ]
  %.0.lcssa.i = phi i32 [ %.val322, %bb.eh ], [ %.0.lcssa.i.ph, %._crit_edge.i.loopexit ] ; 2 uses
  %i.afh = freeze i32 %i.afg                      ; 2 uses
  store i32 %.0.lcssa.i, ptr %i.g, align 8, !tbaa !92
  %i.afi = icmp eq ptr %.038.lcssa.i, %i.adb
  %.fr.i = select i1 %i.afi, i32 %i.afh, i32 0    ; 2 uses
  store i32 %.fr.i, ptr %i.acl, align 8, !tbaa !268
  %i.afj = load i32, ptr %i.acm, align 8, !tbaa !105
  %i.afk = load i32, ptr %i.acn, align 4, !tbaa !106
  %i.afl = load i32, ptr %i.aco, align 4, !tbaa !106
  %i.afm = and i32 %i.afl, 2048
  %storemerge.i.i357 = or i32 %i.afm, %i.afk
  %.not44.i = icmp eq i32 %.fr.i, 0
  %i.afn = select i1 %.not44.i, i32 0, i32 %storemerge.i.i357
  %.sroa.5.0.insert.ext.i = zext i32 %i.afn to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i359 = zext i32 %i.afj to i64
  %.sroa.0.0.insert.insert.i360 = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.0.0.insert.ext.i359
  store i64 %.sroa.0.0.insert.insert.i360, ptr %i.acm, align 8
  %.pre681 = load i32, ptr %i.abi, align 8, !tbaa !145
  br label %concat_opt_exact_info.exit

concat_opt_exact_info.exit:                       ; preds = %bb.eg, %._crit_edge.i
  %i.afo = phi i32 [ %i.acs, %bb.eg ], [ %.pre681, %._crit_edge.i ] ; 3 uses
  %i.afp = phi i32 [ %i.act, %bb.eg ], [ %i.afh, %._crit_edge.i ]
  %.val322679 = phi i32 [ %.val322, %bb.eg ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.afq = add i32 %.0257628, 1                   ; 3 uses
  %.not285 = icmp sgt i32 %i.afq, %i.afo
  br i1 %.not285, label %.critedge5, label %bb.ed, !llvm.loop !301

.critedge5:                                       ; preds = %bb.ed, %concat_opt_exact_info.exit
  %i.afr = phi i32 [ %i.acs, %bb.ed ], [ %i.afo, %concat_opt_exact_info.exit ] ; 3 uses
  %.0257.lcssa.ph = phi i32 [ %.0257628, %bb.ed ], [ %i.afq, %concat_opt_exact_info.exit ]
  %i.afs = icmp slt i32 %.0257.lcssa.ph, %i.afr
  br i1 %i.afs, label %bb.el, label %.critedge5.thread

bb.el:                                            ; preds = %.critedge5
  %i.aft = getelementptr i8, ptr %1, i64 48
  store i32 0, ptr %i.aft, align 8, !tbaa !259
  br label %.critedge5.thread

.critedge5.thread:                                ; preds = %bb.el, %.critedge5, %bb.ec
  %i.afu = phi i32 [ %i.afr, %bb.el ], [ %i.afr, %.critedge5 ], [ %.pre682, %bb.ec ] ; 5 uses
  %i.afv = getelementptr i8, ptr %.tr, i64 20
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !143 ; 4 uses
  %.not287 = icmp eq i32 %i.afu, %i.afw
  br i1 %.not287, label %bb.en, label %bb.em

bb.em:                                            ; preds = %.critedge5.thread
  %i.afx = getelementptr i8, ptr %1, i64 48
  store i32 0, ptr %i.afx, align 8, !tbaa !259
  %i.afy = getelementptr i8, ptr %1, i64 112
  store i32 0, ptr %i.afy, align 8, !tbaa !260
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %.critedge5.thread
  %i.afz = icmp sgt i32 %i.afu, 1
  br i1 %i.afz, label %.thread377.thread766, label %.thread377

.thread377.thread766:                             ; preds = %bb.en
  %i.aga = getelementptr i8, ptr %1, i64 112
end_hunk_2
