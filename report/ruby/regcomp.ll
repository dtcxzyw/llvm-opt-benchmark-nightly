Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/regcomp?download=true
inline.NumInlined: 213
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@get_char_length_tree1:bb.a
  br i1 %i.bg, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !119
  %i.bj = call fastcc i32 @get_char_length_tree1(ptr noundef %i.bi, ptr noundef %1, ptr noundef %i.a, i32 noundef %i.c) ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bl = load i32, ptr %i.bc, align 8, !tbaa !118 ; 3 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %distance_multiply.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !17  ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = sext i32 %i.bl to i64
  %i.bq = udiv i64 -1, %i.bp
  %i.br = icmp ugt i64 %i.bq, %i.bo
  %i.bs = mul i32 %i.bn, %i.bl
  %i.bt = select i1 %i.br, i32 %i.bs, i32 -1
  br label %distance_multiply.exit

distance_multiply.exit:                           ; preds = %bb.m, %bb.n
  %.0.i95 = phi i32 [ 0, %bb.m ], [ %i.bt, %bb.n ]
  store i32 %.0.i95, ptr %2, align 4, !tbaa !17
  br label %.critedge

bb.o:                                             ; preds = %bb.a
  %i.bu = getelementptr i8, ptr %0, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !41
  %i.bw = and i32 %i.bv, 128
  %.not88 = icmp eq i32 %i.bw, 0
  br i1 %.not88, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr i8, ptr %0, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !41
  %i.bz = tail call fastcc i32 @get_char_length_tree1(ptr noundef %i.by, ptr noundef %1, ptr noundef %2, i32 noundef %i.c)
  br label %.critedge

bb.q:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !17
  br label %.critedge

bb.r:                                             ; preds = %bb.a, %bb.a
  store i32 1, ptr %2, align 4, !tbaa !17
  br label %.critedge

bb.s:                                             ; preds = %bb.a
  %i.ca = getelementptr i8, ptr %0, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !120 ; 2 uses
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
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !112
  %i.ch = and i32 %i.cg, 4
  %.not = icmp eq i32 %i.ch, 0
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr i8, ptr %0, i64 48
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !261
  store i32 %i.cj, ptr %2, align 4, !tbaa !17
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.ck = getelementptr i8, ptr %0, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !113
  %i.cm = tail call fastcc i32 @get_char_length_tree1(ptr noundef %i.cl, ptr noundef %1, ptr noundef %2, i32 noundef %i.c) ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.co = load i32, ptr %2, align 4, !tbaa !17
  %i.cp = getelementptr i8, ptr %0, i64 48
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !261
  %i.cq = load i32, ptr %i.cf, align 4, !tbaa !41
  %i.cr = or i32 %i.cq, 4
  store i32 %i.cr, ptr %i.cf, align 4, !tbaa !41
  br label %.critedge

bb.x:                                             ; preds = %.split, %.split, %.split
  %i.cs = getelementptr i8, ptr %0, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !113
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
  %i.b = ptrtoaddr ptr %4 to i64                  ; 4 uses
  %5 = alloca %struct.NodeOptInfo, align 8        ; 15 uses
  %6 = alloca %struct.NodeOptInfo, align 8        ; 9 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %7 = alloca %struct.NodeOptInfo, align 8        ; 13 uses
  %i.g = ptrtoaddr ptr %7 to i64                  ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 52         ; 7 uses
  store i32 -1, ptr %i.h, align 4, !tbaa !87
  %i.i = getelementptr i8, ptr %1, i64 56         ; 8 uses
  store i32 0, ptr %i.i, align 8, !tbaa !86
  %i.j = getelementptr i8, ptr %1, i64 60         ; 13 uses
  store i8 0, ptr %i.j, align 4, !tbaa !41
  %i.k = getelementptr i8, ptr %1, i64 88         ; 5 uses
  %i.l = getelementptr i8, ptr %1, i64 116        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.k, i8 0, i64 28, i1 false)
  store i32 -1, ptr %i.l, align 4, !tbaa !87
  %i.m = getelementptr i8, ptr %1, i64 120        ; 3 uses
  store i32 0, ptr %i.m, align 8, !tbaa !86
  %i.n = getelementptr i8, ptr %1, i64 124        ; 4 uses
  store i8 0, ptr %i.n, align 4, !tbaa !41
  %i.o = getelementptr i8, ptr %1, i64 152        ; 7 uses
  %i.p = getelementptr i8, ptr %1, i64 180
  store i32 -1, ptr %i.p, align 4, !tbaa !87
  %i.q = getelementptr i8, ptr %1, i64 184        ; 3 uses
  store i32 0, ptr %i.q, align 8, !tbaa !86
  %i.r = getelementptr i8, ptr %1, i64 188
  store i8 0, ptr %i.r, align 4, !tbaa !41
  %i.s = getelementptr i8, ptr %1, i64 216        ; 10 uses
  %i.t = getelementptr i8, ptr %1, i64 24         ; 3 uses
  %i.u = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.v = getelementptr i8, ptr %1, i64 32
  %i.w = getelementptr i8, ptr %1, i64 160        ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 224        ; 3 uses
  %.sink798.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sink798.sroa.gep1023 = getelementptr inbounds nuw i8, ptr %6, i64 88
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.fc, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.air, %bb.fc ] ; 37 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %1, i8 0, i64 52, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.o, i8 0, i64 28, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.s, ptr noundef nonnull align 8 dereferenceable(288) @clear_opt_map_info.clean_info, i64 noundef 288, i1 noundef false) #22
  %.val9.i = load i64, ptr %2, align 8, !tbaa !89 ; 2 uses
  %.val10.i = load i64, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  store i64 %.val9.i, ptr %i.t, align 8, !tbaa !89
  store i64 %.val10.i, ptr %i.v, align 8, !tbaa !88
  store i64 %.val9.i, ptr %i.o, align 8, !tbaa !89
  store i64 %.val10.i, ptr %i.w, align 8, !tbaa !88
  %i.y = load <2 x i64>, ptr %2, align 8, !tbaa !40
  store <2 x i64> %i.y, ptr %i.s, align 8, !tbaa !40
  %i.z = load i32, ptr %.tr, align 8, !tbaa !41
  switch i32 %i.z, label %common.ret1048 [
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull readonly align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !287
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = getelementptr i8, ptr %2, i64 16
  %i.ad = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ae = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ah = getelementptr i8, ptr %1, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 224 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 2 uses
  %i.ap = getelementptr i8, ptr %1, i64 48        ; 3 uses
  %i.aq = getelementptr i8, ptr %1, i64 112       ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.au = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %i.av = getelementptr i8, ptr %1, i64 44
  %i.aw = getelementptr i8, ptr %1, i64 104       ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 108
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 216 ; 3 uses
  %i.bc = getelementptr i8, ptr %1, i64 240
  %i.bd = add i64 %i.b, 59
  %i.be = add i64 %i.a, 124
  %i.bf = add i64 %i.b, 59
  %i.bg = add i64 %i.b, 59
  %i.bh = add i64 %i.a, 60
  %i.bi = add i64 %i.b, 59
  br label %bb.c

bb.c:                                             ; preds = %concat_left_node_opt_info.exit, %bb.b
  %.0256 = phi ptr [ %.tr, %bb.b ], [ %i.kg, %concat_left_node_opt_info.exit ] ; 2 uses
  %i.bj = getelementptr i8, ptr %.0256, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.bl = call fastcc i32 @optimize_node_left(ptr noundef %i.bk, ptr noundef %4, ptr noundef %3) ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %concat_opt_anc_info.exit.i, label %.critedge

concat_opt_anc_info.exit.i:                       ; preds = %bb.c
  %.val = load i64, ptr %4, align 8, !tbaa !89    ; 3 uses
  %.val321 = load i64, ptr %i.aa, align 8, !tbaa !88 ; 4 uses
  %i.bn = load i64, ptr %3, align 8, !tbaa !89    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, -1
  %i.bp = icmp eq i64 %.val, -1
  %or.cond.i.i = or i1 %i.bp, %i.bo
  %i.bq = xor i64 %.val, -1
  %.not.i.i = icmp ugt i64 %i.bn, %i.bq
  %or.cond10.i.i = or i1 %.not.i.i, %or.cond.i.i
  %i.br = add i64 %i.bn, %.val
  %.0.i.i = select i1 %or.cond10.i.i, i64 -1, i64 %i.br
  store i64 %.0.i.i, ptr %3, align 8, !tbaa !89
  %i.bs = load i64, ptr %i.ab, align 8, !tbaa !88 ; 3 uses
  %i.bt = icmp eq i64 %i.bs, -1
  %i.bu = icmp eq i64 %.val321, -1
  %or.cond.i6.i = or i1 %i.bu, %i.bt
  %i.bv = xor i64 %.val321, -1
  %.not.i7.i = icmp ugt i64 %i.bs, %i.bv
  %or.cond10.i8.i = or i1 %.not.i7.i, %or.cond.i6.i
  %i.bw = add i64 %i.bs, %.val321
  %.0.i9.i = select i1 %or.cond10.i8.i, i64 -1, i64 %i.bw
  store i64 %.0.i9.i, ptr %i.ab, align 8, !tbaa !88
  %i.bx = load ptr, ptr %i.ac, align 8, !tbaa !75 ; 10 uses
  %i.by = load i64, ptr %i.ae, align 8, !tbaa !97
  %i.bz = load i32, ptr %i.ad, align 8, !tbaa !95
  %i.ca = icmp ne i64 %i.by, 0                    ; 3 uses
  %i.cb = load i32, ptr %i.af, align 8
  %i.cc = select i1 %i.ca, i32 0, i32 %i.cb
  %.sroa.0.0.i = or i32 %i.cc, %i.bz              ; 3 uses
  %i.cd = load i32, ptr %i.ag, align 4, !tbaa !96
  %i.ce = icmp eq i64 %.val321, 0                 ; 3 uses
  %i.cf = load i32, ptr %i.ah, align 4, !tbaa !96 ; 2 uses
  %i.cg = and i32 %i.cf, 2048
  %.pn.i.i = select i1 %i.ce, i32 %i.cf, i32 %i.cg
  %storemerge.i.i = or i32 %.pn.i.i, %i.cd        ; 3 uses
  %.sroa.10.0.insert.ext96.i = zext i32 %storemerge.i.i to i64
  %.sroa.10.0.insert.shift97.i = shl nuw i64 %.sroa.10.0.insert.ext96.i, 32
  %.sroa.0.0.insert.ext93.i = zext i32 %.sroa.0.0.i to i64
  %.sroa.0.0.insert.insert95.i = or disjoint i64 %.sroa.10.0.insert.shift97.i, %.sroa.0.0.insert.ext93.i
  store i64 %.sroa.0.0.insert.insert95.i, ptr %i.ad, align 8, !tbaa !17
  %i.ch = load i32, ptr %i.aj, align 8, !tbaa !84 ; 3 uses
  %8 = icmp sgt i32 %i.ch, 0                      ; 2 uses
  br i1 %8, label %9, label %bb.d

9:                                                ; preds = %concat_opt_anc_info.exit.i
  br i1 %i.ca, label %bb.f, label %.thread.a

bb.d:                                             ; preds = %concat_opt_anc_info.exit.i
  %i.ci = load i32, ptr %i.ak, align 8, !tbaa !85
  %10 = icmp slt i32 %i.ci, 1
  %brmerge.i = or i1 %i.ca, %10
  br i1 %brmerge.i, label %bb.f, label %.thread371

.thread.a:                                        ; preds = %9
  %i.cj = load i32, ptr %i.al, align 8, !tbaa !95
  %i.ck = or i32 %i.cj, %.sroa.0.0.i
  %i.cl = load i32, ptr %i.am, align 4, !tbaa !96
  %i.cm = and i32 %storemerge.i.i, 2048
  %.pn.i67.i = select i1 %i.ce, i32 %storemerge.i.i, i32 %i.cm
  %storemerge.i68.i = or i32 %i.cl, %.pn.i67.i
  %.sroa.10.0.insert.ext.i = zext i32 %storemerge.i68.i to i64
  %.sroa.10.0.insert.shift.i = shl nuw i64 %.sroa.10.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ck to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.10.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.al, align 8, !tbaa !17
  %i.cn = load i32, ptr %i.ak, align 8, !tbaa !85
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.thread371, label %bb.f

.thread371:                                       ; preds = %.thread.a, %bb.d
  %i.cp = load i64, ptr %i.an, align 8, !tbaa !288
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread371
  %i.cr = load i32, ptr %i.ao, align 8, !tbaa !289
  %i.cs = or i32 %i.cr, %.sroa.0.0.i
  store i32 %i.cs, ptr %i.ao, align 8, !tbaa !289
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread371, %.thread.a, %bb.d, %9
  %i.ct = load i32, ptr %i.ap, align 8, !tbaa !290
  %i.cu = load i32, ptr %i.aq, align 8, !tbaa !291
  br i1 %i.ce, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.aq, align 8, !tbaa !291
  store i32 0, ptr %i.ap, align 8, !tbaa !290
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %8, label %bb.i, label %bb.y

bb.i:                                             ; preds = %bb.h
  %.not61.i = icmp eq i32 %i.ct, 0
  br i1 %.not61.i, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cv = load i32, ptr %i.h, align 4, !tbaa !87  ; 2 uses
  %i.cw = icmp slt i32 %i.cv, 0
  %i.cx = load i32, ptr %i.ar, align 4, !tbaa !87 ; 2 uses
  br i1 %i.cw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.cx, ptr %i.h, align 4, !tbaa !87
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.not.i.i323 = icmp eq i32 %i.cv, %i.cx
  br i1 %.not.i.i323, label %bb.m, label %.sink.split.i

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cy = zext nneg i32 %i.ch to i64              ; 3 uses
  %i.cz = getelementptr i8, ptr %i.as, i64 %i.cy  ; 6 uses
  %i.da = load i32, ptr %i.i, align 8, !tbaa !86  ; 2 uses
  %i.db = icmp ult ptr %i.as, %i.cz
  br i1 %i.db, label %.lr.ph51.i.i, label %._crit_edge.i.i

.lr.ph51.i.i:                                     ; preds = %bb.m
  %i.dc = getelementptr i8, ptr %i.bx, i64 16
  %i.dd = getelementptr i8, ptr %i.bx, i64 20
  %i.de = add i64 %i.bg, %i.cy
  %i.df = add i64 %i.bi, %i.cy
  br label %bb.n

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %middle.block977, %vec.epilog.middle.block993, %.preheader.i.i
  %.140.lcssa.i.i = phi i32 [ %.03949.i.i, %.preheader.i.i ], [ %i.er, %vec.epilog.middle.block993 ], [ %i.eh, %middle.block977 ], [ %i.ez, %.lr.ph.i.i ] ; 2 uses
  %.1.lcssa.i.i = phi ptr [ %.050.i.i, %.preheader.i.i ], [ %i.ep, %vec.epilog.middle.block993 ], [ %i.ef, %middle.block977 ], [ %i.ex, %.lr.ph.i.i ] ; 3 uses
  %i.dg = icmp ult ptr %.1.lcssa.i.i, %i.cz
  br i1 %i.dg, label %bb.n, label %._crit_edge.i.i, !llvm.loop !262

bb.n:                                             ; preds = %.loopexit.i.i, %.lr.ph51.i.i
  %.050.i.i = phi ptr [ %i.as, %.lr.ph51.i.i ], [ %.1.lcssa.i.i, %.loopexit.i.i ] ; 12 uses
  %.03949.i.i = phi i32 [ %i.da, %.lr.ph51.i.i ], [ %.140.lcssa.i.i, %.loopexit.i.i ] ; 13 uses
  %.050.i.i961 = ptrtoaddr ptr %.050.i.i to i64   ; 3 uses
  %i.dh = load i32, ptr %i.dc, align 8, !tbaa !125 ; 2 uses
  %i.di = load i32, ptr %i.dd, align 4, !tbaa !126
  %i.dj = icmp eq i32 %i.dh, %i.di
  br i1 %i.dj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = call i32 @onigenc_mbclen(ptr noundef %.050.i.i, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.bx) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dl = phi i32 [ %i.dk, %bb.o ], [ %i.dh, %bb.n ] ; 5 uses
  %i.dm = add i32 %i.dl, %.03949.i.i
  %i.dn = icmp sgt i32 %i.dm, 24
  br i1 %i.dn, label %._crit_edge.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.p
  %i.do = icmp sgt i32 %i.dl, 0
  %i.dp = icmp ult ptr %.050.i.i, %i.cz
  %i.dq = and i1 %i.dp, %i.do
  br i1 %i.dq, label %iter.check982, label %.loopexit.i.i

iter.check982:                                    ; preds = %.preheader.i.i
  %i.dr = sub i64 %i.df, %.050.i.i961
  %i.ds = add nsw i32 %i.dl, -1
  %i.dt = zext i32 %i.ds to i64
  %umin965 = call i64 @llvm.umin.i64(i64 %i.dr, i64 %i.dt) ; 3 uses
  %i.du = add nuw nsw i64 %umin965, 1             ; 5 uses
  %min.iters.check966 = icmp samesign ult i64 %umin965, 3
  br i1 %min.iters.check966, label %.lr.ph.i.i.preheader, label %vector.scevcheck960

vector.scevcheck960:                              ; preds = %iter.check982
  %i.dv = sub i64 %i.de, %.050.i.i961
  %i.dw = add nsw i32 %i.dl, -1
  %i.dx = zext i32 %i.dw to i64
  %umin962 = call i64 @llvm.umin.i64(i64 %i.dv, i64 %i.dx)
  %i.dy = trunc nuw i64 %umin962 to i32
  %i.dz = add i32 %.03949.i.i, %i.dy
  %i.ea = icmp slt i32 %i.dz, %.03949.i.i
  br i1 %i.ea, label %.lr.ph.i.i.preheader, label %vector.memcheck963

vector.memcheck963:                               ; preds = %vector.scevcheck960
  %i.eb = sext i32 %.03949.i.i to i64
  %i.ec = add i64 %i.bh, %i.eb
  %i.ed = sub i64 %.050.i.i961, %i.ec
  %diff.check964 = icmp ugt i64 %i.ed, -32
  br i1 %diff.check964, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check967

vector.main.loop.iter.check967:                   ; preds = %vector.memcheck963
  %min.iters.check968 = icmp samesign ult i64 %umin965, 31
  br i1 %min.iters.check968, label %vec.epilog.ph986, label %vector.ph969

vector.ph969:                                     ; preds = %vector.main.loop.iter.check967
  %i.ee = and i64 %i.du, 28
  %n.vec970 = and i64 %i.du, 8589934560           ; 5 uses
  %i.ef = getelementptr i8, ptr %.050.i.i, i64 %n.vec970 ; 2 uses
  %i.eg = trunc i64 %n.vec970 to i32              ; 2 uses
  %i.eh = add i32 %.03949.i.i, %i.eg              ; 2 uses
  br label %vector.body971

vector.body971:                                   ; preds = %vector.ph969, %vector.body971
  %index972 = phi i64 [ 0, %vector.ph969 ], [ %index.next976, %vector.body971 ] ; 3 uses
  %next.gep973 = getelementptr i8, ptr %.050.i.i, i64 %index972 ; 2 uses
  %i.ei = trunc i64 %index972 to i32
  %i.ej = add i32 %.03949.i.i, %i.ei
  %i.ek = getelementptr i8, ptr %next.gep973, i64 16
  %wide.load974 = load <16 x i8>, ptr %next.gep973, align 1, !tbaa !41
  %wide.load975 = load <16 x i8>, ptr %i.ek, align 1, !tbaa !41
  %i.el = sext i32 %i.ej to i64
  %i.em = getelementptr i8, ptr %i.j, i64 %i.el   ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 16
  store <16 x i8> %wide.load974, ptr %i.em, align 1, !tbaa !41
  store <16 x i8> %wide.load975, ptr %i.en, align 1, !tbaa !41
  %index.next976 = add nuw i64 %index972, 32      ; 2 uses
  %i.eo = icmp eq i64 %index.next976, %n.vec970
  br i1 %i.eo, label %middle.block977, label %vector.body971, !llvm.loop !263

middle.block977:                                  ; preds = %vector.body971
  %cmp.n978 = icmp eq i64 %i.du, %n.vec970
  br i1 %cmp.n978, label %.loopexit.i.i, label %vec.epilog.iter.check984

vec.epilog.iter.check984:                         ; preds = %middle.block977
  %min.epilog.iters.check985 = icmp eq i64 %i.ee, 0
  br i1 %min.epilog.iters.check985, label %.lr.ph.i.i.preheader, label %vec.epilog.ph986, !prof !294

vec.epilog.ph986:                                 ; preds = %vector.main.loop.iter.check967, %vec.epilog.iter.check984
  %vec.epilog.resume.val979 = phi i64 [ %n.vec970, %vec.epilog.iter.check984 ], [ 0, %vector.main.loop.iter.check967 ]
  %n.vec987 = and i64 %i.du, 8589934588           ; 4 uses
  %i.ep = getelementptr i8, ptr %.050.i.i, i64 %n.vec987 ; 2 uses
  %i.eq = trunc i64 %n.vec987 to i32              ; 2 uses
  %i.er = add i32 %.03949.i.i, %i.eq              ; 2 uses
  br label %vec.epilog.vector.body988

vec.epilog.vector.body988:                        ; preds = %vec.epilog.vector.body988, %vec.epilog.ph986
  %index989 = phi i64 [ %vec.epilog.resume.val979, %vec.epilog.ph986 ], [ %index.next992, %vec.epilog.vector.body988 ] ; 3 uses
  %next.gep990 = getelementptr i8, ptr %.050.i.i, i64 %index989
  %i.es = trunc i64 %index989 to i32
  %i.et = add i32 %.03949.i.i, %i.es
  %wide.load991 = load <4 x i8>, ptr %next.gep990, align 1, !tbaa !41
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr i8, ptr %i.j, i64 %i.eu
  store <4 x i8> %wide.load991, ptr %i.ev, align 1, !tbaa !41
  %index.next992 = add nuw i64 %index989, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next992, %n.vec987
  br i1 %i.ew, label %vec.epilog.middle.block993, label %vec.epilog.vector.body988, !llvm.loop !264

vec.epilog.middle.block993:                       ; preds = %vec.epilog.vector.body988
  %cmp.n994 = icmp eq i64 %i.du, %n.vec987
  br i1 %cmp.n994, label %.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check982, %vector.scevcheck960, %vector.memcheck963, %vec.epilog.iter.check984, %vec.epilog.middle.block993
  %.147.i.i.ph = phi ptr [ %.050.i.i, %iter.check982 ], [ %.050.i.i, %vector.scevcheck960 ], [ %.050.i.i, %vector.memcheck963 ], [ %i.ef, %vec.epilog.iter.check984 ], [ %i.ep, %vec.epilog.middle.block993 ]
  %.03846.i.i.ph = phi i32 [ 0, %iter.check982 ], [ 0, %vector.scevcheck960 ], [ 0, %vector.memcheck963 ], [ %i.eg, %vec.epilog.iter.check984 ], [ %i.eq, %vec.epilog.middle.block993 ]
  %.14045.i.i.ph = phi i32 [ %.03949.i.i, %iter.check982 ], [ %.03949.i.i, %vector.scevcheck960 ], [ %.03949.i.i, %vector.memcheck963 ], [ %i.eh, %vec.epilog.iter.check984 ], [ %i.er, %vec.epilog.middle.block993 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.147.i.i = phi ptr [ %i.ex, %.lr.ph.i.i ], [ %.147.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.03846.i.i = phi i32 [ %i.fc, %.lr.ph.i.i ], [ %.03846.i.i.ph, %.lr.ph.i.i.preheader ]
  %.14045.i.i = phi i32 [ %i.ez, %.lr.ph.i.i ], [ %.14045.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ex = getelementptr i8, ptr %.147.i.i, i64 1  ; 3 uses
  %i.ey = load i8, ptr %.147.i.i, align 1, !tbaa !41
  %i.ez = add i32 %.14045.i.i, 1                  ; 2 uses
  %i.fa = sext i32 %.14045.i.i to i64
  %i.fb = getelementptr i8, ptr %i.j, i64 %i.fa
  store i8 %i.ey, ptr %i.fb, align 1, !tbaa !41
  %i.fc = add nuw nsw i32 %.03846.i.i, 1          ; 2 uses
  %i.fd = icmp slt i32 %i.fc, %i.dl
  %i.fe = icmp ult ptr %i.ex, %i.cz
  %i.ff = and i1 %i.fe, %i.fd
  br i1 %i.ff, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !265

._crit_edge.i.i:                                  ; preds = %bb.p, %.loopexit.i.i, %bb.m
  %.039.lcssa.i.i = phi i32 [ %i.da, %bb.m ], [ %.03949.i.i, %bb.p ], [ %.140.lcssa.i.i, %.loopexit.i.i ]
  %.0.lcssa.i.i = phi ptr [ %i.as, %bb.m ], [ %.050.i.i, %bb.p ], [ %.1.lcssa.i.i, %.loopexit.i.i ]
  store i32 %.039.lcssa.i.i, ptr %i.i, align 8, !tbaa !86
  %i.fg = icmp eq ptr %.0.lcssa.i.i, %i.cz
  %i.fh = load i32, ptr %i.at, align 8
  %i.fi = freeze i32 %i.fh
  %.fr.i.i = select i1 %i.fg, i32 %i.fi, i32 0    ; 2 uses
  store i32 %.fr.i.i, ptr %i.ap, align 8, !tbaa !164
  %i.fj = load i32, ptr %i.au, align 8, !tbaa !95
  %i.fk = load i32, ptr %i.am, align 4, !tbaa !96
  %i.fl = load i32, ptr %i.av, align 4, !tbaa !96
  %i.fm = and i32 %i.fl, 2048
  %storemerge.i.i.i = or i32 %i.fm, %i.fk
  %.not44.i.i = icmp eq i32 %.fr.i.i, 0
  %i.fn = select i1 %.not44.i.i, i32 0, i32 %storemerge.i.i.i
  %.sroa.5.0.insert.ext.i.i = zext i32 %i.fn to i64
  %.sroa.5.0.insert.shift.i.i = shl nuw i64 %.sroa.5.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.fj to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.au, align 8, !tbaa !17
  br label %.sink.split.i

bb.q:                                             ; preds = %bb.i
  %.not62.i = icmp eq i32 %i.cu, 0
  br i1 %.not62.i, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fo = load i32, ptr %i.l, align 4, !tbaa !87  ; 2 uses
  %i.fp = icmp slt i32 %i.fo, 0
  %i.fq = load i32, ptr %i.ar, align 4, !tbaa !87 ; 2 uses
  br i1 %i.fp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.fq, ptr %i.l, align 4, !tbaa !87
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %.not.i69.i = icmp eq i32 %i.fo, %i.fq
  br i1 %.not.i69.i, label %bb.u, label %.sink.split.i

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fr = zext nneg i32 %i.ch to i64              ; 3 uses
  %i.fs = getelementptr i8, ptr %i.as, i64 %i.fr  ; 6 uses
  %i.ft = load i32, ptr %i.m, align 8, !tbaa !86  ; 2 uses
  %i.fu = icmp ult ptr %i.as, %i.fs
  br i1 %i.fu, label %.lr.ph51.i81.i, label %._crit_edge.i70.i

.lr.ph51.i81.i:                                   ; preds = %bb.u
  %i.fv = getelementptr i8, ptr %i.bx, i64 16
  %i.fw = getelementptr i8, ptr %i.bx, i64 20
  %i.fx = add i64 %i.bd, %i.fr
  %i.fy = add i64 %i.bf, %i.fr
  br label %bb.v

.loopexit.i85.i:                                  ; preds = %.lr.ph.i88.i, %middle.block939, %vec.epilog.middle.block955, %.preheader.i84.i
  %.140.lcssa.i86.i = phi i32 [ %.03949.i83.i, %.preheader.i84.i ], [ %i.hk, %vec.epilog.middle.block955 ], [ %i.ha, %middle.block939 ], [ %i.hs, %.lr.ph.i88.i ] ; 2 uses
  %.1.lcssa.i87.i = phi ptr [ %.050.i82.i, %.preheader.i84.i ], [ %i.hi, %vec.epilog.middle.block955 ], [ %i.gy, %middle.block939 ], [ %i.hq, %.lr.ph.i88.i ] ; 3 uses
  %i.fz = icmp ult ptr %.1.lcssa.i87.i, %i.fs
  br i1 %i.fz, label %bb.v, label %._crit_edge.i70.i, !llvm.loop !262

bb.v:                                             ; preds = %.loopexit.i85.i, %.lr.ph51.i81.i
  %.050.i82.i = phi ptr [ %i.as, %.lr.ph51.i81.i ], [ %.1.lcssa.i87.i, %.loopexit.i85.i ] ; 12 uses
  %.03949.i83.i = phi i32 [ %i.ft, %.lr.ph51.i81.i ], [ %.140.lcssa.i86.i, %.loopexit.i85.i ] ; 13 uses
  %.050.i82.i923 = ptrtoaddr ptr %.050.i82.i to i64 ; 3 uses
  %i.ga = load i32, ptr %i.fv, align 8, !tbaa !125 ; 2 uses
  %i.gb = load i32, ptr %i.fw, align 4, !tbaa !126
  %i.gc = icmp eq i32 %i.ga, %i.gb
  br i1 %i.gc, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gd = call i32 @onigenc_mbclen(ptr noundef %.050.i82.i, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.bx) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ge = phi i32 [ %i.gd, %bb.w ], [ %i.ga, %bb.v ] ; 5 uses
  %i.gf = add i32 %i.ge, %.03949.i83.i
  %i.gg = icmp sgt i32 %i.gf, 24
  br i1 %i.gg, label %._crit_edge.i70.i, label %.preheader.i84.i

.preheader.i84.i:                                 ; preds = %bb.x
  %i.gh = icmp sgt i32 %i.ge, 0
  %i.gi = icmp ult ptr %.050.i82.i, %i.fs
  %i.gj = and i1 %i.gi, %i.gh
  br i1 %i.gj, label %iter.check944, label %.loopexit.i85.i

iter.check944:                                    ; preds = %.preheader.i84.i
  %i.gk = sub i64 %i.fy, %.050.i82.i923
  %i.gl = add nsw i32 %i.ge, -1
  %i.gm = zext i32 %i.gl to i64
  %umin927 = call i64 @llvm.umin.i64(i64 %i.gk, i64 %i.gm) ; 3 uses
  %i.gn = add nuw nsw i64 %umin927, 1             ; 5 uses
  %min.iters.check928 = icmp samesign ult i64 %umin927, 3
  br i1 %min.iters.check928, label %.lr.ph.i88.i.preheader, label %vector.scevcheck922

vector.scevcheck922:                              ; preds = %iter.check944
  %i.go = sub i64 %i.fx, %.050.i82.i923
  %i.gp = add nsw i32 %i.ge, -1
  %i.gq = zext i32 %i.gp to i64
  %umin924 = call i64 @llvm.umin.i64(i64 %i.go, i64 %i.gq)
  %i.gr = trunc nuw i64 %umin924 to i32
  %i.gs = add i32 %.03949.i83.i, %i.gr
  %i.gt = icmp slt i32 %i.gs, %.03949.i83.i
  br i1 %i.gt, label %.lr.ph.i88.i.preheader, label %vector.memcheck925

vector.memcheck925:                               ; preds = %vector.scevcheck922
  %i.gu = sext i32 %.03949.i83.i to i64
  %i.gv = add i64 %i.be, %i.gu
  %i.gw = sub i64 %.050.i82.i923, %i.gv
  %diff.check926 = icmp ugt i64 %i.gw, -32
  br i1 %diff.check926, label %.lr.ph.i88.i.preheader, label %vector.main.loop.iter.check929

vector.main.loop.iter.check929:                   ; preds = %vector.memcheck925
  %min.iters.check930 = icmp samesign ult i64 %umin927, 31
  br i1 %min.iters.check930, label %vec.epilog.ph948, label %vector.ph931

vector.ph931:                                     ; preds = %vector.main.loop.iter.check929
  %i.gx = and i64 %i.gn, 28
  %n.vec932 = and i64 %i.gn, 8589934560           ; 5 uses
  %i.gy = getelementptr i8, ptr %.050.i82.i, i64 %n.vec932 ; 2 uses
  %i.gz = trunc i64 %n.vec932 to i32              ; 2 uses
  %i.ha = add i32 %.03949.i83.i, %i.gz            ; 2 uses
  br label %vector.body933

vector.body933:                                   ; preds = %vector.ph931, %vector.body933
  %index934 = phi i64 [ 0, %vector.ph931 ], [ %index.next938, %vector.body933 ] ; 3 uses
  %next.gep935 = getelementptr i8, ptr %.050.i82.i, i64 %index934 ; 2 uses
  %i.hb = trunc i64 %index934 to i32
  %i.hc = add i32 %.03949.i83.i, %i.hb
  %i.hd = getelementptr i8, ptr %next.gep935, i64 16
  %wide.load936 = load <16 x i8>, ptr %next.gep935, align 1, !tbaa !41
  %wide.load937 = load <16 x i8>, ptr %i.hd, align 1, !tbaa !41
  %i.he = sext i32 %i.hc to i64
  %i.hf = getelementptr i8, ptr %i.n, i64 %i.he   ; 2 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 16
  store <16 x i8> %wide.load936, ptr %i.hf, align 1, !tbaa !41
  store <16 x i8> %wide.load937, ptr %i.hg, align 1, !tbaa !41
  %index.next938 = add nuw i64 %index934, 32      ; 2 uses
  %i.hh = icmp eq i64 %index.next938, %n.vec932
  br i1 %i.hh, label %middle.block939, label %vector.body933, !llvm.loop !266

middle.block939:                                  ; preds = %vector.body933
  %cmp.n940 = icmp eq i64 %i.gn, %n.vec932
  br i1 %cmp.n940, label %.loopexit.i85.i, label %vec.epilog.iter.check946

vec.epilog.iter.check946:                         ; preds = %middle.block939
  %min.epilog.iters.check947 = icmp eq i64 %i.gx, 0
  br i1 %min.epilog.iters.check947, label %.lr.ph.i88.i.preheader, label %vec.epilog.ph948, !prof !294

vec.epilog.ph948:                                 ; preds = %vector.main.loop.iter.check929, %vec.epilog.iter.check946
  %vec.epilog.resume.val941 = phi i64 [ %n.vec932, %vec.epilog.iter.check946 ], [ 0, %vector.main.loop.iter.check929 ]
  %n.vec949 = and i64 %i.gn, 8589934588           ; 4 uses
  %i.hi = getelementptr i8, ptr %.050.i82.i, i64 %n.vec949 ; 2 uses
  %i.hj = trunc i64 %n.vec949 to i32              ; 2 uses
  %i.hk = add i32 %.03949.i83.i, %i.hj            ; 2 uses
  br label %vec.epilog.vector.body950

vec.epilog.vector.body950:                        ; preds = %vec.epilog.vector.body950, %vec.epilog.ph948
  %index951 = phi i64 [ %vec.epilog.resume.val941, %vec.epilog.ph948 ], [ %index.next954, %vec.epilog.vector.body950 ] ; 3 uses
  %next.gep952 = getelementptr i8, ptr %.050.i82.i, i64 %index951
  %i.hl = trunc i64 %index951 to i32
  %i.hm = add i32 %.03949.i83.i, %i.hl
  %wide.load953 = load <4 x i8>, ptr %next.gep952, align 1, !tbaa !41
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr i8, ptr %i.n, i64 %i.hn
  store <4 x i8> %wide.load953, ptr %i.ho, align 1, !tbaa !41
  %index.next954 = add nuw i64 %index951, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next954, %n.vec949
  br i1 %i.hp, label %vec.epilog.middle.block955, label %vec.epilog.vector.body950, !llvm.loop !267

vec.epilog.middle.block955:                       ; preds = %vec.epilog.vector.body950
  %cmp.n956 = icmp eq i64 %i.gn, %n.vec949
  br i1 %cmp.n956, label %.loopexit.i85.i, label %.lr.ph.i88.i.preheader

.lr.ph.i88.i.preheader:                           ; preds = %iter.check944, %vector.scevcheck922, %vector.memcheck925, %vec.epilog.iter.check946, %vec.epilog.middle.block955
  %.147.i89.i.ph = phi ptr [ %.050.i82.i, %iter.check944 ], [ %.050.i82.i, %vector.scevcheck922 ], [ %.050.i82.i, %vector.memcheck925 ], [ %i.gy, %vec.epilog.iter.check946 ], [ %i.hi, %vec.epilog.middle.block955 ]
  %.03846.i90.i.ph = phi i32 [ 0, %iter.check944 ], [ 0, %vector.scevcheck922 ], [ 0, %vector.memcheck925 ], [ %i.gz, %vec.epilog.iter.check946 ], [ %i.hj, %vec.epilog.middle.block955 ]
  %.14045.i91.i.ph = phi i32 [ %.03949.i83.i, %iter.check944 ], [ %.03949.i83.i, %vector.scevcheck922 ], [ %.03949.i83.i, %vector.memcheck925 ], [ %i.ha, %vec.epilog.iter.check946 ], [ %i.hk, %vec.epilog.middle.block955 ]
  br label %.lr.ph.i88.i

.lr.ph.i88.i:                                     ; preds = %.lr.ph.i88.i.preheader, %.lr.ph.i88.i
  %.147.i89.i = phi ptr [ %i.hq, %.lr.ph.i88.i ], [ %.147.i89.i.ph, %.lr.ph.i88.i.preheader ] ; 2 uses
  %.03846.i90.i = phi i32 [ %i.hv, %.lr.ph.i88.i ], [ %.03846.i90.i.ph, %.lr.ph.i88.i.preheader ]
  %.14045.i91.i = phi i32 [ %i.hs, %.lr.ph.i88.i ], [ %.14045.i91.i.ph, %.lr.ph.i88.i.preheader ] ; 2 uses
  %i.hq = getelementptr i8, ptr %.147.i89.i, i64 1 ; 3 uses
  %i.hr = load i8, ptr %.147.i89.i, align 1, !tbaa !41
  %i.hs = add i32 %.14045.i91.i, 1                ; 2 uses
  %i.ht = sext i32 %.14045.i91.i to i64
  %i.hu = getelementptr i8, ptr %i.n, i64 %i.ht
  store i8 %i.hr, ptr %i.hu, align 1, !tbaa !41
  %i.hv = add nuw nsw i32 %.03846.i90.i, 1        ; 2 uses
  %i.hw = icmp slt i32 %i.hv, %i.ge
  %i.hx = icmp ult ptr %i.hq, %i.fs
  %i.hy = and i1 %i.hx, %i.hw
  br i1 %i.hy, label %.lr.ph.i88.i, label %.loopexit.i85.i, !llvm.loop !268

._crit_edge.i70.i:                                ; preds = %bb.x, %.loopexit.i85.i, %bb.u
  %.039.lcssa.i71.i = phi i32 [ %i.ft, %bb.u ], [ %.03949.i83.i, %bb.x ], [ %.140.lcssa.i86.i, %.loopexit.i85.i ]
  %.0.lcssa.i72.i = phi ptr [ %i.as, %bb.u ], [ %.050.i82.i, %bb.x ], [ %.1.lcssa.i87.i, %.loopexit.i85.i ]
  store i32 %.039.lcssa.i71.i, ptr %i.m, align 8, !tbaa !86
  %i.hz = icmp eq ptr %.0.lcssa.i72.i, %i.fs
  %i.ia = load i32, ptr %i.at, align 8
  %i.ib = freeze i32 %i.ia
  %.fr.i73.i = select i1 %i.hz, i32 %i.ib, i32 0  ; 2 uses
  store i32 %.fr.i73.i, ptr %i.aq, align 8, !tbaa !164
  %i.ic = load i32, ptr %i.aw, align 8, !tbaa !95
  %i.id = load i32, ptr %i.am, align 4, !tbaa !96
  %i.ie = load i32, ptr %i.ax, align 4, !tbaa !96
  %i.if = and i32 %i.ie, 2048
  %storemerge.i.i74.i = or i32 %i.if, %i.id
  %.not44.i75.i = icmp eq i32 %.fr.i73.i, 0
  %i.ig = select i1 %.not44.i75.i, i32 0, i32 %storemerge.i.i74.i
  %.sroa.5.0.insert.ext.i77.i = zext i32 %i.ig to i64
  %.sroa.5.0.insert.shift.i78.i = shl nuw i64 %.sroa.5.0.insert.ext.i77.i, 32
  %.sroa.0.0.insert.ext.i79.i = zext i32 %i.ic to i64
  %.sroa.0.0.insert.insert.i80.i = or disjoint i64 %.sroa.5.0.insert.shift.i78.i, %.sroa.0.0.insert.ext.i79.i
  store i64 %.sroa.0.0.insert.insert.i80.i, ptr %i.aw, align 8, !tbaa !17
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %._crit_edge.i70.i, %bb.l, %._crit_edge.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  store i32 -1, ptr %i.ar, align 4, !tbaa !87
  store i32 0, ptr %i.aj, align 8, !tbaa !86
  store i8 0, ptr %i.as, align 4, !tbaa !41
  br label %bb.y

bb.y:                                             ; preds = %.sink.split.i, %bb.q, %bb.h
  call fastcc void @select_opt_exact_info(ptr noundef %i.bx, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ai)
  call fastcc void @select_opt_exact_info(ptr noundef %i.bx, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ay)
  %i.ih = load i32, ptr %i.q, align 8, !tbaa !295 ; 2 uses
  %i.ii = icmp sgt i32 %i.ih, 0
  br i1 %i.ii, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.ij = load i64, ptr %i.aa, align 8, !tbaa !97 ; 2 uses
  %.not63.i = icmp eq i64 %i.ij, 0
  br i1 %.not63.i, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ik = trunc i64 %i.ij to i32                  ; 2 uses
  %i.il = icmp sgt i32 %i.ih, %i.ik
  br i1 %i.il, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.ik, ptr %i.q, align 8, !tbaa !295
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.im = load i64, ptr %i.w, align 8, !tbaa !296
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @select_opt_exact_info(ptr noundef %i.bx, ptr noundef nonnull %i.t, ptr noundef nonnull %i.o)
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  call fastcc void @select_opt_exact_info(ptr noundef %i.bx, ptr noundef nonnull %i.k, ptr noundef nonnull %i.o)
  br label %bb.ah

bb.af:                                            ; preds = %bb.y
  %i.io = load i32, ptr %i.az, align 8, !tbaa !295
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ba, i64 64, i1 false), !tbaa.struct !297
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.z
  %i.iq = load i32, ptr %i.ak, align 8, !tbaa !165 ; 2 uses
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %concat_left_node_opt_info.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.is = load i32, ptr %i.bc, align 8, !tbaa !165 ; 2 uses
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %comp_distance_value.exit.sink.split.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iu = sdiv i32 32768, %i.is                   ; 3 uses
  %i.iv = sdiv i32 32768, %i.iq                   ; 3 uses
  %i.iw = icmp slt i32 %i.iv, 1
  br i1 %i.iw, label %concat_left_node_opt_info.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ix = icmp slt i32 %i.iu, 1
  br i1 %i.ix, label %comp_distance_value.exit.sink.split.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iy = load i64, ptr %i.x, align 8, !tbaa !88  ; 2 uses
  %i.iz = icmp eq i64 %i.iy, -1
  br i1 %i.iz, label %distance_value.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ja = load i64, ptr %i.s, align 8, !tbaa !89
  %i.jb = sub i64 %i.iy, %i.ja                    ; 2 uses
  %i.jc = icmp ult i64 %i.jb, 100
  br i1 %i.jc, label %bb.an, label %distance_value.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.jd = getelementptr [2 x i8], ptr @distance_value.dist_vals, i64 %i.jb
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !91
  %i.jf = sext i16 %i.je to i32
  %i.jg = mul nsw i32 %i.iu, %i.jf
  br label %distance_value.exit.i.i.i

distance_value.exit.i.i.i:                        ; preds = %bb.an, %bb.am, %bb.al
  %.0.i.i.i.i = phi i32 [ 0, %bb.al ], [ %i.jg, %bb.an ], [ %i.iu, %bb.am ] ; 2 uses
  %i.jh = load i64, ptr %i.an, align 8, !tbaa !88 ; 2 uses
  %i.ji = icmp eq i64 %i.jh, -1
  br i1 %i.ji, label %distance_value.exit21.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %distance_value.exit.i.i.i
  %i.jj = load i64, ptr %i.bb, align 8, !tbaa !89
  %i.jk = sub i64 %i.jh, %i.jj                    ; 2 uses
  %i.jl = icmp ult i64 %i.jk, 100
  br i1 %i.jl, label %bb.ap, label %distance_value.exit21.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.jm = getelementptr [2 x i8], ptr @distance_value.dist_vals, i64 %i.jk
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !91
  %i.jo = sext i16 %i.jn to i32
  %i.jp = mul nsw i32 %i.iv, %i.jo
  br label %distance_value.exit21.i.i.i

distance_value.exit21.i.i.i:                      ; preds = %bb.ap, %bb.ao, %distance_value.exit.i.i.i
  %.0.i20.i.i.i = phi i32 [ 0, %distance_value.exit.i.i.i ], [ %i.jp, %bb.ap ], [ %i.iv, %bb.ao ] ; 2 uses
  %i.jq = icmp sgt i32 %.0.i20.i.i.i, %.0.i.i.i.i
  br i1 %i.jq, label %comp_distance_value.exit.sink.split.i.i, label %bb.aq

bb.aq:                                            ; preds = %distance_value.exit21.i.i.i
  %i.jr = icmp slt i32 %.0.i20.i.i.i, %.0.i.i.i.i
  br i1 %i.jr, label %concat_left_node_opt_info.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.js = load i64, ptr %i.bb, align 8, !tbaa !89
  %i.jt = load i64, ptr %i.s, align 8, !tbaa !89
  %i.ju = icmp ult i64 %i.js, %i.jt
  br i1 %i.ju, label %comp_distance_value.exit.sink.split.i.i, label %concat_left_node_opt_info.exit

comp_distance_value.exit.sink.split.i.i:          ; preds = %bb.ar, %distance_value.exit21.i.i.i, %bb.ak, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(288) %i.bb, i64 288, i1 false)
  br label %concat_left_node_opt_info.exit

concat_left_node_opt_info.exit:                   ; preds = %bb.ah, %bb.aj, %bb.aq, %bb.ar, %comp_distance_value.exit.sink.split.i.i
  %.val.i324 = load i64, ptr %4, align 8, !tbaa !89 ; 3 uses
  %.val64.i = load i64, ptr %i.aa, align 8, !tbaa !88 ; 3 uses
  %i.jv = load i64, ptr %1, align 8, !tbaa !89    ; 3 uses
  %i.jw = icmp eq i64 %i.jv, -1
  %i.jx = icmp eq i64 %.val.i324, -1
  %or.cond.i.i.i = or i1 %i.jx, %i.jw
  %i.jy = xor i64 %.val.i324, -1
  %.not.i.i.i = icmp ugt i64 %i.jv, %i.jy
  %or.cond10.i.i.i = or i1 %.not.i.i.i, %or.cond.i.i.i
  %i.jz = add i64 %i.jv, %.val.i324
  %.0.i.i.i = select i1 %or.cond10.i.i.i, i64 -1, i64 %i.jz
  store i64 %.0.i.i.i, ptr %1, align 8, !tbaa !89
  %i.ka = load i64, ptr %i.ae, align 8, !tbaa !88 ; 3 uses
  %i.kb = icmp eq i64 %i.ka, -1
  %i.kc = icmp eq i64 %.val64.i, -1
  %or.cond.i6.i.i = or i1 %i.kc, %i.kb
  %i.kd = xor i64 %.val64.i, -1
  %.not.i7.i.i = icmp ugt i64 %i.ka, %i.kd
  %or.cond10.i8.i.i = or i1 %.not.i7.i.i, %or.cond.i6.i.i
  %i.ke = add i64 %i.ka, %.val64.i
  %.0.i9.i.i = select i1 %or.cond10.i8.i.i, i64 -1, i64 %i.ke
  store i64 %.0.i9.i.i, ptr %i.ae, align 8, !tbaa !88
  %i.kf = getelementptr i8, ptr %.0256, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !41 ; 2 uses
  %.not315 = icmp eq ptr %i.kg, null
  br i1 %.not315, label %.critedge, label %bb.c, !llvm.loop !269

.critedge:                                        ; preds = %bb.c, %concat_left_node_opt_info.exit
  %.lcssa644 = phi i32 [ %i.bl, %bb.c ], [ 0, %concat_left_node_opt_info.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.ret1048

bb.as:                                            ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.kh = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.kj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.kk = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.kl = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.km = getelementptr i8, ptr %2, i64 16
  %i.kn = getelementptr inbounds nuw i8, ptr %5, i64 216
  %i.ko = getelementptr i8, ptr %1, i64 240       ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %5, i64 240
  %i.kq = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.kr = getelementptr inbounds nuw i8, ptr %5, i64 244 ; 2 uses
  %i.ks = getelementptr i8, ptr %1, i64 244       ; 3 uses
  %i.kt = getelementptr i8, ptr %1, i64 232       ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %5, i64 232
  %i.kv = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.at

bb.at:                                            ; preds = %alt_merge_node_opt_info.exit, %bb.as
  %.0257 = phi ptr [ %.tr, %bb.as ], [ %i.mo, %alt_merge_node_opt_info.exit ] ; 3 uses
  %i.kx = getelementptr i8, ptr %.0257, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !41
  %i.kz = call fastcc i32 @optimize_node_left(ptr noundef %i.ky, ptr noundef %5, ptr noundef %2) ; 2 uses
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %bb.au, label %.critedge3

bb.au:                                            ; preds = %bb.at
  %i.lb = icmp eq ptr %.0257, %.tr
  br i1 %i.lb, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull readonly align 8 dereferenceable(504) %5, i64 504, i1 false), !tbaa.struct !298
  br label %alt_merge_node_opt_info.exit

bb.aw:                                            ; preds = %bb.au
  %i.lc = load <2 x i32>, ptr %i.ki, align 8, !tbaa !17
  %i.ld = load <2 x i32>, ptr %i.kh, align 8, !tbaa !17
  %i.le = and <2 x i32> %i.ld, %i.lc
  store <2 x i32> %i.le, ptr %i.kh, align 8, !tbaa !17
  call fastcc void @alt_merge_opt_exact_info(ptr noundef nonnull %i.t, ptr noundef nonnull readonly %i.kj, ptr noundef nonnull readonly %2)
  call fastcc void @alt_merge_opt_exact_info(ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.kk, ptr noundef nonnull readonly %2)
  call fastcc void @alt_merge_opt_exact_info(ptr noundef nonnull %i.o, ptr noundef nonnull readonly %i.kl, ptr noundef nonnull readonly %2)
  %i.lf = load ptr, ptr %i.km, align 8, !tbaa !75
  %i.lg = load i32, ptr %i.ko, align 8, !tbaa !165
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %alt_merge_opt_map_info.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.li = load i32, ptr %i.kp, align 8, !tbaa !165
  %i.lj = icmp eq i32 %i.li, 0
  br i1 %i.lj, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lk = load i64, ptr %i.x, align 8, !tbaa !299 ; 2 uses
  %i.ll = load i64, ptr %i.kn, align 8, !tbaa !94 ; 3 uses
  %i.lm = icmp ult i64 %i.lk, %i.ll
  br i1 %i.lm, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.s, ptr noundef nonnull align 8 dereferenceable(288) @clear_opt_map_info.clean_info, i64 noundef 288, i1 noundef false) #22
  br label %alt_merge_opt_map_info.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.ln = load i64, ptr %i.s, align 8, !tbaa !89
  %i.lo = icmp ugt i64 %i.ln, %i.ll
  br i1 %i.lo, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i64 %i.ll, ptr %i.s, align 8, !tbaa !89
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.lp = load i64, ptr %i.kq, align 8, !tbaa !88 ; 2 uses
  %i.lq = icmp ult i64 %i.lk, %i.lp
  br i1 %i.lq, label %bb.bd, label %alt_merge_mml.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  store i64 %i.lp, ptr %i.x, align 8, !tbaa !88
  br label %alt_merge_mml.exit.i.i

alt_merge_mml.exit.i.i:                           ; preds = %bb.bd, %bb.bc
  %i.lr = getelementptr i8, ptr %i.lf, i64 20
  %i.ls = load i8, ptr %i.kr, align 4, !tbaa !41
  %.not.peel.i.i = icmp eq i8 %i.ls, 0
  br i1 %.not.peel.i.i, label %bb.be, label %.thread.i.i

.thread.i.i:                                      ; preds = %alt_merge_mml.exit.i.i
  store i8 1, ptr %i.ks, align 4, !tbaa !41
  br label %bb.bf

end_hunk_0
begin_hunk_1_@optimize_node_left:bb.a
  %.0253628 = phi i32 [ 2, %.lr.ph ], [ %i.afu, %concat_opt_exact_info.exit ] ; 2 uses
  %i.acx = icmp slt i32 %.val322, 24
  br i1 %i.acx, label %bb.ee, label %.critedge5

bb.ee:                                            ; preds = %bb.ed
  %i.acy = load ptr, ptr %i.acl, align 8, !tbaa !75 ; 3 uses
  %i.acz = load i32, ptr %i.h, align 4, !tbaa !87 ; 2 uses
  %i.ada = icmp slt i32 %i.acz, 0
  %i.adb = load i32, ptr %i.acm, align 4, !tbaa !87 ; 2 uses
  br i1 %i.ada, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i32 %i.adb, ptr %i.h, align 4, !tbaa !87
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  %.not.i356 = icmp eq i32 %i.acz, %i.adb
  br i1 %.not.i356, label %bb.eh, label %concat_opt_exact_info.exit

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.adc = load i32, ptr %i.acf, align 8, !tbaa !86
  %i.add = sext i32 %i.adc to i64                 ; 3 uses
  %i.ade = getelementptr i8, ptr %i.acn, i64 %i.add ; 6 uses
  %i.adf = icmp ult ptr %i.acn, %i.ade
  br i1 %i.adf, label %.lr.ph51.i, label %._crit_edge.i

.lr.ph51.i:                                       ; preds = %bb.eh
  %i.adg = getelementptr i8, ptr %i.acy, i64 16
  %i.adh = getelementptr i8, ptr %i.acy, i64 20
  %i.adi = add i64 %i.acs, %i.add
  %i.adj = add i64 %i.acu, %i.add
  br label %bb.ei

.loopexit.i362:                                   ; preds = %.lr.ph.i364, %middle.block, %vec.epilog.middle.block, %.preheader.i361
  %.140.lcssa.i = phi i32 [ %.03949.i, %.preheader.i361 ], [ %i.aev, %vec.epilog.middle.block ], [ %i.ael, %middle.block ], [ %i.afd, %.lr.ph.i364 ] ; 2 uses
  %.1.lcssa.i363 = phi ptr [ %.050.i, %.preheader.i361 ], [ %i.aet, %vec.epilog.middle.block ], [ %i.aej, %middle.block ], [ %i.afb, %.lr.ph.i364 ] ; 3 uses
  %i.adk = icmp ult ptr %.1.lcssa.i363, %i.ade
  br i1 %i.adk, label %bb.ei, label %._crit_edge.i.loopexit, !llvm.loop !262

bb.ei:                                            ; preds = %.loopexit.i362, %.lr.ph51.i
  %.050.i = phi ptr [ %i.acn, %.lr.ph51.i ], [ %.1.lcssa.i363, %.loopexit.i362 ] ; 12 uses
  %.03949.i = phi i32 [ %.val322, %.lr.ph51.i ], [ %.140.lcssa.i, %.loopexit.i362 ] ; 13 uses
  %.050.i831 = ptrtoaddr ptr %.050.i to i64       ; 3 uses
  %i.adl = load i32, ptr %i.adg, align 8, !tbaa !125 ; 2 uses
  %i.adm = load i32, ptr %i.adh, align 4, !tbaa !126
  %i.adn = icmp eq i32 %i.adl, %i.adm
  br i1 %i.adn, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ado = call i32 @onigenc_mbclen(ptr noundef %.050.i, ptr noundef nonnull %i.ade, ptr noundef nonnull %i.acy) #22
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.adp = phi i32 [ %i.ado, %bb.ej ], [ %i.adl, %bb.ei ] ; 5 uses
  %i.adq = add i32 %i.adp, %.03949.i
  %i.adr = icmp sgt i32 %i.adq, 24
  br i1 %i.adr, label %._crit_edge.i.loopexit, label %.preheader.i361

.preheader.i361:                                  ; preds = %bb.ek
  %i.ads = icmp sgt i32 %i.adp, 0
  %i.adt = icmp ult ptr %.050.i, %i.ade
  %i.adu = and i1 %i.adt, %i.ads
  br i1 %i.adu, label %iter.check, label %.loopexit.i362

iter.check:                                       ; preds = %.preheader.i361
  %i.adv = sub i64 %i.adj, %.050.i831
  %i.adw = add nsw i32 %i.adp, -1
  %i.adx = zext i32 %i.adw to i64
  %umin832 = call i64 @llvm.umin.i64(i64 %i.adv, i64 %i.adx) ; 3 uses
  %i.ady = add nuw nsw i64 %umin832, 1            ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin832, 3
  br i1 %min.iters.check, label %.lr.ph.i364.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.adz = sub i64 %i.adi, %.050.i831
  %i.aea = add nsw i32 %i.adp, -1
  %i.aeb = zext i32 %i.aea to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.adz, i64 %i.aeb)
  %i.aec = trunc nuw i64 %umin to i32
  %i.aed = add i32 %.03949.i, %i.aec
  %i.aee = icmp slt i32 %i.aed, %.03949.i
  br i1 %i.aee, label %.lr.ph.i364.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aef = sext i32 %.03949.i to i64
  %i.aeg = add i64 %i.act, %i.aef
  %i.aeh = sub i64 %.050.i831, %i.aeg
  %diff.check = icmp ugt i64 %i.aeh, -32
  br i1 %diff.check, label %.lr.ph.i364.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check833 = icmp samesign ult i64 %umin832, 31
  br i1 %min.iters.check833, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aei = and i64 %i.ady, 28
  %n.vec = and i64 %i.ady, 8589934560             ; 5 uses
  %i.aej = getelementptr i8, ptr %.050.i, i64 %n.vec ; 2 uses
  %i.aek = trunc i64 %n.vec to i32                ; 2 uses
  %i.ael = add i32 %.03949.i, %i.aek              ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.050.i, i64 %index ; 2 uses
  %i.aem = trunc i64 %index to i32
  %i.aen = add i32 %.03949.i, %i.aem
  %i.aeo = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !41
  %wide.load834 = load <16 x i8>, ptr %i.aeo, align 1, !tbaa !41
  %i.aep = sext i32 %i.aen to i64
  %i.aeq = getelementptr i8, ptr %i.j, i64 %i.aep ; 2 uses
  %i.aer = getelementptr i8, ptr %i.aeq, i64 16
  store <16 x i8> %wide.load, ptr %i.aeq, align 1, !tbaa !41
  store <16 x i8> %wide.load834, ptr %i.aer, align 1, !tbaa !41
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aes = icmp eq i64 %index.next, %n.vec
  br i1 %i.aes, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ady, %n.vec
  br i1 %cmp.n, label %.loopexit.i362, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aei, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i364.preheader, label %vec.epilog.ph, !prof !294

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec837 = and i64 %i.ady, 8589934588          ; 4 uses
  %i.aet = getelementptr i8, ptr %.050.i, i64 %n.vec837 ; 2 uses
  %i.aeu = trunc i64 %n.vec837 to i32             ; 2 uses
  %i.aev = add i32 %.03949.i, %i.aeu              ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index838 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next841, %vec.epilog.vector.body ] ; 3 uses
  %next.gep839 = getelementptr i8, ptr %.050.i, i64 %index838
  %i.aew = trunc i64 %index838 to i32
  %i.aex = add i32 %.03949.i, %i.aew
  %wide.load840 = load <4 x i8>, ptr %next.gep839, align 1, !tbaa !41
  %i.aey = sext i32 %i.aex to i64
  %i.aez = getelementptr i8, ptr %i.j, i64 %i.aey
  store <4 x i8> %wide.load840, ptr %i.aez, align 1, !tbaa !41
  %index.next841 = add nuw i64 %index838, 4       ; 2 uses
  %i.afa = icmp eq i64 %index.next841, %n.vec837
  br i1 %i.afa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !284

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n842 = icmp eq i64 %i.ady, %n.vec837
  br i1 %cmp.n842, label %.loopexit.i362, label %.lr.ph.i364.preheader

.lr.ph.i364.preheader:                            ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.147.i.ph = phi ptr [ %.050.i, %iter.check ], [ %.050.i, %vector.scevcheck ], [ %.050.i, %vector.memcheck ], [ %i.aej, %vec.epilog.iter.check ], [ %i.aet, %vec.epilog.middle.block ]
  %.03846.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %i.aek, %vec.epilog.iter.check ], [ %i.aeu, %vec.epilog.middle.block ]
  %.14045.i.ph = phi i32 [ %.03949.i, %iter.check ], [ %.03949.i, %vector.scevcheck ], [ %.03949.i, %vector.memcheck ], [ %i.ael, %vec.epilog.iter.check ], [ %i.aev, %vec.epilog.middle.block ]
  br label %.lr.ph.i364

.lr.ph.i364:                                      ; preds = %.lr.ph.i364.preheader, %.lr.ph.i364
  %.147.i = phi ptr [ %i.afb, %.lr.ph.i364 ], [ %.147.i.ph, %.lr.ph.i364.preheader ] ; 2 uses
  %.03846.i = phi i32 [ %i.afg, %.lr.ph.i364 ], [ %.03846.i.ph, %.lr.ph.i364.preheader ]
  %.14045.i = phi i32 [ %i.afd, %.lr.ph.i364 ], [ %.14045.i.ph, %.lr.ph.i364.preheader ] ; 2 uses
  %i.afb = getelementptr i8, ptr %.147.i, i64 1   ; 3 uses
  %i.afc = load i8, ptr %.147.i, align 1, !tbaa !41
  %i.afd = add i32 %.14045.i, 1                   ; 2 uses
  %i.afe = sext i32 %.14045.i to i64
  %i.aff = getelementptr i8, ptr %i.j, i64 %i.afe
  store i8 %i.afc, ptr %i.aff, align 1, !tbaa !41
  %i.afg = add nuw nsw i32 %.03846.i, 1           ; 2 uses
  %i.afh = icmp slt i32 %i.afg, %i.adp
  %i.afi = icmp ult ptr %i.afb, %i.ade
  %i.afj = and i1 %i.afi, %i.afh
  br i1 %i.afj, label %.lr.ph.i364, label %.loopexit.i362, !llvm.loop !285

._crit_edge.i.loopexit:                           ; preds = %.loopexit.i362, %bb.ek
  %.039.lcssa.i.ph = phi i32 [ %.03949.i, %bb.ek ], [ %.140.lcssa.i, %.loopexit.i362 ]
  %.0.lcssa.i.ph = phi ptr [ %.050.i, %bb.ek ], [ %.1.lcssa.i363, %.loopexit.i362 ]
  %.pre = load i32, ptr %i.aci, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.eh
  %i.afk = phi i32 [ %i.acw, %bb.eh ], [ %.pre, %._crit_edge.i.loopexit ]
  %.039.lcssa.i = phi i32 [ %.val322, %bb.eh ], [ %.039.lcssa.i.ph, %._crit_edge.i.loopexit ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.acn, %bb.eh ], [ %.0.lcssa.i.ph, %._crit_edge.i.loopexit ]
  %i.afl = freeze i32 %i.afk                      ; 2 uses
  store i32 %.039.lcssa.i, ptr %i.i, align 8, !tbaa !86
  %i.afm = icmp eq ptr %.0.lcssa.i, %i.ade
  %.fr.i = select i1 %i.afm, i32 %i.afl, i32 0    ; 2 uses
  store i32 %.fr.i, ptr %i.aco, align 8, !tbaa !164
  %i.afn = load i32, ptr %i.acp, align 8, !tbaa !95
  %i.afo = load i32, ptr %i.acq, align 4, !tbaa !96
  %i.afp = load i32, ptr %i.acr, align 4, !tbaa !96
  %i.afq = and i32 %i.afp, 2048
  %storemerge.i.i357 = or i32 %i.afq, %i.afo
  %.not44.i = icmp eq i32 %.fr.i, 0
  %i.afr = select i1 %.not44.i, i32 0, i32 %storemerge.i.i357
  %.sroa.5.0.insert.ext.i = zext i32 %i.afr to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i359 = zext i32 %i.afn to i64
  %.sroa.0.0.insert.insert.i360 = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.0.0.insert.ext.i359
  store i64 %.sroa.0.0.insert.insert.i360, ptr %i.acp, align 8, !tbaa !17
  %.pre681 = load i32, ptr %i.abl, align 8, !tbaa !118
  br label %concat_opt_exact_info.exit

concat_opt_exact_info.exit:                       ; preds = %bb.eg, %._crit_edge.i
  %i.afs = phi i32 [ %i.acv, %bb.eg ], [ %.pre681, %._crit_edge.i ] ; 3 uses
  %i.aft = phi i32 [ %i.acw, %bb.eg ], [ %i.afl, %._crit_edge.i ]
  %.val322679 = phi i32 [ %.val322, %bb.eg ], [ %.039.lcssa.i, %._crit_edge.i ]
  %i.afu = add i32 %.0253628, 1                   ; 3 uses
  %.not285 = icmp sgt i32 %i.afu, %i.afs
  br i1 %.not285, label %.critedge5, label %bb.ed, !llvm.loop !286

.critedge5:                                       ; preds = %bb.ed, %concat_opt_exact_info.exit
  %i.afv = phi i32 [ %i.acv, %bb.ed ], [ %i.afs, %concat_opt_exact_info.exit ] ; 3 uses
  %.0253.lcssa.ph = phi i32 [ %.0253628, %bb.ed ], [ %i.afu, %concat_opt_exact_info.exit ]
  %i.afw = icmp slt i32 %.0253.lcssa.ph, %i.afv
  br i1 %i.afw, label %bb.el, label %.critedge5.thread

bb.el:                                            ; preds = %.critedge5
  %i.afx = getelementptr i8, ptr %1, i64 48
  store i32 0, ptr %i.afx, align 8, !tbaa !290
  br label %.critedge5.thread

.critedge5.thread:                                ; preds = %bb.el, %.critedge5, %bb.ec
  %i.afy = phi i32 [ %i.afv, %bb.el ], [ %i.afv, %.critedge5 ], [ %.pre682, %bb.ec ] ; 5 uses
  %i.afz = getelementptr i8, ptr %.tr, i64 20
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !116 ; 4 uses
  %.not287 = icmp eq i32 %i.afy, %i.aga
  br i1 %.not287, label %bb.en, label %bb.em

bb.em:                                            ; preds = %.critedge5.thread
  %i.agb = getelementptr i8, ptr %1, i64 48
  store i32 0, ptr %i.agb, align 8, !tbaa !290
  %i.agc = getelementptr i8, ptr %1, i64 112
  store i32 0, ptr %i.agc, align 8, !tbaa !291
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %.critedge5.thread
  %i.agd = icmp sgt i32 %i.afy, 1
  br i1 %i.agd, label %.thread377.thread766, label %.thread377

.thread377.thread766:                             ; preds = %bb.en
  %i.age = getelementptr i8, ptr %1, i64 112
  store i32 0, ptr %i.age, align 8, !tbaa !291
  br label %.thread378

.thread377:                                       ; preds = %bb.en
  %i.agf = icmp eq i32 %i.afy, 0
  br i1 %i.agf, label %distance_multiply.exit, label %.thread378

.thread378:                                       ; preds = %.thread377.thread766, %..thread378_crit_edge, %.thread377
  %.pre684 = phi i32 [ %i.aga, %.thread377 ], [ %.pre684.pre, %..thread378_crit_edge ], [ %i.aga, %.thread377.thread766 ]
  %i.agg = phi i32 [ %i.afy, %.thread377 ], [ %i.abm, %..thread378_crit_edge ], [ %i.afy, %.thread377.thread766 ]
  %i.agh = load i64, ptr %7, align 8, !tbaa !305  ; 2 uses
  %i.agi = sext i32 %i.agg to i64                 ; 2 uses
  %i.agj = udiv i64 -1, %i.agi
  %i.agk = icmp ult i64 %i.agh, %i.agj
  %i.agl = mul i64 %i.agh, %i.agi
  %spec.select.i365.a = select i1 %i.agk, i64 %i.agl, i64 -1
  br label %distance_multiply.exit

distance_multiply.exit:                           ; preds = %bb.dx, %.thread377, %.thread378
  %i.agm = phi i32 [ %i.aga, %.thread377 ], [ %.pre684, %.thread378 ], [ %i.abp, %bb.dx ] ; 2 uses
  %.0.i = phi i64 [ 0, %.thread377 ], [ %spec.select.i365.a, %.thread378 ], [ 0, %bb.dx ] ; 3 uses
  switch i32 %i.agm, label %bb.eo [
    i32 -1, label %distance_multiply.exit.thread
    i32 0, label %distance_multiply.exit368
  ]

distance_multiply.exit.thread:                    ; preds = %distance_multiply.exit.thread.sink.split, %bb.dy, %bb.dz, %bb.ea, %distance_multiply.exit
  %.0.i771 = phi i64 [ %.0.i, %distance_multiply.exit ], [ 0, %bb.dz ], [ 0, %bb.dy ], [ 0, %bb.ea ], [ 0, %distance_multiply.exit.thread.sink.split ]
  %i.agn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ago = load i64, ptr %i.agn, align 8, !tbaa !97
  %.not290 = icmp ne i64 %i.ago, 0
  %i.agp = sext i1 %.not290 to i64
  br label %distance_multiply.exit368

bb.eo:                                            ; preds = %distance_multiply.exit
  %i.agq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.agr = load i64, ptr %i.agq, align 8, !tbaa !97 ; 2 uses
  %i.ags = sext i32 %i.agm to i64                 ; 2 uses
  %i.agt = udiv i64 -1, %i.ags
  %i.agu = icmp ult i64 %i.agr, %i.agt
  %i.agv = mul i64 %i.agr, %i.ags
  %spec.select.i366 = select i1 %i.agu, i64 %i.agv, i64 -1
  br label %distance_multiply.exit368

distance_multiply.exit368:                        ; preds = %distance_multiply.exit, %bb.eo, %distance_multiply.exit.thread
  %.0.i770 = phi i64 [ %.0.i771, %distance_multiply.exit.thread ], [ %.0.i, %distance_multiply.exit ], [ %.0.i, %bb.eo ]
  %.0252 = phi i64 [ %i.agp, %distance_multiply.exit.thread ], [ 0, %distance_multiply.exit ], [ %spec.select.i366, %bb.eo ]
  store i64 %.0.i770, ptr %1, align 8, !tbaa !89
  %i.agw = getelementptr i8, ptr %1, i64 8
  store i64 %.0252, ptr %i.agw, align 8, !tbaa !88
  br label %bb.ep

bb.ep:                                            ; preds = %bb.dv, %distance_multiply.exit368
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.ret1048

bb.eq:                                            ; preds = %tailrecurse
  %i.agx = getelementptr i8, ptr %.tr, i64 8
  %i.agy = load i32, ptr %i.agx, align 8, !tbaa !120 ; 2 uses
  %i.agz = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.agy)
  %i.aha = icmp eq i32 %i.agz, 1
  br i1 %i.aha, label %.split6, label %common.ret1048

.split6:                                          ; preds = %bb.eq
  %i.ahb = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.agy, i1 true)
  switch i32 %i.ahb, label %common.ret1048 [
    i32 1, label %bb.er
    i32 0, label %bb.es
    i32 2, label %bb.fc
    i32 3, label %bb.fc
    i32 4, label %bb.fd
  ]

bb.er:                                            ; preds = %.split6
  %i.ahc = getelementptr i8, ptr %2, i64 24       ; 3 uses
  %i.ahd = load i32, ptr %i.ahc, align 8, !tbaa !76
  %i.ahe = getelementptr i8, ptr %.tr, i64 16
  %i.ahf = load i32, ptr %i.ahe, align 8, !tbaa !150
  store i32 %i.ahf, ptr %i.ahc, align 8, !tbaa !76
  %i.ahg = getelementptr i8, ptr %.tr, i64 24
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !113
  %i.ahi = tail call fastcc i32 @optimize_node_left(ptr noundef %i.ahh, ptr noundef %1, ptr noundef %2)
  store i32 %i.ahd, ptr %i.ahc, align 8, !tbaa !76
  br label %common.ret1048

bb.es:                                            ; preds = %.split6
  %i.ahj = getelementptr i8, ptr %.tr, i64 52     ; 2 uses
  %i.ahk = load i32, ptr %i.ahj, align 4, !tbaa !306
  %i.ahl = add i32 %i.ahk, 1                      ; 2 uses
  store i32 %i.ahl, ptr %i.ahj, align 4, !tbaa !306
  %i.ahm = icmp sgt i32 %i.ahl, 5
  br i1 %i.ahm, label %bb.et, label %bb.ey

bb.et:                                            ; preds = %bb.es
  %i.ahn = getelementptr i8, ptr %.tr, i64 4
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !112 ; 2 uses
  %i.ahp = and i32 %i.aho, 1
  %.not282 = icmp eq i32 %i.ahp, 0
  br i1 %.not282, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ahq = getelementptr i8, ptr %.tr, i64 32
  %i.ahr = load i64, ptr %i.ahq, align 8, !tbaa !162
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.0251 = phi i64 [ %i.ahr, %bb.eu ], [ 0, %bb.et ]
  %i.ahs = and i32 %i.aho, 2
  %.not283 = icmp eq i32 %i.ahs, 0
  br i1 %.not283, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aht = getelementptr i8, ptr %.tr, i64 40
  %i.ahu = load i64, ptr %i.aht, align 8, !tbaa !167
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.0 = phi i64 [ %i.ahu, %bb.ew ], [ -1, %bb.ev ]
  store i64 %.0251, ptr %1, align 8, !tbaa !89
  %i.ahv = getelementptr i8, ptr %1, i64 8
  store i64 %.0, ptr %i.ahv, align 8, !tbaa !88
  br label %common.ret1048

bb.ey:                                            ; preds = %bb.es
  %i.ahw = getelementptr i8, ptr %.tr, i64 24
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !113
  %i.ahy = tail call fastcc i32 @optimize_node_left(ptr noundef %i.ahx, ptr noundef %1, ptr noundef %2) ; 4 uses
  %i.ahz = getelementptr i8, ptr %1, i64 16       ; 2 uses
  %i.aia = load i32, ptr %i.ahz, align 8, !tbaa !95 ; 2 uses
  %i.aib = and i32 %i.aia, 49152
  %.not.i369 = icmp eq i32 %i.aib, 0
  br i1 %.not.i369, label %is_set_opt_anc_info.exit, label %is_set_opt_anc_info.exit.thread

is_set_opt_anc_info.exit:                         ; preds = %bb.ey
  %i.aic = getelementptr i8, ptr %1, i64 20
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !96
  %i.aie = and i32 %i.aid, 49152
  %.not4.i.not = icmp eq i32 %i.aie, 0
  br i1 %.not4.i.not, label %common.ret1048, label %is_set_opt_anc_info.exit.thread

is_set_opt_anc_info.exit.thread:                  ; preds = %bb.ey, %is_set_opt_anc_info.exit
  %i.aif = getelementptr i8, ptr %.tr, i64 12
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !140 ; 2 uses
  %i.aih = icmp slt i32 %i.aig, 32
  %i.aii = getelementptr i8, ptr %2, i64 32
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !79
  %i.aik = getelementptr i8, ptr %i.aij, i64 36
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !136 ; 2 uses
  br i1 %i.aih, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %is_set_opt_anc_info.exit.thread
  %i.aim = shl nuw i32 1, %i.aig
  %i.ain = and i32 %i.ail, %i.aim
  %.not281 = icmp eq i32 %i.ain, 0
  br i1 %.not281, label %common.ret1048, label %bb.fb

bb.fa:                                            ; preds = %is_set_opt_anc_info.exit.thread
  %i.aio = and i32 %i.ail, 1
end_hunk_1
