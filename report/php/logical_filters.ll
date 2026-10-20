Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/logical_filters?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_php_filter_validate_ipv4:bb.a
; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
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
  store i32 -1, ptr %i.ac, align 4, !tbaa !55
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
  store i32 %.0113.lcssa, ptr %i.bg, align 4, !tbaa !55
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false), !tbaa !55
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 65535, ptr %i.bj, align 4, !tbaa !55
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load <4 x i32>, ptr %i.b, align 16, !tbaa !55 ; 2 uses
  %i.bm = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.bn = shl nsw <2 x i32> %i.bm, splat (i32 8)
  %i.bo = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.bp = add nsw <2 x i32> %i.bn, %i.bo
  store <2 x i32> %i.bp, ptr %i.bk, align 4, !tbaa !55
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
  %i.bu = zext nneg i32 %i.br to i64              ; 7 uses
  %i.bv = sub nuw nsw i64 7, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !55
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !55
  %.not227 = icmp eq i32 %i.bs, 6
  br i1 %.not227, label %.lr.ph182.preheader, label %.lr.ph178.1

.lr.ph182.preheader:                              ; preds = %.lr.ph178.preheader, %.lr.ph178.1, %.lr.ph178.2, %.lr.ph178.3, %.lr.ph178.4, %.lr.ph178.5, %.lr.ph178.6, %bb.y
  %i.bz = sub i32 9, %.3                          ; 3 uses
  %min.iters.check = icmp ult i32 %i.bz, 8
  br i1 %min.iters.check, label %.lr.ph182.preheader219, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph182.preheader
  %n.vec = and i32 %i.bz, -8                      ; 3 uses
  %i.ca = sub i32 %i.bs, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = sub i32 %i.bs, %index
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -12
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 -28
  store <4 x i32> zeroinitializer, ptr %i.ce, align 4, !tbaa !55
  store <4 x i32> zeroinitializer, ptr %i.cf, align 4, !tbaa !55
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.cg = icmp eq i32 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.bz, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph182.preheader219

.lr.ph182.preheader219:                           ; preds = %.lr.ph182.preheader, %middle.block
  %.2181.ph = phi i32 [ %i.bs, %.lr.ph182.preheader ], [ %i.ca, %middle.block ]
  br label %.lr.ph182

.lr.ph178.1:                                      ; preds = %.lr.ph178.preheader
  %i.ch = sub nsw i64 6, %i.bu
  %i.ci = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !55
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !55
  %i.cl = icmp ult i32 %i.bs, 5
  br i1 %i.cl, label %.lr.ph178.2, label %.lr.ph182.preheader

.lr.ph178.2:                                      ; preds = %.lr.ph178.1
  %i.cm = sub nsw i64 5, %i.bu
  %i.cn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !55
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !55
  %.not228 = icmp eq i32 %i.bs, 4
  br i1 %.not228, label %.lr.ph182.preheader, label %.lr.ph178.3

.lr.ph178.3:                                      ; preds = %.lr.ph178.2
  %i.cq = sub nsw i64 4, %i.bu
  %i.cr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !55
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !55
  %i.cu = icmp ult i32 %i.bs, 3
  br i1 %i.cu, label %.lr.ph178.4, label %.lr.ph182.preheader

.lr.ph178.4:                                      ; preds = %.lr.ph178.3
  %i.cv = sub nuw nsw i64 3, %i.bu
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !55
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !55
  %.not229 = icmp eq i32 %i.bs, 2
  br i1 %.not229, label %.lr.ph182.preheader, label %.lr.ph178.5

.lr.ph178.5:                                      ; preds = %.lr.ph178.4
  %i.cz = sub nsw i64 2, %i.bu
  %i.da = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !55
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !55
  %i.dd = icmp eq i32 %i.bs, 0
  br i1 %i.dd, label %.lr.ph178.6, label %.lr.ph182.preheader

.lr.ph178.6:                                      ; preds = %.lr.ph178.5
  %i.de = sub nsw i64 1, %i.bu
  %i.df = getelementptr inbounds [4 x i8], ptr %2, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !55
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !55
  br label %.lr.ph182.preheader

.lr.ph182:                                        ; preds = %.lr.ph182.preheader219, %.lr.ph182
  %.2181 = phi i32 [ %i.dk, %.lr.ph182 ], [ %.2181.ph, %.lr.ph182.preheader219 ] ; 3 uses
  %i.di = zext nneg i32 %.2181 to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.di
  store i32 0, ptr %i.dj, align 4, !tbaa !55
  %i.dk = add nsw i32 %.2181, -1
  %.not149.not = icmp samesign ugt i32 %.2181, %.2120
  br i1 %.not149.not, label %.lr.ph182, label %.loopexit, !llvm.loop !94

.loopexit:                                        ; preds = %.lr.ph182, %middle.block, %bb.x, %.preheader.preheader
  %i.dl = icmp sgt i32 %.2120, -1
  %i.dm = icmp eq i32 %.3, 8
  %i.dn = select i1 %i.dl, i1 true, i1 %i.dm
  br label %.loopexit160

.loopexit160:                                     ; preds = %bb.w, %bb.n, %bb.i, %bb.g, %bb.m, %.critedge, %bb.a, %.loopexit
  %.0121 = phi i1 [ false, %.critedge ], [ false, %bb.a ], [ %i.dn, %.loopexit ], [ false, %bb.m ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.n ], [ false, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i1 %.0121
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @php_filter_validate_mac(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
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
  br i1 %i.i, label %bb.d, label %bb.e, !prof !54

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
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17
  %.not121 = icmp eq i64 %i.q, 1
  br i1 %.not121, label %zend_hash_str_find_deref.exit.thread112, label %bb.f

bb.f:                                             ; preds = %zend_hash_str_find_deref.exit
  %i.r = tail call ptr @get_active_function_name() #14
  tail call void (ptr, ...) @zend_value_error(ptr noundef nonnull @.str.25, ptr noundef %i.r) #14
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !51
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
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !51
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
  %.081 = phi i32 [ 6, %bb.l ], [ 3, %zend_hash_str_find_deref.exit.thread112 ], [ 6, %.fold.split ] ; 2 uses
  %.not.i107.1 = phi i1 [ false, %bb.l ], [ true, %zend_hash_str_find_deref.exit.thread112 ], [ false, %.fold.split ] ; 2 uses
  %.080 = phi i32 [ 2, %bb.l ], [ 4, %zend_hash_str_find_deref.exit.thread112 ], [ 2, %.fold.split ] ; 2 uses
  %.077 = phi i32 [ 45, %bb.l ], [ 46, %zend_hash_str_find_deref.exit.thread112 ], [ 58, %.fold.split ] ; 2 uses
  br i1 %i.x, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.af = load i8, ptr %.076116, align 1, !tbaa !12
  %i.ag = sext i8 %i.af to i32
  %.not91 = icmp eq i32 %.077, %i.ag
  br i1 %.not91, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !51
  %.not100 = icmp eq ptr %i.ah, null
  br i1 %.not100, label %bb.u, label %php_filter_parse_hex.exit.thread118

bb.u:                                             ; preds = %bb.t
  %i.ai = and i64 %1, 268435456
  %.not101 = icmp eq i64 %i.ai, 0
  br i1 %.not101, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.aj, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

bb.w:                                             ; preds = %bb.u
  %i.ak = and i64 %1, 134217728
  %.not102 = icmp eq i64 %i.ak, 0
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #14
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not102, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 1, ptr %i.al, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

bb.y:                                             ; preds = %bb.w
  store i32 2, ptr %i.al, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

bb.z:                                             ; preds = %bb.s, %bb.r
  %i.am = or disjoint i32 %.080, 1
  %i.an = add nsw i32 %.081, -1
  %i.ao = zext nneg i32 %.080 to i64
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = zext nneg i32 %i.an to i64
  %wide.trip.count = zext nneg i32 %.081 to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ao
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %php_filter_parse_hex.exit
  %indvars.iv = phi i64 [ 0, %bb.z ], [ %indvars.iv.next, %php_filter_parse_hex.exit ] ; 3 uses
  %i.ar = mul nuw nsw i64 %indvars.iv, %i.ap      ; 2 uses
  %i.as = icmp samesign ult i64 %indvars.iv, %i.aq
  br i1 %i.as, label %bb.ab, label %.lr.ph.i

bb.ab:                                            ; preds = %bb.aa
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.ar
  %i.at = load i8, ptr %gep, align 1, !tbaa !12
  %i.au = sext i8 %i.at to i32
  %.not92 = icmp eq i32 %.077, %i.au
  br i1 %.not92, label %.lr.ph.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !51
  %.not96 = icmp eq ptr %i.av, null
  br i1 %.not96, label %bb.ad, label %php_filter_parse_hex.exit.thread118

bb.ad:                                            ; preds = %bb.ac
  %i.aw = and i64 %1, 268435456
  %.not97 = icmp eq i64 %i.aw, 0
  br i1 %.not97, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #14
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ax, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

bb.af:                                            ; preds = %bb.ad
  %i.ay = and i64 %1, 134217728
  %.not98 = icmp eq i64 %i.ay, 0
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #14
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not98, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 1, ptr %i.az, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

bb.ah:                                            ; preds = %bb.af
  store i32 2, ptr %i.az, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

.lr.ph.i:                                         ; preds = %bb.ab, %bb.aa
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ar ; 4 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !12  ; 2 uses
  %i.bc = add i8 %i.bb, -48
  %or.cond.i = icmp ult i8 %i.bc, 10
  %i.bd = freeze i1 %or.cond.i
  br i1 %i.bd, label %.lr.ph.i.1, label %switch.early.test

switch.early.test:                                ; preds = %.lr.ph.i
  switch i8 %i.bb, label %bb.ak [
    i8 102, label %.lr.ph.i.1
    i8 101, label %.lr.ph.i.1
    i8 100, label %.lr.ph.i.1
    i8 99, label %.lr.ph.i.1
    i8 98, label %.lr.ph.i.1
    i8 97, label %.lr.ph.i.1
    i8 70, label %.lr.ph.i.1
    i8 69, label %.lr.ph.i.1
    i8 68, label %.lr.ph.i.1
    i8 67, label %.lr.ph.i.1
    i8 66, label %.lr.ph.i.1
    i8 65, label %.lr.ph.i.1
  ]

.lr.ph.i.1:                                       ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %.lr.ph.i
  %.1.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.be = load i8, ptr %.1.i, align 1, !tbaa !12  ; 2 uses
  %i.bf = add i8 %i.be, -48
  %or.cond.i.1 = icmp ult i8 %i.bf, 10
  %i.bg = freeze i1 %or.cond.i.1
  br i1 %i.bg, label %bb.ai, label %switch.early.test134

switch.early.test134:                             ; preds = %.lr.ph.i.1
  switch i8 %i.be, label %bb.ak [
    i8 102, label %bb.ai
    i8 101, label %bb.ai
    i8 100, label %bb.ai
    i8 99, label %bb.ai
    i8 98, label %bb.ai
    i8 97, label %bb.ai
    i8 70, label %bb.ai
    i8 69, label %bb.ai
    i8 68, label %bb.ai
    i8 67, label %bb.ai
    i8 66, label %bb.ai
    i8 65, label %bb.ai
  ]

bb.ai:                                            ; preds = %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %switch.early.test134, %.lr.ph.i.1
  br i1 %.not.i107.1, label %.lr.ph.i.2, label %php_filter_parse_hex.exit

.lr.ph.i.2:                                       ; preds = %bb.ai
  %.1.i.1 = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bh = load i8, ptr %.1.i.1, align 1, !tbaa !12 ; 2 uses
  %i.bi = add i8 %i.bh, -48
  %or.cond.i.2 = icmp ult i8 %i.bi, 10
  %i.bj = freeze i1 %or.cond.i.2
  br i1 %i.bj, label %bb.aj, label %switch.early.test135

switch.early.test135:                             ; preds = %.lr.ph.i.2
  switch i8 %i.bh, label %bb.ak [
    i8 102, label %bb.aj
    i8 101, label %bb.aj
    i8 100, label %bb.aj
    i8 99, label %bb.aj
    i8 98, label %bb.aj
    i8 97, label %bb.aj
    i8 70, label %bb.aj
    i8 69, label %bb.aj
    i8 68, label %bb.aj
    i8 67, label %bb.aj
    i8 66, label %bb.aj
    i8 65, label %bb.aj
  ]

bb.aj:                                            ; preds = %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %switch.early.test135, %.lr.ph.i.2
  br i1 %.not.i107.1, label %.lr.ph.i.3, label %php_filter_parse_hex.exit

.lr.ph.i.3:                                       ; preds = %bb.aj
  %.1.i.2 = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  %i.bk = load i8, ptr %.1.i.2, align 1, !tbaa !12 ; 2 uses
  %i.bl = add i8 %i.bk, -48
  %or.cond.i.3 = icmp ult i8 %i.bl, 10
  %i.bm = freeze i1 %or.cond.i.3
  br i1 %i.bm, label %php_filter_parse_hex.exit, label %switch.early.test136

switch.early.test136:                             ; preds = %.lr.ph.i.3
  switch i8 %i.bk, label %bb.ak [
    i8 102, label %php_filter_parse_hex.exit
    i8 101, label %php_filter_parse_hex.exit
    i8 100, label %php_filter_parse_hex.exit
    i8 99, label %php_filter_parse_hex.exit
    i8 98, label %php_filter_parse_hex.exit
    i8 97, label %php_filter_parse_hex.exit
    i8 70, label %php_filter_parse_hex.exit
    i8 69, label %php_filter_parse_hex.exit
    i8 68, label %php_filter_parse_hex.exit
    i8 67, label %php_filter_parse_hex.exit
    i8 66, label %php_filter_parse_hex.exit
    i8 65, label %php_filter_parse_hex.exit
  ]

bb.ak:                                            ; preds = %switch.early.test136, %switch.early.test135, %switch.early.test134, %switch.early.test
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !51
  %.not93 = icmp eq ptr %i.bn, null
  br i1 %.not93, label %bb.al, label %php_filter_parse_hex.exit.thread118

bb.al:                                            ; preds = %bb.ak
  %i.bo = and i64 %1, 268435456
  %.not94 = icmp eq i64 %i.bo, 0
  br i1 %.not94, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #14
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.bp, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

bb.an:                                            ; preds = %bb.al
  %i.bq = and i64 %1, 134217728
  %.not95 = icmp eq i64 %i.bq, 0
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #14
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not95, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 1, ptr %i.br, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

bb.ap:                                            ; preds = %bb.an
  store i32 2, ptr %i.br, align 8, !tbaa !12
  br label %php_filter_parse_hex.exit.thread118

php_filter_parse_hex.exit:                        ; preds = %switch.early.test136, %switch.early.test136, %switch.early.test136, %switch.early.test136, %switch.early.test136, %switch.early.test136, %switch.early.test136, %switch.early.test136, %switch.early.test136, %switch.early.test136, %switch.early.test136, %switch.early.test136, %.lr.ph.i.3, %bb.aj, %bb.ai
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %php_filter_parse_hex.exit.thread118, label %bb.aa, !llvm.loop !97

php_filter_parse_hex.exit.thread118:              ; preds = %php_filter_parse_hex.exit, %bb.ak, %bb.ae, %bb.ac, %bb.ao, %bb.ag, %bb.am, %bb.ah, %bb.ap, %bb.x, %bb.y, %bb.t, %bb.p, %bb.q, %.critedge, %bb.j, %bb.k, %bb.f, %bb.v, %bb.n, %bb.h
  %.3 = phi i32 [ 0, %.critedge ], [ -1, %bb.h ], [ 0, %bb.f ], [ 0, %bb.p ], [ -1, %bb.v ], [ 0, %bb.t ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.j ], [ -1, %bb.n ], [ 0, %bb.k ], [ 0, %bb.q ], [ 0, %bb.ak ], [ 0, %bb.ap ], [ 0, %bb.ah ], [ -1, %bb.am ], [ 0, %bb.ag ], [ 0, %bb.ao ], [ 0, %bb.ac ], [ -1, %bb.ae ], [ 0, %php_filter_parse_hex.exit ]
  ret i32 %.3
}

declare i64 @zval_get_long_func(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare double @zval_get_double_func(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @_is_numeric_string_ex(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"_zend_refcounted_h", !9, i64 0, !8, i64 4}
!15 = !{!"long", !8, i64 0}
!16 = !{!"_zend_string", !14, i64 0, !15, i64 8, !15, i64 16, !8, i64 24}
!17 = !{!16, !15, i64 16}
!18 = !{!"_zval_struct", !8, i64 0, !8, i64 8, !8, i64 12}
!19 = !{!"any pointer", !8, i64 0}
!20 = !{!"any p2 pointer", !19, i64 0}
!21 = !{!"p2 _ZTS11_zend_array", !20, i64 0}
!22 = !{!"_zend_array", !14, i64 0, !8, i64 8, !9, i64 12, !8, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !15, i64 40, !19, i64 48}
!23 = !{!"p1 _ZTS13__jmp_buf_tag", !19, i64 0}
!24 = !{!"_Bool", !8, i64 0}
!25 = !{!"p1 _ZTS11_zend_array", !19, i64 0}
!26 = !{!"p1 _ZTS12_zval_struct", !19, i64 0}
!27 = !{!"p1 _ZTS14_zend_vm_stack", !19, i64 0}
!28 = !{!"p1 _ZTS18_zend_execute_data", !19, i64 0}
!29 = !{!"p1 _ZTS17_zend_class_entry", !19, i64 0}
!30 = !{!"zend_atomic_bool_s", !8, i64 0}
!31 = !{!"_zend_stack", !9, i64 0, !9, i64 4, !9, i64 8, !19, i64 16}
!32 = !{!"p1 _ZTS15_zend_ini_entry", !19, i64 0}
!33 = !{!"p2 _ZTS12_zend_object", !20, i64 0}
!34 = !{!"_zend_objects_store", !33, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!35 = !{!"_zend_lazy_objects_store", !22, i64 0}
!36 = !{!"p1 _ZTS12_zend_object", !19, i64 0}
!37 = !{!"p1 _ZTS8_zend_op", !19, i64 0}
!38 = !{!"p1 _ZTS18_zend_module_entry", !19, i64 0}
!39 = !{!"p1 _ZTS18_HashTableIterator", !19, i64 0}
!40 = !{!"_zend_op", !19, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !9, i64 20, !9, i64 24, !8, i64 28, !8, i64 29, !8, i64 30, !8, i64 31}
!41 = !{!"", !26, i64 0, !26, i64 8, !26, i64 16}
!42 = !{!"p1 _ZTS19_zend_fiber_context", !19, i64 0}
!43 = !{!"p1 _ZTS11_zend_fiber", !19, i64 0}
!44 = !{!"p2 _ZTS16_zend_error_info", !20, i64 0}
!45 = !{!"p1 _ZTS12_zend_string", !19, i64 0}
!46 = !{!"_zend_call_stack", !19, i64 0, !15, i64 8}
!47 = !{!"p1 _ZTS19_zend_strtod_bigint", !19, i64 0}
!48 = !{!"p1 omnipotent char", !19, i64 0}
!49 = !{!"_zend_strtod_state", !8, i64 0, !47, i64 64, !48, i64 72}
!50 = !{!"_zend_executor_globals", !18, i64 0, !18, i64 16, !8, i64 32, !21, i64 288, !21, i64 296, !22, i64 304, !22, i64 360, !23, i64 416, !9, i64 424, !24, i64 428, !18, i64 432, !9, i64 448, !25, i64 456, !25, i64 464, !25, i64 472, !26, i64 480, !26, i64 488, !27, i64 496, !15, i64 504, !28, i64 512, !29, i64 520, !9, i64 528, !28, i64 536, !9, i64 544, !15, i64 552, !9, i64 560, !9, i64 564, !9, i64 568, !24, i64 572, !24, i64 573, !30, i64 574, !30, i64 575, !25, i64 576, !15, i64 584, !19, i64 592, !19, i64 600, !22, i64 608, !22, i64 664, !9, i64 720, !24, i64 724, !18, i64 728, !18, i64 744, !31, i64 760, !31, i64 784, !31, i64 808, !29, i64 832, !9, i64 840, !9, i64 844, !15, i64 848, !25, i64 856, !25, i64 864, !32, i64 872, !34, i64 880, !35, i64 904, !36, i64 960, !36, i64 968, !37, i64 976, !8, i64 984, !38, i64 1080, !24, i64 1088, !8, i64 1089, !15, i64 1096, !9, i64 1104, !9, i64 1108, !39, i64 1112, !8, i64 1120, !19, i64 1376, !8, i64 1384, !40, i64 1640, !22, i64 1672, !15, i64 1728, !41, i64 1736, !42, i64 1760, !42, i64 1768, !43, i64 1776, !15, i64 1784, !24, i64 1792, !9, i64 1796, !44, i64 1800, !45, i64 1808, !15, i64 1816, !46, i64 1824, !15, i64 1840, !15, i64 1848, !49, i64 1856, !8, i64 1936}
!51 = !{!50, !36, i64 960}
!52 = !{!15, !15, i64 0}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!55 = !{!9, !9, i64 0}
!56 = !{!"p1 short", !19, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"short", !8, i64 0}
!59 = !{!58, !58, i64 0}
!60 = distinct !{!60, !53}
!61 = distinct !{!61, !53}
!62 = distinct !{!62, !53}
!63 = distinct !{!63, !53}
!64 = distinct !{!64, !53}
!65 = distinct !{!65, !53}
!66 = distinct !{!66, !53}
!67 = distinct !{!67, !53}
!68 = distinct !{!68, !53}
!69 = distinct !{!69, !53}
!70 = distinct !{!70, !53}
!71 = distinct !{!71, !53}
!72 = !{!"double", !8, i64 0}
!73 = !{!72, !72, i64 0}
!74 = distinct !{!74, !53}
!75 = !{!"php_uri", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !15, i64 32, !45, i64 40, !45, i64 48, !45, i64 56}
!76 = !{!75, !45, i64 0}
!77 = !{!75, !45, i64 24}
!78 = !{!"php_uri_property_handler", !19, i64 0, !19, i64 8}
!79 = !{!"", !78, i64 0, !78, i64 16, !78, i64 32, !78, i64 48, !78, i64 64, !78, i64 80, !78, i64 96, !78, i64 112}
!80 = !{!"php_uri_parser", !48, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !79, i64 40}
!81 = !{!80, !48, i64 0}
!82 = !{!75, !45, i64 40}
!83 = !{!75, !45, i64 48}
!84 = !{!75, !45, i64 8}
!85 = !{!75, !45, i64 16}
!86 = distinct !{!86, !53}
!87 = !{!14, !9, i64 0}
!88 = !{!16, !15, i64 8}
!89 = distinct !{!89, !53}
!90 = distinct !{!90, !53}
!91 = distinct !{!91, !53}
!92 = distinct !{!92, !53}
!93 = distinct !{!93, !53, !95, !96}
!94 = distinct !{!94, !53, !96, !95}
!95 = !{!"llvm.loop.isvectorized", i32 1}
!96 = !{!"llvm.loop.unroll.runtime.disable"}
!97 = distinct !{!97, !53}
end_hunk_0
