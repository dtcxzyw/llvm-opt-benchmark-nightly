Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/regcomp?download=true
inline.NumInlined: 213
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@get_char_length_tree1:bb.a

distance_multiply.exit:                           ; preds = %bb.m, %bb.n
  %.0.i95 = phi i32 [ 0, %bb.m ], [ %i.bt, %bb.n ]
  store i32 %.0.i95, ptr %2, align 4, !tbaa !17
  br label %.critedge

bb.o:                                             ; preds = %bb.a
  %i.bu = getelementptr i8, ptr %0, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !46
  %i.bw = and i32 %i.bv, 128
  %.not88 = icmp eq i32 %i.bw, 0
  br i1 %.not88, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr i8, ptr %0, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !46
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
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !125 ; 2 uses
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
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !117
  %i.ch = and i32 %i.cg, 4
  %.not = icmp eq i32 %i.ch, 0
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr i8, ptr %0, i64 48
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !306
  store i32 %i.cj, ptr %2, align 4, !tbaa !17
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.ck = getelementptr i8, ptr %0, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !118
  %i.cm = tail call fastcc i32 @get_char_length_tree1(ptr noundef %i.cl, ptr noundef %1, ptr noundef %2, i32 noundef %i.c) ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.co = load i32, ptr %2, align 4, !tbaa !17
  %i.cp = getelementptr i8, ptr %0, i64 48
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !306
  %i.cq = load i32, ptr %i.cf, align 4, !tbaa !46
  %i.cr = or i32 %i.cq, 4
  store i32 %i.cr, ptr %i.cf, align 4, !tbaa !46
  br label %.critedge

bb.x:                                             ; preds = %.split, %.split, %.split
  %i.cs = getelementptr i8, ptr %0, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !118
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
define internal fastcc i32 @optimize_node_left(ptr nofree noundef captures(address) %0, ptr noundef nonnull initializes((0, 61), (88, 125), (152, 189)) %1, ptr noundef nonnull %2) unnamed_addr #4 !guid !332 {
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
  store i32 -1, ptr %i.h, align 4, !tbaa !92
  %i.i = getelementptr i8, ptr %1, i64 56         ; 8 uses
  store i32 0, ptr %i.i, align 8, !tbaa !91
  %i.j = getelementptr i8, ptr %1, i64 60         ; 13 uses
  store i8 0, ptr %i.j, align 4, !tbaa !46
  %i.k = getelementptr i8, ptr %1, i64 88         ; 5 uses
  %i.l = getelementptr i8, ptr %1, i64 116        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.k, i8 0, i64 28, i1 false)
  store i32 -1, ptr %i.l, align 4, !tbaa !92
  %i.m = getelementptr i8, ptr %1, i64 120        ; 3 uses
  store i32 0, ptr %i.m, align 8, !tbaa !91
  %i.n = getelementptr i8, ptr %1, i64 124        ; 4 uses
  store i8 0, ptr %i.n, align 4, !tbaa !46
  %i.o = getelementptr i8, ptr %1, i64 152        ; 7 uses
  %i.p = getelementptr i8, ptr %1, i64 180
  store i32 -1, ptr %i.p, align 4, !tbaa !92
  %i.q = getelementptr i8, ptr %1, i64 184        ; 3 uses
  store i32 0, ptr %i.q, align 8, !tbaa !91
  %i.r = getelementptr i8, ptr %1, i64 188
  store i8 0, ptr %i.r, align 4, !tbaa !46
  %i.s = getelementptr i8, ptr %1, i64 216        ; 10 uses
  %i.t = getelementptr i8, ptr %1, i64 24         ; 3 uses
  %i.u = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.v = getelementptr i8, ptr %1, i64 32
  %i.w = getelementptr i8, ptr %1, i64 160        ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 224        ; 3 uses
  %.sink794.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sink794.sroa.gep1016 = getelementptr inbounds nuw i8, ptr %6, i64 88
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.fc, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.aio, %bb.fc ] ; 37 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %1, i8 0, i64 52, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.o, i8 0, i64 28, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.s, ptr noundef nonnull align 8 dereferenceable(288) @clear_opt_map_info.clean_info, i64 noundef 288, i1 noundef false) #22
  %.val9.i = load i64, ptr %2, align 8, !tbaa !94 ; 2 uses
  %.val10.i = load i64, ptr %i.u, align 8, !tbaa !93 ; 2 uses
  store i64 %.val9.i, ptr %i.t, align 8, !tbaa !94
  store i64 %.val10.i, ptr %i.v, align 8, !tbaa !93
  store i64 %.val9.i, ptr %i.o, align 8, !tbaa !94
  store i64 %.val10.i, ptr %i.w, align 8, !tbaa !93
  %i.y = load <2 x i64>, ptr %2, align 8, !tbaa !45
  store <2 x i64> %i.y, ptr %i.s, align 8, !tbaa !45
  %i.z = load i32, ptr %.tr, align 8, !tbaa !46
  switch i32 %i.z, label %common.ret1041 [
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull readonly align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !333
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
  %i.be = add i64 %i.b, 59
  %i.bf = add i64 %i.b, 59
  %i.bg = add i64 %i.b, 59
  br label %bb.c

bb.c:                                             ; preds = %concat_left_node_opt_info.exit, %bb.b
  %.0256 = phi ptr [ %.tr, %bb.b ], [ %i.kg, %concat_left_node_opt_info.exit ] ; 2 uses
  %i.bh = getelementptr i8, ptr %.0256, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !46
  %i.bj = call fastcc i32 @optimize_node_left(ptr noundef %i.bi, ptr noundef %4, ptr noundef %3) ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %concat_opt_anc_info.exit.i, label %.critedge

concat_opt_anc_info.exit.i:                       ; preds = %bb.c
  %.val = load i64, ptr %4, align 8, !tbaa !94    ; 3 uses
  %.val321 = load i64, ptr %i.aa, align 8, !tbaa !93 ; 4 uses
  %i.bl = load i64, ptr %3, align 8, !tbaa !94    ; 3 uses
  %i.bm = icmp eq i64 %i.bl, -1
  %i.bn = icmp eq i64 %.val, -1
  %or.cond.i.i = or i1 %i.bn, %i.bm
  %i.bo = xor i64 %.val, -1
  %.not.i.i = icmp ugt i64 %i.bl, %i.bo
  %or.cond10.i.i = or i1 %.not.i.i, %or.cond.i.i
  %i.bp = add i64 %i.bl, %.val
  %.0.i.i = select i1 %or.cond10.i.i, i64 -1, i64 %i.bp
  store i64 %.0.i.i, ptr %3, align 8, !tbaa !94
  %i.bq = load i64, ptr %i.ab, align 8, !tbaa !93 ; 3 uses
  %i.br = icmp eq i64 %i.bq, -1
  %i.bs = icmp eq i64 %.val321, -1
  %or.cond.i6.i = or i1 %i.bs, %i.br
  %i.bt = xor i64 %.val321, -1
  %.not.i7.i = icmp ugt i64 %i.bq, %i.bt
  %or.cond10.i8.i = or i1 %.not.i7.i, %or.cond.i6.i
  %i.bu = add i64 %i.bq, %.val321
  %.0.i9.i = select i1 %or.cond10.i8.i, i64 -1, i64 %i.bu
  store i64 %.0.i9.i, ptr %i.ab, align 8, !tbaa !93
  %i.bv = load ptr, ptr %i.ac, align 8, !tbaa !80 ; 10 uses
  %i.bw = load i64, ptr %i.ae, align 8, !tbaa !102
  %i.bx = load i32, ptr %i.ad, align 8, !tbaa !100
  %i.by = icmp ne i64 %i.bw, 0                    ; 3 uses
  %i.bz = load i32, ptr %i.af, align 8
  %i.ca = select i1 %i.by, i32 0, i32 %i.bz
  %.sroa.0.0.i = or i32 %i.ca, %i.bx              ; 3 uses
  %i.cb = load i32, ptr %i.ag, align 4, !tbaa !101
  %i.cc = icmp eq i64 %.val321, 0                 ; 3 uses
  %i.cd = load i32, ptr %i.ah, align 4, !tbaa !101 ; 2 uses
  %i.ce = and i32 %i.cd, 2048
  %.pn.i.i = select i1 %i.cc, i32 %i.cd, i32 %i.ce
  %storemerge.i.i = or i32 %.pn.i.i, %i.cb        ; 3 uses
  %.sroa.10.0.insert.ext96.i = zext i32 %storemerge.i.i to i64
  %.sroa.10.0.insert.shift97.i = shl nuw i64 %.sroa.10.0.insert.ext96.i, 32
  %.sroa.0.0.insert.ext93.i = zext i32 %.sroa.0.0.i to i64
  %.sroa.0.0.insert.insert95.i = or disjoint i64 %.sroa.10.0.insert.shift97.i, %.sroa.0.0.insert.ext93.i
  store i64 %.sroa.0.0.insert.insert95.i, ptr %i.ad, align 8, !tbaa !17
  %i.cf = load i32, ptr %i.aj, align 8, !tbaa !89 ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 0                   ; 2 uses
  br i1 %i.cg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %concat_opt_anc_info.exit.i
  br i1 %i.by, label %.thread100.i, label %.thread101.i

bb.e:                                             ; preds = %concat_opt_anc_info.exit.i
  %i.ch = load i32, ptr %i.ak, align 8, !tbaa !90
  %i.ci = icmp slt i32 %i.ch, 1
  %brmerge.i = or i1 %i.by, %i.ci
  br i1 %brmerge.i, label %.thread100.i, label %.thread102.i

.thread101.i:                                     ; preds = %bb.d
  %i.cj = load i32, ptr %i.al, align 8, !tbaa !100
  %i.ck = or i32 %i.cj, %.sroa.0.0.i
  %i.cl = load i32, ptr %i.am, align 4, !tbaa !101
  %i.cm = and i32 %storemerge.i.i, 2048
  %.pn.i67.i = select i1 %i.cc, i32 %storemerge.i.i, i32 %i.cm
  %storemerge.i68.i = or i32 %i.cl, %.pn.i67.i
  %.sroa.10.0.insert.ext.i = zext i32 %storemerge.i68.i to i64
  %.sroa.10.0.insert.shift.i = shl nuw i64 %.sroa.10.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ck to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.10.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.al, align 8, !tbaa !17
  %i.cn = load i32, ptr %i.ak, align 8, !tbaa !90
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.thread102.i, label %.thread100.i

.thread102.i:                                     ; preds = %.thread101.i, %bb.e
  %i.cp = load i64, ptr %i.an, align 8, !tbaa !334
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.f, label %.thread100.i

bb.f:                                             ; preds = %.thread102.i
  %i.cr = load i32, ptr %i.ao, align 8, !tbaa !335
  %i.cs = or i32 %i.cr, %.sroa.0.0.i
  store i32 %i.cs, ptr %i.ao, align 8, !tbaa !335
  br label %.thread100.i

.thread100.i:                                     ; preds = %bb.f, %.thread102.i, %.thread101.i, %bb.e, %bb.d
  %i.ct = load i32, ptr %i.ap, align 8, !tbaa !336
  %i.cu = load i32, ptr %i.aq, align 8, !tbaa !337
  br i1 %i.cc, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread100.i
  store i32 0, ptr %i.aq, align 8, !tbaa !337
  store i32 0, ptr %i.ap, align 8, !tbaa !336
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread100.i
  br i1 %i.cg, label %bb.i, label %bb.y

bb.i:                                             ; preds = %bb.h
  %.not61.i = icmp eq i32 %i.ct, 0
  br i1 %.not61.i, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cv = load i32, ptr %i.h, align 4, !tbaa !92  ; 2 uses
  %i.cw = icmp slt i32 %i.cv, 0
  %i.cx = load i32, ptr %i.ar, align 4, !tbaa !92 ; 2 uses
  br i1 %i.cw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.cx, ptr %i.h, align 4, !tbaa !92
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.not.i.i324 = icmp eq i32 %i.cv, %i.cx
  br i1 %.not.i.i324, label %bb.m, label %.sink.split.i

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cy = zext nneg i32 %i.cf to i64              ; 3 uses
  %i.cz = getelementptr i8, ptr %i.as, i64 %i.cy  ; 6 uses
  %i.da = load i32, ptr %i.i, align 8, !tbaa !91  ; 2 uses
  %i.db = icmp ult ptr %i.as, %i.cz
  br i1 %i.db, label %.lr.ph51.i.i, label %._crit_edge.i.i

.lr.ph51.i.i:                                     ; preds = %bb.m
  %i.dc = getelementptr i8, ptr %i.bv, i64 16
  %i.dd = getelementptr i8, ptr %i.bv, i64 20
  %i.de = add i64 %i.bf, %i.cy
  %i.df = add i64 %i.bg, %i.cy
  br label %bb.n

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %middle.block972, %vec.epilog.middle.block986, %.preheader.i.i
  %.140.lcssa.i.i = phi i32 [ %.03949.i.i, %.preheader.i.i ], [ %i.er, %vec.epilog.middle.block986 ], [ %i.eh, %middle.block972 ], [ %i.ez, %.lr.ph.i.i ] ; 2 uses
  %.1.lcssa.i.i = phi ptr [ %.050.i.i, %.preheader.i.i ], [ %i.ep, %vec.epilog.middle.block986 ], [ %i.ef, %middle.block972 ], [ %i.ex, %.lr.ph.i.i ] ; 3 uses
  %i.dg = icmp ult ptr %.1.lcssa.i.i, %i.cz
  br i1 %i.dg, label %bb.n, label %._crit_edge.i.i, !llvm.loop !307

bb.n:                                             ; preds = %.loopexit.i.i, %.lr.ph51.i.i
  %.050.i.i = phi ptr [ %i.as, %.lr.ph51.i.i ], [ %.1.lcssa.i.i, %.loopexit.i.i ] ; 12 uses
  %.03949.i.i = phi i32 [ %i.da, %.lr.ph51.i.i ], [ %.140.lcssa.i.i, %.loopexit.i.i ] ; 13 uses
  %.050.i.i954 = ptrtoaddr ptr %.050.i.i to i64   ; 3 uses
  %i.dh = load i32, ptr %i.dc, align 8, !tbaa !130 ; 2 uses
  %i.di = load i32, ptr %i.dd, align 4, !tbaa !131
  %i.dj = icmp eq i32 %i.dh, %i.di
  br i1 %i.dj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = call i32 @onigenc_mbclen(ptr noundef %.050.i.i, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.bv) #22
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
  br i1 %i.dq, label %iter.check974, label %.loopexit.i.i

iter.check974:                                    ; preds = %.preheader.i.i
  %i.dr = sub i64 %i.df, %.050.i.i954
  %i.ds = add nsw i32 %i.dl, -1
  %i.dt = zext i32 %i.ds to i64
  %umin958 = call i64 @llvm.umin.i64(i64 %i.dr, i64 %i.dt) ; 3 uses
  %i.du = add nuw nsw i64 %umin958, 1             ; 5 uses
  %min.iters.check959 = icmp samesign ult i64 %umin958, 3
  br i1 %min.iters.check959, label %.lr.ph.i.i.preheader, label %vector.scevcheck953

vector.scevcheck953:                              ; preds = %iter.check974
  %i.dv = sub i64 %i.de, %.050.i.i954
  %i.dw = add nsw i32 %i.dl, -1
  %i.dx = zext i32 %i.dw to i64
  %umin955 = call i64 @llvm.umin.i64(i64 %i.dv, i64 %i.dx)
  %i.dy = trunc nuw i64 %umin955 to i32
  %i.dz = add i32 %.03949.i.i, %i.dy
  %i.ea = icmp slt i32 %i.dz, %.03949.i.i
  br i1 %i.ea, label %.lr.ph.i.i.preheader, label %vector.memcheck960

vector.memcheck960:                               ; preds = %vector.scevcheck953
  %i.eb = sext i32 %.03949.i.i to i64
  %8 = add i64 %i.a, %i.eb
  %i.ec = sub i64 %8, %.050.i.i954
  %i.ed = add i64 %i.ec, 59
  %diff.check961 = icmp ult i64 %i.ed, 31
  br i1 %diff.check961, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check962

vector.main.loop.iter.check962:                   ; preds = %vector.memcheck960
  %min.iters.check963 = icmp samesign ult i64 %umin958, 31
  br i1 %min.iters.check963, label %vec.epilog.ph978, label %vector.ph964

vector.ph964:                                     ; preds = %vector.main.loop.iter.check962
  %i.ee = and i64 %i.du, 28
  %n.vec965 = and i64 %i.du, 8589934560           ; 5 uses
  %i.ef = getelementptr i8, ptr %.050.i.i, i64 %n.vec965 ; 2 uses
  %i.eg = trunc i64 %n.vec965 to i32              ; 2 uses
  %i.eh = add i32 %.03949.i.i, %i.eg              ; 2 uses
  br label %vector.body966

vector.body966:                                   ; preds = %vector.ph964, %vector.body966
  %index967 = phi i64 [ 0, %vector.ph964 ], [ %index.next971, %vector.body966 ] ; 3 uses
  %next.gep968 = getelementptr i8, ptr %.050.i.i, i64 %index967 ; 2 uses
  %i.ei = trunc i64 %index967 to i32
  %i.ej = add i32 %.03949.i.i, %i.ei
  %i.ek = getelementptr i8, ptr %next.gep968, i64 16
  %wide.load969 = load <16 x i8>, ptr %next.gep968, align 1, !tbaa !46
  %wide.load970 = load <16 x i8>, ptr %i.ek, align 1, !tbaa !46
  %i.el = sext i32 %i.ej to i64
  %i.em = getelementptr i8, ptr %i.j, i64 %i.el   ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 16
  store <16 x i8> %wide.load969, ptr %i.em, align 1, !tbaa !46
  store <16 x i8> %wide.load970, ptr %i.en, align 1, !tbaa !46
  %index.next971 = add nuw i64 %index967, 32      ; 2 uses
  %i.eo = icmp eq i64 %index.next971, %n.vec965
  br i1 %i.eo, label %middle.block972, label %vector.body966, !llvm.loop !308

middle.block972:                                  ; preds = %vector.body966
  %cmp.n973 = icmp eq i64 %i.du, %n.vec965
  br i1 %cmp.n973, label %.loopexit.i.i, label %vec.epilog.iter.check975

vec.epilog.iter.check975:                         ; preds = %middle.block972
  %min.epilog.iters.check977 = icmp eq i64 %i.ee, 0
  br i1 %min.epilog.iters.check977, label %.lr.ph.i.i.preheader, label %vec.epilog.ph978, !prof !340

vec.epilog.ph978:                                 ; preds = %vector.main.loop.iter.check962, %vec.epilog.iter.check975
  %vec.epilog.resume.val979 = phi i64 [ %n.vec965, %vec.epilog.iter.check975 ], [ 0, %vector.main.loop.iter.check962 ]
  %n.vec980 = and i64 %i.du, 8589934588           ; 4 uses
  %i.ep = getelementptr i8, ptr %.050.i.i, i64 %n.vec980 ; 2 uses
  %i.eq = trunc i64 %n.vec980 to i32              ; 2 uses
  %i.er = add i32 %.03949.i.i, %i.eq              ; 2 uses
  br label %vec.epilog.vector.body981

vec.epilog.vector.body981:                        ; preds = %vec.epilog.vector.body981, %vec.epilog.ph978
  %index982 = phi i64 [ %vec.epilog.resume.val979, %vec.epilog.ph978 ], [ %index.next985, %vec.epilog.vector.body981 ] ; 3 uses
  %next.gep983 = getelementptr i8, ptr %.050.i.i, i64 %index982
  %i.es = trunc i64 %index982 to i32
  %i.et = add i32 %.03949.i.i, %i.es
  %wide.load984 = load <4 x i8>, ptr %next.gep983, align 1, !tbaa !46
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr i8, ptr %i.j, i64 %i.eu
  store <4 x i8> %wide.load984, ptr %i.ev, align 1, !tbaa !46
  %index.next985 = add nuw i64 %index982, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next985, %n.vec980
  br i1 %i.ew, label %vec.epilog.middle.block986, label %vec.epilog.vector.body981, !llvm.loop !309

vec.epilog.middle.block986:                       ; preds = %vec.epilog.vector.body981
  %cmp.n987 = icmp eq i64 %i.du, %n.vec980
  br i1 %cmp.n987, label %.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check974, %vector.scevcheck953, %vector.memcheck960, %vec.epilog.iter.check975, %vec.epilog.middle.block986
  %.147.i.i.ph = phi ptr [ %.050.i.i, %iter.check974 ], [ %.050.i.i, %vector.scevcheck953 ], [ %.050.i.i, %vector.memcheck960 ], [ %i.ef, %vec.epilog.iter.check975 ], [ %i.ep, %vec.epilog.middle.block986 ]
  %.03846.i.i.ph = phi i32 [ 0, %iter.check974 ], [ 0, %vector.scevcheck953 ], [ 0, %vector.memcheck960 ], [ %i.eg, %vec.epilog.iter.check975 ], [ %i.eq, %vec.epilog.middle.block986 ]
  %.14045.i.i.ph = phi i32 [ %.03949.i.i, %iter.check974 ], [ %.03949.i.i, %vector.scevcheck953 ], [ %.03949.i.i, %vector.memcheck960 ], [ %i.eh, %vec.epilog.iter.check975 ], [ %i.er, %vec.epilog.middle.block986 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.147.i.i = phi ptr [ %i.ex, %.lr.ph.i.i ], [ %.147.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.03846.i.i = phi i32 [ %i.fc, %.lr.ph.i.i ], [ %.03846.i.i.ph, %.lr.ph.i.i.preheader ]
  %.14045.i.i = phi i32 [ %i.ez, %.lr.ph.i.i ], [ %.14045.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ex = getelementptr i8, ptr %.147.i.i, i64 1  ; 3 uses
  %i.ey = load i8, ptr %.147.i.i, align 1, !tbaa !46
  %i.ez = add i32 %.14045.i.i, 1                  ; 2 uses
  %i.fa = sext i32 %.14045.i.i to i64
  %i.fb = getelementptr i8, ptr %i.j, i64 %i.fa
  store i8 %i.ey, ptr %i.fb, align 1, !tbaa !46
  %i.fc = add nuw nsw i32 %.03846.i.i, 1          ; 2 uses
  %i.fd = icmp slt i32 %i.fc, %i.dl
  %i.fe = icmp ult ptr %i.ex, %i.cz
  %i.ff = and i1 %i.fe, %i.fd
  br i1 %i.ff, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !310

._crit_edge.i.i:                                  ; preds = %bb.p, %.loopexit.i.i, %bb.m
  %.039.lcssa.i.i = phi i32 [ %i.da, %bb.m ], [ %.03949.i.i, %bb.p ], [ %.140.lcssa.i.i, %.loopexit.i.i ]
  %.0.lcssa.i.i = phi ptr [ %i.as, %bb.m ], [ %.050.i.i, %bb.p ], [ %.1.lcssa.i.i, %.loopexit.i.i ]
  store i32 %.039.lcssa.i.i, ptr %i.i, align 8, !tbaa !91
  %i.fg = icmp eq ptr %.0.lcssa.i.i, %i.cz
  %i.fh = load i32, ptr %i.at, align 8
  %i.fi = freeze i32 %i.fh
  %.fr.i.i = select i1 %i.fg, i32 %i.fi, i32 0    ; 2 uses
  store i32 %.fr.i.i, ptr %i.ap, align 8, !tbaa !169
  %i.fj = load i32, ptr %i.au, align 8, !tbaa !100
  %i.fk = load i32, ptr %i.am, align 4, !tbaa !101
  %i.fl = load i32, ptr %i.av, align 4, !tbaa !101
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
  %i.fo = load i32, ptr %i.l, align 4, !tbaa !92  ; 2 uses
  %i.fp = icmp slt i32 %i.fo, 0
  %i.fq = load i32, ptr %i.ar, align 4, !tbaa !92 ; 2 uses
  br i1 %i.fp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.fq, ptr %i.l, align 4, !tbaa !92
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %.not.i69.i = icmp eq i32 %i.fo, %i.fq
  br i1 %.not.i69.i, label %bb.u, label %.sink.split.i

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fr = zext nneg i32 %i.cf to i64              ; 3 uses
  %i.fs = getelementptr i8, ptr %i.as, i64 %i.fr  ; 6 uses
  %i.ft = load i32, ptr %i.m, align 8, !tbaa !91  ; 2 uses
  %i.fu = icmp ult ptr %i.as, %i.fs
  br i1 %i.fu, label %.lr.ph51.i81.i, label %._crit_edge.i70.i

.lr.ph51.i81.i:                                   ; preds = %bb.u
  %i.fv = getelementptr i8, ptr %i.bv, i64 16
  %i.fw = getelementptr i8, ptr %i.bv, i64 20
  %i.fx = add i64 %i.bd, %i.fr
  %i.fy = add i64 %i.be, %i.fr
  br label %bb.v

.loopexit.i85.i:                                  ; preds = %.lr.ph.i88.i, %middle.block934, %vec.epilog.middle.block948, %.preheader.i84.i
  %.140.lcssa.i86.i = phi i32 [ %.03949.i83.i, %.preheader.i84.i ], [ %i.hk, %vec.epilog.middle.block948 ], [ %i.ha, %middle.block934 ], [ %i.hs, %.lr.ph.i88.i ] ; 2 uses
  %.1.lcssa.i87.i = phi ptr [ %.050.i82.i, %.preheader.i84.i ], [ %i.hi, %vec.epilog.middle.block948 ], [ %i.gy, %middle.block934 ], [ %i.hq, %.lr.ph.i88.i ] ; 3 uses
  %i.fz = icmp ult ptr %.1.lcssa.i87.i, %i.fs
  br i1 %i.fz, label %bb.v, label %._crit_edge.i70.i, !llvm.loop !307

bb.v:                                             ; preds = %.loopexit.i85.i, %.lr.ph51.i81.i
  %.050.i82.i = phi ptr [ %i.as, %.lr.ph51.i81.i ], [ %.1.lcssa.i87.i, %.loopexit.i85.i ] ; 12 uses
  %.03949.i83.i = phi i32 [ %i.ft, %.lr.ph51.i81.i ], [ %.140.lcssa.i86.i, %.loopexit.i85.i ] ; 13 uses
  %.050.i82.i916 = ptrtoaddr ptr %.050.i82.i to i64 ; 3 uses
  %i.ga = load i32, ptr %i.fv, align 8, !tbaa !130 ; 2 uses
  %i.gb = load i32, ptr %i.fw, align 4, !tbaa !131
  %i.gc = icmp eq i32 %i.ga, %i.gb
  br i1 %i.gc, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gd = call i32 @onigenc_mbclen(ptr noundef %.050.i82.i, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.bv) #22
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
  br i1 %i.gj, label %iter.check936, label %.loopexit.i85.i

iter.check936:                                    ; preds = %.preheader.i84.i
  %i.gk = sub i64 %i.fy, %.050.i82.i916
  %i.gl = add nsw i32 %i.ge, -1
  %i.gm = zext i32 %i.gl to i64
  %umin920 = call i64 @llvm.umin.i64(i64 %i.gk, i64 %i.gm) ; 3 uses
  %i.gn = add nuw nsw i64 %umin920, 1             ; 5 uses
  %min.iters.check921 = icmp samesign ult i64 %umin920, 3
  br i1 %min.iters.check921, label %.lr.ph.i88.i.preheader, label %vector.scevcheck915

vector.scevcheck915:                              ; preds = %iter.check936
  %i.go = sub i64 %i.fx, %.050.i82.i916
  %i.gp = add nsw i32 %i.ge, -1
  %i.gq = zext i32 %i.gp to i64
  %umin917 = call i64 @llvm.umin.i64(i64 %i.go, i64 %i.gq)
  %i.gr = trunc nuw i64 %umin917 to i32
  %i.gs = add i32 %.03949.i83.i, %i.gr
  %i.gt = icmp slt i32 %i.gs, %.03949.i83.i
  br i1 %i.gt, label %.lr.ph.i88.i.preheader, label %vector.memcheck922

vector.memcheck922:                               ; preds = %vector.scevcheck915
  %i.gu = sext i32 %.03949.i83.i to i64
  %9 = add i64 %i.a, %i.gu
  %i.gv = sub i64 %9, %.050.i82.i916
  %i.gw = add i64 %i.gv, 123
  %diff.check923 = icmp ult i64 %i.gw, 31
  br i1 %diff.check923, label %.lr.ph.i88.i.preheader, label %vector.main.loop.iter.check924

vector.main.loop.iter.check924:                   ; preds = %vector.memcheck922
  %min.iters.check925 = icmp samesign ult i64 %umin920, 31
  br i1 %min.iters.check925, label %vec.epilog.ph940, label %vector.ph926

vector.ph926:                                     ; preds = %vector.main.loop.iter.check924
  %i.gx = and i64 %i.gn, 28
  %n.vec927 = and i64 %i.gn, 8589934560           ; 5 uses
  %i.gy = getelementptr i8, ptr %.050.i82.i, i64 %n.vec927 ; 2 uses
  %i.gz = trunc i64 %n.vec927 to i32              ; 2 uses
  %i.ha = add i32 %.03949.i83.i, %i.gz            ; 2 uses
  br label %vector.body928

vector.body928:                                   ; preds = %vector.ph926, %vector.body928
  %index929 = phi i64 [ 0, %vector.ph926 ], [ %index.next933, %vector.body928 ] ; 3 uses
  %next.gep930 = getelementptr i8, ptr %.050.i82.i, i64 %index929 ; 2 uses
  %i.hb = trunc i64 %index929 to i32
  %i.hc = add i32 %.03949.i83.i, %i.hb
  %i.hd = getelementptr i8, ptr %next.gep930, i64 16
  %wide.load931 = load <16 x i8>, ptr %next.gep930, align 1, !tbaa !46
  %wide.load932 = load <16 x i8>, ptr %i.hd, align 1, !tbaa !46
  %i.he = sext i32 %i.hc to i64
  %i.hf = getelementptr i8, ptr %i.n, i64 %i.he   ; 2 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 16
  store <16 x i8> %wide.load931, ptr %i.hf, align 1, !tbaa !46
  store <16 x i8> %wide.load932, ptr %i.hg, align 1, !tbaa !46
  %index.next933 = add nuw i64 %index929, 32      ; 2 uses
  %i.hh = icmp eq i64 %index.next933, %n.vec927
  br i1 %i.hh, label %middle.block934, label %vector.body928, !llvm.loop !311

middle.block934:                                  ; preds = %vector.body928
  %cmp.n935 = icmp eq i64 %i.gn, %n.vec927
  br i1 %cmp.n935, label %.loopexit.i85.i, label %vec.epilog.iter.check937

vec.epilog.iter.check937:                         ; preds = %middle.block934
  %min.epilog.iters.check939 = icmp eq i64 %i.gx, 0
  br i1 %min.epilog.iters.check939, label %.lr.ph.i88.i.preheader, label %vec.epilog.ph940, !prof !340

vec.epilog.ph940:                                 ; preds = %vector.main.loop.iter.check924, %vec.epilog.iter.check937
  %vec.epilog.resume.val941 = phi i64 [ %n.vec927, %vec.epilog.iter.check937 ], [ 0, %vector.main.loop.iter.check924 ]
  %n.vec942 = and i64 %i.gn, 8589934588           ; 4 uses
  %i.hi = getelementptr i8, ptr %.050.i82.i, i64 %n.vec942 ; 2 uses
  %i.hj = trunc i64 %n.vec942 to i32              ; 2 uses
  %i.hk = add i32 %.03949.i83.i, %i.hj            ; 2 uses
  br label %vec.epilog.vector.body943

vec.epilog.vector.body943:                        ; preds = %vec.epilog.vector.body943, %vec.epilog.ph940
  %index944 = phi i64 [ %vec.epilog.resume.val941, %vec.epilog.ph940 ], [ %index.next947, %vec.epilog.vector.body943 ] ; 3 uses
  %next.gep945 = getelementptr i8, ptr %.050.i82.i, i64 %index944
  %i.hl = trunc i64 %index944 to i32
  %i.hm = add i32 %.03949.i83.i, %i.hl
  %wide.load946 = load <4 x i8>, ptr %next.gep945, align 1, !tbaa !46
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr i8, ptr %i.n, i64 %i.hn
  store <4 x i8> %wide.load946, ptr %i.ho, align 1, !tbaa !46
  %index.next947 = add nuw i64 %index944, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next947, %n.vec942
  br i1 %i.hp, label %vec.epilog.middle.block948, label %vec.epilog.vector.body943, !llvm.loop !312

vec.epilog.middle.block948:                       ; preds = %vec.epilog.vector.body943
  %cmp.n949 = icmp eq i64 %i.gn, %n.vec942
  br i1 %cmp.n949, label %.loopexit.i85.i, label %.lr.ph.i88.i.preheader

.lr.ph.i88.i.preheader:                           ; preds = %iter.check936, %vector.scevcheck915, %vector.memcheck922, %vec.epilog.iter.check937, %vec.epilog.middle.block948
  %.147.i89.i.ph = phi ptr [ %.050.i82.i, %iter.check936 ], [ %.050.i82.i, %vector.scevcheck915 ], [ %.050.i82.i, %vector.memcheck922 ], [ %i.gy, %vec.epilog.iter.check937 ], [ %i.hi, %vec.epilog.middle.block948 ]
  %.03846.i90.i.ph = phi i32 [ 0, %iter.check936 ], [ 0, %vector.scevcheck915 ], [ 0, %vector.memcheck922 ], [ %i.gz, %vec.epilog.iter.check937 ], [ %i.hj, %vec.epilog.middle.block948 ]
  %.14045.i91.i.ph = phi i32 [ %.03949.i83.i, %iter.check936 ], [ %.03949.i83.i, %vector.scevcheck915 ], [ %.03949.i83.i, %vector.memcheck922 ], [ %i.ha, %vec.epilog.iter.check937 ], [ %i.hk, %vec.epilog.middle.block948 ]
  br label %.lr.ph.i88.i

.lr.ph.i88.i:                                     ; preds = %.lr.ph.i88.i.preheader, %.lr.ph.i88.i
  %.147.i89.i = phi ptr [ %i.hq, %.lr.ph.i88.i ], [ %.147.i89.i.ph, %.lr.ph.i88.i.preheader ] ; 2 uses
  %.03846.i90.i = phi i32 [ %i.hv, %.lr.ph.i88.i ], [ %.03846.i90.i.ph, %.lr.ph.i88.i.preheader ]
  %.14045.i91.i = phi i32 [ %i.hs, %.lr.ph.i88.i ], [ %.14045.i91.i.ph, %.lr.ph.i88.i.preheader ] ; 2 uses
  %i.hq = getelementptr i8, ptr %.147.i89.i, i64 1 ; 3 uses
  %i.hr = load i8, ptr %.147.i89.i, align 1, !tbaa !46
  %i.hs = add i32 %.14045.i91.i, 1                ; 2 uses
  %i.ht = sext i32 %.14045.i91.i to i64
  %i.hu = getelementptr i8, ptr %i.n, i64 %i.ht
  store i8 %i.hr, ptr %i.hu, align 1, !tbaa !46
  %i.hv = add nuw nsw i32 %.03846.i90.i, 1        ; 2 uses
  %i.hw = icmp slt i32 %i.hv, %i.ge
  %i.hx = icmp ult ptr %i.hq, %i.fs
  %i.hy = and i1 %i.hx, %i.hw
  br i1 %i.hy, label %.lr.ph.i88.i, label %.loopexit.i85.i, !llvm.loop !313

._crit_edge.i70.i:                                ; preds = %bb.x, %.loopexit.i85.i, %bb.u
  %.039.lcssa.i71.i = phi i32 [ %i.ft, %bb.u ], [ %.03949.i83.i, %bb.x ], [ %.140.lcssa.i86.i, %.loopexit.i85.i ]
  %.0.lcssa.i72.i = phi ptr [ %i.as, %bb.u ], [ %.050.i82.i, %bb.x ], [ %.1.lcssa.i87.i, %.loopexit.i85.i ]
  store i32 %.039.lcssa.i71.i, ptr %i.m, align 8, !tbaa !91
  %i.hz = icmp eq ptr %.0.lcssa.i72.i, %i.fs
  %i.ia = load i32, ptr %i.at, align 8
  %i.ib = freeze i32 %i.ia
  %.fr.i73.i = select i1 %i.hz, i32 %i.ib, i32 0  ; 2 uses
  store i32 %.fr.i73.i, ptr %i.aq, align 8, !tbaa !169
  %i.ic = load i32, ptr %i.aw, align 8, !tbaa !100
  %i.id = load i32, ptr %i.am, align 4, !tbaa !101
  %i.ie = load i32, ptr %i.ax, align 4, !tbaa !101
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
  store i32 -1, ptr %i.ar, align 4, !tbaa !92
  store i32 0, ptr %i.aj, align 8, !tbaa !91
  store i8 0, ptr %i.as, align 4, !tbaa !46
  br label %bb.y

bb.y:                                             ; preds = %.sink.split.i, %bb.q, %bb.h
  call fastcc void @select_opt_exact_info(ptr noundef %i.bv, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ai)
  call fastcc void @select_opt_exact_info(ptr noundef %i.bv, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ay)
  %i.ih = load i32, ptr %i.q, align 8, !tbaa !341 ; 2 uses
  %i.ii = icmp sgt i32 %i.ih, 0
  br i1 %i.ii, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.ij = load i64, ptr %i.aa, align 8, !tbaa !102 ; 2 uses
  %.not63.i = icmp eq i64 %i.ij, 0
  br i1 %.not63.i, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ik = trunc i64 %i.ij to i32                  ; 2 uses
  %i.il = icmp sgt i32 %i.ih, %i.ik
  br i1 %i.il, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.ik, ptr %i.q, align 8, !tbaa !341
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.im = load i64, ptr %i.w, align 8, !tbaa !342
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @select_opt_exact_info(ptr noundef %i.bv, ptr noundef nonnull %i.t, ptr noundef nonnull %i.o)
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  call fastcc void @select_opt_exact_info(ptr noundef %i.bv, ptr noundef nonnull %i.k, ptr noundef nonnull %i.o)
  br label %bb.ah

bb.af:                                            ; preds = %bb.y
  %i.io = load i32, ptr %i.az, align 8, !tbaa !341
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ba, i64 64, i1 false), !tbaa.struct !343
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.z
  %i.iq = load i32, ptr %i.ak, align 8, !tbaa !170 ; 2 uses
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %concat_left_node_opt_info.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.is = load i32, ptr %i.bc, align 8, !tbaa !170 ; 2 uses
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
  %i.iy = load i64, ptr %i.x, align 8, !tbaa !93  ; 2 uses
  %i.iz = icmp eq i64 %i.iy, -1
  br i1 %i.iz, label %distance_value.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ja = load i64, ptr %i.s, align 8, !tbaa !94
  %i.jb = sub i64 %i.iy, %i.ja                    ; 2 uses
  %i.jc = icmp ult i64 %i.jb, 100
  br i1 %i.jc, label %bb.an, label %distance_value.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.jd = getelementptr [2 x i8], ptr @distance_value.dist_vals, i64 %i.jb
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !96
  %i.jf = sext i16 %i.je to i32
  %i.jg = mul nsw i32 %i.iu, %i.jf
  br label %distance_value.exit.i.i.i

distance_value.exit.i.i.i:                        ; preds = %bb.an, %bb.am, %bb.al
  %.0.i.i.i.i = phi i32 [ 0, %bb.al ], [ %i.jg, %bb.an ], [ %i.iu, %bb.am ] ; 2 uses
end_hunk_0
begin_hunk_1_@optimize_node_left:bb.a
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
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !46
  %i.kz = call fastcc i32 @optimize_node_left(ptr noundef %i.ky, ptr noundef %5, ptr noundef %2) ; 2 uses
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %bb.au, label %.critedge3

bb.au:                                            ; preds = %bb.at
  %i.lb = icmp eq ptr %.0257, %.tr
  br i1 %i.lb, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull readonly align 8 dereferenceable(504) %5, i64 504, i1 false), !tbaa.struct !344
  br label %alt_merge_node_opt_info.exit

bb.aw:                                            ; preds = %bb.au
  %i.lc = load <2 x i32>, ptr %i.ki, align 8, !tbaa !17
  %i.ld = load <2 x i32>, ptr %i.kh, align 8, !tbaa !17
  %i.le = and <2 x i32> %i.ld, %i.lc
  store <2 x i32> %i.le, ptr %i.kh, align 8, !tbaa !17
  call fastcc void @alt_merge_opt_exact_info(ptr noundef nonnull %i.t, ptr noundef nonnull readonly %i.kj, ptr noundef nonnull readonly %2)
  call fastcc void @alt_merge_opt_exact_info(ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.kk, ptr noundef nonnull readonly %2)
  call fastcc void @alt_merge_opt_exact_info(ptr noundef nonnull %i.o, ptr noundef nonnull readonly %i.kl, ptr noundef nonnull readonly %2)
  %i.lf = load ptr, ptr %i.km, align 8, !tbaa !80
  %i.lg = load i32, ptr %i.ko, align 8, !tbaa !170
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %alt_merge_opt_map_info.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.li = load i32, ptr %i.kp, align 8, !tbaa !170
  %i.lj = icmp eq i32 %i.li, 0
  br i1 %i.lj, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lk = load i64, ptr %i.x, align 8, !tbaa !345 ; 2 uses
  %i.ll = load i64, ptr %i.kn, align 8, !tbaa !99 ; 3 uses
  %i.lm = icmp ult i64 %i.lk, %i.ll
  br i1 %i.lm, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.s, ptr noundef nonnull align 8 dereferenceable(288) @clear_opt_map_info.clean_info, i64 noundef 288, i1 noundef false) #22
  br label %alt_merge_opt_map_info.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.ln = load i64, ptr %i.s, align 8, !tbaa !94
  %i.lo = icmp ugt i64 %i.ln, %i.ll
  br i1 %i.lo, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i64 %i.ll, ptr %i.s, align 8, !tbaa !94
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.lp = load i64, ptr %i.kq, align 8, !tbaa !93 ; 2 uses
  %i.lq = icmp ult i64 %i.lk, %i.lp
  br i1 %i.lq, label %bb.bd, label %alt_merge_mml.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  store i64 %i.lp, ptr %i.x, align 8, !tbaa !93
  br label %alt_merge_mml.exit.i.i

alt_merge_mml.exit.i.i:                           ; preds = %bb.bd, %bb.bc
  %i.lr = getelementptr i8, ptr %i.lf, i64 20
  %i.ls = load i8, ptr %i.kr, align 4, !tbaa !46
  %.not.peel.i.i = icmp eq i8 %i.ls, 0
  br i1 %.not.peel.i.i, label %bb.be, label %.thread.i.i

.thread.i.i:                                      ; preds = %alt_merge_mml.exit.i.i
  store i8 1, ptr %i.ks, align 4, !tbaa !46
  br label %bb.bf

bb.be:                                            ; preds = %alt_merge_mml.exit.i.i
  %.pre.i.i = load i8, ptr %i.ks, align 4, !tbaa !46
  %i.lt = icmp eq i8 %.pre.i.i, 0
  br i1 %i.lt, label %.peel.next.i.i.preheader, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.thread.i.i
  %i.lu = load i32, ptr %i.lr, align 4, !tbaa !131
  %i.lv = icmp sgt i32 %i.lu, 1
  %spec.select.i.i = select i1 %i.lv, i32 20, i32 5
  br label %.peel.next.i.i.preheader

.peel.next.i.i.preheader:                         ; preds = %bb.bf, %bb.be
  %.026.i.i.ph = phi i32 [ 0, %bb.be ], [ %spec.select.i.i, %bb.bf ]
  br label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.peel.next.i.i.preheader, %bb.bj
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bj ], [ 1, %.peel.next.i.i.preheader ] ; 5 uses
  %.026.i.i = phi i32 [ %.1.i.i, %bb.bj ], [ %.026.i.i.ph, %.peel.next.i.i.preheader ] ; 2 uses
  %i.lw = getelementptr i8, ptr %i.kr, i64 %indvars.iv.i.i
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !46
  %.not.i.i326 = icmp eq i8 %i.lx, 0
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.ks, i64 %indvars.iv.i.i ; 2 uses
  br i1 %.not.i.i326, label %bb.bg, label %.thread36.i.i

.thread36.i.i:                                    ; preds = %.peel.next.i.i
  store i8 1, ptr %.phi.trans.insert.i.i, align 1, !tbaa !46
  br label %bb.bh

bb.bg:                                            ; preds = %.peel.next.i.i
  %.pre31.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !tbaa !46
  %i.ly = icmp eq i8 %.pre31.i.i, 0
  br i1 %i.ly, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread36.i.i
  %i.lz = icmp samesign ult i64 %indvars.iv.i.i, 128
  br i1 %i.lz, label %bb.bi, label %map_position_value.exit.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.ma = getelementptr [2 x i8], ptr @map_position_value.ByteValTable, i64 %indvars.iv.i.i
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !96
  %i.mc = sext i16 %i.mb to i32
  br label %map_position_value.exit.i.i

map_position_value.exit.i.i:                      ; preds = %bb.bi, %bb.bh
  %.0.i.i.i327 = phi i32 [ 4, %bb.bh ], [ %i.mc, %bb.bi ]
  %i.md = add i32 %.0.i.i.i327, %.026.i.i
  br label %bb.bj

bb.bj:                                            ; preds = %map_position_value.exit.i.i, %bb.bg
  %.1.i.i = phi i32 [ %i.md, %map_position_value.exit.i.i ], [ %.026.i.i, %bb.bg ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 256
  br i1 %exitcond.not.i.i, label %.loopexit.i.i328, label %.peel.next.i.i, !llvm.loop !315

.loopexit.i.i328:                                 ; preds = %bb.bj
  store i32 %.1.i.i, ptr %i.ko, align 8, !tbaa !170
  %i.me = load <2 x i32>, ptr %i.ku, align 8, !tbaa !17
  %i.mf = load <2 x i32>, ptr %i.kt, align 8, !tbaa !17
  %i.mg = and <2 x i32> %i.mf, %i.me
  store <2 x i32> %i.mg, ptr %i.kt, align 8, !tbaa !17
  br label %alt_merge_opt_map_info.exit.i

alt_merge_opt_map_info.exit.i:                    ; preds = %.loopexit.i.i328, %bb.az, %bb.aw
  %i.mh = load i64, ptr %1, align 8, !tbaa !94
  %i.mi = load i64, ptr %5, align 8, !tbaa !94    ; 2 uses
  %i.mj = icmp ugt i64 %i.mh, %i.mi
  br i1 %i.mj, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %alt_merge_opt_map_info.exit.i
  store i64 %i.mi, ptr %1, align 8, !tbaa !94
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %alt_merge_opt_map_info.exit.i
  %i.mk = load i64, ptr %i.kv, align 8, !tbaa !93
  %i.ml = load i64, ptr %i.kw, align 8, !tbaa !93 ; 2 uses
  %i.mm = icmp ult i64 %i.mk, %i.ml
  br i1 %i.mm, label %bb.bm, label %alt_merge_node_opt_info.exit

bb.bm:                                            ; preds = %bb.bl
  store i64 %i.ml, ptr %i.kv, align 8, !tbaa !93
  br label %alt_merge_node_opt_info.exit

alt_merge_node_opt_info.exit:                     ; preds = %bb.av, %bb.bl, %bb.bm
  %i.mn = getelementptr i8, ptr %.0257, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !46 ; 2 uses
  %.not314 = icmp eq ptr %i.mo, null
  br i1 %.not314, label %.critedge3, label %bb.at, !llvm.loop !316

.critedge3:                                       ; preds = %bb.at, %alt_merge_node_opt_info.exit
  %.lcssa641 = phi i32 [ %i.kz, %bb.at ], [ 0, %alt_merge_node_opt_info.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.ret1041

bb.bn:                                            ; preds = %tailrecurse
  %i.mp = getelementptr i8, ptr %.tr, i64 16      ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !128 ; 12 uses
  %i.mr = getelementptr i8, ptr %.tr, i64 8       ; 3 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !127 ; 6 uses
  %i.mt = ptrtoint ptr %i.mq to i64               ; 5 uses
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = sub i64 %i.mt, %i.mu                    ; 7 uses
  %i.mw = getelementptr i8, ptr %.tr, i64 24
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !46 ; 2 uses
  %i.my = and i32 %i.mx, 2
  %.not309 = icmp eq i32 %i.my, 0
  br i1 %.not309, label %bb.bo, label %bb.bx

bb.bo:                                            ; preds = %bb.bn
  %i.mz = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !80 ; 3 uses
  %i.nb = icmp ult ptr %i.ms, %i.mq
  br i1 %i.nb, label %.lr.ph35.i, label %concat_opt_exact_info_str.exit

.lr.ph35.i:                                       ; preds = %bb.bo
  %i.nc = getelementptr i8, ptr %i.na, i64 16
  %i.nd = getelementptr i8, ptr %i.na, i64 20
  br label %bb.bp

.loopexit.i:                                      ; preds = %.lr.ph.i, %middle.block896, %vec.epilog.middle.block910, %.preheader.i
  %.126.lcssa.i = phi i32 [ %.02533.i, %.preheader.i ], [ %i.ot, %vec.epilog.middle.block910 ], [ %i.oj, %middle.block896 ], [ %i.pb, %.lr.ph.i ] ; 3 uses
  %.1.lcssa.i = phi ptr [ %.034.i, %.preheader.i ], [ %i.or, %vec.epilog.middle.block910 ], [ %i.oh, %middle.block896 ], [ %i.oz, %.lr.ph.i ] ; 2 uses
  %i.ne = icmp ult ptr %.1.lcssa.i, %i.mq
  %i.nf = icmp slt i32 %.126.lcssa.i, 24
  %i.ng = select i1 %i.ne, i1 %i.nf, i1 false
  br i1 %i.ng, label %bb.bp, label %concat_opt_exact_info_str.exit, !llvm.loop !317

bb.bp:                                            ; preds = %.loopexit.i, %.lr.ph35.i
  %.034.i = phi ptr [ %i.ms, %.lr.ph35.i ], [ %.1.lcssa.i, %.loopexit.i ] ; 11 uses
  %.02533.i = phi i32 [ 0, %.lr.ph35.i ], [ %.126.lcssa.i, %.loopexit.i ] ; 13 uses
  %.034.i878 = ptrtoaddr ptr %.034.i to i64       ; 3 uses
  %i.nh = load i32, ptr %i.nc, align 8, !tbaa !130 ; 2 uses
  %i.ni = load i32, ptr %i.nd, align 4, !tbaa !131
  %i.nj = icmp eq i32 %i.nh, %i.ni
  br i1 %i.nj, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.nk = tail call i32 @onigenc_mbclen(ptr noundef %.034.i, ptr noundef nonnull %i.mq, ptr noundef nonnull %i.na) #22
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.nl = phi i32 [ %i.nk, %bb.bq ], [ %i.nh, %bb.bp ] ; 5 uses
  %i.nm = add i32 %i.nl, %.02533.i
  %i.nn = icmp sgt i32 %i.nm, 24
  br i1 %i.nn, label %concat_opt_exact_info_str.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.br
  %i.no = icmp sgt i32 %i.nl, 0
  %i.np = icmp ult ptr %.034.i, %i.mq
  %i.nq = and i1 %i.np, %i.no
  br i1 %i.nq, label %iter.check898, label %.loopexit.i

iter.check898:                                    ; preds = %.preheader.i
  %i.nr = xor i64 %.034.i878, -1
  %i.ns = add i64 %i.nr, %i.mt
  %i.nt = add nsw i32 %i.nl, -1
  %i.nu = zext i32 %i.nt to i64
  %umin882 = call i64 @llvm.umin.i64(i64 %i.ns, i64 %i.nu) ; 3 uses
  %i.nv = add nuw nsw i64 %umin882, 1             ; 5 uses
  %min.iters.check883 = icmp samesign ult i64 %umin882, 3
  br i1 %min.iters.check883, label %.lr.ph.i.preheader, label %vector.scevcheck877

vector.scevcheck877:                              ; preds = %iter.check898
  %i.nw = xor i64 %.034.i878, -1
  %i.nx = add i64 %i.nw, %i.mt
  %i.ny = add nsw i32 %i.nl, -1
  %i.nz = zext i32 %i.ny to i64
  %umin879 = call i64 @llvm.umin.i64(i64 %i.nx, i64 %i.nz)
  %i.oa = trunc nuw i64 %umin879 to i32
  %i.ob = add i32 %.02533.i, %i.oa
  %i.oc = icmp slt i32 %i.ob, %.02533.i
  br i1 %i.oc, label %.lr.ph.i.preheader, label %vector.memcheck884

vector.memcheck884:                               ; preds = %vector.scevcheck877
  %i.od = sext i32 %.02533.i to i64
  %10 = add i64 %i.a, %i.od
  %i.oe = sub i64 %10, %.034.i878
  %i.of = add i64 %i.oe, 59
  %diff.check885 = icmp ult i64 %i.of, 31
  br i1 %diff.check885, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check886

vector.main.loop.iter.check886:                   ; preds = %vector.memcheck884
  %min.iters.check887 = icmp samesign ult i64 %umin882, 31
  br i1 %min.iters.check887, label %vec.epilog.ph902, label %vector.ph888

vector.ph888:                                     ; preds = %vector.main.loop.iter.check886
  %i.og = and i64 %i.nv, 28
  %n.vec889 = and i64 %i.nv, 8589934560           ; 5 uses
  %i.oh = getelementptr i8, ptr %.034.i, i64 %n.vec889 ; 2 uses
  %i.oi = trunc i64 %n.vec889 to i32              ; 2 uses
  %i.oj = add i32 %.02533.i, %i.oi                ; 2 uses
  br label %vector.body890

vector.body890:                                   ; preds = %vector.ph888, %vector.body890
  %index891 = phi i64 [ 0, %vector.ph888 ], [ %index.next895, %vector.body890 ] ; 3 uses
  %next.gep892 = getelementptr i8, ptr %.034.i, i64 %index891 ; 2 uses
  %i.ok = trunc i64 %index891 to i32
  %i.ol = add i32 %.02533.i, %i.ok
  %i.om = getelementptr i8, ptr %next.gep892, i64 16
  %wide.load893 = load <16 x i8>, ptr %next.gep892, align 1, !tbaa !46
  %wide.load894 = load <16 x i8>, ptr %i.om, align 1, !tbaa !46
  %i.on = sext i32 %i.ol to i64
  %i.oo = getelementptr i8, ptr %i.j, i64 %i.on   ; 2 uses
  %i.op = getelementptr i8, ptr %i.oo, i64 16
  store <16 x i8> %wide.load893, ptr %i.oo, align 1, !tbaa !46
  store <16 x i8> %wide.load894, ptr %i.op, align 1, !tbaa !46
  %index.next895 = add nuw i64 %index891, 32      ; 2 uses
  %i.oq = icmp eq i64 %index.next895, %n.vec889
  br i1 %i.oq, label %middle.block896, label %vector.body890, !llvm.loop !318

middle.block896:                                  ; preds = %vector.body890
  %cmp.n897 = icmp eq i64 %i.nv, %n.vec889
  br i1 %cmp.n897, label %.loopexit.i, label %vec.epilog.iter.check899

vec.epilog.iter.check899:                         ; preds = %middle.block896
  %min.epilog.iters.check901 = icmp eq i64 %i.og, 0
  br i1 %min.epilog.iters.check901, label %.lr.ph.i.preheader, label %vec.epilog.ph902, !prof !340

vec.epilog.ph902:                                 ; preds = %vector.main.loop.iter.check886, %vec.epilog.iter.check899
  %vec.epilog.resume.val903 = phi i64 [ %n.vec889, %vec.epilog.iter.check899 ], [ 0, %vector.main.loop.iter.check886 ]
  %n.vec904 = and i64 %i.nv, 8589934588           ; 4 uses
  %i.or = getelementptr i8, ptr %.034.i, i64 %n.vec904 ; 2 uses
  %i.os = trunc i64 %n.vec904 to i32              ; 2 uses
  %i.ot = add i32 %.02533.i, %i.os                ; 2 uses
  br label %vec.epilog.vector.body905

vec.epilog.vector.body905:                        ; preds = %vec.epilog.vector.body905, %vec.epilog.ph902
  %index906 = phi i64 [ %vec.epilog.resume.val903, %vec.epilog.ph902 ], [ %index.next909, %vec.epilog.vector.body905 ] ; 3 uses
  %next.gep907 = getelementptr i8, ptr %.034.i, i64 %index906
  %i.ou = trunc i64 %index906 to i32
  %i.ov = add i32 %.02533.i, %i.ou
  %wide.load908 = load <4 x i8>, ptr %next.gep907, align 1, !tbaa !46
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr i8, ptr %i.j, i64 %i.ow
  store <4 x i8> %wide.load908, ptr %i.ox, align 1, !tbaa !46
  %index.next909 = add nuw i64 %index906, 4       ; 2 uses
  %i.oy = icmp eq i64 %index.next909, %n.vec904
  br i1 %i.oy, label %vec.epilog.middle.block910, label %vec.epilog.vector.body905, !llvm.loop !319

vec.epilog.middle.block910:                       ; preds = %vec.epilog.vector.body905
  %cmp.n911 = icmp eq i64 %i.nv, %n.vec904
  br i1 %cmp.n911, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check898, %vector.scevcheck877, %vector.memcheck884, %vec.epilog.iter.check899, %vec.epilog.middle.block910
  %.131.i.ph = phi ptr [ %.034.i, %iter.check898 ], [ %.034.i, %vector.scevcheck877 ], [ %.034.i, %vector.memcheck884 ], [ %i.oh, %vec.epilog.iter.check899 ], [ %i.or, %vec.epilog.middle.block910 ]
  %.02430.i.ph = phi i32 [ 0, %iter.check898 ], [ 0, %vector.scevcheck877 ], [ 0, %vector.memcheck884 ], [ %i.oi, %vec.epilog.iter.check899 ], [ %i.os, %vec.epilog.middle.block910 ]
  %.12629.i.ph = phi i32 [ %.02533.i, %iter.check898 ], [ %.02533.i, %vector.scevcheck877 ], [ %.02533.i, %vector.memcheck884 ], [ %i.oj, %vec.epilog.iter.check899 ], [ %i.ot, %vec.epilog.middle.block910 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.131.i = phi ptr [ %i.oz, %.lr.ph.i ], [ %.131.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02430.i = phi i32 [ %i.pe, %.lr.ph.i ], [ %.02430.i.ph, %.lr.ph.i.preheader ]
  %.12629.i = phi i32 [ %i.pb, %.lr.ph.i ], [ %.12629.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.oz = getelementptr i8, ptr %.131.i, i64 1    ; 3 uses
  %i.pa = load i8, ptr %.131.i, align 1, !tbaa !46
  %i.pb = add i32 %.12629.i, 1                    ; 2 uses
  %i.pc = sext i32 %.12629.i to i64
  %i.pd = getelementptr i8, ptr %i.j, i64 %i.pc
  store i8 %i.pa, ptr %i.pd, align 1, !tbaa !46
  %i.pe = add nuw nsw i32 %.02430.i, 1            ; 2 uses
  %i.pf = icmp slt i32 %i.pe, %i.nl
  %i.pg = icmp ult ptr %i.oz, %i.mq
  %i.ph = and i1 %i.pg, %i.pf
  br i1 %i.ph, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !320

concat_opt_exact_info_str.exit:                   ; preds = %.loopexit.i, %bb.br, %bb.bo
  %.025.lcssa.i = phi i32 [ 0, %bb.bo ], [ %.126.lcssa.i, %.loopexit.i ], [ %.02533.i, %bb.br ] ; 2 uses
  store i32 %.025.lcssa.i, ptr %i.i, align 8, !tbaa !91
  store i32 0, ptr %i.h, align 4, !tbaa !346
  %.not310 = icmp eq i64 %i.mv, 0
  br i1 %.not310, label %add_char_opt_map_info.exit, label %bb.bs

bb.bs:                                            ; preds = %concat_opt_exact_info_str.exit
  %i.pi = load ptr, ptr %i.mr, align 8, !tbaa !127
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !46  ; 3 uses
  %i.pk = load ptr, ptr %i.mz, align 8, !tbaa !80
  %i.pl = getelementptr i8, ptr %1, i64 244
  %i.pm = zext i8 %i.pj to i64                    ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pl, i64 %i.pm  ; 2 uses
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !46
  %i.pp = icmp eq i8 %i.po, 0
  br i1 %i.pp, label %bb.bt, label %add_char_opt_map_info.exit

bb.bt:                                            ; preds = %bb.bs
  store i8 1, ptr %i.pn, align 1, !tbaa !46
  %i.pq = icmp sgt i8 %i.pj, -1
  br i1 %i.pq, label %bb.bu, label %map_position_value.exit.i

bb.bu:                                            ; preds = %bb.bt
  %i.pr = icmp eq i8 %i.pj, 0
  br i1 %i.pr, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ps = getelementptr i8, ptr %i.pk, i64 20
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !131
  %i.pu = icmp sgt i32 %i.pt, 1
  br i1 %i.pu, label %map_position_value.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.pv = getelementptr [2 x i8], ptr @map_position_value.ByteValTable, i64 %i.pm
  %i.pw = load i16, ptr %i.pv, align 2, !tbaa !96
  %i.px = sext i16 %i.pw to i32
  br label %map_position_value.exit.i

map_position_value.exit.i:                        ; preds = %bb.bw, %bb.bv, %bb.bt
  %.0.i.i329 = phi i32 [ 20, %bb.bv ], [ %i.px, %bb.bw ], [ 4, %bb.bt ]
  %i.py = getelementptr i8, ptr %1, i64 240       ; 2 uses
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !170
  %i.qa = add i32 %i.pz, %.0.i.i329
  store i32 %i.qa, ptr %i.py, align 8, !tbaa !170
  br label %add_char_opt_map_info.exit

add_char_opt_map_info.exit:                       ; preds = %map_position_value.exit.i, %bb.bs, %concat_opt_exact_info_str.exit
  store i64 %i.mv, ptr %1, align 8, !tbaa !94
  %i.qb = getelementptr i8, ptr %1, i64 8
  store i64 %i.mv, ptr %i.qb, align 8, !tbaa !93
  br label %bb.ce

bb.bx:                                            ; preds = %bb.bn
  %i.qc = and i32 %i.mx, 4
  %.not311 = icmp eq i32 %i.qc, 0
  %i.qd = getelementptr i8, ptr %2, i64 16        ; 3 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !80 ; 4 uses
  br i1 %.not311, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qf = tail call i32 @onigenc_strlen(ptr noundef %i.qe, ptr noundef %i.ms, ptr noundef %i.mq) #22
  %i.qg = load ptr, ptr %i.qd, align 8, !tbaa !80
  %i.qh = getelementptr i8, ptr %i.qg, i64 16
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !130
  %i.qj = sext i32 %i.qi to i64
  %i.qk = sext i32 %i.qf to i64
  %i.ql = mul nsw i64 %i.qj, %i.qk
  br label %.thread

bb.bz:                                            ; preds = %bb.bx
  %i.qm = icmp ult ptr %i.ms, %i.mq
  br i1 %i.qm, label %.lr.ph35.i331, label %concat_opt_exact_info_str.exit342

.lr.ph35.i331:                                    ; preds = %bb.bz
  %i.qn = getelementptr i8, ptr %i.qe, i64 16
  %i.qo = getelementptr i8, ptr %i.qe, i64 20
  br label %bb.ca

.loopexit.i335:                                   ; preds = %.lr.ph.i338, %middle.block858, %vec.epilog.middle.block872, %.preheader.i334
  %.126.lcssa.i336 = phi i32 [ %.02533.i333, %.preheader.i334 ], [ %i.se, %vec.epilog.middle.block872 ], [ %i.ru, %middle.block858 ], [ %i.sm, %.lr.ph.i338 ] ; 3 uses
  %.1.lcssa.i337 = phi ptr [ %.034.i332, %.preheader.i334 ], [ %i.sc, %vec.epilog.middle.block872 ], [ %i.rs, %middle.block858 ], [ %i.sk, %.lr.ph.i338 ] ; 2 uses
  %i.qp = icmp ult ptr %.1.lcssa.i337, %i.mq
  %i.qq = icmp slt i32 %.126.lcssa.i336, 24
  %i.qr = select i1 %i.qp, i1 %i.qq, i1 false
  br i1 %i.qr, label %bb.ca, label %concat_opt_exact_info_str.exit342, !llvm.loop !317

bb.ca:                                            ; preds = %.loopexit.i335, %.lr.ph35.i331
  %.034.i332 = phi ptr [ %i.ms, %.lr.ph35.i331 ], [ %.1.lcssa.i337, %.loopexit.i335 ] ; 11 uses
  %.02533.i333 = phi i32 [ 0, %.lr.ph35.i331 ], [ %.126.lcssa.i336, %.loopexit.i335 ] ; 13 uses
  %.034.i332840 = ptrtoaddr ptr %.034.i332 to i64 ; 3 uses
  %i.qs = load i32, ptr %i.qn, align 8, !tbaa !130 ; 2 uses
  %i.qt = load i32, ptr %i.qo, align 4, !tbaa !131
  %i.qu = icmp eq i32 %i.qs, %i.qt
  br i1 %i.qu, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qv = tail call i32 @onigenc_mbclen(ptr noundef %.034.i332, ptr noundef nonnull %i.mq, ptr noundef nonnull %i.qe) #22
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.qw = phi i32 [ %i.qv, %bb.cb ], [ %i.qs, %bb.ca ] ; 5 uses
  %i.qx = add i32 %i.qw, %.02533.i333
  %i.qy = icmp sgt i32 %i.qx, 24
  br i1 %i.qy, label %concat_opt_exact_info_str.exit342, label %.preheader.i334

.preheader.i334:                                  ; preds = %bb.cc
  %i.qz = icmp sgt i32 %i.qw, 0
  %i.ra = icmp ult ptr %.034.i332, %i.mq
  %i.rb = and i1 %i.ra, %i.qz
  br i1 %i.rb, label %iter.check860, label %.loopexit.i335

iter.check860:                                    ; preds = %.preheader.i334
  %i.rc = xor i64 %.034.i332840, -1
  %i.rd = add i64 %i.rc, %i.mt
  %i.re = add nsw i32 %i.qw, -1
  %i.rf = zext i32 %i.re to i64
  %umin844 = call i64 @llvm.umin.i64(i64 %i.rd, i64 %i.rf) ; 3 uses
  %i.rg = add nuw nsw i64 %umin844, 1             ; 5 uses
  %min.iters.check845 = icmp samesign ult i64 %umin844, 3
  br i1 %min.iters.check845, label %.lr.ph.i338.preheader, label %vector.scevcheck839

vector.scevcheck839:                              ; preds = %iter.check860
  %i.rh = xor i64 %.034.i332840, -1
  %i.ri = add i64 %i.rh, %i.mt
  %i.rj = add nsw i32 %i.qw, -1
  %i.rk = zext i32 %i.rj to i64
  %umin841 = call i64 @llvm.umin.i64(i64 %i.ri, i64 %i.rk)
  %i.rl = trunc nuw i64 %umin841 to i32
  %i.rm = add i32 %.02533.i333, %i.rl
  %i.rn = icmp slt i32 %i.rm, %.02533.i333
  br i1 %i.rn, label %.lr.ph.i338.preheader, label %vector.memcheck846

vector.memcheck846:                               ; preds = %vector.scevcheck839
  %i.ro = sext i32 %.02533.i333 to i64
  %11 = add i64 %i.a, %i.ro
  %i.rp = sub i64 %11, %.034.i332840
  %i.rq = add i64 %i.rp, 59
  %diff.check847 = icmp ult i64 %i.rq, 31
  br i1 %diff.check847, label %.lr.ph.i338.preheader, label %vector.main.loop.iter.check848

vector.main.loop.iter.check848:                   ; preds = %vector.memcheck846
  %min.iters.check849 = icmp samesign ult i64 %umin844, 31
  br i1 %min.iters.check849, label %vec.epilog.ph864, label %vector.ph850

vector.ph850:                                     ; preds = %vector.main.loop.iter.check848
  %i.rr = and i64 %i.rg, 28
  %n.vec851 = and i64 %i.rg, 8589934560           ; 5 uses
  %i.rs = getelementptr i8, ptr %.034.i332, i64 %n.vec851 ; 2 uses
  %i.rt = trunc i64 %n.vec851 to i32              ; 2 uses
  %i.ru = add i32 %.02533.i333, %i.rt             ; 2 uses
  br label %vector.body852

vector.body852:                                   ; preds = %vector.ph850, %vector.body852
  %index853 = phi i64 [ 0, %vector.ph850 ], [ %index.next857, %vector.body852 ] ; 3 uses
  %next.gep854 = getelementptr i8, ptr %.034.i332, i64 %index853 ; 2 uses
  %i.rv = trunc i64 %index853 to i32
  %i.rw = add i32 %.02533.i333, %i.rv
  %i.rx = getelementptr i8, ptr %next.gep854, i64 16
  %wide.load855 = load <16 x i8>, ptr %next.gep854, align 1, !tbaa !46
  %wide.load856 = load <16 x i8>, ptr %i.rx, align 1, !tbaa !46
  %i.ry = sext i32 %i.rw to i64
  %i.rz = getelementptr i8, ptr %i.j, i64 %i.ry   ; 2 uses
  %i.sa = getelementptr i8, ptr %i.rz, i64 16
  store <16 x i8> %wide.load855, ptr %i.rz, align 1, !tbaa !46
  store <16 x i8> %wide.load856, ptr %i.sa, align 1, !tbaa !46
  %index.next857 = add nuw i64 %index853, 32      ; 2 uses
  %i.sb = icmp eq i64 %index.next857, %n.vec851
  br i1 %i.sb, label %middle.block858, label %vector.body852, !llvm.loop !321

middle.block858:                                  ; preds = %vector.body852
  %cmp.n859 = icmp eq i64 %i.rg, %n.vec851
  br i1 %cmp.n859, label %.loopexit.i335, label %vec.epilog.iter.check861

vec.epilog.iter.check861:                         ; preds = %middle.block858
  %min.epilog.iters.check863 = icmp eq i64 %i.rr, 0
  br i1 %min.epilog.iters.check863, label %.lr.ph.i338.preheader, label %vec.epilog.ph864, !prof !340

vec.epilog.ph864:                                 ; preds = %vector.main.loop.iter.check848, %vec.epilog.iter.check861
  %vec.epilog.resume.val865 = phi i64 [ %n.vec851, %vec.epilog.iter.check861 ], [ 0, %vector.main.loop.iter.check848 ]
  %n.vec866 = and i64 %i.rg, 8589934588           ; 4 uses
  %i.sc = getelementptr i8, ptr %.034.i332, i64 %n.vec866 ; 2 uses
  %i.sd = trunc i64 %n.vec866 to i32              ; 2 uses
  %i.se = add i32 %.02533.i333, %i.sd             ; 2 uses
  br label %vec.epilog.vector.body867

vec.epilog.vector.body867:                        ; preds = %vec.epilog.vector.body867, %vec.epilog.ph864
  %index868 = phi i64 [ %vec.epilog.resume.val865, %vec.epilog.ph864 ], [ %index.next871, %vec.epilog.vector.body867 ] ; 3 uses
  %next.gep869 = getelementptr i8, ptr %.034.i332, i64 %index868
  %i.sf = trunc i64 %index868 to i32
  %i.sg = add i32 %.02533.i333, %i.sf
  %wide.load870 = load <4 x i8>, ptr %next.gep869, align 1, !tbaa !46
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr i8, ptr %i.j, i64 %i.sh
  store <4 x i8> %wide.load870, ptr %i.si, align 1, !tbaa !46
  %index.next871 = add nuw i64 %index868, 4       ; 2 uses
  %i.sj = icmp eq i64 %index.next871, %n.vec866
  br i1 %i.sj, label %vec.epilog.middle.block872, label %vec.epilog.vector.body867, !llvm.loop !322

vec.epilog.middle.block872:                       ; preds = %vec.epilog.vector.body867
  %cmp.n873 = icmp eq i64 %i.rg, %n.vec866
  br i1 %cmp.n873, label %.loopexit.i335, label %.lr.ph.i338.preheader

.lr.ph.i338.preheader:                            ; preds = %iter.check860, %vector.scevcheck839, %vector.memcheck846, %vec.epilog.iter.check861, %vec.epilog.middle.block872
  %.131.i339.ph = phi ptr [ %.034.i332, %iter.check860 ], [ %.034.i332, %vector.scevcheck839 ], [ %.034.i332, %vector.memcheck846 ], [ %i.rs, %vec.epilog.iter.check861 ], [ %i.sc, %vec.epilog.middle.block872 ]
  %.02430.i340.ph = phi i32 [ 0, %iter.check860 ], [ 0, %vector.scevcheck839 ], [ 0, %vector.memcheck846 ], [ %i.rt, %vec.epilog.iter.check861 ], [ %i.sd, %vec.epilog.middle.block872 ]
  %.12629.i341.ph = phi i32 [ %.02533.i333, %iter.check860 ], [ %.02533.i333, %vector.scevcheck839 ], [ %.02533.i333, %vector.memcheck846 ], [ %i.ru, %vec.epilog.iter.check861 ], [ %i.se, %vec.epilog.middle.block872 ]
  br label %.lr.ph.i338

.lr.ph.i338:                                      ; preds = %.lr.ph.i338.preheader, %.lr.ph.i338
  %.131.i339 = phi ptr [ %i.sk, %.lr.ph.i338 ], [ %.131.i339.ph, %.lr.ph.i338.preheader ] ; 2 uses
  %.02430.i340 = phi i32 [ %i.sp, %.lr.ph.i338 ], [ %.02430.i340.ph, %.lr.ph.i338.preheader ]
  %.12629.i341 = phi i32 [ %i.sm, %.lr.ph.i338 ], [ %.12629.i341.ph, %.lr.ph.i338.preheader ] ; 2 uses
  %i.sk = getelementptr i8, ptr %.131.i339, i64 1 ; 3 uses
  %i.sl = load i8, ptr %.131.i339, align 1, !tbaa !46
  %i.sm = add i32 %.12629.i341, 1                 ; 2 uses
  %i.sn = sext i32 %.12629.i341 to i64
  %i.so = getelementptr i8, ptr %i.j, i64 %i.sn
  store i8 %i.sl, ptr %i.so, align 1, !tbaa !46
  %i.sp = add nuw nsw i32 %.02430.i340, 1         ; 2 uses
  %i.sq = icmp slt i32 %i.sp, %i.qw
  %i.sr = icmp ult ptr %i.sk, %i.mq
  %i.ss = and i1 %i.sr, %i.sq
  br i1 %i.ss, label %.lr.ph.i338, label %.loopexit.i335, !llvm.loop !323

concat_opt_exact_info_str.exit342:                ; preds = %.loopexit.i335, %bb.cc, %bb.bz
  %.025.lcssa.i330 = phi i32 [ 0, %bb.bz ], [ %.126.lcssa.i336, %.loopexit.i335 ], [ %.02533.i333, %bb.cc ]
  store i32 %.025.lcssa.i330, ptr %i.i, align 8, !tbaa !91
  store i32 1, ptr %i.h, align 4, !tbaa !346
  %.not312 = icmp eq i64 %i.mv, 0
  br i1 %.not312, label %.thread, label %bb.cd

bb.cd:                                            ; preds = %concat_opt_exact_info_str.exit342
  %i.st = load ptr, ptr %i.mr, align 8, !tbaa !127
  %i.su = load ptr, ptr %i.mp, align 8, !tbaa !128
  %i.sv = load ptr, ptr %i.qd, align 8, !tbaa !80
  %i.sw = getelementptr i8, ptr %2, i64 28
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !83
  %i.sy = tail call fastcc i32 @add_char_amb_opt_map_info(ptr noundef nonnull %i.s, ptr noundef %i.st, ptr noundef %i.su, ptr noundef %i.sv, i32 noundef %i.sx) ; 2 uses
  %.not313 = icmp eq i32 %i.sy, 0
  br i1 %.not313, label %.thread, label %common.ret1041

.thread:                                          ; preds = %bb.by, %bb.cd, %concat_opt_exact_info_str.exit342
  %.0263 = phi i64 [ %i.ql, %bb.by ], [ %i.mv, %bb.cd ], [ 0, %concat_opt_exact_info_str.exit342 ]
  store i64 %i.mv, ptr %1, align 8, !tbaa !94
  %i.sz = getelementptr i8, ptr %1, i64 8
  store i64 %.0263, ptr %i.sz, align 8, !tbaa !93
  %.pre687 = load i32, ptr %i.i, align 8, !tbaa !89
  br label %bb.ce

bb.ce:                                            ; preds = %.thread, %add_char_opt_map_info.exit
  %i.ta = phi i32 [ %.pre687, %.thread ], [ %.025.lcssa.i, %add_char_opt_map_info.exit ]
  %i.tb = sext i32 %i.ta to i64
  %i.tc = icmp eq i64 %i.mv, %i.tb
  br i1 %i.tc, label %bb.cf, label %common.ret1041

bb.cf:                                            ; preds = %bb.ce
  %i.td = getelementptr i8, ptr %1, i64 48
  store i32 1, ptr %i.td, align 8, !tbaa !336
  br label %common.ret1041

bb.cg:                                            ; preds = %tailrecurse
  %i.te = getelementptr i8, ptr %.tr, i64 40
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !149
  %.not304 = icmp eq ptr %i.tf, null
  br i1 %.not304, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.tg = getelementptr i8, ptr %.tr, i64 4       ; 2 uses
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !150
  %i.ti = and i32 %i.th, 1
  %.not305 = icmp eq i32 %i.ti, 0
  br i1 %.not305, label %.preheader, label %bb.cj

.preheader:                                       ; preds = %bb.ch
  %i.tj = getelementptr i8, ptr %.tr, i64 8       ; 2 uses
  %i.tk = getelementptr i8, ptr %1, i64 244       ; 3 uses
  %i.tl = getelementptr i8, ptr %1, i64 240       ; 4 uses
  %i.tm = load i32, ptr %i.tj, align 8, !tbaa !17
  %i.tn = and i32 %i.tm, 1
  %.not306.peel = icmp eq i32 %i.tn, 0
  br i1 %.not306.peel, label %.peel.next672.preheader, label %bb.ci

.peel.next672.preheader:                          ; preds = %bb.ci, %map_position_value.exit.i343.peel, %.preheader
  br label %.peel.next672

bb.ci:                                            ; preds = %.preheader
  %i.to = load i8, ptr %i.tk, align 4, !tbaa !46
  %i.tp = icmp eq i8 %i.to, 0
  br i1 %i.tp, label %map_position_value.exit.i343.peel, label %.peel.next672.preheader

map_position_value.exit.i343.peel:                ; preds = %bb.ci
  %i.tq = getelementptr i8, ptr %2, i64 16
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !80
  store i8 1, ptr %i.tk, align 4, !tbaa !46
  %i.ts = getelementptr i8, ptr %i.tr, i64 20
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !131
  %i.tu = icmp sgt i32 %i.tt, 1
  %spec.select = select i1 %i.tu, i32 20, i32 5
  %i.tv = load i32, ptr %i.tl, align 8, !tbaa !170
  %i.tw = add i32 %i.tv, %spec.select
  store i32 %i.tw, ptr %i.tl, align 8, !tbaa !170
  br label %.peel.next672.preheader

bb.cj:                                            ; preds = %bb.ch, %bb.cg
  %i.tx = getelementptr i8, ptr %2, i64 16
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !80 ; 2 uses
  %i.tz = getelementptr i8, ptr %i.ty, i64 20
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !131
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr i8, ptr %i.ty, i64 16
  %i.ud = load i32, ptr %i.uc, align 8, !tbaa !130
  %i.ue = sext i32 %i.ud to i64
  store i64 %i.ub, ptr %1, align 8, !tbaa !94
  %i.uf = getelementptr i8, ptr %1, i64 8
  store i64 %i.ue, ptr %i.uf, align 8, !tbaa !93
  br label %common.ret1041

.peel.next672:                                    ; preds = %.peel.next672.preheader, %add_char_opt_map_info.exit345
  %indvars.iv667 = phi i64 [ %indvars.iv.next668, %add_char_opt_map_info.exit345 ], [ 1, %.peel.next672.preheader ] ; 6 uses
  %i.ug = trunc nuw nsw i64 %indvars.iv667 to i32
  %i.uh = lshr i64 %indvars.iv667, 5
  %i.ui = and i64 %i.uh, 134217727
  %i.uj = getelementptr [4 x i8], ptr %i.tj, i64 %i.ui
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !17
  %i.ul = and i32 %i.ug, 31
  %i.um = shl nuw i32 1, %i.ul
  %i.un = and i32 %i.uk, %i.um
  %.not306 = icmp eq i32 %i.un, 0
  %i.uo = load i32, ptr %i.tg, align 4, !tbaa !150
  %i.up = and i32 %i.uo, 1
  %.not308 = icmp eq i32 %i.up, 0
  %i.uq = xor i1 %.not306, %.not308
  br i1 %i.uq, label %bb.ck, label %add_char_opt_map_info.exit345

bb.ck:                                            ; preds = %.peel.next672
  %i.ur = getelementptr i8, ptr %i.tk, i64 %indvars.iv667 ; 2 uses
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !46
end_hunk_1
begin_hunk_2_@optimize_node_left:bb.a
  %i.zm = load i32, ptr %i.zg, align 4, !tbaa !17
  %i.zn = sext i32 %i.zm to i64
  %i.zo = getelementptr [8 x i8], ptr %i.yz, i64 %i.zn
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !66
  %i.zq = load ptr, ptr %i.yu, align 8, !tbaa !84
  %i.zr = call fastcc i32 @get_max_match_length(ptr noundef %i.zp, ptr noundef %i.d, ptr noundef %i.zq) ; 2 uses
  %.not296 = icmp eq i32 %i.zr, 0
  br i1 %.not296, label %.preheader384, label %.thread372

.preheader384:                                    ; preds = %bb.dl
  %i.zs = getelementptr i8, ptr %.tr, i64 8       ; 2 uses
  %i.zt = load i32, ptr %i.zs, align 8, !tbaa !140
  %i.zu = icmp sgt i32 %i.zt, 1
  br i1 %i.zu, label %.lr.ph630, label %.preheader384.._crit_edge_crit_edge

.preheader384.._crit_edge_crit_edge:              ; preds = %.preheader384
  %.pre681 = load i64, ptr %i.c, align 8, !tbaa !45
  %.pre682 = load i64, ptr %i.d, align 8, !tbaa !45
  br label %.thread372.sink.split

.lr.ph630:                                        ; preds = %.preheader384, %bb.dr
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.dr ], [ 1, %.preheader384 ] ; 2 uses
  %i.zv = getelementptr [4 x i8], ptr %i.zg, i64 %indvars.iv ; 2 uses
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !17
  %i.zx = sext i32 %i.zw to i64
  %i.zy = getelementptr [8 x i8], ptr %i.yz, i64 %i.zx
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !66
  %i.aaa = load ptr, ptr %i.yu, align 8, !tbaa !84
  %i.aab = call fastcc i32 @get_min_match_length(ptr noundef %i.zz, ptr noundef %i.e, ptr noundef %i.aaa) ; 2 uses
  %.not297 = icmp eq i32 %i.aab, 0
  br i1 %.not297, label %bb.dm, label %.thread372

bb.dm:                                            ; preds = %.lr.ph630
  %i.aac = load i32, ptr %i.zv, align 4, !tbaa !17
  %i.aad = sext i32 %i.aac to i64
  %i.aae = getelementptr [8 x i8], ptr %i.yz, i64 %i.aad
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !66
  %i.aag = load ptr, ptr %i.yu, align 8, !tbaa !84
  %i.aah = call fastcc i32 @get_max_match_length(ptr noundef %i.aaf, ptr noundef %i.f, ptr noundef %i.aag) ; 2 uses
  %.not298 = icmp eq i32 %i.aah, 0
  br i1 %.not298, label %bb.dn, label %.thread372

bb.dn:                                            ; preds = %bb.dm
  %i.aai = load i64, ptr %i.c, align 8, !tbaa !45 ; 2 uses
  %i.aaj = load i64, ptr %i.e, align 8, !tbaa !45 ; 3 uses
  %i.aak = icmp ugt i64 %i.aai, %i.aaj
  br i1 %i.aak, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i64 %i.aaj, ptr %i.c, align 8, !tbaa !45
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.aal = phi i64 [ %i.aaj, %bb.do ], [ %i.aai, %bb.dn ]
  %i.aam = load i64, ptr %i.d, align 8, !tbaa !45 ; 2 uses
  %i.aan = load i64, ptr %i.f, align 8, !tbaa !45 ; 3 uses
  %i.aao = icmp ult i64 %i.aam, %i.aan
  br i1 %i.aao, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  store i64 %i.aan, ptr %i.d, align 8, !tbaa !45
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dp, %bb.dq
  %i.aap = phi i64 [ %i.aam, %bb.dp ], [ %i.aan, %bb.dq ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aaq = load i32, ptr %i.zs, align 8, !tbaa !140
  %i.aar = sext i32 %i.aaq to i64
  %i.aas = icmp slt i64 %indvars.iv.next, %i.aar
  br i1 %i.aas, label %.lr.ph630, label %.thread372.sink.split, !llvm.loop !327

.thread372.sink.split:                            ; preds = %bb.dr, %.preheader384.._crit_edge_crit_edge, %bb.dj
  %.sink796 = phi i64 [ 0, %bb.dj ], [ %.pre681, %.preheader384.._crit_edge_crit_edge ], [ %i.aal, %bb.dr ]
  %.sink = phi i64 [ -1, %bb.dj ], [ %.pre682, %.preheader384.._crit_edge_crit_edge ], [ %i.aap, %bb.dr ]
  store i64 %.sink796, ptr %1, align 8, !tbaa !94
  %i.aat = getelementptr i8, ptr %1, i64 8
  store i64 %.sink, ptr %i.aat, align 8, !tbaa !93
  br label %.thread372

.thread372:                                       ; preds = %bb.dm, %.lr.ph630, %.thread372.sink.split, %bb.dl, %bb.dk
  %.7 = phi i32 [ 0, %.thread372.sink.split ], [ %i.zr, %bb.dl ], [ %i.zl, %bb.dk ], [ %i.aab, %.lr.ph630 ], [ %i.aah, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %common.ret1041

bb.ds:                                            ; preds = %tailrecurse
  %i.aau = getelementptr i8, ptr %.tr, i64 4
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !46
  %i.aaw = and i32 %i.aav, 128
  %.not291 = icmp eq i32 %i.aaw, 0
  br i1 %.not291, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  store i64 0, ptr %1, align 8, !tbaa !94
  %i.aax = getelementptr i8, ptr %1, i64 8
  store i64 -1, ptr %i.aax, align 8, !tbaa !93
  br label %common.ret1041

common.ret1041:                                   ; preds = %.split, %bb.dc, %is_left_anchor.exit.i, %bb.cd, %bb.fd, %is_set_opt_anc_info.exit, %bb.fb, %bb.fa, %bb.ez, %bb.ex, %bb.cj, %.loopexit674, %bb.cf, %bb.ce, %bb.ep, %.thread372, %bb.dt, %bb.di, %bb.db, %bb.da, %.loopexit, %.critedge3, %.critedge, %tailrecurse, %.split6, %bb.eq, %bb.er, %bb.du
  %common.ret1041.op = phi i32 [ %i.ahf, %bb.er ], [ %i.abf, %bb.du ], [ %i.ahv, %bb.fb ], [ %i.ahv, %bb.ez ], [ %i.ahv, %bb.fa ], [ %.lcssa640, %.critedge ], [ %.lcssa641, %.critedge3 ], [ 0, %bb.cj ], [ 0, %bb.ce ], [ 0, %.loopexit ], [ 0, %bb.da ], [ 0, %.split ], [ %i.sy, %bb.cd ], [ %i.yh, %bb.di ], [ 0, %bb.db ], [ %.7, %.thread372 ], [ 0, %bb.dt ], [ 0, %bb.dc ], [ %i.abi, %bb.ep ], [ %i.ahv, %is_set_opt_anc_info.exit ], [ 0, %bb.cf ], [ 0, %.loopexit674 ], [ 0, %bb.fd ], [ 0, %is_left_anchor.exit.i ], [ 0, %bb.ex ], [ 0, %.split6 ], [ -6, %tailrecurse ], [ 0, %bb.eq ]
  ret i32 %common.ret1041.op

bb.du:                                            ; preds = %bb.ds
  %i.aay = getelementptr i8, ptr %2, i64 24       ; 3 uses
  %i.aaz = load i32, ptr %i.aay, align 8, !tbaa !81
  %i.aba = getelementptr i8, ptr %.tr, i64 32     ; 2 uses
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !46
  %i.abc = getelementptr i8, ptr %i.abb, i64 16
  %i.abd = load i32, ptr %i.abc, align 8, !tbaa !46
  store i32 %i.abd, ptr %i.aay, align 8, !tbaa !81
  %i.abe = load ptr, ptr %i.aba, align 8, !tbaa !46
  %i.abf = tail call fastcc i32 @optimize_node_left(ptr noundef %i.abe, ptr noundef %1, ptr noundef %2)
  store i32 %i.aaz, ptr %i.aay, align 8, !tbaa !81
  br label %common.ret1041

bb.dv:                                            ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.abg = getelementptr i8, ptr %.tr, i64 8      ; 2 uses
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !124
  %i.abi = call fastcc i32 @optimize_node_left(ptr noundef %i.abh, ptr noundef %7, ptr noundef %2) ; 2 uses
  %.not284 = icmp eq i32 %i.abi, 0
  br i1 %.not284, label %bb.dw, label %bb.ep

bb.dw:                                            ; preds = %bb.dv
  %i.abj = getelementptr i8, ptr %.tr, i64 16     ; 3 uses
  %i.abk = load i32, ptr %i.abj, align 8, !tbaa !123 ; 3 uses
  %i.abl = icmp eq i32 %i.abk, 0
  br i1 %i.abl, label %bb.dx, label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  %i.abm = getelementptr i8, ptr %.tr, i64 20
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !121 ; 2 uses
  %i.abo = icmp eq i32 %i.abn, -1
  br i1 %i.abo, label %bb.dy, label %distance_multiply.exit

bb.dy:                                            ; preds = %bb.dx
  %i.abp = load i64, ptr %i.u, align 8, !tbaa !350
  %i.abq = icmp eq i64 %i.abp, 0
  br i1 %i.abq, label %bb.dz, label %distance_multiply.exit.thread

bb.dz:                                            ; preds = %bb.dy
  %i.abr = load ptr, ptr %i.abg, align 8, !tbaa !124
  %i.abs = load i32, ptr %i.abr, align 8, !tbaa !46
  %i.abt = icmp eq i32 %i.abs, 3
  br i1 %i.abt, label %bb.ea, label %distance_multiply.exit.thread

bb.ea:                                            ; preds = %bb.dz
  %i.abu = getelementptr i8, ptr %.tr, i64 24
  %i.abv = load i32, ptr %i.abu, align 8, !tbaa !120
  %.not288 = icmp eq i32 %i.abv, 0
  br i1 %.not288, label %distance_multiply.exit.thread, label %distance_multiply.exit.thread.sink.split

distance_multiply.exit.thread.sink.split:         ; preds = %bb.ea
  %i.abw = getelementptr i8, ptr %2, i64 24
  %i.abx = load i32, ptr %i.abw, align 8, !tbaa !81
  %i.aby = and i32 %i.abx, 4
  %.not289 = icmp eq i32 %i.aby, 0
  %i.abz = getelementptr i8, ptr %1, i64 16       ; 2 uses
  %i.aca = load i32, ptr %i.abz, align 8, !tbaa !100
  %. = select i1 %.not289, i32 16384, i32 32768
  %i.acb = or i32 %i.aca, %.
  store i32 %i.acb, ptr %i.abz, align 8, !tbaa !100
  br label %distance_multiply.exit.thread

bb.eb:                                            ; preds = %bb.dw
  %i.acc = icmp sgt i32 %i.abk, 0
  br i1 %i.acc, label %bb.ec, label %..thread375_crit_edge

..thread375_crit_edge:                            ; preds = %bb.eb
  %.phi.trans.insert.phi.trans.insert = getelementptr i8, ptr %.tr, i64 20
  %.pre680.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !121
  br label %.thread375

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull readonly align 8 dereferenceable(504) %7, i64 504, i1 false), !tbaa.struct !344
  %i.acd = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.ace = load i32, ptr %i.acd, align 8, !tbaa !89
  %i.acf = icmp slt i32 %i.ace, 1
  %i.acg = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.ach = load i32, ptr %i.acg, align 8          ; 2 uses
  %i.aci = icmp eq i32 %i.ach, 0
  %or.cond.not801 = select i1 %i.acf, i1 true, i1 %i.aci
  %.pre678 = load i32, ptr %i.abj, align 8, !tbaa !123 ; 3 uses
  %.not285623 = icmp slt i32 %.pre678, 2
  %or.cond797 = select i1 %or.cond.not801, i1 true, i1 %.not285623
  br i1 %or.cond797, label %.critedge5.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ec
  %i.acj = getelementptr i8, ptr %2, i64 16
  %i.ack = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.acl = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 4 uses
  %i.acm = getelementptr i8, ptr %1, i64 48
  %i.acn = getelementptr i8, ptr %1, i64 40       ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.acp = getelementptr i8, ptr %1, i64 44
  %.val322.pre = load i32, ptr %i.i, align 8, !tbaa !91
  %i.acq = add i64 %i.g, 59
  %i.acr = add i64 %i.g, 59
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph, %concat_opt_exact_info.exit
  %i.acs = phi i32 [ %.pre678, %.lr.ph ], [ %i.afp, %concat_opt_exact_info.exit ] ; 2 uses
  %i.act = phi i32 [ %i.ach, %.lr.ph ], [ %i.afq, %concat_opt_exact_info.exit ] ; 2 uses
  %.val322 = phi i32 [ %.val322.pre, %.lr.ph ], [ %.val322675, %concat_opt_exact_info.exit ] ; 4 uses
  %.0253624 = phi i32 [ 2, %.lr.ph ], [ %i.afr, %concat_opt_exact_info.exit ] ; 2 uses
  %i.acu = icmp slt i32 %.val322, 24
  br i1 %i.acu, label %bb.ee, label %.critedge5

bb.ee:                                            ; preds = %bb.ed
  %i.acv = load ptr, ptr %i.acj, align 8, !tbaa !80 ; 3 uses
  %i.acw = load i32, ptr %i.h, align 4, !tbaa !92 ; 2 uses
  %i.acx = icmp slt i32 %i.acw, 0
  %i.acy = load i32, ptr %i.ack, align 4, !tbaa !92 ; 2 uses
  br i1 %i.acx, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i32 %i.acy, ptr %i.h, align 4, !tbaa !92
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  %.not.i = icmp eq i32 %i.acw, %i.acy
  br i1 %.not.i, label %bb.eh, label %concat_opt_exact_info.exit

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.acz = load i32, ptr %i.acd, align 8, !tbaa !91
  %i.ada = sext i32 %i.acz to i64                 ; 3 uses
  %i.adb = getelementptr i8, ptr %i.acl, i64 %i.ada ; 6 uses
  %i.adc = icmp ult ptr %i.acl, %i.adb
  br i1 %i.adc, label %.lr.ph51.i, label %._crit_edge.i

.lr.ph51.i:                                       ; preds = %bb.eh
  %i.add = getelementptr i8, ptr %i.acv, i64 16
  %i.ade = getelementptr i8, ptr %i.acv, i64 20
  %i.adf = add i64 %i.acq, %i.ada
  %i.adg = add i64 %i.acr, %i.ada
  br label %bb.ei

.loopexit.i361:                                   ; preds = %.lr.ph.i363, %middle.block, %vec.epilog.middle.block, %.preheader.i360
  %.140.lcssa.i = phi i32 [ %.03949.i, %.preheader.i360 ], [ %i.aes, %vec.epilog.middle.block ], [ %i.aei, %middle.block ], [ %i.afa, %.lr.ph.i363 ] ; 2 uses
  %.1.lcssa.i362 = phi ptr [ %.050.i, %.preheader.i360 ], [ %i.aeq, %vec.epilog.middle.block ], [ %i.aeg, %middle.block ], [ %i.aey, %.lr.ph.i363 ] ; 3 uses
  %i.adh = icmp ult ptr %.1.lcssa.i362, %i.adb
  br i1 %i.adh, label %bb.ei, label %._crit_edge.i.loopexit, !llvm.loop !307

bb.ei:                                            ; preds = %.loopexit.i361, %.lr.ph51.i
  %.050.i = phi ptr [ %i.acl, %.lr.ph51.i ], [ %.1.lcssa.i362, %.loopexit.i361 ] ; 12 uses
  %.03949.i = phi i32 [ %.val322, %.lr.ph51.i ], [ %.140.lcssa.i, %.loopexit.i361 ] ; 13 uses
  %.050.i827 = ptrtoaddr ptr %.050.i to i64       ; 3 uses
  %i.adi = load i32, ptr %i.add, align 8, !tbaa !130 ; 2 uses
  %i.adj = load i32, ptr %i.ade, align 4, !tbaa !131
  %i.adk = icmp eq i32 %i.adi, %i.adj
  br i1 %i.adk, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.adl = call i32 @onigenc_mbclen(ptr noundef %.050.i, ptr noundef nonnull %i.adb, ptr noundef nonnull %i.acv) #22
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.adm = phi i32 [ %i.adl, %bb.ej ], [ %i.adi, %bb.ei ] ; 5 uses
  %i.adn = add i32 %i.adm, %.03949.i
  %i.ado = icmp sgt i32 %i.adn, 24
  br i1 %i.ado, label %._crit_edge.i.loopexit, label %.preheader.i360

.preheader.i360:                                  ; preds = %bb.ek
  %i.adp = icmp sgt i32 %i.adm, 0
  %i.adq = icmp ult ptr %.050.i, %i.adb
  %i.adr = and i1 %i.adq, %i.adp
  br i1 %i.adr, label %iter.check, label %.loopexit.i361

iter.check:                                       ; preds = %.preheader.i360
  %i.ads = sub i64 %i.adg, %.050.i827
  %i.adt = add nsw i32 %i.adm, -1
  %i.adu = zext i32 %i.adt to i64
  %umin828 = call i64 @llvm.umin.i64(i64 %i.ads, i64 %i.adu) ; 3 uses
  %i.adv = add nuw nsw i64 %umin828, 1            ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin828, 3
  br i1 %min.iters.check, label %.lr.ph.i363.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.adw = sub i64 %i.adf, %.050.i827
  %i.adx = add nsw i32 %i.adm, -1
  %i.ady = zext i32 %i.adx to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.adw, i64 %i.ady)
  %i.adz = trunc nuw i64 %umin to i32
  %i.aea = add i32 %.03949.i, %i.adz
  %i.aeb = icmp slt i32 %i.aea, %.03949.i
  br i1 %i.aeb, label %.lr.ph.i363.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aec = sext i32 %.03949.i to i64
  %12 = add i64 %i.a, %i.aec
  %i.aed = sub i64 %12, %.050.i827
  %i.aee = add i64 %i.aed, 59
  %diff.check = icmp ult i64 %i.aee, 31
  br i1 %diff.check, label %.lr.ph.i363.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check829 = icmp samesign ult i64 %umin828, 31
  br i1 %min.iters.check829, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aef = and i64 %i.adv, 28
  %n.vec = and i64 %i.adv, 8589934560             ; 5 uses
  %i.aeg = getelementptr i8, ptr %.050.i, i64 %n.vec ; 2 uses
  %i.aeh = trunc i64 %n.vec to i32                ; 2 uses
  %i.aei = add i32 %.03949.i, %i.aeh              ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.050.i, i64 %index ; 2 uses
  %i.aej = trunc i64 %index to i32
  %i.aek = add i32 %.03949.i, %i.aej
  %i.ael = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !46
  %wide.load830 = load <16 x i8>, ptr %i.ael, align 1, !tbaa !46
  %i.aem = sext i32 %i.aek to i64
  %i.aen = getelementptr i8, ptr %i.j, i64 %i.aem ; 2 uses
  %i.aeo = getelementptr i8, ptr %i.aen, i64 16
  store <16 x i8> %wide.load, ptr %i.aen, align 1, !tbaa !46
  store <16 x i8> %wide.load830, ptr %i.aeo, align 1, !tbaa !46
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aep = icmp eq i64 %index.next, %n.vec
  br i1 %i.aep, label %middle.block, label %vector.body, !llvm.loop !328

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.adv, %n.vec
  br i1 %cmp.n, label %.loopexit.i361, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aef, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i363.preheader, label %vec.epilog.ph, !prof !340

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec831 = and i64 %i.adv, 8589934588          ; 4 uses
  %i.aeq = getelementptr i8, ptr %.050.i, i64 %n.vec831 ; 2 uses
  %i.aer = trunc i64 %n.vec831 to i32             ; 2 uses
  %i.aes = add i32 %.03949.i, %i.aer              ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index832 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next835, %vec.epilog.vector.body ] ; 3 uses
  %next.gep833 = getelementptr i8, ptr %.050.i, i64 %index832
  %i.aet = trunc i64 %index832 to i32
  %i.aeu = add i32 %.03949.i, %i.aet
  %wide.load834 = load <4 x i8>, ptr %next.gep833, align 1, !tbaa !46
  %i.aev = sext i32 %i.aeu to i64
  %i.aew = getelementptr i8, ptr %i.j, i64 %i.aev
  store <4 x i8> %wide.load834, ptr %i.aew, align 1, !tbaa !46
  %index.next835 = add nuw i64 %index832, 4       ; 2 uses
  %i.aex = icmp eq i64 %index.next835, %n.vec831
  br i1 %i.aex, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !329

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n836 = icmp eq i64 %i.adv, %n.vec831
  br i1 %cmp.n836, label %.loopexit.i361, label %.lr.ph.i363.preheader

.lr.ph.i363.preheader:                            ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.147.i.ph = phi ptr [ %.050.i, %iter.check ], [ %.050.i, %vector.scevcheck ], [ %.050.i, %vector.memcheck ], [ %i.aeg, %vec.epilog.iter.check ], [ %i.aeq, %vec.epilog.middle.block ]
  %.03846.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %i.aeh, %vec.epilog.iter.check ], [ %i.aer, %vec.epilog.middle.block ]
  %.14045.i.ph = phi i32 [ %.03949.i, %iter.check ], [ %.03949.i, %vector.scevcheck ], [ %.03949.i, %vector.memcheck ], [ %i.aei, %vec.epilog.iter.check ], [ %i.aes, %vec.epilog.middle.block ]
  br label %.lr.ph.i363

.lr.ph.i363:                                      ; preds = %.lr.ph.i363.preheader, %.lr.ph.i363
  %.147.i = phi ptr [ %i.aey, %.lr.ph.i363 ], [ %.147.i.ph, %.lr.ph.i363.preheader ] ; 2 uses
  %.03846.i = phi i32 [ %i.afd, %.lr.ph.i363 ], [ %.03846.i.ph, %.lr.ph.i363.preheader ]
  %.14045.i = phi i32 [ %i.afa, %.lr.ph.i363 ], [ %.14045.i.ph, %.lr.ph.i363.preheader ] ; 2 uses
  %i.aey = getelementptr i8, ptr %.147.i, i64 1   ; 3 uses
  %i.aez = load i8, ptr %.147.i, align 1, !tbaa !46
  %i.afa = add i32 %.14045.i, 1                   ; 2 uses
  %i.afb = sext i32 %.14045.i to i64
  %i.afc = getelementptr i8, ptr %i.j, i64 %i.afb
  store i8 %i.aez, ptr %i.afc, align 1, !tbaa !46
  %i.afd = add nuw nsw i32 %.03846.i, 1           ; 2 uses
  %i.afe = icmp slt i32 %i.afd, %i.adm
  %i.aff = icmp ult ptr %i.aey, %i.adb
  %i.afg = and i1 %i.aff, %i.afe
  br i1 %i.afg, label %.lr.ph.i363, label %.loopexit.i361, !llvm.loop !330

._crit_edge.i.loopexit:                           ; preds = %.loopexit.i361, %bb.ek
  %.039.lcssa.i.ph = phi i32 [ %.03949.i, %bb.ek ], [ %.140.lcssa.i, %.loopexit.i361 ]
  %.0.lcssa.i.ph = phi ptr [ %.050.i, %bb.ek ], [ %.1.lcssa.i362, %.loopexit.i361 ]
  %.pre = load i32, ptr %i.acg, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.eh
  %i.afh = phi i32 [ %i.act, %bb.eh ], [ %.pre, %._crit_edge.i.loopexit ]
  %.039.lcssa.i = phi i32 [ %.val322, %bb.eh ], [ %.039.lcssa.i.ph, %._crit_edge.i.loopexit ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.acl, %bb.eh ], [ %.0.lcssa.i.ph, %._crit_edge.i.loopexit ]
  %i.afi = freeze i32 %i.afh                      ; 2 uses
  store i32 %.039.lcssa.i, ptr %i.i, align 8, !tbaa !91
  %i.afj = icmp eq ptr %.0.lcssa.i, %i.adb
  %.fr.i = select i1 %i.afj, i32 %i.afi, i32 0    ; 2 uses
  store i32 %.fr.i, ptr %i.acm, align 8, !tbaa !169
  %i.afk = load i32, ptr %i.acn, align 8, !tbaa !100
  %i.afl = load i32, ptr %i.aco, align 4, !tbaa !101
  %i.afm = load i32, ptr %i.acp, align 4, !tbaa !101
  %i.afn = and i32 %i.afm, 2048
  %storemerge.i.i356 = or i32 %i.afn, %i.afl
  %.not44.i = icmp eq i32 %.fr.i, 0
  %i.afo = select i1 %.not44.i, i32 0, i32 %storemerge.i.i356
  %.sroa.5.0.insert.ext.i = zext i32 %i.afo to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i358 = zext i32 %i.afk to i64
  %.sroa.0.0.insert.insert.i359 = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.0.0.insert.ext.i358
  store i64 %.sroa.0.0.insert.insert.i359, ptr %i.acn, align 8, !tbaa !17
  %.pre677 = load i32, ptr %i.abj, align 8, !tbaa !123
  br label %concat_opt_exact_info.exit

concat_opt_exact_info.exit:                       ; preds = %bb.eg, %._crit_edge.i
  %i.afp = phi i32 [ %i.acs, %bb.eg ], [ %.pre677, %._crit_edge.i ] ; 3 uses
  %i.afq = phi i32 [ %i.act, %bb.eg ], [ %i.afi, %._crit_edge.i ]
  %.val322675 = phi i32 [ %.val322, %bb.eg ], [ %.039.lcssa.i, %._crit_edge.i ]
  %i.afr = add i32 %.0253624, 1                   ; 3 uses
  %.not285 = icmp sgt i32 %i.afr, %i.afp
  br i1 %.not285, label %.critedge5, label %bb.ed, !llvm.loop !331

.critedge5:                                       ; preds = %bb.ed, %concat_opt_exact_info.exit
  %i.afs = phi i32 [ %i.acs, %bb.ed ], [ %i.afp, %concat_opt_exact_info.exit ] ; 3 uses
  %.0253.lcssa.ph = phi i32 [ %.0253624, %bb.ed ], [ %i.afr, %concat_opt_exact_info.exit ]
  %i.aft = icmp slt i32 %.0253.lcssa.ph, %i.afs
  br i1 %i.aft, label %bb.el, label %.critedge5.thread

bb.el:                                            ; preds = %.critedge5
  %i.afu = getelementptr i8, ptr %1, i64 48
  store i32 0, ptr %i.afu, align 8, !tbaa !336
  br label %.critedge5.thread

.critedge5.thread:                                ; preds = %bb.el, %.critedge5, %bb.ec
  %i.afv = phi i32 [ %i.afs, %bb.el ], [ %i.afs, %.critedge5 ], [ %.pre678, %bb.ec ] ; 5 uses
  %i.afw = getelementptr i8, ptr %.tr, i64 20
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !121 ; 4 uses
  %.not287 = icmp eq i32 %i.afv, %i.afx
  br i1 %.not287, label %bb.en, label %bb.em

bb.em:                                            ; preds = %.critedge5.thread
  %i.afy = getelementptr i8, ptr %1, i64 48
  store i32 0, ptr %i.afy, align 8, !tbaa !336
  %i.afz = getelementptr i8, ptr %1, i64 112
  store i32 0, ptr %i.afz, align 8, !tbaa !337
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %.critedge5.thread
  %i.aga = icmp sgt i32 %i.afv, 1
  br i1 %i.aga, label %.thread374.thread762, label %.thread374

.thread374.thread762:                             ; preds = %bb.en
  %i.agb = getelementptr i8, ptr %1, i64 112
  store i32 0, ptr %i.agb, align 8, !tbaa !337
  br label %.thread375

.thread374:                                       ; preds = %bb.en
  %i.agc = icmp eq i32 %i.afv, 0
  br i1 %i.agc, label %distance_multiply.exit, label %.thread375

.thread375:                                       ; preds = %.thread374.thread762, %..thread375_crit_edge, %.thread374
  %.pre680 = phi i32 [ %i.afx, %.thread374 ], [ %.pre680.pre, %..thread375_crit_edge ], [ %i.afx, %.thread374.thread762 ]
  %i.agd = phi i32 [ %i.afv, %.thread374 ], [ %i.abk, %..thread375_crit_edge ], [ %i.afv, %.thread374.thread762 ]
  %i.age = load i64, ptr %7, align 8, !tbaa !351  ; 2 uses
  %i.agf = sext i32 %i.agd to i64                 ; 2 uses
  %i.agg = udiv i64 -1, %i.agf
  %i.agh = icmp ult i64 %i.age, %i.agg
  %i.agi = mul i64 %i.age, %i.agf
  %spec.select.i364 = select i1 %i.agh, i64 %i.agi, i64 -1
  br label %distance_multiply.exit

distance_multiply.exit:                           ; preds = %bb.dx, %.thread374, %.thread375
  %i.agj = phi i32 [ %i.afx, %.thread374 ], [ %.pre680, %.thread375 ], [ %i.abn, %bb.dx ] ; 2 uses
  %.0.i = phi i64 [ 0, %.thread374 ], [ %spec.select.i364, %.thread375 ], [ 0, %bb.dx ] ; 3 uses
  switch i32 %i.agj, label %bb.eo [
    i32 -1, label %distance_multiply.exit.thread
    i32 0, label %distance_multiply.exit367
  ]

distance_multiply.exit.thread:                    ; preds = %distance_multiply.exit.thread.sink.split, %bb.dy, %bb.dz, %bb.ea, %distance_multiply.exit
  %.0.i767 = phi i64 [ %.0.i, %distance_multiply.exit ], [ 0, %bb.dz ], [ 0, %bb.dy ], [ 0, %bb.ea ], [ 0, %distance_multiply.exit.thread.sink.split ]
  %i.agk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.agl = load i64, ptr %i.agk, align 8, !tbaa !102
  %.not290 = icmp ne i64 %i.agl, 0
  %i.agm = sext i1 %.not290 to i64
  br label %distance_multiply.exit367

bb.eo:                                            ; preds = %distance_multiply.exit
  %i.agn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ago = load i64, ptr %i.agn, align 8, !tbaa !102 ; 2 uses
  %i.agp = sext i32 %i.agj to i64                 ; 2 uses
  %i.agq = udiv i64 -1, %i.agp
  %i.agr = icmp ult i64 %i.ago, %i.agq
  %i.ags = mul i64 %i.ago, %i.agp
  %spec.select.i365 = select i1 %i.agr, i64 %i.ags, i64 -1
  br label %distance_multiply.exit367

end_hunk_2
