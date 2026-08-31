Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_file_cache?download=true
inline.NumInlined: 51
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@zend_file_cache_serialize_prop_info:bb.a
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = inttoptr i64 %i.bg to ptr
  br label %.sink.split235

.sink.split235:                                   ; preds = %bb.u, %bb.q
  %.sink236 = phi ptr [ %i.az, %bb.q ], [ %i.bh, %bb.u ]
  store ptr %.sink236, ptr %i.ar, align 8, !tbaa !315
  br label %bb.v

bb.v:                                             ; preds = %.sink.split235, %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %spec.select, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !316 ; 7 uses
  %.not199 = icmp eq ptr %i.bj, null
  br i1 %.not199, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !57  ; 2 uses
  %i.bl = inttoptr i64 %i.bk to ptr
  %.not200 = icmp ugt ptr %i.bj, %i.bl
  br i1 %.not200, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !70  ; 4 uses
  %.not201 = icmp ult ptr %i.bj, %i.bm
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  %.not202 = icmp ugt ptr %i.bj, %i.bn
  %or.cond216 = select i1 %.not201, i1 true, i1 %.not202
  br i1 %or.cond216, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bo = load ptr, ptr @accel_shared_globals, align 8, !tbaa !74
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 184
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !76
  %i.br = icmp uge ptr %i.bj, %i.bq
  tail call void @llvm.assume(i1 %i.br)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.bs = ptrtoint ptr %i.bj to i64
  %i.bt = ptrtoint ptr %i.bm to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 2 uses
  %i.bv = inttoptr i64 %i.bu to ptr
  store ptr %i.bv, ptr %i.bi, align 8, !tbaa !316
  %.not203 = icmp eq ptr %i.bj, %i.bm
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 %i.bu
  %spec.select218 = select i1 %.not203, ptr null, ptr %i.bw
  tail call fastcc void @zend_file_cache_serialize_hash(ptr noundef %spec.select218, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @zend_file_cache_serialize_attribute)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.v, %bb.w, %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %spec.select, i64 56 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !317 ; 5 uses
  %.not204 = icmp eq ptr %i.by, null
  br i1 %.not204, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !70  ; 3 uses
  %.not205 = icmp ult ptr %i.by, %i.bz
  br i1 %.not205, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !57
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  %.not206 = icmp ugt ptr %i.by, %i.cb
  br i1 %.not206, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cc = load ptr, ptr @accel_shared_globals, align 8, !tbaa !74
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 184
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !76
  %i.cf = icmp uge ptr %i.by, %i.ce
  tail call void @llvm.assume(i1 %i.cf)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cg = ptrtoint ptr %i.by to i64
  %i.ch = ptrtoint ptr %i.bz to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = inttoptr i64 %i.ci to ptr
  store ptr %i.cj, ptr %i.bx, align 8, !tbaa !317
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.aa
  %i.ck = getelementptr inbounds nuw i8, ptr %spec.select, i64 64 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !318 ; 6 uses
  %.not207 = icmp eq ptr %i.cl, null
  br i1 %.not207, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !70  ; 7 uses
  %.not208 = icmp ult ptr %i.cl, %i.cm
  br i1 %.not208, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !57
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cn
  %.not209 = icmp ugt ptr %i.cl, %i.co
  br i1 %.not209, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cp = load ptr, ptr @accel_shared_globals, align 8, !tbaa !74
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 184
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !76
  %i.cs = icmp uge ptr %i.cl, %i.cr
  tail call void @llvm.assume(i1 %i.cs)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ct = ptrtoint ptr %i.cl to i64
  %i.cu = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cv = sub i64 %i.ct, %i.cu                    ; 2 uses
  %i.cw = inttoptr i64 %i.cv to ptr
  store ptr %i.cw, ptr %i.ck, align 8, !tbaa !318
  %.not210 = icmp eq ptr %i.cl, %i.cm
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 %i.cv ; 3 uses
  %spec.select219 = select i1 %.not210, ptr null, ptr %i.cx
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !319 ; 6 uses
  %.not211 = icmp eq ptr %i.cy, null
  br i1 %.not211, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not212 = icmp ult ptr %i.cy, %i.cm
  br i1 %.not212, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !57
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cz
  %.not213 = icmp ugt ptr %i.cy, %i.da
  br i1 %.not213, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.db = load ptr, ptr @accel_shared_globals, align 8, !tbaa !74
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 184
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !76
  %i.de = icmp uge ptr %i.cy, %i.dd
  tail call void @llvm.assume(i1 %i.de)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.df = ptrtoint ptr %i.cy to i64
  %i.dg = sub i64 %i.df, %i.cu                    ; 2 uses
  %i.dh = inttoptr i64 %i.dg to ptr
  store ptr %i.dh, ptr %i.cx, align 8, !tbaa !319
  %.not214 = icmp eq ptr %i.cy, %i.cm
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 %i.dg
  %spec.select220 = select i1 %.not214, ptr null, ptr %i.di
  tail call fastcc void @zend_file_cache_serialize_op_array(ptr noundef %spec.select220, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aj, %bb.an
  %i.dj = getelementptr inbounds nuw i8, ptr %spec.select219, i64 8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !319 ; 6 uses
  %.not211.1 = icmp eq ptr %i.dk, null
  br i1 %.not211.1, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dl = load ptr, ptr %i.e, align 8, !tbaa !70  ; 4 uses
  %.not212.1 = icmp ult ptr %i.dk, %i.dl
  br i1 %.not212.1, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dm = load i64, ptr %i.b, align 8, !tbaa !57
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dm
  %.not213.1 = icmp ugt ptr %i.dk, %i.dn
  br i1 %.not213.1, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.do = load ptr, ptr @accel_shared_globals, align 8, !tbaa !74
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 184
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !76
  %i.dr = icmp uge ptr %i.dk, %i.dq
  tail call void @llvm.assume(i1 %i.dr)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ds = ptrtoint ptr %i.dk to i64
  %i.dt = ptrtoint ptr %i.dl to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 2 uses
  %i.dv = inttoptr i64 %i.du to ptr
  store ptr %i.dv, ptr %i.dj, align 8, !tbaa !319
  %.not214.1 = icmp eq ptr %i.dk, %i.dl
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 %i.du
  %spec.select220.1 = select i1 %.not214.1, ptr null, ptr %i.dw
  tail call fastcc void @zend_file_cache_serialize_op_array(ptr noundef %spec.select220.1, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ao, %bb.as, %bb.af
  %i.dx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  tail call fastcc void @zend_file_cache_serialize_type(ptr noundef nonnull %i.dx, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %bb.at

bb.at:                                            ; preds = %bb.d, %.loopexit, %bb.a
  ret void
}

declare ptr @zend_hooked_object_get_iterator(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_file_cache_serialize_ast(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !320    ; 4 uses
  %i.b = and i16 %i.a, -2
  %switch = icmp eq i16 %i.b, 64
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @zend_file_cache_serialize_zval(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = and i16 %i.a, 128
  %.not120 = icmp eq i16 %i.d, 0
  br i1 %.not120, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !323  ; 2 uses
  %.not127 = icmp eq i32 %i.f, 0
  br i1 %.not127, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 432
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %i.j = phi i32 [ %i.f, %.lr.ph ], [ %i.z, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !325  ; 7 uses
  %.not108 = icmp eq ptr %i.l, null
  br i1 %.not108, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  %.not109 = icmp ugt ptr %i.l, %i.n
  br i1 %.not109, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !70   ; 4 uses
  %.not110 = icmp ult ptr %i.l, %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %.not111 = icmp ugt ptr %i.l, %i.p
  %or.cond = select i1 %.not110, i1 true, i1 %.not111
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr @accel_shared_globals, align 8, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !76
  %i.t = icmp uge ptr %i.l, %i.s
  tail call void @llvm.assume(i1 %i.t)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.u = ptrtoint ptr %i.l to i64
  %i.v = ptrtoint ptr %i.o to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.k, align 8, !tbaa !325
  %.not112 = icmp eq ptr %i.l, %i.o
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %i.w
  %spec.select = select i1 %.not112, ptr null, ptr %i.y
  tail call fastcc void @zend_file_cache_serialize_ast(ptr noundef %spec.select, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  %.pre = load i32, ptr %i.e, align 8, !tbaa !323
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.h
  %i.z = phi i32 [ %i.j, %bb.d ], [ %i.j, %bb.e ], [ %.pre, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.d, label %.loopexit, !llvm.loop !326

bb.j:                                             ; preds = %bb.c
  switch i16 %i.a, label %zend_ast_is_decl.exit [
    i16 66, label %bb.k
    i16 3, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !327 ; 5 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %zend_file_cache_serialize_func.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70 ; 3 uses
  %.not25.i = icmp ult ptr %i.ad, %i.af
  br i1 %.not25.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  %.not26.i = icmp ugt ptr %i.ad, %i.ai
  br i1 %.not26.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aj = load ptr, ptr @accel_shared_globals, align 8, !tbaa !74
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 184
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !76
  %i.am = icmp uge ptr %i.ad, %i.al
  tail call void @llvm.assume(i1 %i.am)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.an = ptrtoint ptr %i.ad to i64
  %i.ao = ptrtoint ptr %i.af to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = inttoptr i64 %i.ap to ptr
  br label %zend_file_cache_serialize_func.exit

zend_file_cache_serialize_func.exit:              ; preds = %bb.k, %bb.o
  %.sroa.0.0 = phi ptr [ null, %bb.k ], [ %i.aq, %bb.o ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !57
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = icmp ule ptr %.sroa.0.0, %i.at
  tail call void @llvm.assume(i1 %i.au)
  %i.av = ptrtoint ptr %.sroa.0.0 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %i.av
  tail call fastcc void @zend_file_cache_serialize_op_array(ptr noundef nonnull %i.aw, ptr noundef %1, ptr noundef %2, ptr noundef %3), !inline_history !329
  store ptr %.sroa.0.0, ptr %i.ac, align 8, !tbaa !327
  br label %.loopexit

bb.p:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ax, align 8, !tbaa !330
  br label %.loopexit

zend_ast_is_decl.exit:                            ; preds = %bb.j
  %i.ay = lshr i16 %i.a, 8                        ; 2 uses
  %.not128 = icmp eq i16 %i.ay, 0
  br i1 %.not128, label %.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %zend_ast_is_decl.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 432
  %wide.trip.count = zext nneg i16 %i.ay to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph126, %bb.v
  %indvars.iv131 = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next132, %bb.v ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv131 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !325 ; 7 uses
  %.not = icmp eq ptr %i.bd, null
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !57 ; 2 uses
  %i.bf = inttoptr i64 %i.be to ptr
  %.not104 = icmp ugt ptr %i.bd, %i.bf
  br i1 %.not104, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !70 ; 4 uses
  %.not105 = icmp ult ptr %i.bd, %i.bg
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  %.not106 = icmp ugt ptr %i.bd, %i.bh
  %or.cond113 = select i1 %.not105, i1 true, i1 %.not106
  br i1 %or.cond113, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bi = load ptr, ptr @accel_shared_globals, align 8, !tbaa !74
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 184
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !76
  %i.bl = icmp uge ptr %i.bd, %i.bk
  tail call void @llvm.assume(i1 %i.bl)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bm = ptrtoint ptr %i.bd to i64
  %i.bn = ptrtoint ptr %i.bg to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = inttoptr i64 %i.bo to ptr
  store ptr %i.bp, ptr %i.bc, align 8, !tbaa !325
  %.not107 = icmp eq ptr %i.bd, %i.bg
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 %i.bo
  %spec.select119 = select i1 %.not107, ptr null, ptr %i.bq
  tail call fastcc void @zend_file_cache_serialize_ast(ptr noundef %spec.select119, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.r, %bb.u
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.q, !llvm.loop !332

.loopexit:                                        ; preds = %bb.i, %bb.v, %.preheader, %zend_ast_is_decl.exit, %bb.p, %zend_file_cache_serialize_func.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_file_cache_serialize_type(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !333  ; 2 uses
  %i.c = and i32 %i.b, 4194304
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !334    ; 6 uses
  %.not61 = icmp eq ptr %i.d, null
  br i1 %.not61, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 4 uses
  %.not62 = icmp ult ptr %i.d, %i.f
  br i1 %.not62, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.h = load i64, ptr %i.g, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %.not63 = icmp ugt ptr %i.d, %i.i
  br i1 %.not63, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load ptr, ptr @accel_shared_globals, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.m = icmp uge ptr %i.d, %i.l
  tail call void @llvm.assume(i1 %i.m)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr %0, align 8, !tbaa !334
  %.not64 = icmp eq ptr %i.d, %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %i.p
  %spec.select = select i1 %.not64, ptr null, ptr %i.r
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.f
  %.1 = phi ptr [ %spec.select, %bb.f ], [ null, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 2 uses
  %i.t = load i32, ptr %.1, align 8, !tbaa !335   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %.idx = shl nuw nsw i64 %i.u, 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %.not68 = icmp eq i32 %i.t, 0
  br i1 %.not68, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %.lr.ph
  %.04867 = phi ptr [ %i.w, %.lr.ph ], [ %i.s, %.thread ] ; 2 uses
  tail call fastcc void @zend_file_cache_serialize_type(ptr noundef nonnull %.04867, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.w = getelementptr inbounds nuw i8, ptr %.04867, i64 16 ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.v
  br i1 %i.x, label %.lr.ph, label %.loopexit, !llvm.loop !337

bb.g:                                             ; preds = %bb.a
  %i.y = and i32 %i.b, 16777216
  %.not56 = icmp eq i32 %i.y, 0
  br i1 %.not56, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !tbaa !334    ; 8 uses
  %.not57 = icmp eq ptr %i.z, null
  br i1 %.not57, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr @accel_shared_globals, align 8, !tbaa !74 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 184
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !76 ; 2 uses
  %.not58 = icmp ult ptr %i.z, %i.ac
  br i1 %.not58, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !83
  %i.af = icmp ult ptr %i.z, %i.ae
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call fastcc ptr @zend_file_cache_serialize_interned(ptr noundef nonnull %i.z, ptr noundef %2)
  br label %bb.p

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !70 ; 3 uses
  %.not59 = icmp ult ptr %i.z, %i.ai
  br i1 %.not59, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !57
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %.not60 = icmp ugt ptr %i.z, %i.al
  br i1 %.not60, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.am = icmp uge ptr %i.z, %i.ac
  tail call void @llvm.assume(i1 %i.am)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.an = ptrtoint ptr %i.z to i64
  %i.ao = ptrtoint ptr %i.ai to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = inttoptr i64 %i.ap to ptr
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.o, %bb.h
  %.0 = phi ptr [ %i.ag, %bb.k ], [ %i.aq, %bb.o ], [ null, %bb.h ]
  store ptr %.0, ptr %0, align 8, !tbaa !334
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.thread, %bb.g, %bb.p
  ret void
}

declare void @zend_vm_set_opcode_handler(ptr noundef) local_unnamed_addr #3

declare void @zend_serialize_opcode_handler(ptr noundef) local_unnamed_addr #3

declare i64 @writev(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @zend_shared_alloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_file_cache_unserialize_hash(ptr nofree noundef captures(none) initializes((48, 56)) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %4, ptr %i.a, align 8, !tbaa !338
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !53   ; 2 uses
end_hunk_0
begin_hunk_1_@zend_file_cache_unserialize_prop_info:bb.a
  %i.bv = and i64 %i.bu, 1
  %.not139 = icmp eq i64 %i.bv, 0
  br i1 %.not139, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !61, !range !22, !noundef !23
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !60
  %i.ca = and i64 %i.bu, -2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca ; 5 uses
  br i1 %i.by, label %zend_file_cache_unserialize_interned.exit150, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cc = tail call ptr @accel_new_interned_string(ptr noundef %i.cb) #15 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.cb
  br i1 %i.cd, label %bb.x, label %zend_file_cache_unserialize_interned.exit150

bb.x:                                             ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !51
  %i.cg = add i64 %i.cf, 25                       ; 2 uses
  %i.ch = tail call ptr @zend_shared_alloc(i64 noundef %i.cg) #15 ; 5 uses
  %.not.i149 = icmp eq ptr %i.ch, null
  br i1 %.not.i149, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !143
  tail call void @siglongjmp(ptr noundef %i.ci, i32 noundef -1) #20
  unreachable

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr nonnull align 8 %i.cb, i64 %i.cg, i1 false)
  store i32 1, ptr %i.ch, align 8, !tbaa !58
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 470, ptr %i.cj, align 4, !tbaa !53
  br label %zend_file_cache_unserialize_interned.exit150

zend_file_cache_unserialize_interned.exit150:     ; preds = %bb.v, %bb.w, %bb.z
  %.015.i148 = phi ptr [ %i.cb, %bb.v ], [ %i.ch, %bb.z ], [ %i.cc, %bb.w ]
  store ptr %.015.i148, ptr %i.bs, align 8, !tbaa !315
  br label %bb.ae

bb.aa:                                            ; preds = %bb.u
  %i.ck = load i64, ptr %i.ae, align 8, !tbaa !57
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = icmp ule ptr %i.bt, %i.cl
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.bu ; 2 uses
  store ptr %i.cn, ptr %i.bs, align 8, !tbaa !315
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !61, !range !22, !noundef !23
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !53 ; 2 uses
  br i1 %i.cq, label %bb.ac, label %bb.ab, !prof !121

bb.ab:                                            ; preds = %bb.aa
  %i.ct = or i32 %i.cs, 320
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !53
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cu = or i32 %i.cs, 64
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !53
  %i.cv = load ptr, ptr %i.bs, align 8, !tbaa !315
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !53
  %i.cy = and i32 %i.cx, -257
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !53
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.cz = load ptr, ptr %i.bs, align 8, !tbaa !315
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !53
  %i.dc = and i32 %i.db, -33
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !53
  br label %bb.ae

bb.ae:                                            ; preds = %bb.t, %zend_file_cache_unserialize_interned.exit150, %bb.ad
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !316 ; 7 uses
  %.not140 = icmp eq ptr %i.de, null
  br i1 %.not140, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !70  ; 2 uses
  %.not141 = icmp ult ptr %i.de, %i.df
  br i1 %.not141, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dg = load i64, ptr %i.ae, align 8, !tbaa !57
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  %.not142 = icmp ugt ptr %i.de, %i.dh
  br i1 %.not142, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.di = load ptr, ptr @accel_shared_globals, align 8, !tbaa !74 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 184
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !76
  %.not143 = icmp ult ptr %i.de, %i.dk
  br i1 %.not143, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 192
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !83
  %i.dn = icmp ult ptr %i.de, %i.dm
  br i1 %i.dn, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.do = load i64, ptr %i.ae, align 8, !tbaa !57
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = icmp ule ptr %i.de, %i.dp
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = ptrtoint ptr %i.de to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %i.dr ; 2 uses
  store ptr %i.ds, ptr %i.dd, align 8, !tbaa !316
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.ds, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @zend_file_cache_unserialize_attribute, ptr noundef null)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ae, %bb.ag, %bb.ai, %bb.aj
  %i.dt = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !317 ; 3 uses
  %.not145 = icmp eq ptr %i.du, null
  br i1 %.not145, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dv = load i64, ptr %i.ae, align 8, !tbaa !57
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = icmp ule ptr %i.du, %i.dw
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 %i.dy
  store ptr %i.dz, ptr %i.dt, align 8, !tbaa !317
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ea = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !318 ; 3 uses
  %.not146 = icmp eq ptr %i.eb, null
  br i1 %.not146, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = load i64, ptr %i.ae, align 8, !tbaa !57
  %i.ed = inttoptr i64 %i.ec to ptr               ; 2 uses
  %i.ee = icmp ule ptr %i.eb, %i.ed
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 %i.ef ; 4 uses
  store ptr %i.eg, ptr %i.ea, align 8, !tbaa !318
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !319 ; 3 uses
  %.not147 = icmp eq ptr %i.eh, null
  br i1 %.not147, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = icmp ule ptr %i.eh, %i.ed
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 %i.ej ; 2 uses
  store ptr %i.ek, ptr %i.eg, align 8, !tbaa !319
  tail call fastcc void @zend_file_cache_unserialize_op_array(ptr noundef nonnull %i.ek, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %.pre153 = load ptr, ptr %i.ea, align 8, !tbaa !318
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.el = phi ptr [ %i.eg, %bb.an ], [ %.pre153, %bb.ao ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !319 ; 3 uses
  %.not147.1 = icmp eq ptr %i.en, null
  br i1 %.not147.1, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eo = load i64, ptr %i.ae, align 8, !tbaa !57
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = icmp ule ptr %i.en, %i.ep
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 %i.er ; 2 uses
  store ptr %i.es, ptr %i.em, align 8, !tbaa !319
  tail call fastcc void @zend_file_cache_unserialize_op_array(ptr noundef nonnull %i.es, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ap, %bb.aq, %bb.am
  %i.et = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  tail call fastcc void @zend_file_cache_unserialize_type(ptr noundef nonnull %i.et, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.f, %bb.h, %.loopexit, %bb.d, %bb.b
  ret void
}

declare ptr @zend_map_ptr_new() local_unnamed_addr #3

declare void @zval_ptr_dtor(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_file_cache_unserialize_ast(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !320    ; 4 uses
  %i.b = and i16 %i.a, -2
  %switch = icmp eq i16 %i.b, 64
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @zend_file_cache_unserialize_zval(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef %2)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = and i16 %i.a, 128
  %.not97 = icmp eq i16 %i.d, 0
  br i1 %.not97, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !323  ; 2 uses
  %.not104 = icmp eq i32 %i.f, 0
  br i1 %.not104, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %i.j = phi i32 [ %i.f, %.lr.ph ], [ %i.aa, %bb.j ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !325  ; 7 uses
  %.not90 = icmp eq ptr %i.l, null
  br i1 %.not90, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !70   ; 2 uses
  %.not91 = icmp ult ptr %i.l, %i.m
  br i1 %.not91, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.i, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %.not92 = icmp ugt ptr %i.l, %i.o
  br i1 %.not92, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = load ptr, ptr @accel_shared_globals, align 8, !tbaa !74 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76
  %.not93 = icmp ult ptr %i.l, %i.r
  br i1 %.not93, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !83
  %i.u = icmp ult ptr %i.l, %i.t
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.v = load i64, ptr %i.i, align 8, !tbaa !57
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = icmp ule ptr %i.l, %i.w
  tail call void @llvm.assume(i1 %i.x)
  %i.y = ptrtoint ptr %i.l to i64
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %i.y ; 2 uses
  store ptr %i.z, ptr %i.k, align 8, !tbaa !325
  tail call fastcc void @zend_file_cache_unserialize_ast(ptr noundef nonnull %i.z, ptr noundef nonnull %1, ptr noundef %2)
  %.pre = load i32, ptr %i.e, align 8, !tbaa !323
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %i.aa = phi i32 [ %i.j, %bb.d ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = icmp samesign ult i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.d, label %.loopexit, !llvm.loop !360

bb.k:                                             ; preds = %bb.c
  switch i16 %i.a, label %zend_ast_is_decl.exit [
    i16 66, label %bb.l
    i16 3, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !327 ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %zend_file_cache_unserialize_func.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !57
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = icmp ule ptr %i.ae, %i.ah
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  br label %zend_file_cache_unserialize_func.exit

zend_file_cache_unserialize_func.exit:            ; preds = %bb.l, %bb.m
  %.sroa.0.0 = phi ptr [ null, %bb.l ], [ %i.ak, %bb.m ] ; 2 uses
  tail call fastcc void @zend_file_cache_unserialize_op_array(ptr noundef nonnull %.sroa.0.0, ptr noundef %1, ptr noundef %2), !inline_history !361
  store ptr %.sroa.0.0, ptr %i.ad, align 8, !tbaa !327
  br label %.loopexit

bb.n:                                             ; preds = %bb.k
  %i.al = tail call ptr @zend_map_ptr_new() #15
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8, !tbaa !330
  br label %.loopexit

zend_ast_is_decl.exit:                            ; preds = %bb.k
  %i.an = lshr i16 %i.a, 8                        ; 2 uses
  %.not105 = icmp eq i16 %i.an, 0
  br i1 %.not105, label %.loopexit, label %.lr.ph103

.lr.ph103:                                        ; preds = %zend_ast_is_decl.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  %wide.trip.count = zext nneg i16 %i.an to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph103, %bb.u
  %indvars.iv108 = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next109, %bb.u ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv108 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !325 ; 7 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !70 ; 2 uses
  %.not86 = icmp ult ptr %i.as, %i.at
  br i1 %.not86, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = load i64, ptr %i.aq, align 8, !tbaa !57
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  %.not87 = icmp ugt ptr %i.as, %i.av
  br i1 %.not87, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aw = load ptr, ptr @accel_shared_globals, align 8, !tbaa !74 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 184
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !76
  %.not88 = icmp ult ptr %i.as, %i.ay
  br i1 %.not88, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 192
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !83
  %i.bb = icmp ult ptr %i.as, %i.ba
  br i1 %i.bb, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bc = load i64, ptr %i.aq, align 8, !tbaa !57
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = icmp ule ptr %i.as, %i.bd
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = ptrtoint ptr %i.as to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %i.bf ; 2 uses
  store ptr %i.bg, ptr %i.ar, align 8, !tbaa !325
  tail call fastcc void @zend_file_cache_unserialize_ast(ptr noundef nonnull %i.bg, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %bb.q, %bb.s, %bb.t
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.o, !llvm.loop !362

.loopexit:                                        ; preds = %bb.j, %bb.u, %.preheader, %zend_ast_is_decl.exit, %bb.n, %zend_file_cache_unserialize_func.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_file_cache_unserialize_type(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !333  ; 2 uses
  %i.c = and i32 %i.b, 4194304
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !334    ; 3 uses
  %.not48 = icmp eq ptr %i.d, null
  br i1 %.not48, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = icmp ule ptr %i.d, %i.g
  tail call void @llvm.assume(i1 %i.h)
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.041 = phi ptr [ %i.j, %bb.c ], [ null, %bb.b ] ; 3 uses
  store ptr %.041, ptr %0, align 8, !tbaa !334
  %i.k = getelementptr inbounds nuw i8, ptr %.041, i64 8 ; 2 uses
  %i.l = load i32, ptr %.041, align 8, !tbaa !335 ; 2 uses
  %i.m = zext i32 %i.l to i64
  %.idx = shl nuw nsw i64 %i.m, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not2 = icmp eq i32 %i.l, 0
  br i1 %.not2, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.0401 = phi ptr [ %i.o, %.lr.ph ], [ %i.k, %bb.d ] ; 2 uses
  tail call fastcc void @zend_file_cache_unserialize_type(ptr noundef nonnull %.0401, ptr noundef %1, ptr noundef %2)
  %i.o = getelementptr inbounds nuw i8, ptr %.0401, i64 16 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.n
  br i1 %i.p, label %.lr.ph, label %.loopexit, !llvm.loop !363

bb.e:                                             ; preds = %bb.a
  %i.q = and i32 %i.b, 16777216
  %.not45 = icmp eq i32 %i.q, 0
  br i1 %.not45, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %0, align 8, !tbaa !334    ; 3 uses
  %.not46 = icmp eq ptr %i.r, null
  br i1 %.not46, label %zend_file_cache_unserialize_interned.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.t = and i64 %i.s, 1
  %.not47 = icmp eq i64 %i.t, 0
  br i1 %.not47, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.v = load i8, ptr %i.u, align 8, !tbaa !61, !range !22, !noundef !23
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !60
  %i.y = and i64 %i.s, -2
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y ; 5 uses
  br i1 %i.w, label %zend_file_cache_unserialize_interned.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call ptr @accel_new_interned_string(ptr noundef %i.z) #15 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.z
  br i1 %i.ab, label %bb.j, label %zend_file_cache_unserialize_interned.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !51
  %i.ae = add i64 %i.ad, 25                       ; 2 uses
  %i.af = tail call ptr @zend_shared_alloc(i64 noundef %i.ae) #15 ; 5 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !143
  tail call void @siglongjmp(ptr noundef %i.ag, i32 noundef -1) #20
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.z, i64 %i.ae, i1 false)
  store i32 1, ptr %i.af, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 470, ptr %i.ah, align 4, !tbaa !53
  br label %zend_file_cache_unserialize_interned.exit

bb.m:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !57
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = icmp ule ptr %i.r, %i.ak
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %i.s ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !61, !range !22, !noundef !23
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !53 ; 2 uses
  br i1 %i.ap, label %bb.o, label %bb.n, !prof !121

bb.n:                                             ; preds = %bb.m
  %i.as = or i32 %i.ar, 320
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.at = and i32 %i.ar, -321
  %i.au = or disjoint i32 %i.at, 64
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.av = phi i32 [ %i.as, %bb.n ], [ %i.au, %bb.o ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ax = and i32 %i.av, -33
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !53
  br label %zend_file_cache_unserialize_interned.exit

zend_file_cache_unserialize_interned.exit:        ; preds = %bb.l, %bb.i, %bb.h, %bb.p, %bb.f
  %.0 = phi ptr [ null, %bb.f ], [ %i.am, %bb.p ], [ %i.z, %bb.h ], [ %i.af, %bb.l ], [ %i.aa, %bb.i ] ; 3 uses
  store ptr %.0, ptr %0, align 8, !tbaa !334
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !61, !range !22, !noundef !23
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.r, label %bb.q

bb.q:                                             ; preds = %zend_file_cache_unserialize_interned.exit
  %i.bb = tail call i32 @zend_accel_get_class_name_map_ptr(ptr noundef %.0) #15 ; 0 uses
  br label %.loopexit

bb.r:                                             ; preds = %zend_file_cache_unserialize_interned.exit
  tail call void @zend_alloc_ce_cache(ptr noundef %.0) #15
  br label %.loopexit
end_hunk_1
