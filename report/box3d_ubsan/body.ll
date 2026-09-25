Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/body?download=true
inline.NumInlined: 248
inline.NumDeleted: 40
begin_hunk_0_@b3Body_Enable:bb.a

._crit_edge:                                      ; preds = %bb.x, %bb.t
  br i1 %i.bm, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  call fastcc void @b3CreateIslandForBody(ptr noundef %i.c, i32 noundef 2, ptr noundef %phi.call)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge
  %i.cp = getelementptr inbounds nuw i8, ptr %phi.call, i64 36
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !131 ; 2 uses
  %.not80306 = icmp eq i32 %i.cq, -1
  br i1 %.not80306, label %._crit_edge310, label %.lr.ph309

.lr.ph309:                                        ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  br label %.lr.ph309.split.split.us

.lr.ph309.split.split.us:                         ; preds = %.lr.ph309, %bb.am
  %.057307.us = phi i32 [ %i.dt, %bb.am ], [ %i.cq, %.lr.ph309 ] ; 2 uses
  %i.ct = and i32 %.057307.us, 1
  %i.cu = ashr i32 %.057307.us, 1                 ; 2 uses
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !132 ; 3 uses
  %i.cw = sext i32 %i.cu to i64                   ; 2 uses
  %i.cx = getelementptr inbounds [72 x i8], ptr %i.cv, i64 %i.cw ; 5 uses
  %i.cy = mul nsw i64 %i.cw, 72
  %i.cz = ptrtoint ptr %i.cv to i64, !nosanitize !9 ; 3 uses
  %i.da = add i64 %i.cy, %i.cz, !nosanitize !9    ; 3 uses
  %i.db = icmp ne ptr %i.cv, null, !nosanitize !9 ; 2 uses
  %i.dc = icmp eq i64 %i.da, 0
  %i.dd = xor i1 %i.db, %i.dc
  %i.de = icmp uge i64 %i.da, %i.cz, !nosanitize !9
  %i.df = icmp slt i32 %i.cu, 0
  %i.dg = xor i1 %i.df, %i.de
  %i.dh = and i1 %i.dd, %i.dg, !nosanitize !9
  br i1 %i.dh, label %bb.aa, label %.split.us, !prof !10, !nosanitize !9

bb.aa:                                            ; preds = %.lr.ph309.split.split.us
  %i.di = ptrtoint ptr %i.cx to i64, !nosanitize !9 ; 2 uses
  %i.dj = and i64 %i.di, 7, !nosanitize !9
  %i.dk = icmp eq i64 %i.dj, 0, !nosanitize !9
  %i.dl = and i1 %i.db, %i.dk
  br i1 %i.dl, label %bb.ab, label %.split313.us, !prof !10, !nosanitize !9

bb.ab:                                            ; preds = %bb.aa
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 20 ; 4 uses
  %i.dn = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.do = mul nuw nsw i64 %i.dn, 12
  %i.dp = ptrtoint ptr %i.dm to i64, !nosanitize !9 ; 5 uses
  %i.dq = add i64 %i.do, %i.dp, !nosanitize !9    ; 2 uses
  %.not81.us = icmp ult i64 %i.dq, %i.dp, !nosanitize !9
  br i1 %.not81.us, label %.split316.us, label %bb.ac, !prof !71, !nosanitize !9

bb.ac:                                            ; preds = %bb.ab
  %i.dr = getelementptr inbounds nuw [12 x i8], ptr %i.dm, i64 %i.dn
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !134 ; 2 uses
  %i.du = load ptr, ptr %i.cs, align 8, !tbaa !70 ; 4 uses
  %i.dv = load i32, ptr %i.dm, align 4, !tbaa !185 ; 2 uses
  %i.dw = sext i32 %i.dv to i64                   ; 2 uses
  %i.dx = getelementptr inbounds [128 x i8], ptr %i.du, i64 %i.dw ; 2 uses
  %i.dy = shl nsw i64 %i.dw, 7
  %i.dz = ptrtoint ptr %i.du to i64, !nosanitize !9 ; 6 uses
  %i.ea = add i64 %i.dy, %i.dz, !nosanitize !9    ; 3 uses
  %i.eb = icmp ne ptr %i.du, null, !nosanitize !9 ; 3 uses
  %i.ec = icmp eq i64 %i.ea, 0
  %i.ed = xor i1 %i.eb, %i.ec
  %i.ee = icmp uge i64 %i.ea, %i.dz, !nosanitize !9
  %i.ef = icmp slt i32 %i.dv, 0
  %i.eg = xor i1 %i.ef, %i.ee
  %i.eh = and i1 %i.ed, %i.eg, !nosanitize !9
  br i1 %i.eh, label %bb.ad, label %.split329.us, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  %.not82.us = icmp ugt ptr %i.dm, inttoptr (i64 -13 to ptr)
  br i1 %.not82.us, label %.split333.us, label %bb.ae, !prof !71, !nosanitize !9

bb.ae:                                            ; preds = %bb.ad
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !185 ; 2 uses
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = getelementptr inbounds [128 x i8], ptr %i.du, i64 %i.ek ; 2 uses
  %i.em = shl nsw i64 %i.ek, 7
  %i.en = add i64 %i.em, %i.dz, !nosanitize !9    ; 3 uses
  %i.eo = icmp eq i64 %i.en, 0
  %i.ep = xor i1 %i.eb, %i.eo
  %i.eq = icmp uge i64 %i.en, %i.dz, !nosanitize !9
  %i.er = icmp slt i32 %i.ej, 0
  %i.es = xor i1 %i.er, %i.eq
  %i.et = and i1 %i.ep, %i.es, !nosanitize !9
  br i1 %i.et, label %bb.af, label %.split339.us, !prof !10, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  %i.eu = ptrtoint ptr %i.dx to i64, !nosanitize !9 ; 2 uses
  %i.ev = and i64 %i.eu, 7, !nosanitize !9
  %i.ew = icmp eq i64 %i.ev, 0, !nosanitize !9
  %i.ex = and i1 %i.eb, %i.ew
  br i1 %i.ex, label %bb.ag, label %.split343.us, !prof !10, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !75 ; 3 uses
  %i.fa = icmp eq i32 %i.ez, 1
  br i1 %i.fa, label %bb.am, label %bb.ah, !llvm.loop !345

bb.ah:                                            ; preds = %bb.ag
  %i.fb = ptrtoint ptr %i.el to i64, !nosanitize !9 ; 2 uses
  %i.fc = and i64 %i.fb, 7, !nosanitize !9
  %i.fd = icmp eq i64 %i.fc, 0, !nosanitize !9
  br i1 %i.fd, label %bb.ai, label %.split349.us, !prof !10, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  %i.fe = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !75 ; 2 uses
  %i.fg = icmp eq i32 %i.ff, 1
  br i1 %i.fg, label %bb.am, label %bb.aj, !llvm.loop !345

bb.aj:                                            ; preds = %bb.ai
  %i.fh = icmp eq i32 %i.ez, 0
  %spec.select.us = select i1 %i.fh, i32 %i.ff, i32 %i.ez ; 3 uses
  %i.fi = load ptr, ptr %i.ba, align 8, !tbaa !72 ; 3 uses
  %i.fj = sext i32 %spec.select.us to i64         ; 2 uses
  %i.fk = mul nsw i64 %i.fj, 88
  %i.fl = ptrtoint ptr %i.fi to i64, !nosanitize !9 ; 3 uses
  %i.fm = add i64 %i.fk, %i.fl, !nosanitize !9    ; 3 uses
  %i.fn = icmp ne ptr %i.fi, null, !nosanitize !9
  %i.fo = icmp eq i64 %i.fm, 0
  %i.fp = xor i1 %i.fn, %i.fo
  %i.fq = icmp uge i64 %i.fm, %i.fl, !nosanitize !9
  %i.fr = icmp slt i32 %spec.select.us, 0
  %i.fs = xor i1 %i.fr, %i.fq
  %i.ft = and i1 %i.fp, %i.fs, !nosanitize !9
  br i1 %i.ft, label %bb.ak, label %.split355.us, !prof !10, !nosanitize !9

bb.ak:                                            ; preds = %bb.aj
  %i.fu = getelementptr inbounds [88 x i8], ptr %i.fi, i64 %i.fj
  call void @b3TransferJoint(ptr noundef nonnull %i.c, ptr noundef %i.fu, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.cx) #9
  %.not83.us = icmp eq i32 %spec.select.us, 0
  br i1 %.not83.us, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @b3LinkJoint(ptr noundef nonnull %i.c, ptr noundef nonnull %i.cx) #9
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ai, %bb.ag
  %.not80.us = icmp eq i32 %i.dt, -1
  br i1 %.not80.us, label %._crit_edge310, label %.lr.ph309.split.split.us

.split.us:                                        ; preds = %.lr.ph309.split.split.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @341, i64 %i.cz, i64 %i.da) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split313.us:                                     ; preds = %bb.aa
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @342, i64 %i.di) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split316.us:                                     ; preds = %bb.ab
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @343, i64 %i.dp, i64 %i.dq) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split329.us:                                     ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @344, i64 %i.dz, i64 %i.ea) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split333.us:                                     ; preds = %bb.ad
  %i.fv = add i64 %i.dp, 12, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @345, i64 %i.dp, i64 %i.fv) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split339.us:                                     ; preds = %bb.ae
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @346, i64 %i.dz, i64 %i.en) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split343.us:                                     ; preds = %bb.af
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @347, i64 %i.eu) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split349.us:                                     ; preds = %bb.ah
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @348, i64 %i.fb) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split355.us:                                     ; preds = %bb.aj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @349, i64 %i.fl, i64 %i.fm) #8, !nosanitize !9
  unreachable, !nosanitize !9

._crit_edge310:                                   ; preds = %bb.am, %bb.z
  call void @b3ValidateSolverSets(ptr noundef nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge310, %bb.o, %bb.a
  ret void
}

declare void @b3RecWrite_BodyEnable(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @b3Body_SetMotionLocks(i64 %0, i48 %1) local_unnamed_addr #0 !func_sanitize !346 {
bb.a:
  %2 = alloca %struct.b3RecArgs_BodySetMotionLocks, align 8 ; 11 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %.sroa.0.0.extract.trunc = trunc i48 %1 to i8   ; 3 uses
  %.sroa.4.0.extract.shift = lshr i48 %1, 8       ; 3 uses
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i8 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i48 %1, 16      ; 3 uses
  %.sroa.6.0.extract.trunc = trunc i48 %.sroa.6.0.extract.shift to i8 ; 3 uses
  %.sroa.8.0.extract.shift = lshr i48 %1, 24      ; 3 uses
  %.sroa.8.0.extract.trunc = trunc i48 %.sroa.8.0.extract.shift to i8 ; 3 uses
  %.sroa.10.0.extract.shift = lshr i48 %1, 32     ; 3 uses
  %.sroa.10.0.extract.trunc = trunc i48 %.sroa.10.0.extract.shift to i8 ; 3 uses
  %.sroa.12.0.extract.shift = lshr i48 %1, 40     ; 3 uses
  %.sroa.12.0.extract.trunc = trunc nuw i48 %.sroa.12.0.extract.shift to i8 ; 3 uses
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #9 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !nosanitize !9 ; 2 uses
  %i.f = and i64 %i.e, 7, !nosanitize !9
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !9
  br i1 %i.g, label %bb.d, label %bb.c, !prof !10, !nosanitize !9

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @350, i64 %i.e) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store i64 %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %.sroa.0.0.extract.trunc, ptr %3, align 8, !tbaa !119
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %.sroa.4.0.extract.trunc, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !119
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sroa.6.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !119
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 11
  store i8 %.sroa.8.0.extract.trunc, ptr %.sroa.8.0..sroa_idx, align 1, !tbaa !119
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 %.sroa.10.0.extract.trunc, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !119
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 %.sroa.12.0.extract.trunc, ptr %.sroa.12.0..sroa_idx, align 1, !tbaa !119
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 0, ptr %i.j, align 2
  call void @b3RecWrite_BodySetMotionLocks(ptr noundef nonnull %i.i, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.k = icmp ult i8 %.sroa.0.0.extract.trunc, 2
  br i1 %i.k, label %bb.h, label %bb.g, !prof !10, !nosanitize !9

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.extract.trunc.mask = and i48 %1, 255
  %i.l = zext nneg i48 %.sroa.0.0.extract.trunc.mask to i64
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @351, i64 %i.l) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %bb.f
  %i.m = icmp ult i8 %.sroa.4.0.extract.trunc, 2
  br i1 %i.m, label %bb.j, label %bb.i, !prof !10, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  %.sroa.4.0.extract.trunc.mask = and i48 %.sroa.4.0.extract.shift, 255
  %i.n = zext nneg i48 %.sroa.4.0.extract.trunc.mask to i64
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @352, i64 %i.n) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.j:                                             ; preds = %bb.h
  %i.o = icmp ult i8 %.sroa.6.0.extract.trunc, 2
  br i1 %i.o, label %bb.l, label %bb.k, !prof !10, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  %.sroa.6.0.extract.trunc.mask = and i48 %.sroa.6.0.extract.shift, 255
  %i.p = zext nneg i48 %.sroa.6.0.extract.trunc.mask to i64
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @353, i64 %i.p) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  %i.q = icmp ult i8 %.sroa.8.0.extract.trunc, 2
  br i1 %i.q, label %bb.n, label %bb.m, !prof !10, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  %.sroa.8.0.extract.trunc.mask = and i48 %.sroa.8.0.extract.shift, 255
  %i.r = zext nneg i48 %.sroa.8.0.extract.trunc.mask to i64
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @354, i64 %i.r) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.l
  %i.s = icmp ult i8 %.sroa.10.0.extract.trunc, 2
  br i1 %i.s, label %bb.p, label %bb.o, !prof !10, !nosanitize !9

bb.o:                                             ; preds = %bb.n
  %.sroa.10.0.extract.trunc.mask = and i48 %.sroa.10.0.extract.shift, 255
  %i.t = zext nneg i48 %.sroa.10.0.extract.trunc.mask to i64
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @355, i64 %i.t) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %bb.n
  %i.u = icmp ult i8 %.sroa.12.0.extract.trunc, 2
  br i1 %i.u, label %bb.r, label %bb.q, !prof !10, !nosanitize !9

bb.q:                                             ; preds = %bb.p
  %i.v = zext nneg i48 %.sroa.12.0.extract.shift to i64
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @356, i64 %i.v) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %bb.p
  %i.w = shl nuw nsw i8 %.sroa.4.0.extract.trunc, 1
  %i.x = shl nuw nsw i8 %.sroa.6.0.extract.trunc, 2
  %i.y = or disjoint i8 %i.w, %i.x
  %i.z = shl nuw nsw i8 %.sroa.8.0.extract.trunc, 3
  %i.aa = or disjoint i8 %i.y, %i.z
  %i.ab = shl nuw nsw i8 %.sroa.10.0.extract.trunc, 4
  %i.ac = or disjoint i8 %i.aa, %i.ab
  %i.ad = shl nuw nsw i8 %.sroa.12.0.extract.trunc, 5
  %i.ae = or disjoint i8 %i.ac, %i.ad
  %i.af = or disjoint i8 %i.ae, %.sroa.0.0.extract.trunc
  %i.ag = zext nneg i8 %i.af to i32               ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %.sroa.0.0.extract.trunc.i = trunc i64 %0 to i32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !70 ; 3 uses
  %i.aj = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i, i32 -1) ; 2 uses
  %i.ak = extractvalue { i32, i1 } %i.aj, 1, !nosanitize !9
  br i1 %i.ak, label %bb.s, label %bb.t, !prof !71, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  %i.al = and i64 %0, 4294967295
  call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @3, i64 %i.al, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %bb.r
  %i.am = extractvalue { i32, i1 } %i.aj, 0, !nosanitize !9 ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = shl nsw i64 %i.an, 7
  %i.ap = ptrtoint ptr %i.ai to i64, !nosanitize !9 ; 3 uses
  %i.aq = add i64 %i.ao, %i.ap, !nosanitize !9    ; 3 uses
  %i.ar = icmp ne ptr %i.ai, null                 ; 2 uses
  %i.as = icmp eq i64 %i.aq, 0
  %i.at = xor i1 %i.ar, %i.as
  %i.au = icmp uge i64 %i.aq, %i.ap, !nosanitize !9
  %i.av = icmp slt i32 %i.am, 0
  %i.aw = xor i1 %i.av, %i.au
  %i.ax = and i1 %i.at, %i.aw, !nosanitize !9
  br i1 %i.ax, label %b3GetBodyFullId.exit, label %bb.u, !prof !10, !nosanitize !9

bb.u:                                             ; preds = %bb.t
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @4, i64 %i.ap, i64 %i.aq) #8, !nosanitize !9
  unreachable, !nosanitize !9

b3GetBodyFullId.exit:                             ; preds = %bb.t
  %i.ay = getelementptr inbounds [128 x i8], ptr %i.ai, i64 %i.an ; 6 uses
  %i.az = ptrtoint ptr %i.ay to i64, !nosanitize !9 ; 2 uses
  %i.ba = and i64 %i.az, 7, !nosanitize !9
  %i.bb = icmp eq i64 %i.ba, 0, !nosanitize !9
  %i.bc = and i1 %i.bb, %i.ar
  br i1 %i.bc, label %bb.w, label %bb.v, !prof !10, !nosanitize !9

bb.v:                                             ; preds = %b3GetBodyFullId.exit
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @357, i64 %i.az) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %b3GetBodyFullId.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 112 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !93 ; 3 uses
  %i.bf = and i32 %i.be, 63
  %i.bg = icmp eq i32 %i.bf, %i.ag
  br i1 %i.bg, label %bb.bd, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = and i32 %i.be, 56
  %i.bi = icmp eq i32 %i.bh, 56
  %i.bj = and i32 %i.ag, 56
  %i.bk = and i32 %i.be, -64
  %i.bl = or i32 %i.bk, %i.ag                     ; 2 uses
  store i32 %i.bl, ptr %i.bd, align 8, !tbaa !93
  %i.bm = and i32 %i.bl, -833                     ; 2 uses
  %i.bn = call ptr @b3GetBodySim(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ay) ; 3 uses
  %i.bo = icmp ne ptr %i.bn, null, !nosanitize !9
  %i.bp = ptrtoint ptr %i.bn to i64, !nosanitize !9 ; 2 uses
  %i.bq = and i64 %i.bp, 3, !nosanitize !9
  %i.br = icmp eq i64 %i.bq, 0, !nosanitize !9
  %i.bs = and i1 %i.bo, %i.br, !nosanitize !9
  br i1 %i.bs, label %bb.z, label %bb.y, !prof !10, !nosanitize !9

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @33, i64 %i.bp) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.z:                                             ; preds = %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 212
  store i32 %i.bm, ptr %i.bt, align 4, !tbaa !97
  %i.bu = call ptr @b3GetBodyState(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ay) ; 3 uses
  %.not.i = icmp eq ptr %i.bu, null
  br i1 %.not.i, label %b3SyncBodyFlags.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = ptrtoint ptr %i.bu to i64, !nosanitize !9 ; 2 uses
  %i.bw = and i64 %i.bv, 3, !nosanitize !9
  %i.bx = icmp eq i64 %i.bw, 0, !nosanitize !9
  br i1 %i.bx, label %bb.ac, label %bb.ab, !prof !10, !nosanitize !9

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @35, i64 %i.bv) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ac:                                            ; preds = %bb.aa
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 52
  store i32 %i.bm, ptr %i.by, align 4, !tbaa !99
  br label %b3SyncBodyFlags.exit

b3SyncBodyFlags.exit:                             ; preds = %bb.z, %bb.ac
  %i.bz = call ptr @b3GetBodyState(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ay) ; 13 uses
  %.not58 = icmp eq ptr %i.bz, null
  br i1 %.not58, label %bb.bb, label %bb.ad

bb.ad:                                            ; preds = %b3SyncBodyFlags.exit
  %i.ca = trunc i48 %1 to i1
  br i1 %i.ca, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.cb = ptrtoint ptr %i.bz to i64, !nosanitize !9 ; 2 uses
  %i.cc = and i64 %i.cb, 3, !nosanitize !9
  %i.cd = icmp eq i64 %i.cc, 0, !nosanitize !9
  br i1 %i.cd, label %bb.ag, label %bb.af, !prof !10, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @358, i64 %i.cb) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ag:                                            ; preds = %bb.ae
  store float 0.000000e+00, ptr %i.bz, align 4, !tbaa !347
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %i.ce = trunc i48 %.sroa.4.0.extract.shift to i1
  br i1 %i.ce, label %bb.ai, label %bb.al

end_hunk_0
