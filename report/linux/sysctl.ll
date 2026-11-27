Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/sysctl?download=true
inline.NumInlined: 57
inline.NumDeleted: 17
begin_hunk_0_@proc_do_large_bitmap:bb.a
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load ptr, ptr %i.p, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.i, ptr noundef align 1 dereferenceable(3) @__const.proc_do_large_bitmap.tr_a, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.j, ptr noundef align 1 dereferenceable(3) @__const.proc_do_large_bitmap.tr_b, i64 3, i1 false)
  %i.r = icmp ne ptr %i.q, null
  %i.s = icmp ne i32 %i.m, 0
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  %i.t = icmp ne i64 %i.k, 0
  %or.cond3 = select i1 %or.cond, i1 %i.t, i1 false
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load i64, ptr %4, align 8
  %i.v = icmp eq i64 %i.u, 0
  %i.w = icmp ne i32 %1, 0                        ; 3 uses
  %or.cond5 = or i1 %i.w, %i.v
  br i1 %or.cond5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 0, ptr %3, align 8
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  br i1 %i.w, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.x = tail call i64 @_find_next_bit(ptr noundef nonnull %i.q, i64 noundef range(i64 -2147483648, 2147483648) %i.n, i64 noundef 0) #11 ; 4 uses
  %.not86.peel = icmp ult i64 %i.x, %i.n
  br i1 %.not86.peel, label %bb.e, label %find_next_bit.exit.thread

bb.e:                                             ; preds = %.preheader
  %i.y = add nuw i64 %i.x, 1
  %i.z = tail call i64 @_find_next_zero_bit(ptr noundef nonnull %i.q, i64 noundef range(i64 -2147483648, 2147483648) %i.n, i64 noundef range(i64 1, 0) %i.y) #11 ; 2 uses
  %i.aa = add i64 %i.z, -1                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %i.b, i8 0, i64 22, i1 false), !annotation !14
  %i.ab = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef @.str.3, ptr noundef nonnull @.str.5, i64 noundef %i.x) #11 ; 0 uses
  %i.ac = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #11 ; 2 uses
  %sext.i.peel = shl i64 %i.ac, 32
  %i.ad = ashr exact i64 %sext.i.peel, 32
  %i.ae = icmp ugt i64 %i.ad, %i.k
  %spec.select.i.peel = select i1 %i.ae, i64 %i.k, i64 %i.ac
  %i.af = shl i64 %spec.select.i.peel, 32
  %i.ag = ashr exact i64 %i.af, 32                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 16 %i.b, i64 %i.ag, i1 false)
  %i.ah = sub i64 %i.k, %i.ag                     ; 3 uses
  %i.ai = getelementptr i8, ptr %2, i64 %i.ag     ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %.not87.peel = icmp eq i64 %i.x, %i.aa
  br i1 %.not87.peel, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i125.peel = icmp eq i64 %i.ah, 0
  br i1 %.not.i125.peel, label %proc_put_char.exit126.peel, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 45, ptr %i.ai, align 1
  %i.aj = add i64 %i.ah, -1
  %i.ak = getelementptr i8, ptr %i.ai, i64 1
  br label %proc_put_char.exit126.peel

proc_put_char.exit126.peel:                       ; preds = %bb.g, %bb.f
  %.4218.peel = phi ptr [ %i.ai, %bb.f ], [ %i.ak, %bb.g ] ; 2 uses
  %.17.peel = phi i64 [ 0, %bb.f ], [ %i.aj, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %i.a, i8 0, i64 22, i1 false), !annotation !14
  %i.al = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef @.str.3, ptr noundef nonnull @.str.5, i64 noundef %i.aa) #11 ; 0 uses
  %i.am = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #11 ; 2 uses
  %sext.i127.peel = shl i64 %i.am, 32
  %i.an = ashr exact i64 %sext.i127.peel, 32
  %i.ao = icmp ugt i64 %i.an, %.17.peel
  %spec.select.i128.peel = select i1 %i.ao, i64 %.17.peel, i64 %i.am
  %i.ap = shl i64 %spec.select.i128.peel, 32
  %i.aq = ashr exact i64 %i.ap, 32                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.4218.peel, ptr nonnull align 16 %i.a, i64 %i.aq, i1 false)
  %i.ar = sub i64 %.17.peel, %i.aq
  %i.as = getelementptr i8, ptr %.4218.peel, i64 %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.h

bb.h:                                             ; preds = %proc_put_char.exit126.peel, %bb.e
  %.2216.peel = phi ptr [ %i.ai, %bb.e ], [ %i.as, %proc_put_char.exit126.peel ]
  %.8212.peel = phi i64 [ %i.ah, %bb.e ], [ %i.ar, %proc_put_char.exit126.peel ] ; 2 uses
  %.not.peel = icmp eq i64 %.8212.peel, 0
  br i1 %.not.peel, label %bitmap_or.exit, label %.peel.next

bb.i:                                             ; preds = %bb.d
  %spec.select286 = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 4095) ; 5 uses
  %i.at = tail call ptr @bitmap_zalloc(i32 noundef %i.m, i32 noundef 3264) #11 ; 13 uses
  %.not88.not = icmp eq ptr %i.at, null
  br i1 %.not88.not, label %.critedge, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.k, i64 4095)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.j
  %.10 = phi i64 [ %i.av, %bb.j ], [ %spec.select, %.lr.ph.i.preheader ] ; 4 uses
  %.4 = phi ptr [ %i.aw, %bb.j ], [ %2, %.lr.ph.i.preheader ] ; 3 uses
  %i.au = load i8, ptr %.4, align 1
  %.not4.i = icmp eq i8 %i.au, 10
  br i1 %.not4.i, label %bb.j, label %proc_skip_char.exit

bb.j:                                             ; preds = %.lr.ph.i
  %i.av = add nsw i64 %.10, -1                    ; 2 uses
  %i.aw = getelementptr i8, ptr %.4, i64 1
  %.not.i104 = icmp eq i64 %i.av, 0
  br i1 %.not.i104, label %proc_put_char.exit130.thread, label %.lr.ph.i, !llvm.loop !32

proc_skip_char.exit:                              ; preds = %.lr.ph.i
  %.not287300 = icmp eq i64 %.10, 0
  br i1 %.not287300, label %proc_put_char.exit130.thread, label %.lr.ph

.lr.ph:                                           ; preds = %proc_skip_char.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.ay = ptrtoint ptr %i.h to i64
  %i.az = icmp ugt i64 %i.k, 4095                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.bb = ptrtoint ptr %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.bc = icmp slt i64 %.10, 1
  br i1 %i.bc, label %.thread, label %.lr.ph438

proc_skip_char.exit123.loopexit:                  ; preds = %.lr.ph.i120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.bd = icmp slt i64 %.14, 1
  br i1 %i.bd, label %.thread, label %.lr.ph438

.thread:                                          ; preds = %proc_skip_char.exit123.loopexit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %proc_put_char.exit130.thread282

.lr.ph438:                                        ; preds = %.lr.ph, %proc_skip_char.exit123.loopexit
  %.1205301437 = phi i64 [ %.14, %proc_skip_char.exit123.loopexit ], [ %.10, %.lr.ph ] ; 6 uses
  %.0197302436 = phi i8 [ %.1198, %proc_skip_char.exit123.loopexit ], [ 0, %.lr.ph ]
  %.0192303435 = phi ptr [ %.8, %proc_skip_char.exit123.loopexit ], [ %.4, %.lr.ph ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %i.h, i8 0, i64 22, i1 false), !annotation !14
  %i.be = call i64 @llvm.umin.i64(i64 %.1205301437, i64 21) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.h, ptr noundef align 1 %.0192303435, i64 %i.be, i1 false)
  %i.bf = getelementptr i8, ptr %i.h, i64 %i.be
  store i8 0, ptr %i.bf, align 1
  %i.bg = load i8, ptr %i.h, align 16             ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 45
  %i.bi = icmp ne i64 %.1205301437, 1
  %or.cond.i105 = and i1 %i.bi, %i.bh             ; 3 uses
  %.pre.i106 = load i8, ptr %i.ax, align 1
  %i.bj = select i1 %or.cond.i105, i8 %.pre.i106, i8 %i.bg
  %i.bk = add i8 %i.bj, -58
  %i.bl = icmp ult i8 %i.bk, -10
  br i1 %i.bl, label %proc_get_long.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph438
  %.036.i = select i1 %or.cond.i105, ptr %i.ax, ptr %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i64 0, ptr %i.g, align 8, !annotation !14
  %i.bm = call ptr @_parse_integer_fixup_radix(ptr noundef nonnull %.036.i, ptr noundef nonnull %i.f) #11 ; 2 uses
  %i.bn = load i32, ptr %i.f, align 4
  %i.bo = call i32 @_parse_integer(ptr noundef %i.bm, i32 noundef %i.bn, ptr noundef nonnull %i.g) #11 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bo, -1
  br i1 %.not.i.i, label %bb.l, label %strtoul_lenient.exit.i

strtoul_lenient.exit.i:                           ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %proc_get_long.exit

bb.l:                                             ; preds = %bb.k
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %i.bm, i64 %i.bp  ; 2 uses
  %i.br = load i64, ptr %i.g, align 8             ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.bs, %i.ay                    ; 5 uses
  %i.bu = icmp eq i64 %i.bt, 21
  br i1 %i.bu, label %proc_get_long.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = icmp ult i64 %i.bt, %.1205301437
  br i1 %i.bv, label %bb.n, label %proc_get_long.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bw = load i8, ptr %i.bq, align 1             ; 2 uses
  %i.bx = zext i8 %i.bw to i32
  %i.by = call ptr @memchr(ptr noundef nonnull readonly dereferenceable(1) %i.i, i32 noundef %i.bx, i64 noundef 3) #11
  %.not30.i = icmp eq ptr %i.by, null
  br i1 %.not30.i, label %proc_get_long.exit, label %proc_get_long.exit.thread

proc_get_long.exit:                               ; preds = %.lr.ph438, %bb.l, %bb.n, %strtoul_lenient.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %proc_put_char.exit130.thread282

proc_get_long.exit.thread:                        ; preds = %bb.m, %bb.n
  %.3200 = phi i8 [ %.0197302436, %bb.m ], [ %i.bw, %bb.n ] ; 2 uses
  %i.bz = getelementptr i8, ptr %.0192303435, i64 %i.bt
  %i.ca = sub i64 %.1205301437, %i.bt             ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  %i.cb = icmp ult i64 %i.ca, 2
  %or.cond7342 = select i1 %i.cb, i1 %i.az, i1 false
  br i1 %or.cond7342, label %proc_put_char.exit130.thread383, label %bb.o

bb.o:                                             ; preds = %proc_get_long.exit.thread
  %i.cc = icmp uge i64 %i.br, %i.n
  %or.cond9 = or i1 %or.cond.i105, %i.cc
  br i1 %or.cond9, label %proc_put_char.exit130.thread282, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not91 = icmp ne i64 %.1205301437, %i.bt
  %.2206 = call i64 @llvm.usub.sat.i64(i64 %i.ca, i64 1) ; 6 uses
  %.1193.idx = zext i1 %.not91 to i64
  %.1193 = getelementptr i8, ptr %i.bz, i64 %.1193.idx ; 3 uses
  %i.cd = icmp eq i8 %.3200, 45
  br i1 %i.cd, label %bb.q, label %bitmap_set.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.ce = icmp sgt i64 %.2206, 0
  br i1 %i.ce, label %bb.r, label %proc_get_long.exit116.thread

bb.r:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %i.e, i8 0, i64 22, i1 false), !annotation !14
  %i.cf = call i64 @llvm.umin.i64(i64 %.2206, i64 21) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr align 1 %.1193, i64 %i.cf, i1 false)
  %i.cg = getelementptr i8, ptr %i.e, i64 %i.cf
  store i8 0, ptr %i.cg, align 1
  %i.ch = load i8, ptr %i.e, align 16             ; 2 uses
  %i.ci = icmp eq i8 %i.ch, 45
  %i.cj = icmp ne i64 %i.ca, 2
  %or.cond.i107 = and i1 %i.cj, %i.ci             ; 3 uses
  %.pre.i108 = load i8, ptr %i.ba, align 1
  %i.ck = select i1 %or.cond.i107, i8 %.pre.i108, i8 %i.ch
  %i.cl = add i8 %i.ck, -58
  %i.cm = icmp ult i8 %i.cl, -10
  br i1 %i.cm, label %.thread252, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.036.i110 = select i1 %or.cond.i107, ptr %i.ba, ptr %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i64 0, ptr %i.d, align 8, !annotation !14
  %i.cn = call ptr @_parse_integer_fixup_radix(ptr noundef nonnull %.036.i110, ptr noundef nonnull %i.c) #11 ; 2 uses
  %i.co = load i32, ptr %i.c, align 4
  %i.cp = call i32 @_parse_integer(ptr noundef %i.cn, i32 noundef %i.co, ptr noundef nonnull %i.d) #11 ; 2 uses
  %.not.i.i111 = icmp sgt i32 %i.cp, -1
  br i1 %.not.i.i111, label %bb.t, label %strtoul_lenient.exit.i112

strtoul_lenient.exit.i112:                        ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.thread252

bb.t:                                             ; preds = %bb.s
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr i8, ptr %i.cn, i64 %i.cq  ; 2 uses
  %i.cs = load i64, ptr %i.d, align 8             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.ct, %i.bb                    ; 5 uses
  %i.cv = icmp eq i64 %i.cu, 21
  br i1 %i.cv, label %.thread252, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = icmp ult i64 %i.cu, %.2206
  br i1 %i.cw, label %bb.v, label %proc_get_long.exit116

bb.v:                                             ; preds = %bb.u
  %i.cx = load i8, ptr %i.cr, align 1             ; 2 uses
  %i.cy = zext i8 %i.cx to i32
  %i.cz = call ptr @memchr(ptr noundef nonnull readonly dereferenceable(1) %i.j, i32 noundef %i.cy, i64 noundef 3) #11
  %.not30.i115 = icmp eq ptr %i.cz, null
  br i1 %.not30.i115, label %.thread252, label %proc_get_long.exit116

.thread252:                                       ; preds = %bb.v, %bb.t, %bb.r, %strtoul_lenient.exit.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %proc_put_char.exit130.thread282

proc_get_long.exit116:                            ; preds = %bb.u, %bb.v
  %.5202 = phi i8 [ 45, %bb.u ], [ %i.cx, %bb.v ] ; 2 uses
  %i.da = getelementptr i8, ptr %.1193, i64 %i.cu ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  %i.db = icmp eq i64 %.2206, %i.cu               ; 2 uses
  %or.cond11 = select i1 %i.db, i1 %i.az, i1 false
  br i1 %or.cond11, label %proc_put_char.exit130.thread383, label %bb.w

proc_get_long.exit116.thread:                     ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %proc_put_char.exit130.thread282

bb.w:                                             ; preds = %proc_get_long.exit116
  %i.dc = icmp uge i64 %i.cs, %i.n
  %or.cond13 = or i1 %i.dc, %or.cond.i107
  %i.dd = icmp ugt i64 %i.br, %i.cs
  %or.cond97 = select i1 %or.cond13, i1 true, i1 %i.dd
  br i1 %or.cond97, label %proc_put_char.exit130.thread282, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.db, label %bitmap_set.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr i8, ptr %i.da, i64 1
  %i.df = xor i64 %i.cu, -1
  %i.dg = add i64 %.2206, %i.df
  br label %bitmap_set.exit

bitmap_set.exit:                                  ; preds = %bb.x, %bb.y, %bb.p
  %.3207 = phi i64 [ 0, %bb.x ], [ %i.dg, %bb.y ], [ %.2206, %bb.p ] ; 2 uses
  %.1198 = phi i8 [ %.5202, %bb.x ], [ %.5202, %bb.y ], [ %.3200, %bb.p ]
  %.2194 = phi ptr [ %i.da, %bb.x ], [ %i.de, %bb.y ], [ %.1193, %bb.p ]
  %.0189 = phi i64 [ %i.cs, %bb.x ], [ %i.cs, %bb.y ], [ %i.br, %bb.p ]
  %i.dh = trunc i64 %i.br to i32
  %i.di = sub i64 %.0189, %i.br
  %i.dj = trunc i64 %i.di to i32
  %i.dk = add i32 %i.dj, 1
  call void @__bitmap_set(ptr noundef nonnull %i.at, i32 noundef %i.dh, i32 noundef %i.dk) #11
  %.not5.i117 = icmp eq i64 %.3207, 0
  br i1 %.not5.i117, label %proc_put_char.exit130.thread, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %bitmap_set.exit, %bb.z
  %.14 = phi i64 [ %i.dm, %bb.z ], [ %.3207, %bitmap_set.exit ] ; 3 uses
  %.8 = phi ptr [ %i.dn, %bb.z ], [ %.2194, %bitmap_set.exit ] ; 3 uses
  %i.dl = load i8, ptr %.8, align 1
  %.not4.i121 = icmp eq i8 %i.dl, 10
  br i1 %.not4.i121, label %bb.z, label %proc_skip_char.exit123.loopexit

bb.z:                                             ; preds = %.lr.ph.i120
  %i.dm = add i64 %.14, -1                        ; 2 uses
  %i.dn = getelementptr i8, ptr %.8, i64 1
  %.not.i122 = icmp eq i64 %i.dm, 0
  br i1 %.not.i122, label %proc_put_char.exit130.thread, label %.lr.ph.i120, !llvm.loop !32

.peel.next:                                       ; preds = %bb.h, %bb.ad
  %.067298 = phi i64 [ %i.dq, %bb.ad ], [ %i.z, %bb.h ]
  %.6210297 = phi i64 [ %.8212, %bb.ad ], [ %.8212.peel, %bb.h ] ; 2 uses
  %.0214296 = phi ptr [ %.2216, %bb.ad ], [ %.2216.peel, %bb.h ] ; 3 uses
  %i.do = tail call i64 @_find_next_bit(ptr noundef nonnull %i.q, i64 noundef range(i64 -2147483648, 2147483648) %i.n, i64 noundef %.067298) #11 ; 4 uses
  %.not86 = icmp ult i64 %i.do, %i.n
  br i1 %.not86, label %bb.aa, label %find_next_bit.exit.thread

bb.aa:                                            ; preds = %.peel.next
  %i.dp = add nuw i64 %i.do, 1
  %i.dq = tail call i64 @_find_next_zero_bit(ptr noundef nonnull %i.q, i64 noundef range(i64 -2147483648, 2147483648) %i.n, i64 noundef range(i64 1, 0) %i.dp) #11 ; 2 uses
  %i.dr = add i64 %i.dq, -1                       ; 2 uses
  store i8 44, ptr %.0214296, align 1
  %i.ds = getelementptr i8, ptr %.0214296, i64 1  ; 2 uses
  %i.dt = add i64 %.6210297, -1                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %i.b, i8 0, i64 22, i1 false), !annotation !14
  %i.du = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef @.str.3, ptr noundef nonnull @.str.5, i64 noundef %i.do) #11 ; 0 uses
  %i.dv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #11 ; 2 uses
  %sext.i = shl i64 %i.dv, 32
  %i.dw = ashr exact i64 %sext.i, 32
  %i.dx = icmp ugt i64 %i.dw, %i.dt
  %spec.select.i = select i1 %i.dx, i64 %i.dt, i64 %i.dv
  %i.dy = shl i64 %spec.select.i, 32
  %i.dz = ashr exact i64 %i.dy, 32                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr nonnull align 16 %i.b, i64 %i.dz, i1 false)
  %i.ea = sub i64 %i.dt, %i.dz                    ; 3 uses
  %i.eb = getelementptr i8, ptr %i.ds, i64 %i.dz  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %.not87 = icmp eq i64 %i.do, %i.dr
  br i1 %.not87, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not.i125 = icmp eq i64 %i.ea, 0
  br i1 %.not.i125, label %proc_put_char.exit126, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 45, ptr %i.eb, align 1
  %i.ec = add i64 %i.ea, -1
  %i.ed = getelementptr i8, ptr %i.eb, i64 1
  br label %proc_put_char.exit126

proc_put_char.exit126:                            ; preds = %bb.ab, %bb.ac
  %.4218 = phi ptr [ %i.eb, %bb.ab ], [ %i.ed, %bb.ac ] ; 2 uses
  %.17 = phi i64 [ 0, %bb.ab ], [ %i.ec, %bb.ac ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %i.a, i8 0, i64 22, i1 false), !annotation !14
  %i.ee = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef @.str.3, ptr noundef nonnull @.str.5, i64 noundef %i.dr) #11 ; 0 uses
  %i.ef = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #11 ; 2 uses
  %sext.i127 = shl i64 %i.ef, 32
  %i.eg = ashr exact i64 %sext.i127, 32
  %i.eh = icmp ugt i64 %i.eg, %.17
  %spec.select.i128 = select i1 %i.eh, i64 %.17, i64 %i.ef
  %i.ei = shl i64 %spec.select.i128, 32
  %i.ej = ashr exact i64 %i.ei, 32                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.4218, ptr nonnull align 16 %i.a, i64 %i.ej, i1 false)
  %i.ek = sub i64 %.17, %i.ej
  %i.el = getelementptr i8, ptr %.4218, i64 %i.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ad

bb.ad:                                            ; preds = %proc_put_char.exit126, %bb.aa
  %.2216 = phi ptr [ %i.eb, %bb.aa ], [ %i.el, %proc_put_char.exit126 ]
  %.8212 = phi i64 [ %i.ea, %bb.aa ], [ %i.ek, %proc_put_char.exit126 ] ; 2 uses
  %.not = icmp eq i64 %.8212, 0
  br i1 %.not, label %proc_put_char.exit130.thread, label %.peel.next, !llvm.loop !33

find_next_bit.exit.thread:                        ; preds = %.peel.next, %.preheader
  %.6210297.lcssa = phi i64 [ %i.k, %.preheader ], [ %.6210297, %.peel.next ]
  %.0214296.lcssa = phi ptr [ %2, %.preheader ], [ %.0214296, %.peel.next ]
  store i8 10, ptr %.0214296.lcssa, align 1
  %i.em = add i64 %.6210297.lcssa, -1
  br label %proc_put_char.exit130.thread

proc_put_char.exit130.thread383:                  ; preds = %proc_get_long.exit116, %proc_get_long.exit.thread
  %i.en = add i64 %.1205301437, %spec.select286
  br label %proc_put_char.exit130.thread

proc_put_char.exit130.thread:                     ; preds = %bb.ad, %bb.j, %bitmap_set.exit, %bb.z, %proc_put_char.exit130.thread383, %proc_skip_char.exit, %find_next_bit.exit.thread
  %.070276 = phi ptr [ null, %find_next_bit.exit.thread ], [ %i.at, %proc_put_char.exit130.thread383 ], [ %i.at, %proc_skip_char.exit ], [ %i.at, %bb.z ], [ %i.at, %bb.j ], [ %i.at, %bitmap_set.exit ], [ null, %bb.ad ] ; 5 uses
  %.9213272 = phi i64 [ %i.em, %find_next_bit.exit.thread ], [ %i.en, %proc_put_char.exit130.thread383 ], [ %spec.select286, %proc_skip_char.exit ], [ %spec.select286, %bb.z ], [ %spec.select286, %bb.j ], [ %spec.select286, %bitmap_set.exit ], [ 0, %bb.ad ] ; 3 uses
  br i1 %i.w, label %bb.ae, label %bitmap_or.exit

bb.ae:                                            ; preds = %proc_put_char.exit130.thread
  %i.eo = load i64, ptr %4, align 8
  %.not95 = icmp eq i64 %i.eo, 0
  br i1 %.not95, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @__bitmap_or(ptr noundef nonnull %i.q, ptr noundef nonnull %i.q, ptr noundef %.070276, i32 noundef %i.m) #11
  br label %bitmap_or.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ep = add i32 %i.m, 63
  %i.eq = lshr i32 %i.ep, 3
  %i.er = and i32 %i.eq, 536870904
end_hunk_0
