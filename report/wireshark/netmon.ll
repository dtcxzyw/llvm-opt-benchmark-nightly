inline.NumInlined: 44
inline.NumDeleted: 8
begin_hunk_0_@wtap_pcap_encap_to_wtap_encap
declare i32 @wtap_pcap_encap_to_wtap_encap(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @filetime_to_nstime(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @atm_guess_traffic_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal range(i32 -8, 1) i32 @netmon_dump_can_write_encap_1_x(i32 noundef %0) #6 {
bb.a:
  %i.a = icmp ugt i32 %0, 13
  %i.b = zext nneg i32 %0 to i64
  %i.c = shl nuw nsw i64 1, %i.b
  %i.d = and i64 %i.c, 8089
  %.not = icmp ne i64 %i.d, 0
  %i.e = select i1 %i.a, i1 true, i1 %.not
  %.0 = select i1 %i.e, i32 -8, i32 0
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @netmon_dump_open_1_x(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call i64 @wtap_dump_file_seek(ptr noundef %0, i64 noundef 128, i32 noundef 0, ptr noundef %1)
  %i.b = icmp ne i64 %i.a, -1                     ; 2 uses
  br i1 %i.b, label %bb.b, label %netmon_dump_open.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  store i64 128, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 64
  store ptr @netmon_dump, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 72
  store ptr @netmon_dump_finish, ptr %i.e, align 8
  %i.f = tail call noalias dereferenceable_or_null(56) ptr @g_malloc(i64 noundef 56) #11 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 40
  store ptr %i.f, ptr %i.g, align 8
  store i8 0, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.f, i64 24
  store i32 128, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.f, i64 1
  store i8 0, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %i.f, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(17) %i.j, i8 0, i64 17, i1 false)
  br label %netmon_dump_open.exit

netmon_dump_open.exit:                            ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

; Function Attrs: null_pointer_is_valid
declare i64 @wtap_dump_file_seek(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @netmon_dump(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.netmonrec_1_x_hdr, align 4  ; 6 uses
  %5 = alloca %struct.netmonrec_2_x_hdr, align 8  ; 6 uses
  %6 = alloca %struct.netmonrec_2_1_trlr, align 2 ; 4 uses
  %7 = alloca %struct.netmon_atm_hdr, align 2     ; 6 uses
  %i.a = getelementptr i8, ptr %1, i64 48         ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.d = load i32, ptr %1, align 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -24, ptr %2, align 4
  %i.e = tail call ptr @wtap_unwritable_rec_type_err_string(ptr noundef %1)
  store ptr %i.e, ptr %3, align 8
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.c, align 8, !range !11, !noundef !12
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.a, align 8
  %i.i = icmp ugt i32 %i.h, 262144
  br i1 %i.i, label %bb.e, label %._crit_edge109

._crit_edge109:                                   ; preds = %bb.d
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  store i32 -22, ptr %2, align 4
  br label %bb.ak

bb.f:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 56
  %i.m = load i32, ptr %i.l, align 8
  %.not100 = icmp eq i32 %i.k, %i.m
  br i1 %.not100, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 -9, ptr %2, align 4
  br label %bb.ak

bb.h:                                             ; preds = %bb.f
  %i.n = load i32, ptr %i.a, align 8
  %i.o = icmp ugt i32 %i.n, 65535
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 -22, ptr %2, align 4
  br label %bb.ak

bb.j:                                             ; preds = %._crit_edge109, %bb.h
  %i.p = phi i32 [ %.pre, %._crit_edge109 ], [ %i.k, %bb.h ] ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.r = icmp eq i32 %i.p, -1
  br i1 %i.r, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr i8, ptr %1, i64 56
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp ugt i32 %i.t, 13
  br i1 %i.u, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = zext nneg i32 %i.t to i64                ; 2 uses
  %i.w = shl nuw nsw i64 1, %i.v
  %i.x = and i64 %i.w, 8089
  %.not101 = icmp eq i64 %i.x, 0
  br i1 %.not101, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 -8, ptr %2, align 4
  br label %bb.ak

bb.n:                                             ; preds = %bb.l
  %i.y = getelementptr [4 x i8], ptr @wtap_encap, i64 %i.v
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = trunc i32 %i.z to i16
  store i16 %i.aa, ptr %6, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.ab = getelementptr i8, ptr %i.c, i64 48      ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !range !11, !noundef !12
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 27, ptr %2, align 4
  br label %bb.ak

bb.q:                                             ; preds = %bb.o
  %i.ae = getelementptr i8, ptr %i.c, i64 1       ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !range !11, !noundef !12
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %._crit_edge111, label %bb.r

._crit_edge111:                                   ; preds = %bb.q
  %.phi.trans.insert112 = getelementptr i8, ptr %i.c, i64 8
  %.pre113 = load i64, ptr %.phi.trans.insert112, align 8
  %.phi.trans.insert114 = getelementptr i8, ptr %i.c, i64 16
  %.pre115 = load i32, ptr %.phi.trans.insert114, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ah = getelementptr i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr i8, ptr %i.c, i64 8
  store i64 %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %1, i64 24
  %i.al = load i32, ptr %i.ak, align 8
  %.fr = freeze i32 %i.al                         ; 2 uses
  %i.am = srem i32 %.fr, 1000000
  %i.an = sub nsw i32 %.fr, %i.am                 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.c, i64 16
  store i32 %i.an, ptr %i.ao, align 8
  store i8 1, ptr %i.ae, align 1
  %.pre110 = load i32, ptr %i.q, align 8
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge111, %bb.r
  %i.ap = phi i32 [ %i.an, %bb.r ], [ %.pre115, %._crit_edge111 ] ; 3 uses
  %i.aq = phi i64 [ %i.ai, %bb.r ], [ %.pre113, %._crit_edge111 ] ; 2 uses
  %i.ar = phi i32 [ %.pre110, %bb.r ], [ %i.p, %._crit_edge111 ]
  %i.as = icmp eq i32 %i.ar, 13
  %. = select i1 %i.as, i32 16, i32 0             ; 4 uses
  %i.at = getelementptr i8, ptr %1, i64 16
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = sub i64 %i.au, %i.aq
  %i.aw = getelementptr i8, ptr %1, i64 24
  %i.ax = load i32, ptr %i.aw, align 8            ; 4 uses
  %i.ay = sub i32 %i.ax, %i.ap                    ; 3 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.ba = tail call i32 @llvm.umax.i32(i32 %i.ay, i32 -1000000000)
  %i.bb = add i32 %i.ap, %i.ba                    ; 2 uses
  %i.bc = icmp ne i32 %i.bb, %i.ax
  %umin = zext i1 %i.bc to i32                    ; 2 uses
  %i.bd = add i32 %i.ax, %umin
  %i.be = sub i32 %i.bb, %i.bd
  %i.bf = udiv i32 %i.be, 1000000000
  %i.bg = add nuw nsw i32 %i.bf, %umin            ; 2 uses
  %i.bh = mul i32 %i.bg, 1000000000
  %i.bi = add i32 %i.ax, %i.bh
  %i.bj = add i32 %i.bi, 1000000000
  %i.bk = sub i32 %i.bj, %i.ap
  %i.bl = xor i64 %i.aq, -1
  %i.bm = add i64 %i.au, %i.bl
  %i.bn = zext nneg i32 %i.bg to i64
  %i.bo = sub i64 %i.bm, %i.bn
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.s
  %.091.lcssa = phi i64 [ %i.av, %bb.s ], [ %i.bo, %.lr.ph.preheader ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.ay, %bb.s ], [ %i.bk, %.lr.ph.preheader ] ; 2 uses
  %i.bp = getelementptr i8, ptr %1, i64 52        ; 2 uses
  br i1 %i.g, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.bq = mul i64 %.091.lcssa, 1000000
  %i.br = add nuw i32 %.0.lcssa, 500
  %i.bs = sdiv i32 %i.br, 1000
  %i.bt = sext i32 %i.bs to i64
  %i.bu = add i64 %i.bq, %i.bt
  store i64 %i.bu, ptr %5, align 8
  %i.bv = load i32, ptr %i.bp, align 4
  %i.bw = add i32 %i.bv, %.
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.bw, ptr %i.bx, align 8
  %i.by = load i32, ptr %i.a, align 8
  %i.bz = add i32 %i.by, %.
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.bz, ptr %i.ca, align 4
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge
  %i.cb = add nuw i32 %.0.lcssa, 500000
  %i.cc = sdiv i32 %i.cb, 1000000
  %i.cd = trunc i64 %.091.lcssa to i32
  %i.ce = mul i32 %i.cd, 1000
  %i.cf = add i32 %i.cc, %i.ce
  store i32 %i.cf, ptr %4, align 4
  %i.cg = load i32, ptr %i.bp, align 4
  %i.ch = add i32 %i.cg, %.
  %i.ci = trunc i32 %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ci, ptr %i.cj, align 4
  %i.ck = load i32, ptr %i.a, align 8
  %i.cl = add i32 %i.ck, %.
  %i.cm = trunc i32 %i.cl to i16
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.cm, ptr %i.cn, align 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.095 = phi ptr [ %5, %bb.t ], [ %4, %bb.u ]
  %.093 = phi i64 [ 16, %bb.t ], [ 8, %bb.u ]     ; 3 uses
  %i.co = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %.095, i64 noundef %.093, ptr noundef %2)
  br i1 %i.co, label %bb.w, label %bb.ak

bb.w:                                             ; preds = %bb.v
  %i.cp = load i32, ptr %i.q, align 8
  %i.cq = icmp eq i32 %i.cp, 13
  br i1 %i.cq, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cr = getelementptr i8, ptr %1, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  %i.cs = load i16, ptr %i.cr, align 8
  %rev = call i16 @llvm.bswap.i16(i16 %i.cs)
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i16 %rev, ptr %i.ct, align 2
  %i.cu = getelementptr i8, ptr %1, i64 74
  %i.cv = load i16, ptr %i.cu, align 2
  %rev102 = call i16 @llvm.bswap.i16(i16 %i.cv)
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 %rev102, ptr %i.cw, align 2
  %i.cx = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 16, ptr noundef %2)
  br i1 %i.cx, label %bb.y, label %bb.ak

bb.y:                                             ; preds = %bb.x
  %i.cy = add nuw nsw i64 %.093, 16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.094 = phi i64 [ %i.cy, %bb.y ], [ %.093, %bb.w ]
  %i.cz = getelementptr i8, ptr %1, i64 264
  %.val = load ptr, ptr %i.cz, align 8
  %i.da = getelementptr i8, ptr %1, i64 280
  %.val104 = load i64, ptr %i.da, align 8
  %i.db = getelementptr i8, ptr %.val, i64 %.val104
  %i.dc = load i32, ptr %i.a, align 8
  %i.dd = zext i32 %i.dc to i64
  %i.de = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef %i.db, i64 noundef %i.dd, ptr noundef %2)
  br i1 %i.de, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.df = load i32, ptr %i.a, align 8
  %i.dg = zext i32 %i.df to i64
  %i.dh = add nuw nsw i64 %.094, %i.dg            ; 2 uses
  %i.di = load i32, ptr %i.q, align 8
  %i.dj = icmp eq i32 %i.di, -1
  br i1 %i.dj, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dk = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %6, i64 noundef 2, ptr noundef %2)
  br i1 %i.dk, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.dl = add nuw nsw i64 %i.dh, 2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.1 = phi i64 [ %i.dl, %bb.ac ], [ %i.dh, %bb.aa ] ; 2 uses
  %i.dm = getelementptr i8, ptr %i.c, i64 44      ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 4            ; 3 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dp = call noalias dereferenceable_or_null(4096) ptr @g_malloc(i64 noundef 4096) #11 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.c, i64 32
  store ptr %i.dp, ptr %i.dq, align 8
  store i32 1024, ptr %i.dm, align 4
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.dr = getelementptr i8, ptr %i.c, i64 40
  %i.ds = load i32, ptr %i.dr, align 8
  %.not103 = icmp ult i32 %i.ds, %i.dn
  br i1 %.not103, label %._crit_edge116, label %bb.ag

._crit_edge116:                                   ; preds = %bb.af
  %.phi.trans.insert117 = getelementptr i8, ptr %i.c, i64 32
  %.pre118 = load ptr, ptr %.phi.trans.insert117, align 8
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dt = shl i32 %i.dn, 1                        ; 2 uses
  store i32 %i.dt, ptr %i.dm, align 4
  %i.du = getelementptr i8, ptr %i.c, i64 32      ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = zext i32 %i.dt to i64
  %i.dx = shl nuw nsw i64 %i.dw, 2
  %i.dy = call ptr @g_realloc(ptr noundef %i.dv, i64 noundef %i.dx) ; 2 uses
  store ptr %i.dy, ptr %i.du, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge116, %bb.ag, %bb.ae
  %i.dz = phi ptr [ %.pre118, %._crit_edge116 ], [ %i.dy, %bb.ag ], [ %i.dp, %bb.ae ]
  %i.ea = getelementptr i8, ptr %i.c, i64 24      ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8            ; 3 uses
  %i.ec = getelementptr i8, ptr %i.c, i64 40      ; 3 uses
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr [4 x i8], ptr %i.dz, i64 %i.ee
  store i32 %i.eb, ptr %i.ef, align 4
  %i.eg = zext i32 %i.eb to i64
  %i.eh = add nuw nsw i64 %.1, %i.eg
  %i.ei = icmp samesign ugt i64 %i.eh, 4294967295
  br i1 %i.ei, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i8 1, ptr %i.ab, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ej = load i32, ptr %i.ec, align 8
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ec, align 8
  %i.el = trunc i64 %.1 to i32
  %i.em = add i32 %i.eb, %i.el
  store i32 %i.em, ptr %i.ea, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ab, %bb.z, %bb.x, %bb.v, %bb.aj, %bb.p, %bb.m, %bb.i, %bb.g, %bb.e, %bb.b
  %.096 = phi i1 [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.m ], [ false, %bb.p ], [ true, %bb.aj ], [ false, %bb.z ], [ false, %bb.x ], [ false, %bb.v ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i1 %.096
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @netmon_dump_finish(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.netmon_hdr, align 4         ; 20 uses
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.c = getelementptr i8, ptr %i.b, i64 40       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef %i.h, i64 noundef %i.f, ptr noundef %1)
  br i1 %i.i, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i64 @wtap_dump_file_seek(ptr noundef %0, i64 noundef 0, i32 noundef 0, ptr noundef %1)
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %3, i8 noundef 0, i64 noundef 60, i1 noundef false) #10
  %i.n = load i8, ptr %i.b, align 8, !range !11, !noundef !12
end_hunk_0
