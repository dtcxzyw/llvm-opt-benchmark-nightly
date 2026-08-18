inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_php_filter_validate_ipv6
define internal fastcc zeroext i1 @_php_filter_validate_ipv6(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(address_is_null) %2) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = tail call ptr @memchr(ptr noundef %0, i32 noundef 58, i64 noundef %1) #15
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit160, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @memchr(ptr noundef %0, i32 noundef 46, i64 noundef %1) #15 ; 4 uses
  %.not143 = icmp ne ptr %i.d, null               ; 2 uses
  br i1 %.not143, label %.preheader161.preheader, label %bb.d

.preheader161.preheader:                          ; preds = %bb.b
  %i.e = icmp ugt ptr %i.d, %0
  br i1 %i.e, label %.lr.ph217, label %.critedge

.preheader161:                                    ; preds = %.lr.ph217
  %i.f = icmp ugt ptr %i.g, %0
  br i1 %i.f, label %.lr.ph217, label %.critedge, !llvm.loop !90

.lr.ph217:                                        ; preds = %.preheader161.preheader, %.preheader161
  %.0216 = phi ptr [ %i.g, %.preheader161 ], [ %i.d, %.preheader161.preheader ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.0216, i64 -1 ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12
  %.not144 = icmp eq i8 %i.h, 58
  br i1 %.not144, label %..critedge_crit_edge, label %.preheader161, !llvm.loop !90

..critedge_crit_edge:                             ; preds = %.lr.ph217
  br label %.critedge, !llvm.loop !90

.critedge:                                        ; preds = %.preheader161, %..critedge_crit_edge, %.preheader161.preheader
  %.0.lcssa = phi ptr [ %i.d, %.preheader161.preheader ], [ %.0216, %..critedge_crit_edge ], [ %i.g, %.preheader161 ] ; 3 uses
  %i.i = ptrtoint ptr %.0.lcssa to i64
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = sub i64 %1, %i.k
  %i.m = call fastcc zeroext i1 @_php_filter_validate_ipv4(ptr noundef nonnull %.0.lcssa, i64 noundef %i.l, ptr noundef %i.b)
  %i.n = icmp ugt i64 %i.k, 1
  %or.cond154.not = and i1 %i.n, %i.m
  br i1 %or.cond154.not, label %bb.c, label %.loopexit160

bb.c:                                             ; preds = %.critedge
  %i.o = getelementptr inbounds i8, ptr %.0.lcssa, i64 -2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !12
  %.not145 = icmp ne i8 %i.p, 58
  %i.q = sext i1 %.not145 to i64
  %spec.select = add i64 %i.k, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1123 = phi i64 [ %spec.select, %bb.c ], [ %1, %bb.b ] ; 2 uses
  %.0115 = phi i32 [ 2, %bb.c ], [ 0, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.1123 ; 4 uses
  %i.s = icmp ne ptr %2, null                     ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.w, %bb.d
  %.0124 = phi ptr [ %0, %bb.d ], [ %.2126.lcssa, %bb.w ] ; 6 uses
  %.0118 = phi i32 [ -1, %bb.d ], [ %.1119, %bb.w ] ; 4 uses
  %.1116 = phi i32 [ %.0115, %bb.d ], [ %i.bh, %bb.w ] ; 9 uses
  %i.t = icmp ult ptr %.0124, %i.r
  br i1 %i.t, label %bb.f, label %.loopexit159

bb.f:                                             ; preds = %bb.e
  %i.u = load i8, ptr %.0124, align 1, !tbaa !12
  %i.v = icmp eq i8 %i.u, 58
  br i1 %i.v, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.0124, i64 1 ; 3 uses
  %.not146 = icmp ult ptr %i.w, %i.r
  br i1 %.not146, label %bb.h, label %.loopexit160

bb.h:                                             ; preds = %bb.g
  %i.x = load i8, ptr %i.w, align 1, !tbaa !12
  %i.y = icmp eq i8 %i.x, 58
  br i1 %i.y, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.z = icmp sgt i32 %.0118, -1
  br i1 %i.z, label %.loopexit160, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp slt i32 %.1116, 8
  %or.cond = and i1 %i.s, %i.aa
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = sext i32 %.1116 to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ab
  store i32 -1, ptr %i.ac, align 4, !tbaa !69
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = add nsw i32 %.1116, 1                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0124, i64 2 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.r
  br i1 %i.af, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp sgt i32 %.1116, 7
  br i1 %i.ag, label %.loopexit160, label %.loopexit159

bb.n:                                             ; preds = %bb.h
  %i.ah = icmp eq ptr %.0124, %0
  br i1 %i.ah, label %.loopexit160, label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.f
  %.1125 = phi ptr [ %i.ae, %bb.l ], [ %i.w, %bb.n ], [ %.0124, %bb.f ] ; 5 uses
  %.1119 = phi i32 [ %.1116, %bb.l ], [ %.0118, %bb.n ], [ %.0118, %bb.f ]
  %.2117 = phi i32 [ %i.ad, %bb.l ], [ %.1116, %bb.n ], [ %.1116, %bb.f ] ; 4 uses
  %i.ai = icmp ult ptr %.1125, %i.r
  br i1 %i.ai, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.o
  %.1125189 = ptrtoaddr ptr %.1125 to i64
  %i.aj = getelementptr i8, ptr %.1125, i64 %.1123
  %scevgep = getelementptr i8, ptr %i.aj, i64 %i.a
  %i.ak = sub i64 0, %.1125189
  %scevgep190 = getelementptr i8, ptr %scevgep, i64 %i.ak ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %.0112169 = phi i32 [ %i.ba, %bb.u ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0113168 = phi i32 [ %.1114, %bb.u ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.2126167 = phi ptr [ %i.bb, %bb.u ], [ %.1125, %.lr.ph.preheader ] ; 3 uses
  %i.al = load i8, ptr %.2126167, align 1, !tbaa !12 ; 3 uses
  %i.am = add i8 %i.al, -48                       ; 2 uses
  %or.cond150 = icmp ult i8 %i.am, 10
  br i1 %or.cond150, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.an = shl i32 %.0113168, 4
  %i.ao = zext nneg i8 %i.am to i32
  %i.ap = or disjoint i32 %i.an, %i.ao
  br label %bb.u

bb.q:                                             ; preds = %.lr.ph
  %i.aq = add i8 %i.al, -97                       ; 2 uses
  %or.cond151 = icmp ult i8 %i.aq, 6
  br i1 %or.cond151, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ar = shl i32 %.0113168, 4
  %i.as = zext nneg i8 %i.aq to i32
  %i.at = or disjoint i32 %i.ar, 10
  %i.au = add nuw i32 %i.at, %i.as
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.av = add i8 %i.al, -65                       ; 2 uses
  %or.cond152 = icmp ult i8 %i.av, 6
  br i1 %or.cond152, label %bb.t, label %._crit_edge.loopexit

bb.t:                                             ; preds = %bb.s
  %i.aw = shl i32 %.0113168, 4
  %i.ax = zext nneg i8 %i.av to i32
  %i.ay = or disjoint i32 %i.aw, 10
  %i.az = add nuw i32 %i.ay, %i.ax
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.p
  %.1114 = phi i32 [ %i.ap, %bb.p ], [ %i.au, %bb.r ], [ %i.az, %bb.t ] ; 2 uses
  %i.ba = add i32 %.0112169, 1                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.2126167, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.bb, %scevgep190
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !91

._crit_edge.loopexit:                             ; preds = %bb.s, %bb.u
  %.2126.lcssa.ph = phi ptr [ %scevgep190, %bb.u ], [ %.2126167, %bb.s ]
  %.0113.lcssa.ph = phi i32 [ %.1114, %bb.u ], [ %.0113168, %bb.s ]
  %.0112.lcssa.ph = phi i32 [ %i.ba, %bb.u ], [ %.0112169, %bb.s ]
  %i.bc = add i32 %.0112.lcssa.ph, -5
  %i.bd = icmp ult i32 %i.bc, -4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.o
  %.2126.lcssa = phi ptr [ %.1125, %bb.o ], [ %.2126.lcssa.ph, %._crit_edge.loopexit ]
  %.0113.lcssa = phi i32 [ 0, %bb.o ], [ %.0113.lcssa.ph, %._crit_edge.loopexit ]
  %.0112.lcssa = phi i1 [ true, %bb.o ], [ %i.bd, %._crit_edge.loopexit ]
  %i.be = icmp slt i32 %.2117, 8
  %or.cond3 = select i1 %i.s, i1 %i.be, i1 false
  br i1 %or.cond3, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge
  %i.bf = sext i32 %.2117 to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bf
  store i32 %.0113.lcssa, ptr %i.bg, align 4, !tbaa !69
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge
  %i.bh = add nsw i32 %.2117, 1
  %i.bi = icmp sgt i32 %.2117, 7
  %or.cond156 = select i1 %.0112.lcssa, i1 true, i1 %i.bi
  br i1 %or.cond156, label %.loopexit160, label %bb.e, !llvm.loop !92

.loopexit159:                                     ; preds = %bb.e, %bb.m
  %.2120 = phi i32 [ %.1116, %bb.m ], [ %.0118, %bb.e ] ; 4 uses
  %.3 = phi i32 [ %i.ad, %bb.m ], [ %.1116, %bb.e ] ; 3 uses
  %or.cond7 = and i1 %i.s, %.not143
  br i1 %or.cond7, label %.preheader.preheader, label %bb.x

.preheader.preheader:                             ; preds = %.loopexit159
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false), !tbaa !69
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 65535, ptr %i.bj, align 4, !tbaa !69
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load <4 x i32>, ptr %i.b, align 16, !tbaa !69 ; 2 uses
  %i.bm = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.bn = shl nsw <2 x i32> %i.bm, splat (i32 8)
  %i.bo = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.bp = add nsw <2 x i32> %i.bn, %i.bo
  store <2 x i32> %i.bp, ptr %i.bk, align 4, !tbaa !69
  br label %.loopexit

bb.x:                                             ; preds = %.loopexit159
  %i.bq = icmp sgt i32 %.2120, -1
  %or.cond9 = select i1 %i.s, i1 %i.bq, i1 false
  br i1 %or.cond9, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.br = sub nsw i32 8, %.3                      ; 2 uses
  %i.bs = add nuw nsw i32 %i.br, %.2120           ; 10 uses
  %i.bt = icmp samesign ult i32 %i.bs, 7
  br i1 %i.bt, label %.lr.ph178.preheader, label %.lr.ph182.preheader

.lr.ph178.preheader:                              ; preds = %bb.y
  %3 = zext nneg i32 %i.br to i64                 ; 7 uses
  %4 = sub nuw nsw i64 7, %3
  %5 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !69
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %6, ptr %7, align 4, !tbaa !69
  %.not227 = icmp eq i32 %i.bs, 6
  br i1 %.not227, label %.lr.ph182.preheader, label %.lr.ph178.1

.lr.ph182.preheader:                              ; preds = %.lr.ph178.preheader, %.lr.ph178.1, %.lr.ph178.2, %.lr.ph178.3, %.lr.ph178.4, %.lr.ph178.5, %.lr.ph178.6, %bb.y
  %i.bu = sub i32 9, %.3                          ; 3 uses
  %min.iters.check = icmp ult i32 %i.bu, 8
  br i1 %min.iters.check, label %.lr.ph182.preheader219, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph182.preheader
  %n.vec = and i32 %i.bu, -8                      ; 3 uses
  %i.bv = sub i32 %i.bs, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = sub i32 %i.bs, %index
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -12
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -28
  store <4 x i32> zeroinitializer, ptr %i.bz, align 4, !tbaa !69
  store <4 x i32> zeroinitializer, ptr %i.ca, align 4, !tbaa !69
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.cb = icmp eq i32 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.bu, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph182.preheader219

.lr.ph182.preheader219:                           ; preds = %.lr.ph182.preheader, %middle.block
  %.2181.ph = phi i32 [ %i.bs, %.lr.ph182.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph182

.lr.ph178.1:                                      ; preds = %.lr.ph178.preheader
  %8 = sub nsw i64 6, %3
  %i.cc = getelementptr inbounds [4 x i8], ptr %2, i64 %8
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !69
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !69
  %i.cf = icmp ult i32 %i.bs, 5
  br i1 %i.cf, label %.lr.ph178.2, label %.lr.ph182.preheader

.lr.ph178.2:                                      ; preds = %.lr.ph178.1
  %9 = sub nsw i64 5, %3
  %i.cg = getelementptr inbounds [4 x i8], ptr %2, i64 %9
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !69
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !69
  %.not228 = icmp eq i32 %i.bs, 4
  br i1 %.not228, label %.lr.ph182.preheader, label %.lr.ph178.3

.lr.ph178.3:                                      ; preds = %.lr.ph178.2
  %10 = sub nsw i64 4, %3
  %i.cj = getelementptr inbounds [4 x i8], ptr %2, i64 %10
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !69
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !69
  %i.cm = icmp ult i32 %i.bs, 3
  br i1 %i.cm, label %.lr.ph178.4, label %.lr.ph182.preheader

.lr.ph178.4:                                      ; preds = %.lr.ph178.3
  %11 = sub nuw nsw i64 3, %3
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %11
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !69
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !69
  %.not229 = icmp eq i32 %i.bs, 2
  br i1 %.not229, label %.lr.ph182.preheader, label %.lr.ph178.5

.lr.ph178.5:                                      ; preds = %.lr.ph178.4
  %12 = sub nsw i64 2, %3
  %i.cq = getelementptr inbounds [4 x i8], ptr %2, i64 %12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !69
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !69
  %i.ct = icmp eq i32 %i.bs, 0
  br i1 %i.ct, label %.lr.ph178.6, label %.lr.ph182.preheader

.lr.ph178.6:                                      ; preds = %.lr.ph178.5
  %13 = sub nsw i64 1, %3
  %i.cu = getelementptr inbounds [4 x i8], ptr %2, i64 %13
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !69
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !69
  br label %.lr.ph182.preheader

.lr.ph182:                                        ; preds = %.lr.ph182.preheader219, %.lr.ph182
  %.2181 = phi i32 [ %i.cz, %.lr.ph182 ], [ %.2181.ph, %.lr.ph182.preheader219 ] ; 3 uses
  %i.cx = zext nneg i32 %.2181 to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cx
  store i32 0, ptr %i.cy, align 4, !tbaa !69
  %i.cz = add nsw i32 %.2181, -1
  %.not149.not = icmp samesign ugt i32 %.2181, %.2120
  br i1 %.not149.not, label %.lr.ph182, label %.loopexit, !llvm.loop !96

.loopexit:                                        ; preds = %.lr.ph182, %middle.block, %bb.x, %.preheader.preheader
  %i.da = icmp sgt i32 %.2120, -1
  %i.db = icmp eq i32 %.3, 8
  %i.dc = select i1 %i.da, i1 true, i1 %i.db
  br label %.loopexit160

.loopexit160:                                     ; preds = %bb.w, %bb.n, %bb.i, %bb.g, %bb.m, %.critedge, %bb.a, %.loopexit
  %.0121 = phi i1 [ false, %.critedge ], [ false, %bb.a ], [ %i.dc, %.loopexit ], [ false, %bb.m ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.n ], [ false, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i1 %.0121
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @php_filter_validate_mac(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %zend_hash_str_find_deref.exit.thread112, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !12
  %i.f = tail call ptr @zend_hash_str_find(ptr noundef %i.e, ptr noundef nonnull @.str.24, i64 noundef 9) #14 ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %zend_hash_str_find_deref.exit.thread112, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !12    ; 2 uses
  %i.i = icmp eq i8 %i.h, 10
  br i1 %i.i, label %bb.d, label %bb.e, !prof !63

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i8 [ %i.h, %bb.c ], [ %.pre, %bb.d ]
  %.0.i.ph = phi ptr [ %i.f, %bb.c ], [ %i.k, %bb.d ]
  %i.m = icmp eq i8 %i.l, 6
  br i1 %i.m, label %zend_hash_str_find_deref.exit, label %zend_hash_str_find_deref.exit.thread112

zend_hash_str_find_deref.exit:                    ; preds = %bb.e
  %i.n = load ptr, ptr %.0.i.ph, align 8, !tbaa !12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !14
  %.not121 = icmp eq i64 %i.q, 1
  br i1 %.not121, label %zend_hash_str_find_deref.exit.thread112, label %bb.f

bb.f:                                             ; preds = %zend_hash_str_find_deref.exit
  %i.r = tail call ptr @get_active_function_name() #14
  tail call void (ptr, ...) @zend_value_error(ptr noundef nonnull @.str.25, ptr noundef %i.r) #14
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !18
  %.not103 = icmp eq ptr %i.s, null
  br i1 %.not103, label %bb.g, label %php_filter_parse_hex.exit.thread118

bb.g:                                             ; preds = %bb.f
  %i.t = and i64 %1, 268435456
  %.not104 = icmp eq i64 %i.t, 0
  br i1 %.not104, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.u, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

bb.i:                                             ; preds = %bb.g
  %i.v = and i64 %1, 134217728
  %.not105 = icmp eq i64 %i.v, 0
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #14
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not105, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.w, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

bb.k:                                             ; preds = %bb.i
  store i32 2, ptr %i.w, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

zend_hash_str_find_deref.exit.thread112:          ; preds = %bb.b, %bb.a, %bb.e, %zend_hash_str_find_deref.exit
  %.076116 = phi ptr [ %i.o, %zend_hash_str_find_deref.exit ], [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.b ]
  %i.x = phi i1 [ true, %zend_hash_str_find_deref.exit ], [ false, %bb.e ], [ false, %bb.a ], [ false, %bb.b ]
  switch i64 %i.d, label %.critedge [
    i64 14, label %bb.r
    i64 17, label %bb.l
  ]

bb.l:                                             ; preds = %zend_hash_str_find_deref.exit.thread112
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.z = load i8, ptr %i.y, align 2, !tbaa !12
  switch i8 %i.z, label %.critedge [
    i8 45, label %bb.r
    i8 58, label %.fold.split
  ]

.critedge:                                        ; preds = %bb.l, %zend_hash_str_find_deref.exit.thread112
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !18
  %.not88 = icmp eq ptr %i.aa, null
  br i1 %.not88, label %bb.m, label %php_filter_parse_hex.exit.thread118

bb.m:                                             ; preds = %.critedge
  %i.ab = and i64 %1, 268435456
  %.not89 = icmp eq i64 %i.ab, 0
  br i1 %.not89, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ac, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

bb.o:                                             ; preds = %bb.m
  %i.ad = and i64 %1, 134217728
  %.not90 = icmp eq i64 %i.ad, 0
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not90, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.ae, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

bb.q:                                             ; preds = %bb.o
  store i32 2, ptr %i.ae, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

.fold.split:                                      ; preds = %bb.l
  br label %bb.r

bb.r:                                             ; preds = %bb.l, %.fold.split, %zend_hash_str_find_deref.exit.thread112
  %i.af = phi i1 [ true, %bb.l ], [ false, %zend_hash_str_find_deref.exit.thread112 ], [ true, %.fold.split ] ; 3 uses
  %exitcond.not.2 = phi i1 [ false, %bb.l ], [ true, %zend_hash_str_find_deref.exit.thread112 ], [ false, %.fold.split ]
  %.080 = phi i32 [ 2, %bb.l ], [ 4, %zend_hash_str_find_deref.exit.thread112 ], [ 2, %.fold.split ] ; 2 uses
  %.077 = phi i32 [ 45, %bb.l ], [ 46, %zend_hash_str_find_deref.exit.thread112 ], [ 58, %.fold.split ] ; 6 uses
  br i1 %i.x, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.ag = load i8, ptr %.076116, align 1, !tbaa !12
  %i.ah = sext i8 %i.ag to i32
  %.not91 = icmp eq i32 %.077, %i.ah
  br i1 %.not91, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !18
  %.not100 = icmp eq ptr %i.ai, null
  br i1 %.not100, label %bb.u, label %php_filter_parse_hex.exit.thread118

bb.u:                                             ; preds = %bb.t
  %i.aj = and i64 %1, 268435456
  %.not101 = icmp eq i64 %i.aj, 0
  br i1 %.not101, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #14
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ak, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

bb.w:                                             ; preds = %bb.u
  %i.al = and i64 %1, 134217728
  %.not102 = icmp eq i64 %i.al, 0
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #14
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not102, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 1, ptr %i.am, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

bb.y:                                             ; preds = %bb.w
  store i32 2, ptr %i.am, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

bb.z:                                             ; preds = %bb.s, %bb.r
  %i.an = or disjoint i32 %.080, 1
  %i.ao = zext nneg i32 %.080 to i64              ; 7 uses
  %i.ap = zext nneg i32 %i.an to i64              ; 6 uses
end_hunk_0
