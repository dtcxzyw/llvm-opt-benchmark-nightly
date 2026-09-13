Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/world_snapshot?download=true
inline.NumInlined: 202
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3DesContacts:bb.a
  %.054.us.i = phi i32 [ %i.cg, %bb.ai ], [ %i.ce, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.cg = add nsw i32 %.054.us.i, 1               ; 3 uses
  %i.ch = mul i32 %i.cg, 268
  call void @b3CreateBlockAllocator(ptr dead_on_unwind nonnull writable sret(%struct.b3BlockAllocator) align 8 %2, i32 noundef %i.ch, i32 noundef 512) #8
  %i.ci = load i32, ptr %i.ai, align 8, !tbaa !301 ; 2 uses
  %i.cj = load i32, ptr %i.aj, align 4, !tbaa !302 ; 6 uses
  %.not37.us.i = icmp slt i32 %i.ci, %i.cj
  br i1 %.not37.us.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.split.us.i
  %i.ck = mul i32 %i.cj, 40
  %i.cl = icmp eq i32 %i.cj, 0
  br i1 %i.cl, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cm = shl nsw i32 %i.cj, 1
  %i.cn = add i32 %i.cj, 1073741824
  %i.co = icmp sgt i32 %i.cn, -1
  br i1 %i.co, label %bb.ae, label %.split.us.i, !prof !10, !nosanitize !9

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cp = phi i32 [ 8, %bb.ac ], [ %i.cm, %bb.ad ] ; 2 uses
  %i.cq = mul i32 %i.cp, 40
  %i.cr = load ptr, ptr %i.ah, align 8, !tbaa !206
  %i.cs = call ptr @b3GrowAlloc(ptr noundef %i.cr, i32 noundef %i.ck, i32 noundef %i.cq) #8
  store ptr %i.cs, ptr %i.ah, align 8, !tbaa !206
  store i32 %i.cp, ptr %i.aj, align 4, !tbaa !302
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !301
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.split.us.i
  %i.ct = phi i32 [ %.pre.i, %bb.ae ], [ %i.ci, %.lr.ph.split.us.i ] ; 4 uses
  %i.cu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ct, i32 1), !nosanitize !9 ; 2 uses
  %i.cv = extractvalue { i32, i1 } %i.cu, 1, !nosanitize !9
  br i1 %i.cv, label %.split56.us.i, label %bb.ag, !prof !91, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
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
  br i1 %i.dj, label %bb.ah, label %.split59.us.i, !prof !10, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  %i.dk = ptrtoint ptr %i.cz to i64, !nosanitize !9 ; 2 uses
  %i.dl = and i64 %i.dk, 7, !nosanitize !9
  %i.dm = icmp eq i64 %i.dl, 0, !nosanitize !9
  %i.dn = and i1 %i.dd, %i.dm
  br i1 %i.dn, label %bb.ai, label %.split63.us.i, !prof !10, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cz, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !305
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %exitcond.not.i = icmp eq i32 %i.cg, %i.bp
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !297

.split.us.i:                                      ; preds = %bb.ad
  %i.do = zext i32 %i.cj to i64, !nosanitize !9
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @195, i64 2, i64 %i.do) #7, !nosanitize !9
  unreachable, !nosanitize !9

.split56.us.i:                                    ; preds = %bb.af
  %i.dp = zext nneg i32 %i.ct to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @196, i64 %i.dp, i64 1) #7, !nosanitize !9
  unreachable, !nosanitize !9

.split59.us.i:                                    ; preds = %bb.ag
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @197, i64 %i.db, i64 %i.dc) #7, !nosanitize !9
  unreachable, !nosanitize !9

.split63.us.i:                                    ; preds = %bb.ah
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @199, i64 %i.dk) #7, !nosanitize !9
  unreachable, !nosanitize !9

._crit_edge.i:                                    ; preds = %bb.ai, %bb.ab
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
  br i1 %i.dz, label %bb.ak, label %bb.aj, !prof !10, !nosanitize !9

bb.aj:                                            ; preds = %._crit_edge.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @200, i64 %i.dt, i64 %i.du) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %._crit_edge.i
  %i.ea = getelementptr inbounds nuw [40 x i8], ptr %i.dq, i64 %i.dr
  %i.eb = call ptr @b3AllocateElement(ptr noundef %i.ea) #8 ; 4 uses
  %i.ec = load ptr, ptr %i.ag, align 8, !tbaa !205
  call void @b3UnlockMutex(ptr noundef %i.ec) #8
  %.not.i = icmp eq ptr %i.eb, null, !nosanitize !9
  br i1 %.not.i, label %bb.al, label %b3AllocateManifolds.exit, !prof !91, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @201) #7, !nosanitize !9
  unreachable, !nosanitize !9

b3AllocateManifolds.exit:                         ; preds = %bb.ak
  %narrow1048 = mul nuw i32 %i.bp, 268
  %i.ed = zext i32 %narrow1048 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.eb, i8 0, i64 %i.ed, i1 false)
  store ptr %i.eb, ptr %i.bc, align 8, !tbaa !125
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store i32 %i.bp, ptr %i.ee, align 8, !tbaa !129
  call fastcc void @b3SnapR_Bytes(ptr noundef %0, ptr noundef nonnull %i.eb, i32 noundef %narrow125)
  br label %bb.an

bb.am:                                            ; preds = %bb.z
  store ptr null, ptr %i.bc, align 8, !tbaa !125
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store i32 0, ptr %i.ef, align 8, !tbaa !129
  br label %bb.an

bb.an:                                            ; preds = %b3AllocateManifolds.exit, %bb.am
  br i1 %i.bo, label %bb.ao, label %.thread115

bb.ao:                                            ; preds = %bb.an
  %i.eg = load i32, ptr %i.bf, align 4, !tbaa !128
  %i.eh = and i32 %i.eg, 4194304
  %.not105 = icmp eq i32 %i.eh, 0
  br i1 %.not105, label %.thread115, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 4)
  %i.ei = load i32, ptr %i.a, align 4, !tbaa !14  ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ej = load i8, ptr %i.h, align 8, !tbaa !204  ; 3 uses
  %i.ek = icmp ult i8 %i.ej, 2
  br i1 %i.ek, label %bb.ar, label %bb.aq, !prof !10, !nosanitize !9

bb.aq:                                            ; preds = %bb.ap
  %i.el = zext i8 %i.ej to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @194, i64 %i.el) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.ar:                                            ; preds = %bb.ap
  %i.em = trunc nuw i8 %i.ej to i1
  br i1 %i.em, label %bb.as, label %.critedge

bb.as:                                            ; preds = %bb.ar
  %i.en = icmp sgt i32 %i.ei, 0
  br i1 %i.en, label %bb.at, label %.thread115

bb.at:                                            ; preds = %bb.as
  %i.eo = icmp samesign ugt i32 %i.ei, 107374182
  br i1 %i.eo, label %.critedge.sink.split, label %b3SnapCheckCount.exit109

b3SnapCheckCount.exit109:                         ; preds = %bb.at
  %i.ep = load i32, ptr %i.m, align 4, !tbaa !203
  %i.eq = sext i32 %i.ep to i64
  %i.er = load i32, ptr %i.n, align 8, !tbaa !202
  %i.es = sext i32 %i.er to i64
  %i.et = sub nsw i64 %i.eq, %i.es
  %narrow127 = mul nuw nsw i32 %i.ei, 20          ; 3 uses
  %i.eu = zext nneg i32 %narrow127 to i64
  %.not128 = icmp slt i64 %i.et, %i.eu
  br i1 %.not128, label %.critedge.sink.split, label %bb.au

bb.au:                                            ; preds = %b3SnapCheckCount.exit109
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ap, i64 152 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ap, i64 164 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !77 ; 2 uses
  %i.ey = icmp slt i32 %i.ex, %i.ei
  br i1 %i.ey, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ez = mul i32 %i.ex, 20
  %i.fa = load ptr, ptr %i.ev, align 8, !tbaa !77
  %i.fb = call ptr @b3GrowAlloc(ptr noundef %i.fa, i32 noundef %i.ez, i32 noundef %narrow127) #8
  store ptr %i.fb, ptr %i.ev, align 8, !tbaa !77
  store i32 %i.ei, ptr %i.ew, align 4, !tbaa !77
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  store i32 %i.ei, ptr %i.fc, align 8, !tbaa !77
  %i.fd = load ptr, ptr %i.ev, align 8, !tbaa !77
  call fastcc void @b3SnapR_Bytes(ptr noundef %0, ptr noundef %i.fd, i32 noundef %narrow127)
  br label %.thread115

.thread115:                                       ; preds = %bb.an, %bb.ao, %bb.aw, %bb.as
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.n, !llvm.loop !298

.critedge.sink.split:                             ; preds = %b3SnapCheckCount.exit109, %bb.at, %b3SnapCheckCount.exit107, %bb.aa, %b3SnapCheckCount.exit, %bb.f
  store i8 0, ptr %i.h, align 8, !tbaa !204
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %.thread115, %bb.ar, %bb.y, %.critedge.sink.split, %bb.m, %bb.e
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

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3DesHashSet(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 !func_sanitize !308 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 4)
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14   ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 4)
  %i.d = load i32, ptr %i.a, align 4, !tbaa !14   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %or.cond41.not = icmp ult i32 %i.c, 134217728
  %i.e = ptrtoint ptr %0 to i64, !nosanitize !9   ; 3 uses
  %i.f = and i64 %i.e, 7, !nosanitize !9
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %or.cond41.not, label %bb.b, label %b3SnapCheckCount.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.c, !prof !10, !nosanitize !9

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @129, i64 %i.e) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.h, align 4, !tbaa !203
  %i.k = sext i32 %i.j to i64
  %i.l = load i32, ptr %i.i, align 8, !tbaa !202
  %i.m = sext i32 %i.l to i64
  %i.n = sub nsw i64 %i.k, %i.m
  %i.o = shl nuw nsw i32 %i.c, 4
  %i.p = zext nneg i32 %i.o to i64
  %i.q = icmp sge i64 %i.n, %i.p
  br label %b3SnapCheckCount.exit

b3SnapCheckCount.exit:                            ; preds = %bb.a, %bb.d
  %.pre-phi45 = phi i1 [ true, %bb.d ], [ %i.g, %bb.a ]
  %.0.i = phi i1 [ %i.q, %bb.d ], [ false, %bb.a ]
  %i.r = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.c)
  %i.s = icmp samesign ult i32 %i.r, 2
  %or.cond38 = select i1 %.0.i, i1 %i.s, i1 false
  %.not35 = icmp ule i32 %i.d, %i.c
  %i.t = select i1 %or.cond38, i1 %.not35, i1 false
  br i1 %.pre-phi45, label %bb.f, label %bb.e, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %b3SnapCheckCount.exit
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @216, i64 %i.e) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %b3SnapCheckCount.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !204   ; 3 uses
  %i.w = icmp ult i8 %i.v, 2
  br i1 %i.w, label %bb.h, label %bb.g, !prof !10, !nosanitize !9

bb.g:                                             ; preds = %bb.f
  %i.x = zext i8 %i.v to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @217, i64 %i.x) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %bb.f
  %i.y = trunc nuw i8 %i.v to i1
  %.not39 = xor i1 %i.y, true
  %brmerge = select i1 %.not39, i1 true, i1 %i.t
  br i1 %brmerge, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = icmp ne i32 %i.c, 0
  %i.aa = icmp ne i32 %i.d, 0
  %or.cond = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond, label %bb.j, label %bb.k
end_hunk_0
