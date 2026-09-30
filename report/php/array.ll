Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/array?download=true
inline.NumInlined: 57
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 33
begin_hunk_0_@zif_array_splice:bb.a

declare void @convert_to_array(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @zif_array_slice(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 12 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 0, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i8 0, ptr %i.c, align 1, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25   ; 3 uses
  %i.f = add i32 %i.e, -5
  %or.cond = icmp ult i32 %i.f, -3
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 2, i32 noundef 4) #18
  br label %zend_parse_arg_array.exit.thread233

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i8, ptr %i.h, align 8, !tbaa !25
  %i.j = icmp eq i8 %i.i, 7
  br i1 %i.j, label %bb.d, label %zend_parse_arg_array.exit.thread233, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load i8, ptr %i.l, align 8, !tbaa !25
  %i.n = icmp eq i8 %i.m, 4
  br i1 %i.n, label %zend_parse_arg_long_ex.exit.thread, label %zend_parse_arg_long_ex.exit, !prof !27

zend_parse_arg_long_ex.exit.thread:               ; preds = %bb.d
  %i.o = load i64, ptr %i.k, align 8, !tbaa !25
  store i64 %i.o, ptr %i.a, align 8, !tbaa !24
  br label %bb.e

zend_parse_arg_long_ex.exit:                      ; preds = %bb.d
  %i.p = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, i32 noundef 2) #18
  br i1 %i.p, label %bb.e, label %zend_parse_arg_array.exit.thread233, !prof !116

bb.e:                                             ; preds = %zend_parse_arg_long_ex.exit.thread, %zend_parse_arg_long_ex.exit
  %i.q = icmp eq i32 %i.e, 2
  br i1 %i.q, label %.critedge.thread, label %bb.f, !prof !30

.critedge.thread:                                 ; preds = %bb.e
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !35
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load i8, ptr %i.v, align 8, !tbaa !25
  switch i8 %i.w, label %zend_parse_arg_long_ex.exit207 [
    i8 4, label %bb.g
    i8 1, label %zend_parse_arg_long_ex.exit207.thread
  ], !prof !80

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr %i.u, align 8, !tbaa !25
  br label %zend_parse_arg_long_ex.exit207.thread

zend_parse_arg_long_ex.exit207.thread:            ; preds = %bb.f, %bb.g
  %.2 = phi i1 [ false, %bb.g ], [ true, %bb.f ]
  %storemerge.i = phi i64 [ %i.x, %bb.g ], [ 0, %bb.f ]
  store i64 %storemerge.i, ptr %i.b, align 8, !tbaa !24
  br label %bb.h

zend_parse_arg_long_ex.exit207:                   ; preds = %bb.f
  %i.y = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.u, ptr noundef nonnull %i.b, i32 noundef 3) #18
  br i1 %i.y, label %bb.h, label %zend_parse_arg_array.exit.thread233, !prof !116

bb.h:                                             ; preds = %zend_parse_arg_long_ex.exit207.thread, %zend_parse_arg_long_ex.exit207
  %.3222 = phi i1 [ %.2, %zend_parse_arg_long_ex.exit207.thread ], [ false, %zend_parse_arg_long_ex.exit207 ]
  %.not = icmp eq i32 %i.e, 4
  br i1 %.not, label %bb.i, label %.critedge, !prof !27

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !25
  switch i8 %i.aa, label %zend_parse_arg_bool.exit [
    i8 3, label %.split245.thread
    i8 2, label %.split245.thread.fold.split
  ], !prof !115

.split245.thread.fold.split:                      ; preds = %bb.i
  br label %.split245.thread

.split245.thread:                                 ; preds = %bb.i, %.split245.thread.fold.split
  %storemerge.i.i = phi i8 [ 1, %bb.i ], [ 0, %.split245.thread.fold.split ]
  store i8 %storemerge.i.i, ptr %i.c, align 1, !tbaa !114
  br label %.critedge

zend_parse_arg_bool.exit:                         ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ac = call zeroext i1 @zend_parse_arg_bool_slow(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.c, i32 noundef range(i32 2, 5) 4) #18
  %cond.fr = freeze i1 %i.ac
  br i1 %cond.fr, label %.critedge, label %zend_parse_arg_array.exit.thread233, !prof !116

zend_parse_arg_array.exit.thread233:              ; preds = %zend_parse_arg_bool.exit, %bb.c, %zend_parse_arg_long_ex.exit, %zend_parse_arg_long_ex.exit207, %bb.b
  %.0178244 = phi i32 [ 1, %bb.b ], [ 9, %zend_parse_arg_long_ex.exit207 ], [ 9, %bb.c ], [ 9, %zend_parse_arg_long_ex.exit ], [ 9, %zend_parse_arg_bool.exit ]
  %.0179243 = phi i32 [ 0, %bb.b ], [ 1, %zend_parse_arg_long_ex.exit207 ], [ 6, %bb.c ], [ 0, %zend_parse_arg_long_ex.exit ], [ 2, %zend_parse_arg_bool.exit ]
  %.0180242 = phi ptr [ null, %bb.b ], [ %i.u, %zend_parse_arg_long_ex.exit207 ], [ %i.g, %bb.c ], [ %i.k, %zend_parse_arg_long_ex.exit ], [ %i.ab, %zend_parse_arg_bool.exit ]
  %.0181241 = phi i32 [ 0, %bb.b ], [ 3, %zend_parse_arg_long_ex.exit207 ], [ 1, %bb.c ], [ 2, %zend_parse_arg_long_ex.exit ], [ 4, %zend_parse_arg_bool.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.0178244, i32 noundef %.0181241, ptr noundef null, i32 noundef %.0179243, ptr noundef %.0180242) #18
  br label %.loopexit

.critedge:                                        ; preds = %zend_parse_arg_bool.exit, %.split245.thread, %bb.h
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !35 ; 2 uses
  br i1 %.3222, label %bb.j, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge
  %.pre283 = zext i32 %i.af to i64
  br label %bb.k

bb.j:                                             ; preds = %.critedge.thread, %.critedge
  %i.ag = phi i32 [ %i.t, %.critedge.thread ], [ %i.af, %.critedge ]
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  store i64 %i.ah, ptr %i.b, align 8, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %.critedge._crit_edge, %bb.j
  %.pre-phi284 = phi i64 [ %.pre283, %.critedge._crit_edge ], [ %i.ah, %bb.j ] ; 5 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !24  ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, %.pre-phi284
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr @zend_empty_array, ptr %1, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 7, ptr %i.ak, align 8, !tbaa !25
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.al = icmp slt i64 %i.ai, 0
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = add nsw i64 %i.ai, %.pre-phi284
  %spec.store.select = call i64 @llvm.smax.i64(i64 %i.am, i64 0) ; 2 uses
  store i64 %spec.store.select, ptr %i.a, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.an = phi i64 [ %spec.store.select, %bb.n ], [ %i.ai, %bb.m ] ; 3 uses
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !24  ; 4 uses
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aq = sub nsw i64 %.pre-phi284, %i.an
  %i.ar = add nsw i64 %i.aq, %i.ao
  br label %thread-pre-split.sink.split

bb.q:                                             ; preds = %bb.o
  %i.as = add nuw i64 %i.an, %i.ao
  %i.at = icmp ugt i64 %i.as, %.pre-phi284
  br i1 %i.at, label %bb.r, label %thread-pre-split

bb.r:                                             ; preds = %bb.q
  %i.au = sub nsw i64 %.pre-phi284, %i.an
  br label %thread-pre-split.sink.split

thread-pre-split.sink.split:                      ; preds = %bb.p, %bb.r
  %.sink = phi i64 [ %i.au, %bb.r ], [ %i.ar, %bb.p ] ; 2 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !24
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.sink.split, %bb.q
  %i.av = phi i64 [ %i.ao, %bb.q ], [ %.sink, %thread-pre-split.sink.split ] ; 2 uses
  %i.aw = icmp slt i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %thread-pre-split
  store ptr @zend_empty_array, ptr %1, align 8, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 7, ptr %i.ax, align 8, !tbaa !25
  br label %.loopexit

bb.t:                                             ; preds = %thread-pre-split
  %i.ay = trunc i64 %i.av to i32
  %i.az = call ptr @_zend_new_array(i32 noundef %i.ay) #18 ; 2 uses
  store ptr %i.az, ptr %1, align 8, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.ba, align 8, !tbaa !25
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !25  ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !25
  %i.be = and i32 %i.bd, 4
  %.not191 = icmp eq i32 %i.be, 0
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !24  ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !35 ; 3 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = icmp samesign ule i64 %i.bf, %i.bi
  call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !36 ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !25 ; 9 uses
  br i1 %.not191, label %bb.al, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = icmp ne i32 %i.bl, %i.bh                ; 2 uses
  br i1 %i.bo, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bf
  %.pre281 = zext i32 %i.bl to i64
  br label %find_packed_val_at_offset.exit

bb.w:                                             ; preds = %bb.u
  %i.bq = zext i32 %i.bl to i64                   ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.bq, 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx.i ; 3 uses
  %.not32.i = icmp eq i32 %i.bl, 0
  br i1 %.not32.i, label %find_packed_val_at_offset.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %bb.z
  %.034.i = phi ptr [ %i.bw, %bb.z ], [ %i.bn, %bb.w ] ; 3 uses
  %.02733.i = phi i64 [ %.1.i, %bb.z ], [ 0, %bb.w ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.034.i, i64 8
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !25
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.z, label %bb.x, !prof !30

bb.x:                                             ; preds = %.lr.ph.i
  %.not31.i = icmp slt i64 %.02733.i, %i.bf
  br i1 %.not31.i, label %bb.y, label %find_packed_val_at_offset.exit

bb.y:                                             ; preds = %bb.x
  %i.bv = add nsw i64 %.02733.i, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i
  %.1.i = phi i64 [ %.02733.i, %.lr.ph.i ], [ %i.bv, %bb.y ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.034.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not.i, label %find_packed_val_at_offset.exit, label %.lr.ph.i, !llvm.loop !246

find_packed_val_at_offset.exit:                   ; preds = %bb.x, %bb.z, %bb.v, %bb.w
  %.pre-phi282 = phi i64 [ 0, %bb.w ], [ %.pre281, %bb.v ], [ %i.bq, %bb.z ], [ %i.bq, %bb.x ]
  %.129.i = phi ptr [ %i.br, %bb.w ], [ %i.bp, %bb.v ], [ %.034.i, %bb.x ], [ %i.br, %bb.z ] ; 5 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %.pre-phi282 ; 4 uses
  %i.by = load i8, ptr %i.c, align 1, !tbaa !114, !range !117, !noundef !52
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = icmp ne i64 %i.bf, 0
  %brmerge = or i1 %i.ca, %i.bo
  %or.cond253 = and i1 %brmerge, %i.bz
  br i1 %or.cond253, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %find_packed_val_at_offset.exit
  call void @zend_hash_real_init_packed(ptr noundef %i.az) #18
  %i.cb = load ptr, ptr %1, align 8, !tbaa !25    ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !36 ; 4 uses
  %i.ce = zext i32 %i.cd to i64                   ; 3 uses
  %.not197255 = icmp ne ptr %.129.i, %i.bx
  %i.cf = load i64, ptr %i.b, align 8             ; 2 uses
  %.not198256 = icmp sgt i64 %i.cf, %i.ce
  %or.cond203257 = select i1 %.not197255, i1 %.not198256, i1 false
  br i1 %or.cond203257, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !25
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.ce
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ag
  %i.cj = phi i64 [ %i.da, %bb.ag ], [ %i.cf, %.lr.ph.preheader ]
  %.0171261 = phi i32 [ %.1172, %bb.ag ], [ %i.cd, %.lr.ph.preheader ] ; 2 uses
  %.0173260 = phi ptr [ %.1174, %bb.ag ], [ %i.ci, %.lr.ph.preheader ] ; 4 uses
  %.0175258 = phi ptr [ %i.db, %bb.ag ], [ %.129.i, %.lr.ph.preheader ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0175258, i64 8
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !25
  switch i8 %i.cl, label %bb.ad [
    i8 0, label %bb.ag
    i8 10, label %bb.ab
  ], !prof !37

bb.ab:                                            ; preds = %.lr.ph
  %i.cm = load ptr, ptr %.0175258, align 8, !tbaa !25 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !29
  %i.co = icmp eq i32 %i.cn, 1
  br i1 %i.co, label %bb.ac, label %bb.ad, !prof !30

bb.ac:                                            ; preds = %bb.ab
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.ab, %bb.ac
  %.0169 = phi ptr [ %i.cp, %bb.ac ], [ %.0175258, %bb.ab ], [ %.0175258, %.lr.ph ] ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0169, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.0169, i64 9
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !25
  %.not199 = icmp eq i8 %i.cs, 0
  %.pre277 = load ptr, ptr %.0169, align 8, !tbaa !25 ; 3 uses
  br i1 %.not199, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ct = load i32, ptr %.pre277, align 4, !tbaa !29
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %.pre277, align 4, !tbaa !29
  %.pre = load ptr, ptr %.0169, align 8, !tbaa !25
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cv = phi ptr [ %.pre, %bb.ae ], [ %.pre277, %bb.ad ]
  %i.cw = load i32, ptr %i.cq, align 8, !tbaa !25
  store ptr %i.cv, ptr %.0173260, align 8, !tbaa !25
  %i.cx = getelementptr inbounds nuw i8, ptr %.0173260, i64 8
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !25
  %i.cy = getelementptr inbounds nuw i8, ptr %.0173260, i64 16
  %i.cz = add i32 %.0171261, 1
  %.pre278 = load i64, ptr %i.b, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.af
  %i.da = phi i64 [ %i.cj, %.lr.ph ], [ %.pre278, %bb.af ] ; 2 uses
  %.1174 = phi ptr [ %.0173260, %.lr.ph ], [ %i.cy, %bb.af ]
  %.1172 = phi i32 [ %.0171261, %.lr.ph ], [ %i.cz, %bb.af ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0175258, i64 16 ; 2 uses
  %.not197 = icmp ne ptr %i.db, %i.bx
  %i.dc = zext i32 %.1172 to i64                  ; 2 uses
  %.not198 = icmp sgt i64 %i.da, %i.dc
  %or.cond203 = select i1 %.not197, i1 %.not198, i1 false
  br i1 %or.cond203, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !247

._crit_edge.loopexit:                             ; preds = %bb.ag
  %.pre279 = load i32, ptr %i.cc, align 8, !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.aa
  %i.dd = phi i32 [ %i.cd, %bb.aa ], [ %.pre279, %._crit_edge.loopexit ]
  %.0171.lcssa = phi i32 [ %i.cd, %bb.aa ], [ %.1172, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i64 [ %i.ce, %bb.aa ], [ %i.dc, %._crit_edge.loopexit ]
  %i.de = sub i32 %.0171.lcssa, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.cb, i64 28 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !35
  %i.dh = add i32 %i.de, %i.dg
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !35
  store i32 %.0171.lcssa, ptr %i.cc, align 8, !tbaa !36
  %i.di = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store i64 %.lcssa, ptr %i.di, align 8, !tbaa !127
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  store i32 0, ptr %i.dj, align 4, !tbaa !129
  br label %.loopexit

bb.ah:                                            ; preds = %find_packed_val_at_offset.exit
  %.not195263 = icmp eq ptr %.129.i, %i.bx
  br i1 %.not195263, label %.loopexit, label %.lr.ph268.preheader

.lr.ph268.preheader:                              ; preds = %bb.ah
  %i.dk = ptrtoint ptr %.129.i to i64
  %i.dl = ptrtoint ptr %i.bn to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 4
  br label %.lr.ph268

.lr.ph268:                                        ; preds = %.lr.ph268.preheader, %bb.ak
  %.0166266 = phi i64 [ %i.dw, %bb.ak ], [ %i.dn, %.lr.ph268.preheader ] ; 2 uses
  %.0167265 = phi i64 [ %.1168, %bb.ak ], [ 0, %.lr.ph268.preheader ] ; 3 uses
  %.1176264 = phi ptr [ %i.dv, %bb.ak ], [ %.129.i, %.lr.ph268.preheader ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1176264, i64 8
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !25
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %bb.ak, label %bb.ai, !prof !30

bb.ai:                                            ; preds = %.lr.ph268
  %i.dr = load i64, ptr %i.b, align 8, !tbaa !24
  %.not196 = icmp slt i64 %.0167265, %i.dr
  br i1 %.not196, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.ds = add nsw i64 %.0167265, 1
  %i.dt = load ptr, ptr %1, align 8, !tbaa !25
  %i.du = call ptr @zend_hash_index_add_new(ptr noundef %i.dt, i64 noundef %.0166266, ptr noundef nonnull %.1176264) #18
  call void @zval_add_ref(ptr noundef %i.du) #18
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph268, %bb.aj
  %.1168 = phi i64 [ %.0167265, %.lr.ph268 ], [ %i.ds, %bb.aj ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.1176264, i64 16 ; 2 uses
  %i.dw = add nsw i64 %.0166266, 1
  %.not195 = icmp eq ptr %i.dv, %i.bx
  br i1 %.not195, label %.loopexit, label %.lr.ph268, !llvm.loop !248

bb.al:                                            ; preds = %bb.t
  %i.dx = icmp eq i32 %i.bl, %i.bh
  br i1 %i.dx, label %bb.am, label %bb.an
end_hunk_0
