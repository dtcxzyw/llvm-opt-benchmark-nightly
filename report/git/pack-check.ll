inline.NumInlined: 16
inline.NumDeleted: 5
begin_hunk_0_@verify_pack_index:bb.a
  %i.l = tail call i32 (ptr, ...) @error(ptr noundef nonnull %.str.1.sink, ptr noundef nonnull %i.k) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.07 = phi i32 [ 0, %bb.b ], [ -1, %.sink.split ]
  ret i32 %.07
}

declare i32 @open_pack_index(ptr noundef) local_unnamed_addr #2

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

declare i32 @hashfile_checksum_valid(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @verify_pack(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %struct.git_hash_ctx, align 8       ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %7 = alloca %struct.object_id, align 4          ; 11 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  store ptr null, ptr %i.i, align 8, !tbaa !49
  %i.j = tail call i32 @open_pack_index(ptr noundef %1) #9
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.b, label %.sink.split.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 448
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !12
  %i.s = tail call i32 @hashfile_checksum_valid(ptr noundef %i.n, ptr noundef %i.p, i64 noundef %i.r) #9
  %.not8.i = icmp eq i32 %i.s, 0
  br i1 %.not8.i, label %.sink.split.i, label %verify_pack_index.exit

.sink.split.i:                                    ; preds = %bb.b, %bb.a
  %.str.1.sink.i = phi ptr [ @.str, %bb.a ], [ @.str.1, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.u = tail call i32 (ptr, ...) @error(ptr noundef nonnull %.str.1.sink.i, ptr noundef nonnull %i.t) #9 ; 0 uses
  br label %verify_pack_index.exit

verify_pack_index.exit:                           ; preds = %bb.b, %.sink.split.i
  %.07.i = phi i32 [ 0, %bb.b ], [ -1, %.sink.split.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.an, label %bb.c

bb.c:                                             ; preds = %verify_pack_index.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.z = tail call i32 @is_pack_valid(ptr noundef nonnull %1) #9
  %.not.i11 = icmp eq i32 %i.z, 0
  br i1 %.not.i11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ab = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.aa) #9 ; 0 uses
  br label %verify_packfile.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !51
  call void %i.af(ptr noundef nonnull %6) #9, !inline_history !52
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %bb.e
  %.0123.i = phi i64 [ 0, %bb.e ], [ %i.aj, %bb.j ] ; 2 uses
  %.0121.i = phi i64 [ 0, %bb.e ], [ %.1122.i, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.ah = call ptr @use_pack(ptr noundef nonnull %1, ptr noundef nonnull %i.i, i64 noundef %.0123.i, ptr noundef nonnull %i.c) #9
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !12  ; 3 uses
  %i.aj = add i64 %i.ai, %.0123.i                 ; 4 uses
  %.not130.i = icmp eq i64 %.0121.i, 0
  br i1 %.not130.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !12
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !46
  %i.ao = sub i64 %i.ak, %i.an
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1122.i = phi i64 [ %.0121.i, %bb.f ], [ %i.ao, %bb.g ] ; 6 uses
  %i.ap = icmp sgt i64 %i.aj, %.1122.i
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = sub nsw i64 %i.aj, %.1122.i
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = sub i64 %i.ai, %i.ar                    ; 2 uses
  store i64 %i.as, ptr %i.c, align 8, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = phi i64 [ %i.as, %bb.i ], [ %i.ai, %bb.h ]
  call void @git_hash_update(ptr noundef nonnull %6, ptr noundef %i.ah, i64 noundef %i.at) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.au = icmp slt i64 %i.aj, %.1122.i
  br i1 %i.au, label %bb.f, label %bb.k, !llvm.loop !53

bb.k:                                             ; preds = %bb.j
  call void @git_hash_final(ptr noundef nonnull %i.b, ptr noundef nonnull %6) #9
  %i.av = call ptr @use_pack(ptr noundef nonnull %1, ptr noundef nonnull %i.i, i64 noundef %.1122.i, ptr noundef null) #9 ; 2 uses
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %.val138.i = load i64, ptr %i.ax, align 8, !tbaa !46 ; 2 uses
  %i.ay = icmp eq i64 %.val138.i, 32
  %..i.i = select i1 %i.ay, i64 32, i64 20
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(20) %i.b, ptr noundef nonnull readonly dereferenceable(20) %i.av, i64 %..i.i)
  %.0.in.i.not.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.0.in.i.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ba = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.az) #9 ; 0 uses
  %.pre.i = load ptr, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i, i64 16
  %.val.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !46
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.val.i = phi i64 [ %.val138.i, %bb.k ], [ %.val.pre.i, %bb.l ]
  %i.bb = phi ptr [ %i.aw, %bb.k ], [ %.pre.i, %bb.l ]
  %.0116.i = phi i32 [ 0, %bb.k ], [ -1, %bb.l ]
  %i.bc = getelementptr inbounds i8, ptr %i.w, i64 %i.y
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !54
  %i.bf = sub i64 0, %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 %i.bf
  %i.bh = icmp eq i64 %.val.i, 32
  %..i139.i = select i1 %i.bh, i64 32, i64 20
  %bcmp.i140.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(20) %i.bg, ptr noundef nonnull readonly dereferenceable(20) %i.av, i64 %..i139.i)
  %.0.in.i141.not.i = icmp eq i32 %bcmp.i140.i, 0
  br i1 %.0.in.i141.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bj = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.bi) #9 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1117.i = phi i32 [ %.0116.i, %bb.m ], [ -1, %bb.n ] ; 2 uses
  call void @unuse_pack(ptr noundef nonnull %i.i) #9
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !18 ; 5 uses
  %i.bm = add i32 %i.bl, 1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 4
  %i.bp = call ptr @xmalloc(i64 noundef %i.bo) #9 ; 5 uses
  %i.bq = zext i32 %i.bl to i64                   ; 4 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bq
  store i64 %.1122.i, ptr %i.br, align 8, !tbaa !55
  %.not162.i = icmp eq i32 %i.bl, 0
  br i1 %.not162.i, label %._crit_edge160.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.o ] ; 3 uses
  %i.bs = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.bt = call i64 @nth_packed_object_offset(ptr noundef nonnull %1, i32 noundef %i.bs) #9
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %indvars.iv.i ; 2 uses
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !55
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 %i.bs, ptr %i.bv, align 8, !tbaa !57
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bq
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !58

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not182.i = icmp eq i32 %i.bl, 1
  br i1 %.not182.i, label %.lr.ph159.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  call void @qsort(ptr noundef nonnull %i.bp, i64 noundef range(i64 0, 4294967296) %i.bq, i64 noundef 16, ptr noundef nonnull @compare_entries) #9
  br label %.lr.ph159.i

.lr.ph159.i:                                      ; preds = %bb.p, %._crit_edge.i
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 5 uses
  %.not135.i = icmp eq ptr %2, null
  br label %bb.q

bb.q:                                             ; preds = %bb.am, %.lr.ph159.i
  %indvars.iv168.i = phi i64 [ 0, %.lr.ph159.i ], [ %indvars.iv.next169.i, %bb.am ] ; 3 uses
  %.2118158.i = phi i32 [ %.1117.i, %.lr.ph159.i ], [ %.5.i, %bb.am ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %i.d, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %indvars.iv168.i ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !57
  %i.cc = call i32 @nth_packed_object_id(ptr noundef nonnull %7, ptr noundef nonnull %1, i32 noundef %i.cb) #9
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ce = load i32, ptr %i.ca, align 8, !tbaa !57
  %i.cf = zext i32 %i.ce to i64
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.5, i32 noundef 119, ptr noundef nonnull @.str.6, i64 noundef %i.cf, ptr noundef nonnull %i.by) #10
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cg = load i32, ptr %i.bw, align 8, !tbaa !18
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.ci = load i64, ptr %i.bz, align 8, !tbaa !55 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !55
  %i.cl = sub nsw i64 %i.ck, %i.ci
  %i.cm = load i32, ptr %i.ca, align 8, !tbaa !57
  %i.cn = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.017.i.i = phi i64 [ %i.cl, %bb.t ], [ %i.cx, %bb.w ] ; 4 uses
  %.016.i.i = phi i64 [ %i.ci, %bb.t ], [ %i.cw, %bb.w ] ; 2 uses
  %.0.i143.i = phi i64 [ %i.cn, %bb.t ], [ %i.cu, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.co = call ptr @use_pack(ptr noundef nonnull %1, ptr noundef nonnull %i.i, i64 noundef %.016.i.i, ptr noundef nonnull %i.a) #9
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %i.cq = icmp ugt i64 %i.cp, %.017.i.i
  br i1 %i.cq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i64 %.017.i.i, ptr %i.a, align 8, !tbaa !12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cr = phi i64 [ %.017.i.i, %bb.v ], [ %i.cp, %bb.u ]
  %i.cs = and i64 %.0.i143.i, 4294967295
  %i.ct = trunc i64 %i.cr to i32
  %i.cu = call i64 @crc32(i64 noundef %i.cs, ptr noundef %i.co, i32 noundef %i.ct) #9 ; 2 uses
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %i.cw = add i64 %i.cv, %.016.i.i
  %i.cx = sub i64 %.017.i.i, %i.cv                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i, label %check_pack_crc.exit.i, label %bb.u, !llvm.loop !14

check_pack_crc.exit.i:                            ; preds = %bb.w
  %i.cy = trunc i64 %i.cu to i32
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.da = load i32, ptr %i.bk, align 8, !tbaa !18
  %i.db = zext i32 %i.da to i64
  %i.dc = load ptr, ptr %i.bx, align 8, !tbaa !19
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 448
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !46
  %i.dh = lshr i64 %i.dg, 2
  %i.di = mul i64 %i.dh, %i.db
  %i.dj = zext i32 %i.cm to i64
  %i.dk = getelementptr [4 x i8], ptr %i.cz, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.dk, i64 1032
  %i.dm = getelementptr [4 x i8], ptr %i.dl, i64 %i.dj
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !18
  %i.do = call i32 @llvm.bswap.i32(i32 %i.dn)
  %.not151.i = icmp eq i32 %i.do, %i.cy
  br i1 %.not151.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %check_pack_crc.exit.i
  %i.dp = call ptr @oid_to_hex(ptr noundef nonnull %7) #9
  %i.dq = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef %i.dp, ptr noundef nonnull %i.by, i64 noundef %i.ci) #9 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %check_pack_crc.exit.i, %bb.s
  %.4.i = phi i32 [ %.2118158.i, %bb.s ], [ -1, %bb.x ], [ %.2118158.i, %check_pack_crc.exit.i ] ; 2 uses
  %i.dr = load i64, ptr %i.bz, align 8, !tbaa !55
  store i64 %i.dr, ptr %i.g, align 8, !tbaa !12
  %i.ds = call i32 @unpack_object_header(ptr noundef nonnull %1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f) #9
  store i32 %i.ds, ptr %i.e, align 4, !tbaa !18
  call void @unuse_pack(ptr noundef nonnull %i.i) #9
  %i.dt = load i32, ptr %i.e, align 4, !tbaa !18
  %i.du = icmp eq i32 %i.dt, 3
  br i1 %i.du, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dv = call i64 @repo_settings_get_big_file_threshold(ptr noundef %0) #9
  %i.dw = load i64, ptr %i.f, align 8, !tbaa !12
  %.not134.i = icmp ugt i64 %i.dv, %i.dw
  br i1 %.not134.i, label %bb.aa, label %.critedge.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dx = load i64, ptr %i.bz, align 8, !tbaa !55
  %i.dy = call ptr @unpack_entry(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.dx, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #9 ; 4 uses
  %.not152.i = icmp eq ptr %i.dy, null
  br i1 %.not152.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dz = call ptr @oid_to_hex(ptr noundef nonnull %7) #9
  %i.ea = load i64, ptr %i.bz, align 8, !tbaa !55
  %i.eb = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.8, ptr noundef %i.dz, ptr noundef nonnull %i.by, i64 noundef %i.ea) #9 ; 0 uses
  br label %bb.ai

bb.ac:                                            ; preds = %bb.aa
  %i.ec = load i64, ptr %i.f, align 8, !tbaa !12
  %i.ed = load i32, ptr %i.e, align 4, !tbaa !18
  %i.ee = call i32 @check_object_signature(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %i.dy, i64 noundef %i.ec, i32 noundef %i.ed) #9
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.eg = call ptr @oid_to_hex(ptr noundef nonnull %7) #9
  %i.eh = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.9, ptr noundef %i.eg, ptr noundef nonnull %i.by) #9 ; 0 uses
  br label %bb.ai

.critedge.i:                                      ; preds = %bb.z
  %i.ei = load i64, ptr %i.bz, align 8, !tbaa !55
  %i.ej = call i32 @packfile_read_object_stream(ptr noundef nonnull %i.d, ptr noundef nonnull %7, ptr noundef nonnull %1, i64 noundef %i.ei) #9
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.critedge.i
  %i.el = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.em = call i32 @stream_object_signature(ptr noundef %0, ptr noundef %i.el, ptr noundef nonnull %7) #9
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %.critedge.i
  %i.eo = call ptr @oid_to_hex(ptr noundef nonnull %7) #9
  %i.ep = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.9, ptr noundef %i.eo, ptr noundef nonnull %i.by) #9 ; 0 uses
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae, %bb.ac
  %.0115146149.i = phi ptr [ null, %bb.ae ], [ %i.dy, %bb.ac ] ; 3 uses
  br i1 %.not135.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  store i32 0, ptr %i.h, align 4, !tbaa !18
  %i.eq = load i32, ptr %i.e, align 4, !tbaa !18
  %i.er = load i64, ptr %i.f, align 8, !tbaa !12
  %i.es = call i32 %2(ptr noundef nonnull %7, i32 noundef %i.eq, i64 noundef %i.er, ptr noundef %.0115146149.i, ptr noundef nonnull %i.h, ptr noundef %3) #9, !inline_history !52
  %i.et = or i32 %i.es, %.4.i
  %i.eu = load i32, ptr %i.h, align 4, !tbaa !18
  %.not136.i = icmp eq i32 %i.eu, 0
  %spec.select.i = select i1 %.not136.i, ptr %.0115146149.i, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ab
  %.5.i = phi i32 [ -1, %bb.ad ], [ %i.et, %bb.ah ], [ %.4.i, %bb.ag ], [ -1, %bb.af ], [ -1, %bb.ab ] ; 2 uses
  %.2.i = phi ptr [ %i.dy, %bb.ad ], [ %spec.select.i, %bb.ah ], [ %.0115146149.i, %bb.ag ], [ null, %bb.af ], [ null, %bb.ab ]
  %8 = trunc nuw i64 %indvars.iv168.i to i32
  %9 = add i32 %5, %8                             ; 2 uses
  %10 = and i32 %9, 1023
  %i.ev = icmp eq i32 %10, 0
  br i1 %i.ev, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %11 = zext i32 %9 to i64
  call void @display_progress(ptr noundef %4, i64 noundef %11) #9
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ew = load ptr, ptr %i.d, align 8, !tbaa !59  ; 2 uses
  %.not137.i = icmp eq ptr %i.ew, null
  br i1 %.not137.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ex = call i32 @odb_read_stream_close(ptr noundef nonnull %i.ew) #9 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @free(ptr noundef %.2.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %indvars.iv.next169.i = add nuw nsw i64 %indvars.iv168.i, 1 ; 2 uses
  %exitcond172.not.i = icmp eq i64 %indvars.iv.next169.i, %i.bq
  br i1 %exitcond172.not.i, label %._crit_edge160.i, label %bb.q, !llvm.loop !61

._crit_edge160.i:                                 ; preds = %bb.am, %bb.o
  %.2118.lcssa.i = phi i32 [ %.1117.i, %bb.o ], [ %.5.i, %bb.am ]
  %i.ey = add i32 %i.bl, %5
  %i.ez = zext i32 %i.ey to i64
  call void @display_progress(ptr noundef %4, i64 noundef %i.ez) #9
  call void @free(ptr noundef nonnull %i.bp) #9
  %i.fa = or i32 %.2118.lcssa.i, %.07.i
  br label %verify_packfile.exit

verify_packfile.exit:                             ; preds = %bb.d, %._crit_edge160.i
  %.0124.i = phi i32 [ %i.fa, %._crit_edge160.i ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @unuse_pack(ptr noundef nonnull %i.i) #9
  br label %bb.an

bb.an:                                            ; preds = %verify_pack_index.exit, %verify_packfile.exit
  %.0 = phi i32 [ %.0124.i, %verify_packfile.exit ], [ -1, %verify_pack_index.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  ret i32 %.0
}

declare void @unuse_pack(ptr noundef) local_unnamed_addr #2

declare i32 @is_pack_valid(ptr noundef) local_unnamed_addr #2

declare void @git_hash_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @git_hash_final(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

declare i64 @nth_packed_object_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @compare_entries(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !55
  %i.b = load i64, ptr %1, align 8, !tbaa !55
  %.0 = tail call i32 @llvm.scmp.i32.i64(i64 %i.a, i64 %i.b)
  ret i32 %.0
}

declare i32 @nth_packed_object_id(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #2

declare i32 @unpack_object_header(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @repo_settings_get_big_file_threshold(ptr noundef) local_unnamed_addr #2

declare ptr @unpack_entry(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @check_object_signature(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @packfile_read_object_stream(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @stream_object_signature(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @display_progress(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @odb_read_stream_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !10, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !10, i64 0}
!18 = !{!9, !9, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTS10repository", !17, i64 0}
!21 = !{!22, !40, i64 448}
!22 = !{!"repository", !23, i64 0, !23, i64 8, !24, i64 16, !25, i64 24, !26, i64 32, !27, i64 40, !28, i64 48, !28, i64 112, !33, i64 176, !23, i64 232, !23, i64 240, !23, i64 248, !27, i64 256, !27, i64 257, !23, i64 264, !34, i64 272, !36, i64 416, !37, i64 424, !38, i64 432, !39, i64 440, !40, i64 448, !40, i64 456, !41, i64 464, !9, i64 512, !23, i64 520, !9, i64 528, !9, i64 532, !42, i64 536, !9, i64 544, !28, i64 552, !43, i64 616, !23, i64 656, !45, i64 664, !9, i64 672, !9, i64 676, !9, i64 680, !9, i64 684, !9, i64 688, !27, i64 689, !27, i64 690}
!23 = !{!"p1 omnipotent char", !17, i64 0}
!24 = !{!"p1 _ZTS15object_database", !17, i64 0}
!25 = !{!"p1 _ZTS18parsed_object_pool", !17, i64 0}
!26 = !{!"p1 _ZTS9ref_store", !17, i64 0}
!27 = !{!"_Bool", !10, i64 0}
!28 = !{!"strmap", !29, i64 0, !32, i64 48, !9, i64 56}
!29 = !{!"hashmap", !30, i64 0, !17, i64 8, !17, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!30 = !{!"p2 _ZTS13hashmap_entry", !31, i64 0}
!31 = !{!"any p2 pointer", !17, i64 0}
!32 = !{!"p1 _ZTS8mem_pool", !17, i64 0}
!33 = !{!"repo_path_cache", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48}
!34 = !{!"repo_settings", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !35, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !9, i64 128, !23, i64 136}
!35 = !{!"p1 _ZTS18fsmonitor_settings", !17, i64 0}
!36 = !{!"p1 _ZTS10config_set", !17, i64 0}
!37 = !{!"p1 _ZTS15submodule_cache", !17, i64 0}
!38 = !{!"p1 _ZTS11index_state", !17, i64 0}
!39 = !{!"p1 _ZTS12remote_state", !17, i64 0}
!40 = !{!"p1 _ZTS13git_hash_algo", !17, i64 0}
!41 = !{!"repo_config_values", !23, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!42 = !{!"p1 _ZTS6strmap", !17, i64 0}
!43 = !{!"string_list", !44, i64 0, !13, i64 8, !13, i64 16, !9, i64 24, !17, i64 32}
!44 = !{!"p1 _ZTS16string_list_item", !17, i64 0}
!45 = !{!"p1 _ZTS22promisor_remote_config", !17, i64 0}
!46 = !{!47, !13, i64 16}
!47 = !{!"git_hash_algo", !23, i64 0, !9, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !40, i64 104}
!48 = !{!"p1 _ZTS9object_id", !17, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 _ZTS11pack_window", !17, i64 0}
!51 = !{!47, !17, i64 40}
!52 = distinct !{null}
!53 = distinct !{!53, !15}
!54 = !{!47, !13, i64 24}
!55 = !{!56, !13, i64 0}
!56 = !{!"idx_entry", !13, i64 0, !9, i64 8}
!57 = !{!56, !9, i64 8}
!58 = distinct !{!58, !15}
!59 = !{!60, !60, i64 0}
!60 = !{!"p1 _ZTS15odb_read_stream", !17, i64 0}
!61 = distinct !{!61, !15}
end_hunk_0
