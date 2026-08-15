inline.NumInlined: 284
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@dissect_ccm:bb.a
  %i.ku = load i32, ptr %i.ga, align 8
  %i.kv = sub i32 %.4326, %i.ku
  br label %bb.bw

bb.bo:                                            ; preds = %bb.bm
  %i.kw = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 0, i32 noundef %.4326)
  %i.kx = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.4326) ; 6 uses
  %i.ky = getelementptr i8, ptr %1, i64 416
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = zext i32 %i.kx to i64
  %i.lb = call ptr @tvb_memdup(ptr noundef %i.kz, ptr noundef %0, i32 noundef %.4326, i64 noundef %i.la) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #26
  %i.lc = load i32, ptr %.0321.ph, align 4        ; 4 uses
  %i.ld = lshr i32 %i.lc, 24
  %i.le = trunc nuw i32 %i.ld to i8
  store i8 %i.le, ptr %i.n, align 1
  %i.lf = lshr i32 %i.lc, 16
  %i.lg = trunc i32 %i.lf to i8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.lg, ptr %i.lh, align 1
  %i.li = lshr i32 %i.lc, 8
  %i.lj = trunc i32 %i.li to i8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i8 %i.lj, ptr %i.lk, align 1
  %i.ll = trunc i32 %i.lc to i8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  store i8 %i.ll, ptr %i.lm, align 1
  %i.ln = lshr i16 %i.ji, 8
  %i.lo = trunc nuw i16 %i.ln to i8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i8 %i.lo, ptr %i.lp, align 1
  %i.lq = trunc i16 %i.ji to i8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  store i8 %i.lq, ptr %i.lr, align 1
  %i.ls = getelementptr i8, ptr %.0321.ph, i64 4
  %i.lt = load i32, ptr %i.ls, align 4            ; 4 uses
  %i.lu = lshr i32 %i.lt, 24
  %i.lv = trunc nuw i32 %i.lu to i8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  store i8 %i.lv, ptr %i.lw, align 1
  %i.lx = lshr i32 %i.lt, 16
  %i.ly = trunc i32 %i.lx to i8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 %i.ly, ptr %i.lz, align 1
  %i.ma = lshr i32 %i.lt, 8
  %i.mb = trunc i32 %i.ma to i8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  store i8 %i.mb, ptr %i.mc, align 1
  %i.md = trunc i32 %i.lt to i8
  %i.me = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  store i8 %i.md, ptr %i.me, align 1
  call void @proto_item_set_end(ptr noundef %i.gf, ptr noundef %0, i32 noundef %.4326)
  %i.mf = getelementptr i8, ptr %i.fy, i64 37
  %i.mg = load i8, ptr %i.mf, align 1, !range !10, !noundef !11
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mi = getelementptr i8, ptr %i.fy, i64 38
  %i.mj = load i8, ptr %i.mi, align 2
  %i.mk = zext i8 %i.mj to i32
  %i.ml = sub i32 %i.kx, %i.mk
  %i.mm = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.4326, i32 noundef %i.ml)
  %i.mn = getelementptr i8, ptr %i.fb, i64 224
  store ptr %i.mm, ptr %i.mn, align 8
  %i.mo = getelementptr i8, ptr %i.fb, i64 232
  store i16 0, ptr %i.mo, align 8
  br label %bb.bv

bb.bq:                                            ; preds = %bb.bo
  %i.mp = getelementptr i8, ptr %i.fb, i64 216    ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8            ; 2 uses
  %.not349 = icmp eq ptr %i.mq, null
  br i1 %.not349, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mr = getelementptr i8, ptr %i.fy, i64 38
  %i.ms = load i8, ptr %i.mr, align 2
  %i.mt = zext i8 %i.ms to i32
  %i.mu = sub i32 %i.kx, %i.mt                    ; 2 uses
  %i.mv = call ptr @tvb_new_real_data(ptr noundef nonnull %i.mq, i32 noundef %i.mu, i32 noundef %i.mu) ; 3 uses
  call void @tvb_set_child_real_data_tvbuff(ptr noundef %0, ptr noundef %i.mv)
  %i.mw = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.mv, ptr noundef nonnull @.str.760) ; 0 uses
  %i.mx = getelementptr i8, ptr %i.fb, i64 224
  store ptr %i.mv, ptr %i.mx, align 8
  %i.my = getelementptr i8, ptr %i.fb, i64 232
  store i16 0, ptr %i.my, align 8
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bq
  %i.mz = call fastcc i32 @decrypt(ptr noundef %i.fy, ptr noundef %.0321.ph, ptr noundef nonnull %i.n, ptr noundef %i.kw, i32 noundef %.4326, ptr noundef %i.lb, i32 noundef %i.kx)
  %.not350 = icmp eq i32 %i.mz, 0
  br i1 %.not350, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.na = call ptr @wmem_file_scope()
  %i.nb = getelementptr i8, ptr %i.fy, i64 38     ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 2
  %i.nd = zext i8 %i.nc to i32
  %i.ne = sub i32 %i.kx, %i.nd
  %i.nf = zext i32 %i.ne to i64                   ; 2 uses
  %i.ng = call noalias ptr @wmem_alloc0(ptr noundef %i.na, i64 noundef %i.nf) #22 ; 3 uses
  %i.nh = load i8, ptr %i.nb, align 2
  %i.ni = zext i8 %i.nh to i32
  %i.nj = sub i32 %i.kx, %i.ni                    ; 3 uses
  %i.nk = zext i32 %i.nj to i64
  %i.nl = call ptr @__memcpy_chk(ptr noundef %i.ng, ptr noundef %i.lb, i64 noundef %i.nk, i64 noundef %i.nf) #26, !alias.scope !78 ; 0 uses
  %i.nm = call ptr @tvb_new_real_data(ptr noundef %i.ng, i32 noundef %i.nj, i32 noundef %i.nj) ; 3 uses
  call void @tvb_set_child_real_data_tvbuff(ptr noundef %0, ptr noundef %i.nm)
  %i.nn = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.nm, ptr noundef nonnull @.str.760) ; 0 uses
  store ptr %i.ng, ptr %i.mp, align 8
  %i.no = getelementptr i8, ptr %i.fb, i64 232
  store i16 0, ptr %i.no, align 8
  %i.np = getelementptr i8, ptr %i.fb, i64 224
  store ptr %i.nm, ptr %i.np, align 8
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  store ptr @.str.761, ptr %i.kp, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.br, %bb.bu, %bb.bt, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  %i.nq = load i32, ptr %i.ga, align 8
  %i.nr = sub i32 %.4326, %i.nq
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bn, %bb.au, %bb.ak, %.critedge374
  %.10 = phi i32 [ %i.kv, %bb.bn ], [ %i.nr, %bb.bv ], [ %i.hw, %bb.au ], [ 0, %bb.ak ], [ 0, %.critedge374 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %.critedge371

.critedge371:                                     ; preds = %bb.k, %.critedge372, %bb.d, %bb.f, %bb.e, %bb.g, %bb.i, %bb.j, %.critedge365, %.critedge367, %.critedge, %bb.b, %bb.a, %bb.bw
  %.11 = phi i32 [ %.10, %bb.bw ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %.critedge ], [ %i.eu, %.critedge372 ], [ 2, %bb.j ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %.critedge365 ], [ 0, %.critedge367 ]
  ret i32 %.11
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @wmem_register_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dof_sessions_destroy_cb(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @gcry_cipher_close(ptr noundef %i.b)
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_hash_table_destroy(ptr noundef nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_open(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @gcry_cipher_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dof_cipher_data_destroy(ptr noundef %0) #0 {
bb.a:
  tail call void @gcry_cipher_close(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memdup(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_real_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @tvb_set_child_real_data_tvbuff(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @decrypt(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %.sroa.5 = alloca [11 x i8], align 1            ; 5 uses
  %i.a = alloca [16 x i8], align 16               ; 30 uses
  %i.b = alloca [16 x i8], align 16               ; 21 uses
  %i.c = alloca [16 x i8], align 16               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.d = icmp eq ptr %5, null
  %i.e = icmp eq i32 %6, 0
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 38         ; 5 uses
  %i.g = load i8, ptr %i.f, align 2
  %i.h = add i8 %i.g, -17
  %or.cond47 = icmp ult i8 %i.h, -13
  br i1 %or.cond47, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = zext i32 %i.j to i64
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = tail call ptr @g_hash_table_lookup(ptr noundef %i.o, ptr noundef nonnull %i.q)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.m, %bb.d ], [ %i.r, %bb.e ]
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5, ptr noundef align 1 dereferenceable(11) %2, i64 11, i1 false)
  %i.s = load i8, ptr %i.f, align 2               ; 2 uses
  %i.t = zext i8 %i.s to i32
  %i.u = sub i32 %6, %i.t
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.w = getelementptr i8, ptr %0, i64 8
  %.sroa.5.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.6.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.8.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %.sroa.10.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.sroa.14.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.10.0 = phi i8 [ 0, %.lr.ph ], [ %.sroa.10.2, %bb.j ] ; 2 uses
  %.sroa.14.0 = phi i8 [ 0, %.lr.ph ], [ %.sroa.14.1, %bb.j ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.x = and i64 %indvars.iv, 15
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = icmp eq i8 %.sroa.14.0, -1
  %i.aa = zext i1 %i.z to i8
  %spec.select = add i8 %.sroa.10.0, %i.aa        ; 2 uses
  %i.ab = add i8 %.sroa.14.0, 1                   ; 2 uses
  store i8 3, ptr %i.a, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5.0..sroa_idx66, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5, i64 11, i1 false)
  store i8 0, ptr %.sroa.6.0..sroa_idx67, align 4
  store i8 0, ptr %.sroa.8.0..sroa_idx69, align 1
  store i8 %spec.select, ptr %.sroa.10.0..sroa_idx71, align 2
  store i8 %i.ab, ptr %.sroa.14.0..sroa_idx73, align 1
  %i.ac = load ptr, ptr %i.w, align 8
  %i.ad = call i32 @gcry_cipher_encrypt(ptr noundef %i.ac, ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef null, i64 noundef 0) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.10.2 = phi i8 [ %spec.select, %bb.i ], [ %.sroa.10.0, %bb.h ]
  %.sroa.14.1 = phi i8 [ %i.ab, %bb.i ], [ %.sroa.14.0, %bb.h ]
  %i.ae = and i64 %indvars.iv, 15
  %i.af = getelementptr i8, ptr %i.a, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr i8, ptr %5, i64 %indvars.iv ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = xor i8 %i.ai, %i.ag
  store i8 %i.aj, ptr %i.ah, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ak = load i8, ptr %i.f, align 2              ; 2 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = sub i32 %6, %i.al
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.h, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.j, %bb.g
  %.040.lcssa = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %bb.j ]
  %.lcssa49 = phi i8 [ %i.s, %bb.g ], [ %i.ak, %bb.j ]
  %i.ap = getelementptr i8, ptr %5, i64 %.040.lcssa
  %i.aq = zext i8 %.lcssa49 to i64
  %i.ar = call ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef %i.ap, i64 noundef %i.aq, i64 noundef 16) #26, !alias.scope !83 ; 0 uses
  store i8 3, ptr %i.a, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5, i64 11, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.as = getelementptr i8, ptr %0, i64 8         ; 2 uses
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call i32 @gcry_cipher_encrypt(ptr noundef %i.at, ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef null, i64 noundef 0) ; 0 uses
  %i.av = load i8, ptr %i.f, align 2              ; 6 uses
  %i.aw = zext i8 %i.av to i32
  %.not58 = icmp eq i8 %i.av, 0
  br i1 %.not58, label %._crit_edge55, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %wide.trip.count = zext i8 %i.av to i64         ; 6 uses
  %min.iters.check = icmp ult i8 %i.av, 4
  br i1 %min.iters.check, label %.lr.ph54.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check80 = icmp ult i8 %i.av, 32
  br i1 %min.iters.check80, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 224          ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load = load <16 x i8>, ptr %i.a, align 16
  %wide.load81 = load <16 x i8>, ptr %i.ay, align 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load82 = load <16 x i8>, ptr %i.b, align 16
  %wide.load83 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = xor <16 x i8> %wide.load82, %wide.load
  %i.bb = xor <16 x i8> %wide.load83, %wide.load81
  store <16 x i8> %i.ba, ptr %i.b, align 16
  store <16 x i8> %i.bb, ptr %i.az, align 16
  %i.bc = icmp eq i64 %n.vec, 32
  br i1 %i.bc, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.bd = getelementptr i8, ptr %i.a, i64 32
  %i.be = getelementptr i8, ptr %i.a, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.bd, align 16
  %wide.load81.1 = load <16 x i8>, ptr %i.be, align 16
  %i.bf = getelementptr i8, ptr %i.b, i64 32      ; 2 uses
  %i.bg = getelementptr i8, ptr %i.b, i64 48      ; 2 uses
  %wide.load82.1 = load <16 x i8>, ptr %i.bf, align 16
  %wide.load83.1 = load <16 x i8>, ptr %i.bg, align 16
  %i.bh = xor <16 x i8> %wide.load82.1, %wide.load.1
  %i.bi = xor <16 x i8> %wide.load83.1, %wide.load81.1
  store <16 x i8> %i.bh, ptr %i.bf, align 16
  store <16 x i8> %i.bi, ptr %i.bg, align 16
  %i.bj = icmp eq i64 %n.vec, 64
  br i1 %i.bj, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.bk = getelementptr i8, ptr %i.a, i64 64
  %i.bl = getelementptr i8, ptr %i.a, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.bk, align 16
  %wide.load81.2 = load <16 x i8>, ptr %i.bl, align 16
  %i.bm = getelementptr i8, ptr %i.b, i64 64      ; 2 uses
  %i.bn = getelementptr i8, ptr %i.b, i64 80      ; 2 uses
  %wide.load82.2 = load <16 x i8>, ptr %i.bm, align 16
  %wide.load83.2 = load <16 x i8>, ptr %i.bn, align 16
  %i.bo = xor <16 x i8> %wide.load82.2, %wide.load.2
  %i.bp = xor <16 x i8> %wide.load83.2, %wide.load81.2
  store <16 x i8> %i.bo, ptr %i.bm, align 16
  store <16 x i8> %i.bp, ptr %i.bn, align 16
  %i.bq = icmp eq i64 %n.vec, 96
  br i1 %i.bq, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.br = getelementptr i8, ptr %i.a, i64 96
  %i.bs = getelementptr i8, ptr %i.a, i64 112
  %wide.load.3 = load <16 x i8>, ptr %i.br, align 16
  %wide.load81.3 = load <16 x i8>, ptr %i.bs, align 16
  %i.bt = getelementptr i8, ptr %i.b, i64 96      ; 2 uses
  %i.bu = getelementptr i8, ptr %i.b, i64 112     ; 2 uses
  %wide.load82.3 = load <16 x i8>, ptr %i.bt, align 16
  %wide.load83.3 = load <16 x i8>, ptr %i.bu, align 16
  %i.bv = xor <16 x i8> %wide.load82.3, %wide.load.3
  %i.bw = xor <16 x i8> %wide.load83.3, %wide.load81.3
  store <16 x i8> %i.bv, ptr %i.bt, align 16
  store <16 x i8> %i.bw, ptr %i.bu, align 16
  %i.bx = icmp eq i64 %n.vec, 128
  br i1 %i.bx, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.by = getelementptr i8, ptr %i.a, i64 128
  %i.bz = getelementptr i8, ptr %i.a, i64 144
  %wide.load.4 = load <16 x i8>, ptr %i.by, align 16
  %wide.load81.4 = load <16 x i8>, ptr %i.bz, align 16
  %i.ca = getelementptr i8, ptr %i.b, i64 128     ; 2 uses
  %i.cb = getelementptr i8, ptr %i.b, i64 144     ; 2 uses
  %wide.load82.4 = load <16 x i8>, ptr %i.ca, align 16
  %wide.load83.4 = load <16 x i8>, ptr %i.cb, align 16
  %i.cc = xor <16 x i8> %wide.load82.4, %wide.load.4
  %i.cd = xor <16 x i8> %wide.load83.4, %wide.load81.4
  store <16 x i8> %i.cc, ptr %i.ca, align 16
  store <16 x i8> %i.cd, ptr %i.cb, align 16
  %i.ce = icmp eq i64 %n.vec, 160
  br i1 %i.ce, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.cf = getelementptr i8, ptr %i.a, i64 160
  %i.cg = getelementptr i8, ptr %i.a, i64 176
  %wide.load.5 = load <16 x i8>, ptr %i.cf, align 16
  %wide.load81.5 = load <16 x i8>, ptr %i.cg, align 16
  %i.ch = getelementptr i8, ptr %i.b, i64 160     ; 2 uses
  %i.ci = getelementptr i8, ptr %i.b, i64 176     ; 2 uses
  %wide.load82.5 = load <16 x i8>, ptr %i.ch, align 16
  %wide.load83.5 = load <16 x i8>, ptr %i.ci, align 16
  %i.cj = xor <16 x i8> %wide.load82.5, %wide.load.5
  %i.ck = xor <16 x i8> %wide.load83.5, %wide.load81.5
  store <16 x i8> %i.cj, ptr %i.ch, align 16
  store <16 x i8> %i.ck, ptr %i.ci, align 16
  %i.cl = icmp eq i64 %n.vec, 192
  br i1 %i.cl, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.cm = getelementptr i8, ptr %i.a, i64 192
  %i.cn = getelementptr i8, ptr %i.a, i64 208
  %wide.load.6 = load <16 x i8>, ptr %i.cm, align 16
  %wide.load81.6 = load <16 x i8>, ptr %i.cn, align 16
  %i.co = getelementptr i8, ptr %i.b, i64 192     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.b, i64 208     ; 2 uses
  %wide.load82.6 = load <16 x i8>, ptr %i.co, align 16
  %wide.load83.6 = load <16 x i8>, ptr %i.cp, align 16
  %i.cq = xor <16 x i8> %wide.load82.6, %wide.load.6
  %i.cr = xor <16 x i8> %wide.load83.6, %wide.load81.6
  store <16 x i8> %i.cq, ptr %i.co, align 16
  store <16 x i8> %i.cr, ptr %i.cp, align 16
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge55, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %.lr.ph54.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec84 = and i64 %wide.trip.count, 252        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index85 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 3 uses
  %i.cs = getelementptr i8, ptr %i.a, i64 %index85
  %wide.load86 = load <4 x i8>, ptr %i.cs, align 4
  %i.ct = getelementptr i8, ptr %i.b, i64 %index85 ; 2 uses
  %wide.load87 = load <4 x i8>, ptr %i.ct, align 4
  %i.cu = xor <4 x i8> %wide.load87, %wide.load86
  store <4 x i8> %i.cu, ptr %i.ct, align 4
  %index.next88 = add nuw i64 %index85, 4         ; 2 uses
  %i.cv = icmp eq i64 %index.next88, %n.vec84
  br i1 %i.cv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %n.vec84, %wide.trip.count
  br i1 %cmp.n89, label %._crit_edge55, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv61.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec84, %vec.epilog.middle.block ]
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %.lr.ph54
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %.lr.ph54 ], [ %indvars.iv61.ph, %.lr.ph54.preheader ] ; 3 uses
  %i.cw = getelementptr i8, ptr %i.a, i64 %indvars.iv61
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = getelementptr i8, ptr %i.b, i64 %indvars.iv61 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = xor i8 %i.cz, %i.cx
  store i8 %i.da, ptr %i.cy, align 1
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge55, label %.lr.ph54, !llvm.loop !91

._crit_edge55:                                    ; preds = %.lr.ph54, %middle.block, %vec.epilog.middle.block, %._crit_edge
  %i.db = load ptr, ptr %i.as, align 8            ; 4 uses
  %i.dc = sub i32 %6, %i.aw                       ; 4 uses
  %i.dd = zext i8 %i.av to i16
  %.lhs.trunc.i = add nsw i16 %i.dd, -2
  %i.de = sdiv i16 %.lhs.trunc.i, 2
  %.tr.i = trunc nsw i16 %i.de to i8
  %i.df = shl i8 %.tr.i, 3
  %i.dg = or i8 %i.df, 67
  store i8 %i.dg, ptr %i.c, align 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.dh, ptr noundef readonly align 1 dereferenceable(11) %2, i64 noundef 11, i1 noundef false) #26
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.di, align 4
  %i.dj = lshr i32 %i.dc, 8
  %i.dk = trunc i32 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  store i8 %i.dk, ptr %i.dl, align 2
  %i.dm = trunc i32 %i.dc to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  store i8 %i.dm, ptr %i.dn, align 1
  %i.do = call i32 @gcry_cipher_encrypt(ptr noundef %i.db, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef null, i64 noundef 0) ; 0 uses
  %i.dp = lshr i32 %4, 8
  %i.dq = load i8, ptr %i.c, align 16
  %i.dr = trunc i32 %i.dp to i8
  %i.ds = xor i8 %i.dq, %i.dr
  store i8 %i.ds, ptr %i.c, align 16
  %i.dt = load i8, ptr %i.dh, align 1
  %i.du = trunc i32 %4 to i8
  %i.dv = xor i8 %i.dt, %i.du
  store i8 %i.dv, ptr %i.dh, align 1
  %i.dw = icmp sgt i32 %4, 0
  br i1 %i.dw, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge55
  %wide.trip.count.i = zext nneg i32 %4 to i64
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.l, %._crit_edge55
  %i.dx = icmp sgt i32 %i.dc, 0
  br i1 %i.dx, label %.lr.ph44.preheader.i, label %generateMac.exit

.lr.ph44.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count48.i = zext nneg i32 %i.dc to i64
  br label %.lr.ph44.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %.03940.i = phi i16 [ 2, %.lr.ph.preheader.i ], [ %i.eh, %bb.l ] ; 2 uses
  %i.dy = and i16 %.03940.i, 15                   ; 2 uses
  %i.dz = icmp eq i16 %i.dy, 0
  br i1 %i.dz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.ea = call i32 @gcry_cipher_encrypt(ptr noundef %i.db, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef null, i64 noundef 0) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.eb = getelementptr i8, ptr %3, i64 %indvars.iv.i
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = zext nneg i16 %i.dy to i64
  %i.ee = getelementptr i8, ptr %i.c, i64 %i.ed   ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = xor i8 %i.ef, %i.ec
  store i8 %i.eg, ptr %i.ee, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.eh = add i16 %.03940.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !92

.lr.ph44.i:                                       ; preds = %bb.n, %.lr.ph44.preheader.i
  %indvars.iv45.i = phi i64 [ 0, %.lr.ph44.preheader.i ], [ %indvars.iv.next46.i, %bb.n ] ; 4 uses
  %i.ei = and i64 %indvars.iv45.i, 15
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph44.i
  %i.ek = call i32 @gcry_cipher_encrypt(ptr noundef %i.db, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef null, i64 noundef 0) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph44.i
  %i.el = getelementptr i8, ptr %5, i64 %indvars.iv45.i
  %i.em = load i8, ptr %i.el, align 1
  %i.en = and i64 %indvars.iv45.i, 15
  %i.eo = getelementptr i8, ptr %i.c, i64 %i.en   ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = xor i8 %i.ep, %i.em
  store i8 %i.eq, ptr %i.eo, align 1
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond49.not.i = icmp eq i64 %indvars.iv.next46.i, %wide.trip.count48.i
  br i1 %exitcond49.not.i, label %generateMac.exit, label %.lr.ph44.i, !llvm.loop !93

generateMac.exit:                                 ; preds = %bb.n, %.preheader.i
  %i.er = call i32 @gcry_cipher_encrypt(ptr noundef %i.db, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef null, i64 noundef 0) ; 0 uses
  %i.es = load i8, ptr %i.f, align 2
  %i.et = zext i8 %i.es to i64
  %bcmp = call i32 @bcmp(ptr nonnull %i.b, ptr nonnull %i.c, i64 %i.et)
  %.not46 = icmp eq i32 %bcmp, 0
  %. = zext i1 %.not46 to i32
  br label %bb.o

bb.o:                                             ; preds = %generateMac.exit, %bb.f, %bb.b, %bb.a
  %.039 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.f ], [ %., %generateMac.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret i32 %.039
}

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_oap(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #0 {
bb.a:
  %4 = alloca %struct._dof_proto_data, align 8    ; 6 uses
  %i.a = alloca i16, align 2                      ; 7 uses
  %i.b = alloca [20 x i8], align 16               ; 10 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i16, align 2                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i16 0, ptr %i.a, align 2
  %i.i = icmp eq ptr %3, null
  br i1 %i.i, label %.thread483, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %3, i64 24         ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 11 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread483, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @col_set_str(ptr noundef %i.n, i32 noundef 35, ptr noundef nonnull @.str.762)
  %i.o = load i32, ptr @proto_oap_1, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.q = load i32, ptr @ett_oap_1, align 4
  %i.r = tail call ptr @proto_item_add_subtree(ptr noundef %i.p, i32 noundef %i.q) ; 43 uses
  %i.s = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %.not.i = icmp slt i8 %i.s, 0                   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = and i8 %i.s, 127
  %i.u = zext nneg i8 %i.t to i16
  %i.v = shl nuw nsw i16 %i.u, 8
  %i.w = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.x = zext i8 %i.w to i16
  %i.y = or disjoint i16 %i.v, %i.x
  br label %read_c2.exit

bb.e:                                             ; preds = %bb.c
  %i.z = zext nneg i8 %i.s to i16
  br label %read_c2.exit

read_c2.exit:                                     ; preds = %bb.d, %bb.e
  %.sink.i = phi i32 [ 2, %bb.d ], [ 1, %bb.e ]   ; 21 uses
  %.0.ph.i = phi i16 [ %i.y, %bb.d ], [ %i.z, %bb.e ] ; 2 uses
  %i.aa = load i32, ptr @hf_2008_1_app_version, align 4
  %i.ab = zext nneg i16 %.0.ph.i to i32
  %i.ac = tail call ptr @proto_tree_add_uint(ptr noundef %i.r, i32 noundef %i.aa, ptr noundef %0, i32 noundef 0, i32 noundef %.sink.i, i32 noundef %i.ab) ; 9 uses
  %i.ad = icmp samesign ult i16 %.0.ph.i, 128
  %or.cond.i = and i1 %.not.i, %i.ad
  br i1 %or.cond.i, label %bb.f, label %validate_c2.exit

bb.f:                                             ; preds = %read_c2.exit
  %i.ae = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ac, ptr noundef nonnull @ei_c2_c3_c4_format, ptr noundef nonnull @.str.738) ; 0 uses
  br label %validate_c2.exit

validate_c2.exit:                                 ; preds = %read_c2.exit, %bb.f
  %i.af = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.ag = icmp eq i32 %.sink.i, %i.af
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %validate_c2.exit
  %i.ah = load ptr, ptr %i.m, align 8
  tail call void @col_append_str(ptr noundef %i.ah, i32 noundef 25, ptr noundef nonnull @.str.763)
  %i.ai = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.r, ptr noundef nonnull @ei_implicit_no_op) ; 0 uses
  br label %.thread483

bb.h:                                             ; preds = %validate_c2.exit
  %i.aj = load i32, ptr @proto_oap_1, align 4
  %.val = load ptr, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 %i.aj, ptr %4, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ak, align 8
  %i.al = call ptr @wmem_list_find_custom(ptr noundef %.val, ptr noundef nonnull %4, ptr noundef nonnull @p_compare) ; 2 uses
  %.not.i436 = icmp eq ptr %i.al, null
  br i1 %.not.i436, label %dof_packet_get_proto_data.exit.thread, label %dof_packet_get_proto_data.exit

dof_packet_get_proto_data.exit.thread:            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.i

dof_packet_get_proto_data.exit:                   ; preds = %bb.h
  %i.am = call ptr @wmem_list_frame_data(ptr noundef nonnull %i.al)
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %dof_packet_get_proto_data.exit.thread, %dof_packet_get_proto_data.exit
  %i.ap = call ptr @wmem_file_scope()
  %i.aq = call noalias dereferenceable_or_null(8) ptr @wmem_alloc0(ptr noundef %i.ap, i64 noundef 8) #22
  %i.ar = load i32, ptr @proto_oap_1, align 4
  %i.as = call ptr @wmem_file_scope()
  %i.at = call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.as, i64 noundef 16) #22 ; 3 uses
  store i32 %i.ar, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 8
  store ptr %i.aq, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.k, align 8
  %i.aw = call ptr @wmem_list_insert_sorted(ptr noundef %i.av, ptr noundef %i.at, ptr noundef nonnull @p_compare) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %dof_packet_get_proto_data.exit, %bb.i
  %i.ax = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.sink.i)
  %i.ay = and i8 %i.ax, 31
  %i.az = getelementptr i8, ptr %i.k, i64 48
  %i.ba = load i8, ptr %i.az, align 8, !range !10, !noundef !11
  %i.bb = xor i8 %i.ba, -1
  %i.bc = shl i8 %i.bb, 7
  %spec.select = or disjoint i8 %i.bc, %i.ay      ; 5 uses
  %i.bd = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.sink.i) ; 10 uses
  %i.be = load ptr, ptr %i.m, align 8
  %i.bf = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = zext i8 %spec.select to i32             ; 8 uses
  %i.bi = call ptr @val_to_str(ptr noundef %i.bg, i32 noundef %i.bh, ptr noundef nonnull @oap_opcode_strings, ptr noundef nonnull @.str.741)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.be, i32 noundef 25, ptr noundef nonnull @.str.740, ptr noundef %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bj = call i64 @g_strlcpy(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.764, i64 noundef 20) ; 0 uses
  %i.bk = and i32 %i.bh, 16
  %.not425 = icmp eq i32 %i.bk, 0
  %.str.767..str.766 = select i1 %.not425, ptr @.str.767, ptr @.str.766
  %i.bl = call i64 @g_strlcat(ptr noundef nonnull %i.b, ptr noundef nonnull %.str.767..str.766, i64 noundef 20) ; 0 uses
  %i.bm = call i64 @g_strlcat(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.765, i64 noundef 20) ; 0 uses
  %i.bn = and i32 %i.bh, 8
  %.not425.1 = icmp eq i32 %i.bn, 0
  %.str.766.sink = select i1 %.not425.1, ptr @.str.767, ptr @.str.766
  %i.bo = call i64 @g_strlcat(ptr noundef nonnull %i.b, ptr noundef nonnull %.str.766.sink, i64 noundef 20) ; 0 uses
  %i.bp = and i32 %i.bh, 4
  %.not425.2 = icmp eq i32 %i.bp, 0
  %.str.766.sink529 = select i1 %.not425.2, ptr @.str.767, ptr @.str.766
  %i.bq = call i64 @g_strlcat(ptr noundef nonnull %i.b, ptr noundef nonnull %.str.766.sink529, i64 noundef 20) ; 0 uses
  %i.br = and i32 %i.bh, 2
  %.not425.3 = icmp eq i32 %i.br, 0
  %.str.766.sink530 = select i1 %.not425.3, ptr @.str.767, ptr @.str.766
  %i.bs = call i64 @g_strlcat(ptr noundef nonnull %i.b, ptr noundef nonnull %.str.766.sink530, i64 noundef 20) ; 0 uses
  %i.bt = and i32 %i.bh, 1
  %.not425.4 = icmp eq i32 %i.bt, 0
  %.str.767.sink531 = select i1 %.not425.4, ptr @.str.767, ptr @.str.766
  %i.bu = call i64 @g_strlcat(ptr noundef nonnull %i.b, ptr noundef nonnull %.str.767.sink531, i64 noundef 20) ; 0 uses
  %i.bv = load i32, ptr @hf_oap_1_opcode, align 4
  %i.bw = and i32 %i.bh, 31                       ; 2 uses
  %i.bx = load ptr, ptr %i.bf, align 8
  %i.by = call ptr @val_to_str(ptr noundef %i.bx, i32 noundef %i.bh, ptr noundef nonnull @oap_opcode_strings, ptr noundef nonnull @.str.741)
  %i.bz = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.r, i32 noundef %i.bv, ptr noundef %0, i32 noundef %.sink.i, i32 noundef 1, i32 noundef %i.bw, ptr noundef nonnull @.str.768, ptr noundef nonnull %i.b, ptr noundef %i.by, i32 noundef %i.bw) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  switch i8 %spec.select, label %.thread483 [
    i8 28, label %bb.k
    i8 4, label %bb.k
    i8 3, label %bb.k
    i8 10, label %bb.k
    i8 12, label %bb.k
    i8 25, label %bb.k
    i8 20, label %bb.k
    i8 24, label %bb.k
    i8 30, label %bb.k
    i8 5, label %bb.m
    i8 -118, label %bb.p
    i8 -116, label %bb.p
    i8 -103, label %bb.p
    i8 -108, label %bb.p
    i8 -104, label %bb.p
    i8 2, label %bb.t
    i8 14, label %bb.t
    i8 16, label %bb.t
    i8 22, label %bb.t
    i8 -119, label %.thread475
    i8 6, label %bb.u
    i8 -122, label %bb.u
    i8 -114, label %bb.u
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  %i.ca = load i32, ptr @hf_oap_1_alias_size, align 4
  %i.cb = call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.ca, ptr noundef %0, i32 noundef %.sink.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cc = load i32, ptr @hf_oap_1_flags, align 4
  %i.cd = call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.cc, ptr noundef %0, i32 noundef %.sink.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ce = and i8 %i.bd, 32
  %.not416 = icmp eq i8 %i.ce, 0
  %i.cf = add nuw nsw i32 %.sink.i, 1             ; 2 uses
  br i1 %.not416, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = call fastcc i32 @oap_1_tree_add_cmdcontrol(ptr noundef %1, ptr noundef %i.r, ptr noundef %0, i32 noundef %i.cf)
  br label %bb.v

bb.m:                                             ; preds = %bb.j
end_hunk_0
