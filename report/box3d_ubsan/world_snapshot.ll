Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/world_snapshot?download=true
inline.NumInlined: 202
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3DesShapes:bb.a
  %i.kg = sext i32 %i.ae to i64                   ; 2 uses
  %i.kh = shl nsw i64 %i.kg, 3
  call void @b3Free(ptr noundef nonnull %.0159, i64 noundef %i.kh) #8
  %i.ki = shl nsw i64 %i.kg, 1
  call void @b3Free(ptr noundef %.0158, i64 noundef %i.ki) #8
  br label %.thread222

.split942.us:                                     ; preds = %.lr.ph940.split.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @182, i64 %i.jo, i64 %i.jt) #7, !nosanitize !9
  unreachable, !nosanitize !9

.split946.us:                                     ; preds = %bb.dn
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @183, i64 %i.ju) #7, !nosanitize !9
  unreachable, !nosanitize !9

.split949.us:                                     ; preds = %bb.dr
  %i.kj = ptrtoint ptr %i.jy to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @185, i64 %i.kj) #7, !nosanitize !9
  unreachable, !nosanitize !9

.thread222:                                       ; preds = %b3SnapCheckCount.exit.thread, %bb.e, %.critedge, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3DesContacts(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 !func_sanitize !299 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.b3BlockAllocator, align 8   ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 0, ptr %i.c, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef 4)
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14   ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %i.e = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.f = and i64 %i.e, 7, !nosanitize !9
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !9
  br i1 %i.g, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @186, i64 %i.e) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !204   ; 3 uses
  %i.j = icmp ult i8 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.k = zext i8 %i.i to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @187, i64 %i.k) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.l = trunc nuw i8 %i.i to i1
  br i1 %i.l, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %or.cond122 = icmp ugt i32 %i.d, 9942053
  br i1 %or.cond122, label %.critedge.sink.split, label %b3SnapCheckCount.exit

b3SnapCheckCount.exit:                            ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !203
  %i.p = sext i32 %i.o to i64
  %i.q = load i32, ptr %i.n, align 8, !tbaa !202
  %i.r = sext i32 %i.q to i64
  %i.s = sub nsw i64 %i.p, %i.r
  %narrow = mul nuw nsw i32 %i.d, 216             ; 2 uses
  %i.t = zext nneg i32 %narrow to i64             ; 2 uses
  %.not123 = icmp slt i64 %i.s, %i.t
  br i1 %.not123, label %.critedge.sink.split, label %bb.g

bb.g:                                             ; preds = %b3SnapCheckCount.exit
  %i.u = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.v = and i64 %i.u, 7, !nosanitize !9
  %i.w = icmp eq i64 %i.v, 0, !nosanitize !9
  br i1 %i.w, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @188, i64 %i.u) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4000 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4012 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !300  ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.d
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = mul i32 %i.z, 216
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !119
  %i.ad = call ptr @b3GrowAlloc(ptr noundef %i.ac, i32 noundef %i.ab, i32 noundef %narrow) #8
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !119
  store i32 %i.d, ptr %i.y, align 4, !tbaa !300
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4008
  store i32 %i.d, ptr %i.ae, align 8, !tbaa !118
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !119 ; 2 uses
  %.not103 = icmp eq ptr %i.af, null, !nosanitize !9
  br i1 %.not103, label %bb.l, label %.split, !prof !91, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @189) #7, !nosanitize !9
  unreachable, !nosanitize !9

.split:                                           ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.af, i8 0, i64 %i.t, i1 false)
  %.not617 = icmp eq i32 %i.d, 0
  br i1 %.not617, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 3848 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 3832 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 3840 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3844 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %.thread115
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread115 ] ; 4 uses
  %i.ak = load i8, ptr %i.h, align 8, !tbaa !204  ; 3 uses
  %i.al = icmp ult i8 %i.ak, 2
  br i1 %i.al, label %bb.o, label %bb.n, !prof !10, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  %i.am = zext i8 %i.ak to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @190, i64 %i.am) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %i.an = trunc nuw i8 %i.ak to i1
  br i1 %i.an, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !119 ; 3 uses
  %i.ap = getelementptr inbounds nuw [216 x i8], ptr %i.ao, i64 %indvars.iv ; 15 uses
  %i.aq = mul nuw nsw i64 %indvars.iv, 216
  %i.ar = ptrtoint ptr %i.ao to i64, !nosanitize !9 ; 3 uses
  %i.as = add i64 %i.aq, %i.ar, !nosanitize !9    ; 3 uses
  %i.at = icmp ne ptr %i.ao, null, !nosanitize !9 ; 2 uses
  %i.au = icmp eq i64 %i.as, 0
  %i.av = xor i1 %i.at, %i.au
  %i.aw = icmp uge i64 %i.as, %i.ar, !nosanitize !9
  %i.ax = and i1 %i.av, %i.aw, !nosanitize !9
  br i1 %i.ax, label %bb.r, label %bb.q, !prof !10, !nosanitize !9

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @191, i64 %i.ar, i64 %i.as) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %bb.p
  call fastcc void @b3SnapR_Bytes(ptr noundef %0, ptr noundef %i.ap, i32 noundef 216)
  %i.ay = ptrtoint ptr %i.ap to i64, !nosanitize !9 ; 2 uses
  %i.az = and i64 %i.ay, 7, !nosanitize !9
  %i.ba = icmp eq i64 %i.az, 0, !nosanitize !9
  %i.bb = and i1 %i.at, %i.ba
  br i1 %i.bb, label %bb.t, label %bb.s, !prof !10, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @192, i64 %i.ay) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 72 ; 3 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !125
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 60
  store i32 -1, ptr %i.bd, align 4, !tbaa !126
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i32 -1, ptr %i.be, align 8, !tbaa !127
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 68 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !128
  %i.bh = and i32 %i.bg, 4194304
  %.not104 = icmp eq i32 %i.bh, 0
  br i1 %.not104, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 152
  store ptr null, ptr %i.bi, align 8, !tbaa !77
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  store i32 0, ptr %i.bj, align 8, !tbaa !77
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 164
  store i32 0, ptr %i.bk, align 4, !tbaa !77
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !124
  %i.bn = zext i32 %i.bm to i64
  %i.bo = icmp eq i64 %indvars.iv, %i.bn          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 4)
  %i.bp = load i32, ptr %i.b, align 4, !tbaa !14  ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.bq = load i8, ptr %i.h, align 8, !tbaa !204  ; 3 uses
  %i.br = icmp ult i8 %i.bq, 2
  br i1 %i.br, label %bb.x, label %bb.w, !prof !10, !nosanitize !9

bb.w:                                             ; preds = %bb.v
  %i.bs = zext i8 %i.bq to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @193, i64 %i.bs) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.x:                                             ; preds = %bb.v
  %i.bt = trunc nuw i8 %i.bq to i1
  br i1 %i.bt, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.bu = icmp sgt i32 %i.bp, 0
  %or.cond = select i1 %i.bo, i1 %i.bu, i1 false
  br i1 %or.cond, label %bb.z, label %bb.al

bb.z:                                             ; preds = %bb.y
  %i.bv = icmp samesign ugt i32 %i.bp, 8012998
  br i1 %i.bv, label %.critedge.sink.split, label %b3SnapCheckCount.exit107

b3SnapCheckCount.exit107:                         ; preds = %bb.z
  %i.bw = load i32, ptr %i.m, align 4, !tbaa !203
  %i.bx = sext i32 %i.bw to i64
  %i.by = load i32, ptr %i.n, align 8, !tbaa !202
  %i.bz = sext i32 %i.by to i64
  %i.ca = sub nsw i64 %i.bx, %i.bz
  %narrow125 = mul nuw nsw i32 %i.bp, 268         ; 2 uses
  %i.cb = zext nneg i32 %narrow125 to i64
  %.not126 = icmp slt i64 %i.ca, %i.cb
  br i1 %.not126, label %.critedge.sink.split, label %bb.aa

bb.aa:                                            ; preds = %b3SnapCheckCount.exit107
  %i.cc = add nsw i32 %i.bp, -1
  %i.cd = load ptr, ptr %i.ag, align 8, !tbaa !205
  call void @b3LockMutex(ptr noundef %i.cd) #8
  %i.ce = load i32, ptr %i.ai, align 8, !tbaa !301 ; 2 uses
  %i.cf = icmp slt i32 %i.ce, %i.bp
  br i1 %i.cf, label %.lr.ph.split.us.i, label %._crit_edge.i

.lr.ph.split.us.i:                                ; preds = %bb.aa, %bb.ah
  %.054.us.i = phi i32 [ %i.cg, %bb.ah ], [ %i.ce, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.cg = add nsw i32 %.054.us.i, 1               ; 3 uses
  %i.ch = mul i32 %i.cg, 268
  call void @b3CreateBlockAllocator(ptr dead_on_unwind nonnull writable sret(%struct.b3BlockAllocator) align 8 %2, i32 noundef %i.ch, i32 noundef 512) #8
  %i.ci = load i32, ptr %i.ai, align 8, !tbaa !301 ; 2 uses
  %i.cj = load i32, ptr %i.aj, align 4, !tbaa !302 ; 6 uses
  %.not37.us.i = icmp slt i32 %i.ci, %i.cj
  br i1 %.not37.us.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.split.us.i
  %i.ck = mul i32 %i.cj, 40
  %i.cl = icmp eq i32 %i.cj, 0
  br i1 %i.cl, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = shl nsw i32 %i.cj, 1
  %i.cn = add i32 %i.cj, 1073741824
  %i.co = icmp sgt i32 %i.cn, -1
  br i1 %i.co, label %bb.ad, label %.split.us.i, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cp = phi i32 [ 8, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cq = mul i32 %i.cp, 40
  %i.cr = load ptr, ptr %i.ah, align 8, !tbaa !206
  %i.cs = call ptr @b3GrowAlloc(ptr noundef %i.cr, i32 noundef %i.ck, i32 noundef %i.cq) #8
  store ptr %i.cs, ptr %i.ah, align 8, !tbaa !206
  store i32 %i.cp, ptr %i.aj, align 4, !tbaa !302
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !301
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.split.us.i
  %i.ct = phi i32 [ %.pre.i, %bb.ad ], [ %i.ci, %.lr.ph.split.us.i ] ; 4 uses
  %i.cu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ct, i32 1), !nosanitize !9 ; 2 uses
  %i.cv = extractvalue { i32, i1 } %i.cu, 1, !nosanitize !9
  br i1 %i.cv, label %.split56.us.i, label %bb.af, !prof !91, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.ah, align 8, !tbaa !206 ; 3 uses
  %i.cx = extractvalue { i32, i1 } %i.cu, 0, !nosanitize !9
  store i32 %i.cx, ptr %i.ai, align 8, !tbaa !301
  %i.cy = sext i32 %i.ct to i64                   ; 2 uses
  %i.cz = getelementptr inbounds [40 x i8], ptr %i.cw, i64 %i.cy ; 2 uses
  %i.da = mul nsw i64 %i.cy, 40
  %i.db = ptrtoint ptr %i.cw to i64, !nosanitize !9 ; 3 uses
  %i.dc = add i64 %i.da, %i.db, !nosanitize !9    ; 3 uses
  %i.dd = icmp ne ptr %i.cw, null, !nosanitize !9 ; 2 uses
  %i.de = icmp eq i64 %i.dc, 0
  %i.df = xor i1 %i.dd, %i.de
  %i.dg = icmp uge i64 %i.dc, %i.db, !nosanitize !9
  %i.dh = icmp slt i32 %i.ct, 0
  %i.di = xor i1 %i.dh, %i.dg
  %i.dj = and i1 %i.df, %i.di, !nosanitize !9
  br i1 %i.dj, label %bb.ag, label %.split59.us.i, !prof !10, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  %i.dk = ptrtoint ptr %i.cz to i64, !nosanitize !9 ; 2 uses
  %i.dl = and i64 %i.dk, 7, !nosanitize !9
  %i.dm = icmp eq i64 %i.dl, 0, !nosanitize !9
  %i.dn = and i1 %i.dd, %i.dm
  br i1 %i.dn, label %bb.ah, label %.split63.us.i, !prof !10, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cz, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !305
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %exitcond.not.i = icmp eq i32 %i.cg, %i.bp
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !297

.split.us.i:                                      ; preds = %bb.ac
  %i.do = zext i32 %i.cj to i64, !nosanitize !9
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @195, i64 2, i64 %i.do) #7, !nosanitize !9
  unreachable, !nosanitize !9

.split56.us.i:                                    ; preds = %bb.ae
  %i.dp = zext nneg i32 %i.ct to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @196, i64 %i.dp, i64 1) #7, !nosanitize !9
  unreachable, !nosanitize !9

.split59.us.i:                                    ; preds = %bb.af
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @197, i64 %i.db, i64 %i.dc) #7, !nosanitize !9
  unreachable, !nosanitize !9

.split63.us.i:                                    ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @199, i64 %i.dk) #7, !nosanitize !9
  unreachable, !nosanitize !9

._crit_edge.i:                                    ; preds = %bb.ah, %bb.aa
  %i.dq = load ptr, ptr %i.ah, align 8, !tbaa !206 ; 3 uses
  %i.dr = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ds = mul nuw nsw i64 %i.dr, 40
  %i.dt = ptrtoint ptr %i.dq to i64, !nosanitize !9 ; 3 uses
  %i.du = add i64 %i.ds, %i.dt, !nosanitize !9    ; 3 uses
  %i.dv = icmp ne ptr %i.dq, null, !nosanitize !9
  %i.dw = icmp eq i64 %i.du, 0
  %i.dx = xor i1 %i.dv, %i.dw
  %i.dy = icmp uge i64 %i.du, %i.dt, !nosanitize !9
  %i.dz = and i1 %i.dy, %i.dx, !nosanitize !9
  br i1 %i.dz, label %bb.aj, label %bb.ai, !prof !10, !nosanitize !9

bb.ai:                                            ; preds = %._crit_edge.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @200, i64 %i.dt, i64 %i.du) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.aj:                                            ; preds = %._crit_edge.i
  %i.ea = getelementptr inbounds nuw [40 x i8], ptr %i.dq, i64 %i.dr
  %i.eb = call ptr @b3AllocateElement(ptr noundef %i.ea) #8 ; 4 uses
  %i.ec = load ptr, ptr %i.ag, align 8, !tbaa !205
  call void @b3UnlockMutex(ptr noundef %i.ec) #8
  %.not.i = icmp eq ptr %i.eb, null, !nosanitize !9
  br i1 %.not.i, label %bb.ak, label %b3AllocateManifolds.exit, !prof !91, !nosanitize !9

bb.ak:                                            ; preds = %bb.aj
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @201) #7, !nosanitize !9
  unreachable, !nosanitize !9

b3AllocateManifolds.exit:                         ; preds = %bb.aj
  %narrow1002 = mul nuw i32 %i.bp, 268
  %3 = zext i32 %narrow1002 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.eb, i8 0, i64 %3, i1 false)
  store ptr %i.eb, ptr %i.bc, align 8, !tbaa !125
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store i32 %i.bp, ptr %i.ed, align 8, !tbaa !129
  call fastcc void @b3SnapR_Bytes(ptr noundef %0, ptr noundef nonnull %i.eb, i32 noundef %narrow125)
  br label %bb.am

bb.al:                                            ; preds = %bb.y
  store ptr null, ptr %i.bc, align 8, !tbaa !125
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store i32 0, ptr %i.ee, align 8, !tbaa !129
  br label %bb.am

bb.am:                                            ; preds = %b3AllocateManifolds.exit, %bb.al
  br i1 %i.bo, label %bb.an, label %.thread115

bb.an:                                            ; preds = %bb.am
  %i.ef = load i32, ptr %i.bf, align 4, !tbaa !128
  %i.eg = and i32 %i.ef, 4194304
  %.not105 = icmp eq i32 %i.eg, 0
  br i1 %.not105, label %.thread115, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 4)
  %i.eh = load i32, ptr %i.a, align 4, !tbaa !14  ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ei = load i8, ptr %i.h, align 8, !tbaa !204  ; 3 uses
  %i.ej = icmp ult i8 %i.ei, 2
  br i1 %i.ej, label %bb.aq, label %bb.ap, !prof !10, !nosanitize !9

bb.ap:                                            ; preds = %bb.ao
  %i.ek = zext i8 %i.ei to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @194, i64 %i.ek) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.aq:                                            ; preds = %bb.ao
  %i.el = trunc nuw i8 %i.ei to i1
  br i1 %i.el, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %bb.aq
  %i.em = icmp sgt i32 %i.eh, 0
  br i1 %i.em, label %bb.as, label %.thread115

bb.as:                                            ; preds = %bb.ar
  %i.en = icmp samesign ugt i32 %i.eh, 107374182
  br i1 %i.en, label %.critedge.sink.split, label %b3SnapCheckCount.exit109

b3SnapCheckCount.exit109:                         ; preds = %bb.as
  %i.eo = load i32, ptr %i.m, align 4, !tbaa !203
  %i.ep = sext i32 %i.eo to i64
  %i.eq = load i32, ptr %i.n, align 8, !tbaa !202
  %i.er = sext i32 %i.eq to i64
  %i.es = sub nsw i64 %i.ep, %i.er
  %narrow127 = mul nuw nsw i32 %i.eh, 20          ; 3 uses
  %i.et = zext nneg i32 %narrow127 to i64
  %.not128 = icmp slt i64 %i.es, %i.et
  br i1 %.not128, label %.critedge.sink.split, label %bb.at

bb.at:                                            ; preds = %b3SnapCheckCount.exit109
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ap, i64 152 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ap, i64 164 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !77 ; 2 uses
  %i.ex = icmp slt i32 %i.ew, %i.eh
  br i1 %i.ex, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ey = mul i32 %i.ew, 20
  %i.ez = load ptr, ptr %i.eu, align 8, !tbaa !77
  %i.fa = call ptr @b3GrowAlloc(ptr noundef %i.ez, i32 noundef %i.ey, i32 noundef %narrow127) #8
  store ptr %i.fa, ptr %i.eu, align 8, !tbaa !77
  store i32 %i.eh, ptr %i.ev, align 4, !tbaa !77
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  store i32 %i.eh, ptr %i.fb, align 8, !tbaa !77
  %i.fc = load ptr, ptr %i.eu, align 8, !tbaa !77
  call fastcc void @b3SnapR_Bytes(ptr noundef %0, ptr noundef %i.fc, i32 noundef %narrow127)
  br label %.thread115

.thread115:                                       ; preds = %bb.ar, %bb.av, %bb.an, %bb.am
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.m, !llvm.loop !298

.critedge.sink.split:                             ; preds = %b3SnapCheckCount.exit109, %bb.as, %b3SnapCheckCount.exit107, %bb.z, %b3SnapCheckCount.exit, %bb.f
  store i8 0, ptr %i.h, align 8, !tbaa !204
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %.thread115, %bb.aq, %bb.x, %.critedge.sink.split, %.split, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3DesBitSet(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 !func_sanitize !306 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 4)
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14   ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.c = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.d = and i64 %i.c, 7, !nosanitize !9
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @210, i64 %i.c) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !204   ; 3 uses
  %i.h = icmp ult i8 %i.g, 2
  br i1 %i.h, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.i = zext i8 %i.g to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @211, i64 %i.i) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.j = trunc nuw i8 %i.g to i1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %or.cond.not = icmp ult i32 %i.b, 268435456
  br i1 %or.cond.not, label %b3SnapCheckCount.exit, label %b3SnapCheckCount.exit.thread

b3SnapCheckCount.exit:                            ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.k, align 4, !tbaa !203
  %i.n = sext i32 %i.m to i64
  %i.o = load i32, ptr %i.l, align 8, !tbaa !202
  %i.p = sext i32 %i.o to i64
  %i.q = sub nsw i64 %i.n, %i.p
  %i.r = shl nuw nsw i32 %i.b, 3
  %i.s = zext nneg i32 %i.r to i64
  %.not30 = icmp slt i64 %i.q, %i.s
  br i1 %.not30, label %b3SnapCheckCount.exit.thread, label %bb.g

b3SnapCheckCount.exit.thread:                     ; preds = %bb.f, %b3SnapCheckCount.exit
  store i8 0, ptr %i.f, align 8, !tbaa !204
  br label %bb.g

bb.g:                                             ; preds = %b3SnapCheckCount.exit.thread, %b3SnapCheckCount.exit, %bb.e
  call void @b3DestroyBitSet(ptr noundef nonnull %1) #8
  %i.t = load i8, ptr %i.f, align 8, !tbaa !204   ; 3 uses
  %i.u = icmp ult i8 %i.t, 2
  br i1 %i.u, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  %i.v = zext i8 %i.t to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @212, i64 %i.v) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.w = trunc nuw i8 %i.t to i1
  br i1 %i.w, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %.not27 = icmp eq i32 %i.b, 0
  %i.x = call i32 @llvm.umax.i32(i32 %i.b, i32 1) ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3                  ; 2 uses
  %i.aa = call ptr @b3Alloc(i64 noundef %i.z) #8  ; 3 uses
  %i.ab = ptrtoint ptr %1 to i64, !nosanitize !9  ; 2 uses
  %i.ac = and i64 %i.ab, 7, !nosanitize !9
  %i.ad = icmp eq i64 %i.ac, 0, !nosanitize !9
  br i1 %i.ad, label %bb.l, label %bb.k, !prof !10, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @214, i64 %i.ab) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  store ptr %i.aa, ptr %1, align 8, !tbaa !178
  %.not28 = icmp eq ptr %i.aa, null, !nosanitize !9
  br i1 %.not28, label %bb.m, label %bb.n, !prof !91, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @215) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i8 0, i64 %i.z, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.x, ptr %i.ae, align 8, !tbaa !307
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.b, ptr %i.af, align 4, !tbaa !177
  br i1 %.not27, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = load ptr, ptr %1, align 8, !tbaa !178
  %i.ah = shl i32 %i.b, 3
  call fastcc void @b3SnapR_Bytes(ptr noundef %0, ptr noundef %i.ag, i32 noundef %i.ah)
  br label %bb.p
end_hunk_0
