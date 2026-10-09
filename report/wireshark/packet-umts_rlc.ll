Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-umts_rlc?download=true
inline.NumInlined: 46
inline.NumDeleted: 18
begin_hunk_0_@add_fragment:bb.a
  %i.g = tail call ptr @wmem_file_scope()
  %i.h = load i32, ptr @proto_umts_rlc, align 4
  %i.i = tail call ptr @p_get_proto_data(ptr noundef %i.g, ptr noundef %2, i32 noundef %i.h, i32 noundef 0) ; 4 uses
  %i.j = icmp ne ptr %i.f, null
  %i.k = icmp ne ptr %i.i, null
  %or.cond.i = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.b, label %.critedge267

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.f, i64 692
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = getelementptr [4 x i8], ptr %i.i, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.p, ptr %10, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 10
  store i16 0, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 6
  store i16 0, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i16 0, ptr %i.t, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not38.i = icmp eq ptr %9, null
  br i1 %.not38.i, label %.critedge267, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %10, align 4
  %i.u = getelementptr i8, ptr %9, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.w = load <2 x i16>, ptr %i.u, align 4
  store <2 x i16> %i.w, ptr %i.v, align 4
  %i.x = getelementptr i8, ptr %9, i64 12
  %i.y = load i8, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 %i.y, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %2, i64 386
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 10
  store i16 %i.ab, ptr %i.ac, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.ad = getelementptr i8, ptr %i.i, i64 320
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.n
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i8 %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %2, i64 392
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 13
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 3 uses
  store i32 %0, ptr %i.al, align 4
  %i.am = getelementptr i8, ptr %i.i, i64 384
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.n
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = getelementptr i8, ptr %2, i64 20        ; 7 uses
  %i.ar = load i32, ptr %i.aq, align 4
  store i32 %i.ar, ptr %11, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i16 %5, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 30
  store i16 %6, ptr %i.at, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i16 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr null, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.ax = call fastcc i32 @rlc_channel_assign(ptr noundef nonnull %i.aw, i32 noundef range(i32 1, 3) %0, ptr noundef %2, ptr noundef readonly %9) ; 0 uses
  %.val = load i32, ptr %i.al, align 4
  %i.ay = icmp eq i32 %.val, 1
  %..i = select i1 %i.ay, i16 128, i16 4096       ; 9 uses
  %i.az = zext nneg i16 %..i to i32               ; 16 uses
  %i.ba = load ptr, ptr @reassembled_table, align 8
  %i.bb = call i32 @g_hash_table_lookup_extended(ptr noundef %i.ba, ptr noundef nonnull %11, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not260 = icmp eq ptr %3, null
  br i1 %.not260, label %.critedge267, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.c, align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 28
  %i.bf = load i16, ptr %i.be, align 4
  %i.bg = getelementptr i8, ptr %i.bd, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 28
  %i.bj = load i16, ptr %i.bi, align 4
  %.not261 = icmp eq i16 %i.bf, %i.bj
  br i1 %.not261, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr i8, ptr %i.bc, i64 30
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = getelementptr i8, ptr %i.bh, i64 30
  %i.bn = load i16, ptr %i.bm, align 2
  %.not262 = icmp eq i16 %i.bl, %i.bn
  br i1 %.not262, label %.critedge267, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bo = load i32, ptr @hf_rlc_reassembled_in, align 4
  %i.bp = load i32, ptr %i.bh, align 8
  %i.bq = call ptr @proto_tree_add_uint(ptr noundef nonnull %3, i32 noundef %i.bo, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %i.bp) ; 0 uses
  br label %.critedge267

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8
  %i.br = load ptr, ptr @fragment_table, align 8
  %i.bs = call i32 @g_hash_table_lookup_extended(ptr noundef %i.br, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %i.a)
  %.not.i268 = icmp eq i32 %i.bs, 0
  br i1 %.not.i268, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load ptr, ptr %i.a, align 8
  br label %get_frags.exit

bb.m:                                             ; preds = %bb.k
  %.not11.i = icmp eq ptr %2, null
  br i1 %.not11.i, label %get_frags.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load i32, ptr %i.al, align 4
  %i.bv = call noalias dereferenceable_or_null(24) ptr @g_malloc0(i64 noundef 24) #17 ; 3 uses
  %i.bw = call fastcc i32 @rlc_channel_assign(ptr noundef %i.bv, i32 noundef %i.bu, ptr noundef nonnull %2, ptr noundef readonly %9)
  %.not.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i, label %rlc_channel_create.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @g_free(ptr noundef %i.bv)
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.163) #18
  unreachable

rlc_channel_create.exit.i:                        ; preds = %bb.n
  %i.bx = call ptr @wmem_file_scope()
  %i.by = call noalias dereferenceable_or_null(32768) ptr @wmem_alloc0(ptr noundef %i.bx, i64 noundef 32768) #16 ; 2 uses
  %i.bz = load ptr, ptr @fragment_table, align 8
  %i.ca = call i32 @g_hash_table_insert(ptr noundef %i.bz, ptr noundef %i.bv, ptr noundef %i.by) ; 0 uses
  br label %get_frags.exit

get_frags.exit:                                   ; preds = %bb.l, %bb.m, %rlc_channel_create.exit.i
  %.0.i269 = phi ptr [ null, %bb.m ], [ %i.bt, %bb.l ], [ %i.by, %rlc_channel_create.exit.i ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.cb = call fastcc ptr @get_endlist(ptr noundef %2, ptr noundef nonnull %10, ptr noundef %9) ; 6 uses
  %i.cc = getelementptr i8, ptr %2, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr i8, ptr %i.cd, i64 53
  %i.cf = load i16, ptr %i.ce, align 1
  %i.cg = and i16 %i.cf, 8
  %.not238 = icmp eq i16 %i.cg, 0
  br i1 %.not238, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %get_frags.exit
  %i.ch = icmp ne ptr %3, null
  %i.ci = icmp ne i16 %7, 0
  %or.cond = and i1 %i.ch, %i.ci
  br i1 %or.cond, label %bb.q, label %.critedge267

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr i8, ptr %i.cb, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8            ; 4 uses
  %.not253 = icmp eq ptr %i.ck, null
  br i1 %.not253, label %bb.af, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not254 = icmp eq ptr %i.cm, null
  br i1 %.not254, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %i.ck, align 8
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = trunc i64 %i.co to i32
  %i.cq = add i32 %i.cp, 1
  %i.cr = srem i32 %i.cq, %i.az                   ; 3 uses
  %i.cs = trunc nsw i32 %i.cr to i16              ; 3 uses
  %i.ct = load ptr, ptr %i.cm, align 8
  %i.cu = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cv = trunc i64 %i.cu to i16                  ; 5 uses
  %i.cw = add nsw i16 %..i, -1                    ; 3 uses
  %i.cx = and i16 %i.cw, %i.cv                    ; 3 uses
  %i.cy = zext nneg i16 %i.cx to i32              ; 2 uses
  %i.cz = sub nsw i32 1, %i.az                    ; 2 uses
  %i.da = and i16 %i.cw, %i.cs                    ; 2 uses
  %.not.i270294 = icmp samesign ugt i16 %i.da, %i.cx
  %12 = select i1 %.not.i270294, i32 %i.az, i32 0
  %13 = zext nneg i16 %i.da to i32
  %i.db = add nuw nsw i32 %12, %i.cy
  %.0.i271297 = sub nsw i32 %13, %i.db            ; 2 uses
  %i.dc = icmp eq i32 %.0.i271297, %i.cz
  %i.dd = icmp sgt i32 %.0.i271297, 0
  %i.de = or i1 %i.dc, %i.dd
  br i1 %i.de, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %.0212298 = phi i16 [ %i.dm, %bb.t ], [ %i.cs, %bb.s ] ; 4 uses
  %i.df = sext i16 %.0212298 to i64
  %i.dg = getelementptr [8 x i8], ptr %.0.i269, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.dj = sext i16 %.0212298 to i32
  %i.dk = add nsw i32 %i.dj, 1
  %i.dl = srem i32 %i.dk, %i.az
  %i.dm = trunc nsw i32 %i.dl to i16              ; 2 uses
  %i.dn = and i16 %i.cw, %i.dm                    ; 2 uses
  %.not.i270 = icmp samesign ugt i16 %i.dn, %i.cx
  %14 = select i1 %.not.i270, i32 %i.az, i32 0
  %15 = zext nneg i16 %i.dn to i32
  %i.do = add nuw nsw i32 %14, %i.cy
  %.0.i271 = sub nsw i32 %15, %i.do               ; 2 uses
  %i.dp = icmp eq i32 %.0.i271, %i.cz
  %i.dq = icmp sgt i32 %.0.i271, 0
  %i.dr = or i1 %i.dp, %i.dq
  br i1 %i.dr, label %.critedge, label %.lr.ph, !llvm.loop !14

.critedge:                                        ; preds = %bb.t, %bb.s
  call fastcc void @reassemble_sequence(ptr noundef %.0.i269, ptr noundef %i.cb, ptr noundef nonnull %10, i16 noundef zeroext %i.cs, i16 noundef zeroext %i.cv)
  br label %.critedge267

bb.u:                                             ; preds = %.lr.ph
  %i.ds = sext i16 %i.cv to i32                   ; 2 uses
  %i.dt = icmp sgt i16 %i.cv, -1
  %i.du = icmp sgt i16 %..i, %i.cv
  %or.cond263 = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond263, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dv = and i64 %i.cu, 32767
  %i.dw = getelementptr [8 x i8], ptr %.0.i269, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %.not259 = icmp eq ptr %i.dx, null
  br i1 %.not259, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dy = load i32, ptr %i.dx, align 8
  %i.dz = sext i16 %.0212298 to i32
  %i.ea = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef nonnull %3, ptr noundef %2, ptr noundef nonnull @ei_rlc_reassembly_fail_unfinished_sequence, ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.215, i32 noundef %i.cr, i32 noundef %i.ds, i32 noundef %i.dy, i32 noundef %i.dz) ; 0 uses
  br label %.critedge267

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.eb = sext i16 %.0212298 to i32
  %i.ec = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef nonnull %3, ptr noundef %2, ptr noundef nonnull @ei_rlc_reassembly_fail_unfinished_sequence, ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.216, i32 noundef %i.cr, i32 noundef %i.ds, i32 noundef %i.eb) ; 0 uses
  br label %.critedge267

bb.y:                                             ; preds = %bb.r
  %i.ed = getelementptr i8, ptr %i.cb, i64 32
  %i.ee = load i32, ptr %i.ed, align 8            ; 3 uses
  %.not256 = icmp eq i32 %i.ee, 0
  br i1 %.not256, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ef = load i32, ptr %i.aq, align 4
  %.not257 = icmp ugt i32 %i.ee, %i.ef
  br i1 %.not257, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eg = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef nonnull %3, ptr noundef %2, ptr noundef nonnull @ei_rlc_reassembly_fail_flag_set, ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.217, i32 noundef %i.ee) ; 0 uses
  br label %.critedge267

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.eh = load ptr, ptr %i.ck, align 8
  %i.ei = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.ej = trunc i64 %i.ei to i16                  ; 3 uses
  %i.ek = sext i16 %i.ej to i32                   ; 2 uses
  %i.el = icmp sgt i16 %i.ej, -1
  %i.em = icmp sgt i16 %..i, %i.ej
  %or.cond264 = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond264, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.en = and i64 %i.ei, 32767
  %i.eo = getelementptr [8 x i8], ptr %.0.i269, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8            ; 2 uses
  %.not258 = icmp eq ptr %i.ep, null
  br i1 %.not258, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eq = load i32, ptr %i.ep, align 8
  %i.er = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef nonnull %3, ptr noundef %2, ptr noundef nonnull @ei_rlc_reassembly_lingering_endpoint, ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.218, i32 noundef %i.ek, i32 noundef %i.eq) ; 0 uses
  br label %.critedge267

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.es = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef nonnull %3, ptr noundef %2, ptr noundef nonnull @ei_rlc_reassembly_lingering_endpoint, ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.219, i32 noundef %i.ek) ; 0 uses
  br label %.critedge267

bb.af:                                            ; preds = %bb.q
  %i.et = call ptr @expert_add_info(ptr noundef %2, ptr noundef null, ptr noundef nonnull @ei_rlc_reassembly_unknown_error) ; 0 uses
  br label %.critedge267

bb.ag:                                            ; preds = %get_frags.exit
  %i.eu = getelementptr i8, ptr %i.cb, i64 32     ; 5 uses
  %i.ev = load i32, ptr %i.eu, align 8
  %.not239 = icmp eq i32 %i.ev, 0
  br i1 %.not239, label %bb.ah, label %.critedge267

bb.ah:                                            ; preds = %bb.ag
  %i.ew = call ptr @wmem_file_scope()
  %i.ex = call noalias dereferenceable_or_null(56) ptr @wmem_alloc0(ptr noundef %i.ew, i64 noundef 56) #16 ; 8 uses
  %i.ey = load i32, ptr %i.aq, align 4
  store i32 %i.ey, ptr %i.ex, align 8
  %i.ez = getelementptr i8, ptr %i.ex, i64 28
  store i16 %5, ptr %i.ez, align 4
  %i.fa = getelementptr i8, ptr %i.ex, i64 30
  store i16 %6, ptr %i.fa, align 2
  %i.fb = getelementptr i8, ptr %i.ex, i64 32
  %i.fc = getelementptr i8, ptr %i.ex, i64 40
  %i.fd = getelementptr i8, ptr %i.ex, i64 4
  %i.fe = call fastcc i32 @rlc_channel_assign(ptr noundef %i.fd, i32 noundef range(i32 1, 3) %0, ptr noundef %2, ptr noundef readonly %9) ; 0 uses
  store i16 %7, ptr %i.fb, align 8
  %i.ff = call ptr @wmem_file_scope()
  %i.fg = zext i16 %4 to i32
  %i.fh = zext i16 %7 to i64
  %i.fi = call ptr @tvb_memdup(ptr noundef %i.ff, ptr noundef %1, i32 noundef %i.fg, i64 noundef %i.fh)
  store ptr %i.fi, ptr %i.fc, align 8
  %i.fj = zext nneg i16 %5 to i64                 ; 2 uses
  %i.fk = getelementptr [8 x i8], ptr %.0.i269, i64 %i.fj ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8            ; 2 uses
  %.not240 = icmp eq ptr %i.fl, null
  br i1 %.not240, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not241 = icmp eq i16 %6, 0
  br i1 %.not241, label %bb.ak, label %.preheader

.preheader:                                       ; preds = %bb.ai, %.preheader
  %.0210 = phi ptr [ %i.fn, %.preheader ], [ %i.fl, %bb.ai ] ; 2 uses
  %i.fm = getelementptr i8, ptr %.0210, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %.not242 = icmp eq ptr %i.fn, null
  br i1 %.not242, label %bb.aj, label %.preheader, !llvm.loop !15

bb.aj:                                            ; preds = %.preheader
  %i.fo = getelementptr i8, ptr %.0210, i64 48
  store ptr %i.ex, ptr %i.fo, align 8
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.fp = load i32, ptr %i.aq, align 4
  store i32 %i.fp, ptr %i.eu, align 8
  br label %.critedge267

bb.al:                                            ; preds = %bb.ah
  store ptr %i.ex, ptr %i.fk, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %i.fq = getelementptr i8, ptr %i.cb, i64 24     ; 6 uses
  %i.fr = load ptr, ptr %i.fq, align 8            ; 3 uses
  %i.fs = icmp ne ptr %i.fr, null
  %i.ft = icmp ne i16 %6, 0
  %or.cond6 = and i1 %i.ft, %i.fs
  br i1 %or.cond6, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fu = load ptr, ptr %i.fr, align 8
  %i.fv = ptrtoint ptr %i.fu to i64               ; 2 uses
  %i.fw = trunc i64 %i.fv to i16
  %i.fx = icmp eq i16 %5, %i.fw
  br i1 %i.fx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %sext = shl i64 %i.fv, 48
  %i.fy = ashr exact i64 %sext, 48
  %i.fz = add nsw i64 %i.fy, -1
  %i.ga = inttoptr i64 %i.fz to ptr
  store ptr %i.ga, ptr %i.fr, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.am
  %i.gb = load ptr, ptr %i.fq, align 8            ; 2 uses
  br i1 %8, label %bb.aq, label %thread-pre-split

bb.aq:                                            ; preds = %bb.ap
  %i.gc = inttoptr i64 %i.fj to ptr
  %i.gd = call ptr @g_list_append(ptr noundef %i.gb, ptr noundef %i.gc) ; 2 uses
  store ptr %i.gd, ptr %i.fq, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ap, %bb.aq
  %i.ge = phi ptr [ %i.gd, %bb.aq ], [ %i.gb, %bb.ap ] ; 4 uses
  %.not243 = icmp eq ptr %i.ge, null
  br i1 %.not243, label %.critedge267, label %bb.ar

bb.ar:                                            ; preds = %thread-pre-split
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8            ; 2 uses
  %.not244 = icmp eq ptr %i.gg, null
  %i.gh = load ptr, ptr %i.ge, align 8
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = add i32 %i.gj, 1
  %i.gl = srem i32 %i.gk, %i.az                   ; 6 uses
  br i1 %.not244, label %bb.be, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gm = load ptr, ptr %i.gg, align 8
  %i.gn = ptrtoint ptr %i.gm to i64               ; 2 uses
  %i.go = trunc i64 %i.gn to i16                  ; 3 uses
  %sext247 = shl i64 %i.gn, 48
  %i.gp = ashr exact i64 %sext247, 45
  %i.gq = getelementptr i8, ptr %.0.i269, i64 %i.gp
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gt = load i32, ptr %i.aq, align 4
  store i32 %i.gt, ptr %i.eu, align 8
  br label %.critedge267

bb.au:                                            ; preds = %bb.as
  %i.gu = sext i16 %i.go to i32
  %i.gv = icmp eq i32 %i.gl, %i.gu
  br i1 %i.gv, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.gw = sext i32 %i.gl to i64
  %i.gx = getelementptr [8 x i8], ptr %.0.i269, i64 %i.gw ; 3 uses
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = getelementptr i8, ptr %i.gy, i64 32
  %i.ha = load i16, ptr %i.gz, align 8
  %i.hb = icmp eq i16 %i.ha, 0
  br i1 %i.hb, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.hc = call ptr @g_list_first(ptr noundef nonnull %i.ge) ; 2 uses
  %.not251 = icmp eq ptr %i.hc, null
  br i1 %.not251, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hd = load ptr, ptr %i.fq, align 8
  %i.he = call ptr @g_list_delete_link(ptr noundef %i.hd, ptr noundef nonnull %i.hc)
  store ptr %i.he, ptr %i.fq, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.hf = load ptr, ptr %i.gx, align 8
  %i.hg = getelementptr i8, ptr %i.hf, i64 48
  %i.hh = load ptr, ptr %i.hg, align 8            ; 2 uses
  store ptr %i.hh, ptr %i.gx, align 8
  %.not252 = icmp eq ptr %i.hh, null
  br i1 %.not252, label %.critedge267, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hi = add nsw i32 %i.gl, -1
  %i.hj = sext i32 %i.hi to i64
  %i.hk = inttoptr i64 %i.hj to ptr
  %i.hl = load ptr, ptr %i.fq, align 8
  store ptr %i.hk, ptr %i.hl, align 8
  br label %.critedge267

bb.ba:                                            ; preds = %bb.av, %bb.au
  %i.hm = add nsw i16 %..i, -1                    ; 3 uses
  %i.hn = and i16 %i.hm, %i.go                    ; 3 uses
  %i.ho = zext nneg i16 %i.hn to i32              ; 2 uses
  %i.hp = sub nsw i32 1, %i.az                    ; 2 uses
  %.0299 = trunc nsw i32 %i.gl to i16             ; 3 uses
  %i.hq = and i16 %i.hm, %.0299                   ; 2 uses
  %.not.i272300 = icmp samesign ugt i16 %i.hq, %i.hn
  %16 = select i1 %.not.i272300, i32 %i.az, i32 0
  %17 = zext nneg i16 %i.hq to i32
  %i.hr = add nuw nsw i32 %16, %i.ho
  %.0.i273303 = sub nsw i32 %17, %i.hr            ; 2 uses
  %i.hs = icmp ne i32 %.0.i273303, %i.hp
  %i.ht = icmp slt i32 %.0.i273303, 0
  %i.hu = and i1 %i.hs, %i.ht
  br i1 %i.hu, label %.lr.ph306, label %._crit_edge

.lr.ph306:                                        ; preds = %bb.ba, %bb.bd
  %.0305 = phi i16 [ %.0, %bb.bd ], [ %.0299, %bb.ba ]
  %.0.in304 = phi i32 [ %i.ij, %bb.bd ], [ %i.gl, %bb.ba ] ; 3 uses
  %i.hv = sext i16 %.0305 to i64
  %i.hw = getelementptr [8 x i8], ptr %.0.i269, i64 %i.hv
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %.lr.ph306
  %i.hz = zext nneg i16 %5 to i32                 ; 2 uses
  %i.ia = sub nsw i32 %i.az, %i.hz
  %i.ib = add nsw i32 %i.ia, %.0.in304
  %i.ic = srem i32 %i.ib, %i.az
  %i.id = add nuw nsw i32 %i.az, %i.hz
  %i.ie = sub nsw i32 %i.id, %.0.in304
  %i.if = srem i32 %i.ie, %i.az
  %. = call i32 @llvm.smin.i32(i32 %i.ic, i32 %i.if)
  %i.ig = lshr exact i32 %i.az, 2
  %.not250 = icmp slt i32 %., %i.ig
  br i1 %.not250, label %.critedge267, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ih = load i32, ptr %i.aq, align 4
  store i32 %i.ih, ptr %i.eu, align 8
  br label %.critedge267

bb.bd:                                            ; preds = %.lr.ph306
  %i.ii = add nsw i32 %.0.in304, 1
  %i.ij = srem i32 %i.ii, %i.az                   ; 2 uses
  %.0 = trunc nsw i32 %i.ij to i16                ; 2 uses
  %i.ik = and i16 %i.hm, %.0                      ; 2 uses
  %.not.i272 = icmp samesign ugt i16 %i.ik, %i.hn
  %18 = select i1 %.not.i272, i32 %i.az, i32 0
  %19 = zext nneg i16 %i.ik to i32
  %i.il = add nuw nsw i32 %18, %i.ho
  %.0.i273 = sub nsw i32 %19, %i.il               ; 2 uses
  %i.im = icmp ne i32 %.0.i273, %i.hp
  %i.in = icmp slt i32 %.0.i273, 0
  %i.io = and i1 %i.im, %i.in
  br i1 %i.io, label %.lr.ph306, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.bd, %bb.ba
  call fastcc void @reassemble_sequence(ptr noundef %.0.i269, ptr noundef %i.cb, ptr noundef nonnull %10, i16 noundef zeroext %.0299, i16 noundef zeroext %i.go)
  br label %.critedge267

bb.be:                                            ; preds = %bb.ar
  %i.ip = trunc nsw i32 %i.gl to i16              ; 2 uses
  %i.iq = sub nsw i16 %..i, %5
  %.lhs.trunc = add nsw i16 %i.iq, %i.ip
  %i.ir = srem i16 %.lhs.trunc, %..i
  %i.is = add nuw nsw i16 %..i, %5
  %.lhs.trunc280 = sub nsw i16 %i.is, %i.ip
  %i.it = srem i16 %.lhs.trunc280, %..i
  %i.iu = call i16 @llvm.smin.i16(i16 %i.ir, i16 %i.it)
  %.265 = sext i16 %i.iu to i32
  %i.iv = lshr exact i32 %i.az, 2
  %.not246 = icmp sgt i32 %i.iv, %.265
  br i1 %.not246, label %.critedge267, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iw = load i32, ptr %i.aq, align 4
  store i32 %i.iw, ptr %i.eu, align 8
  br label %.critedge267

.critedge267:                                     ; preds = %bb.bb, %bb.az, %bb.ay, %bb.bc, %bb.at, %thread-pre-split, %bb.d, %bb.a, %bb.be, %._crit_edge, %bb.bf, %bb.ag, %bb.p, %bb.af, %bb.aa, %bb.w, %bb.x, %.critedge, %bb.ae, %bb.ad, %bb.g, %bb.j, %bb.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @get_reassembled_data(i32 noundef range(i32 1, 3) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef zeroext range(i16 0, 4096) %4, i16 noundef zeroext %5, ptr nofree noundef readonly captures(address_is_null) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %struct.rlc_frag, align 8           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.c = getelementptr i8, ptr %2, i64 20
  %i.d = load i32, ptr %i.c, align 4
  store i32 %i.d, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 %4, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i16 %5, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.j = call fastcc i32 @rlc_channel_assign(ptr noundef nonnull %i.i, i32 noundef range(i32 1, 3) %0, ptr noundef %2, ptr noundef readonly %6) ; 0 uses
  %i.k = load ptr, ptr @reassembled_table, align 8
  %i.l = call i32 @g_hash_table_lookup_extended(ptr noundef %i.k, ptr noundef nonnull %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %tree_add_fragment_list_incomplete.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.b, align 8              ; 10 uses
  %.not36 = icmp eq ptr %i.m, null
  br i1 %.not36, label %tree_add_fragment_list_incomplete.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not37 = icmp eq ptr %i.o, null
  br i1 %.not37, label %tree_add_fragment_list_incomplete.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.m, i64 32       ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0 = phi ptr [ %i.q, %bb.d ], [ %i.s, %bb.f ]  ; 2 uses
  %i.r = getelementptr i8, ptr %.0, i64 48
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %.not38 = icmp eq ptr %i.s, null
  br i1 %.not38, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.s, i64 28
  %i.u = load i16, ptr %i.t, align 4
  %i.v = zext i16 %i.u to i32
  %i.w = getelementptr i8, ptr %.0, i64 28
  %i.x = load i16, ptr %i.w, align 4
  %i.y = zext i16 %i.x to i32
  %i.z = sub nsw i32 %i.v, %i.y
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.g, label %bb.e, !llvm.loop !17

bb.g:                                             ; preds = %bb.f
  %i.ab = call ptr @proto_tree_add_expert(ptr noundef %3, ptr noundef %2, ptr noundef nonnull @ei_rlc_incomplete_sequence, ptr noundef %1, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.ac = load i32, ptr @hf_rlc_frags, align 4
  %i.ad = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ac, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 4 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %proto_item_set_generated.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.af, null
  br i1 %.not5.i.i, label %proto_item_set_generated.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr i8, ptr %i.af, i64 28     ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = or i32 %i.ah, 2
  store i32 %i.ai, ptr %i.ag, align 4
  br label %proto_item_set_generated.exit.i

proto_item_set_generated.exit.i:                  ; preds = %bb.i, %bb.h, %bb.g
  %i.aj = load i32, ptr @ett_rlc_fragments, align 4
  %i.ak = call ptr @proto_item_add_subtree(ptr noundef %i.ad, i32 noundef %i.aj)
  %i.al = getelementptr i8, ptr %i.m, i64 8
  %i.am = load i16, ptr %i.al, align 8
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr i8, ptr %i.m, i64 10
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ad, ptr noundef nonnull @.str.221, i32 noundef %i.an, i32 noundef %i.aq)
  %.021.i = load ptr, ptr %i.p, align 8           ; 2 uses
  %.not22.i = icmp eq ptr %.021.i, null
  br i1 %.not22.i, label %tree_add_fragment_list_incomplete.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %proto_item_set_generated.exit.i, %.lr.ph.i
  %.024.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.021.i, %proto_item_set_generated.exit.i ] ; 4 uses
  %.02023.i = phi i32 [ %i.bf, %.lr.ph.i ], [ 0, %proto_item_set_generated.exit.i ]
  %i.ar = load i32, ptr @hf_rlc_frag, align 4
  %i.as = load i32, ptr %.024.i, align 8          ; 2 uses
  %i.at = and i32 %.02023.i, 65535                ; 3 uses
  %i.au = getelementptr i8, ptr %.024.i, i64 32   ; 2 uses
  %i.av = load i16, ptr %i.au, align 8
  %i.aw = zext i16 %i.av to i32                   ; 2 uses
  %i.ax = add nsw i32 %i.at, -1
  %i.ay = add nsw i32 %i.ax, %i.aw
  %i.az = getelementptr i8, ptr %.024.i, i64 28
  %i.ba = load i16, ptr %i.az, align 4
  %i.bb = zext i16 %i.ba to i32
  %i.bc = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.ak, i32 noundef %i.ar, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %i.as, ptr noundef nonnull @.str.222, i32 noundef %i.as, i32 noundef %i.at, i32 noundef %i.ay, i32 noundef %i.aw, i32 noundef %i.bb) ; 0 uses
  %i.bd = load i16, ptr %i.au, align 8
  %i.be = zext i16 %i.bd to i32
  %i.bf = add nuw nsw i32 %i.at, %i.be
  %i.bg = getelementptr i8, ptr %.024.i, i64 48
  %.0.i = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %tree_add_fragment_list_incomplete.exit, label %.lr.ph.i, !llvm.loop !18

bb.j:                                             ; preds = %bb.e
  %i.bh = getelementptr i8, ptr %i.m, i64 8       ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 8
  %i.bj = zext i16 %i.bi to i32                   ; 2 uses
  %i.bk = call ptr @tvb_new_child_real_data(ptr noundef %1, ptr noundef nonnull %i.o, i32 noundef %i.bj, i32 noundef %i.bj) ; 2 uses
  store ptr %i.bk, ptr %i.m, align 8
  %i.bl = call ptr @add_new_data_source(ptr noundef %2, ptr noundef %i.bk, ptr noundef nonnull @.str.220) ; 0 uses
  %.not39 = icmp eq ptr %3, null
  br i1 %.not39, label %tree_add_fragment_list.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr i8, ptr %i.m, i64 10      ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = icmp ugt i16 %i.bn, 1
  br i1 %i.bo, label %bb.l, label %tree_add_fragment_list.exit

bb.l:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %i.m, align 8             ; 4 uses
  %i.bq = load i32, ptr @hf_rlc_frags, align 4
  %i.br = call ptr @proto_tree_add_item(ptr noundef nonnull %3, i32 noundef %i.bq, ptr noundef %i.bp, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 5 uses
  %.not.i.i40 = icmp eq ptr %i.br, null
  br i1 %.not.i.i40, label %proto_item_set_generated.exit.i42, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not5.i.i41 = icmp eq ptr %i.bt, null
  br i1 %.not5.i.i41, label %proto_item_set_generated.exit.i42, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr i8, ptr %i.bt, i64 28     ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = or i32 %i.bv, 2
  store i32 %i.bw, ptr %i.bu, align 4
  br label %proto_item_set_generated.exit.i42

proto_item_set_generated.exit.i42:                ; preds = %bb.n, %bb.m, %bb.l
  %i.bx = load i32, ptr @ett_rlc_fragments, align 4
  %i.by = call ptr @proto_item_add_subtree(ptr noundef %i.br, i32 noundef %i.bx) ; 2 uses
  %i.bz = load i16, ptr %i.bh, align 8
  %i.ca = zext i16 %i.bz to i32
  %i.cb = load i16, ptr %i.bm, align 2
  %i.cc = zext i16 %i.cb to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.br, ptr noundef nonnull @.str.221, i32 noundef %i.ca, i32 noundef %i.cc)
  %.041.i = load ptr, ptr %i.p, align 8           ; 2 uses
  %.not42.i = icmp eq ptr %.041.i, null
  br i1 %.not42.i, label %._crit_edge.i, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %proto_item_set_generated.exit.i42
  %i.cd = getelementptr i8, ptr %2, i64 80
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.lr.ph.i43
  %.044.i = phi ptr [ %.041.i, %.lr.ph.i43 ], [ %.0.i44, %bb.r ] ; 7 uses
  %.03543.i = phi i16 [ 0, %.lr.ph.i43 ], [ %i.da, %bb.r ] ; 3 uses
  %i.ce = getelementptr i8, ptr %.044.i, i64 32   ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 8            ; 2 uses
  %.not37.i = icmp eq i16 %i.cf, 0
  br i1 %.not37.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = zext i16 %i.cf to i32                   ; 3 uses
  %i.ch = load i32, ptr @hf_rlc_frag, align 4
  %i.ci = zext i16 %.03543.i to i32               ; 3 uses
  %i.cj = load i32, ptr %.044.i, align 8          ; 2 uses
  %i.ck = add nsw i32 %i.ci, -1
  %i.cl = add nsw i32 %i.ck, %i.cg
  %i.cm = getelementptr i8, ptr %.044.i, i64 28
  %i.cn = load i16, ptr %i.cm, align 4
  %i.co = zext i16 %i.cn to i32
  %i.cp = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.by, i32 noundef %i.ch, ptr noundef %i.bp, i32 noundef %i.ci, i32 noundef %i.cg, i32 noundef %i.cj, ptr noundef nonnull @.str.223, i32 noundef %i.cj, i32 noundef %i.ci, i32 noundef %i.cl, i32 noundef %i.cg, i32 noundef %i.co) ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cq = load i32, ptr @hf_rlc_frag, align 4
  %i.cr = zext i16 %.03543.i to i32
  %i.cs = load i32, ptr %.044.i, align 8          ; 2 uses
  %i.ct = getelementptr i8, ptr %.044.i, i64 28
  %i.cu = load i16, ptr %i.ct, align 4
  %i.cv = zext i16 %i.cu to i32
  %i.cw = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.by, i32 noundef %i.cq, ptr noundef %i.bp, i32 noundef %i.cr, i32 noundef 0, i32 noundef %i.cs, ptr noundef nonnull @.str.224, i32 noundef %i.cs, i32 noundef %i.cv) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cx = load ptr, ptr %i.cd, align 8
  %i.cy = load i32, ptr %.044.i, align 8
  call void @mark_frame_as_depended_upon(ptr noundef %i.cx, i32 noundef %i.cy)
  %i.cz = load i16, ptr %i.ce, align 8
  %i.da = add i16 %i.cz, %.03543.i
  %i.db = getelementptr i8, ptr %.044.i, i64 48
  %.0.i44 = load ptr, ptr %i.db, align 8          ; 2 uses
  %.not.i45 = icmp eq ptr %.0.i44, null
  br i1 %.not.i45, label %._crit_edge.i, label %bb.o, !llvm.loop !19

._crit_edge.i:                                    ; preds = %bb.r, %proto_item_set_generated.exit.i42
  %i.dc = load i32, ptr @hf_rlc_reassembled_data, align 4
  %i.dd = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.dc, ptr noundef %i.bp, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %.not.i38.i = icmp eq ptr %i.dd, null
  br i1 %.not.i38.i, label %tree_add_fragment_list.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  %i.de = getelementptr i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not5.i39.i = icmp eq ptr %i.df, null
  br i1 %.not5.i39.i, label %tree_add_fragment_list.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = getelementptr i8, ptr %i.df, i64 28     ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = or i32 %i.dh, 2
  store i32 %i.di, ptr %i.dg, align 4
  br label %tree_add_fragment_list.exit

tree_add_fragment_list.exit:                      ; preds = %bb.t, %bb.s, %._crit_edge.i, %bb.k, %bb.j
  %i.dj = load ptr, ptr %i.m, align 8
  br label %tree_add_fragment_list_incomplete.exit

tree_add_fragment_list_incomplete.exit:           ; preds = %.lr.ph.i, %proto_item_set_generated.exit.i, %bb.b, %bb.c, %bb.a, %tree_add_fragment_list.exit
  %.032 = phi ptr [ null, %bb.b ], [ %i.dj, %tree_add_fragment_list.exit ], [ null, %bb.a ], [ null, %bb.c ], [ null, %proto_item_set_generated.exit.i ], [ null, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.032
}

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @reassemble_sequence(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i16 noundef zeroext range(i16 -4095, 4096) %3, i16 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wmem_file_scope()
  %i.b = tail call noalias noundef dereferenceable_or_null(48) ptr @wmem_alloc0(ptr noundef %i.a, i64 noundef 48) #16 ; 11 uses
  %i.c = getelementptr i8, ptr %2, i64 20         ; 2 uses
  %.val = load i32, ptr %i.c, align 4
  %i.d = icmp eq i32 %.val, 1
  %..i = select i1 %i.d, i16 128, i16 4096        ; 2 uses
  %i.e = zext nneg i16 %..i to i32                ; 5 uses
  %i.f = add nsw i16 %..i, -1                     ; 3 uses
  %i.g = and i16 %i.f, %4                         ; 3 uses
  %i.h = zext nneg i16 %i.g to i32                ; 2 uses
  %i.i = sub nsw i32 1, %i.e                      ; 2 uses
  %i.j = and i16 %3, %i.f                         ; 2 uses
  %.not.i47 = icmp samesign ugt i16 %i.j, %i.g
  %5 = select i1 %.not.i47, i32 %i.e, i32 0
  %6 = zext nneg i16 %i.j to i32
  %i.k = add nuw nsw i32 %5, %i.h
  %.0.i50 = sub nsw i32 %6, %i.k                  ; 2 uses
  %i.l = icmp ne i32 %.0.i50, %i.i
  %i.m = icmp slt i32 %.0.i50, 1
  %i.n = and i1 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.b, i64 32       ; 3 uses
  %i.p = getelementptr i8, ptr %i.b, i64 40       ; 6 uses
  %i.q = getelementptr i8, ptr %i.b, i64 8        ; 4 uses
  %i.r = getelementptr i8, ptr %i.b, i64 10       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %rlc_sdu_add_fragment.exit
  %.051 = phi i16 [ %3, %.lr.ph ], [ %i.by, %rlc_sdu_add_fragment.exit ] ; 2 uses
  %i.s = zext i16 %.051 to i64
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.s ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 48       ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  store ptr null, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.t, align 8              ; 18 uses
  %i.y = load ptr, ptr %i.o, align 8              ; 5 uses
  %.not.i34 = icmp eq ptr %i.y, null
  br i1 %.not.i34, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.x, ptr %i.o, align 8
  store ptr %i.x, ptr %i.p, align 8
  %i.z = load i16, ptr %i.r, align 2
  %i.aa = add i16 %i.z, 1
  store i16 %i.aa, ptr %i.r, align 2
  %i.ab = getelementptr i8, ptr %i.x, i64 32
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = load i16, ptr %i.q, align 8
  %i.ae = add i16 %i.ad, %i.ac
  store i16 %i.ae, ptr %i.q, align 8
  br label %rlc_sdu_add_fragment.exit

bb.d:                                             ; preds = %bb.b
  %i.af = load i32, ptr %i.c, align 4
  switch i32 %i.af, label %rlc_sdu_add_fragment.exit [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.p, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 48
  store ptr %i.x, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %i.x, i64 48
  store ptr null, ptr %i.ai, align 8
  store ptr %i.x, ptr %i.p, align 8
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %i.x, i64 28
  %i.ak = load i16, ptr %i.aj, align 4            ; 4 uses
  %i.al = zext i16 %i.ak to i32
  %i.am = add nuw nsw i32 %i.al, 2048             ; 2 uses
  %i.an = getelementptr i8, ptr %i.y, i64 28
  %i.ao = load i16, ptr %i.an, align 4            ; 2 uses
  %i.ap = zext i16 %i.ao to i32
  %i.aq = icmp samesign ult i32 %i.am, %i.ap
  br i1 %i.aq, label %.preheader.preheader.i, label %bb.k

.preheader.preheader.i:                           ; preds = %bb.f
  %i.ar = trunc nuw i32 %i.am to i16
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %.preheader.preheader.i
  %.0.i35 = phi ptr [ %i.at, %bb.g ], [ %i.y, %.preheader.preheader.i ] ; 4 uses
  %i.as = getelementptr i8, ptr %.0.i35, i64 48
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not70.i = icmp eq ptr %i.at, null
  br i1 %.not70.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.au = getelementptr i8, ptr %.0.i35, i64 28
  %i.av = load i16, ptr %i.au, align 4
  %i.aw = icmp ugt i16 %i.av, %i.ar
  br i1 %i.aw, label %.preheader.i, label %.critedge.i, !llvm.loop !20

bb.h:                                             ; preds = %.preheader.i
  %i.ax = getelementptr i8, ptr %.0.i35, i64 48
  store ptr %i.x, ptr %i.ax, align 8
  store ptr %i.x, ptr %i.p, align 8
  br label %bb.o

.critedge.i:                                      ; preds = %bb.g, %bb.i
  %.1.i = phi ptr [ %i.az, %bb.i ], [ %.0.i35, %bb.g ] ; 2 uses
  %i.ay = getelementptr i8, ptr %.1.i, i64 48
  %i.az = load ptr, ptr %i.ay, align 8            ; 4 uses
  %.not71.i = icmp eq ptr %i.az, null
  br i1 %.not71.i, label %.critedge2.i, label %bb.i

bb.i:                                             ; preds = %.critedge.i
  %i.ba = getelementptr i8, ptr %i.az, i64 28
  %i.bb = load i16, ptr %i.ba, align 4
  %i.bc = icmp ult i16 %i.bb, %i.ak
  br i1 %i.bc, label %.critedge.i, label %.critedge2.i, !llvm.loop !21

.critedge2.i:                                     ; preds = %bb.i, %.critedge.i
  %i.bd = getelementptr i8, ptr %.1.i, i64 48
  %i.be = getelementptr i8, ptr %i.x, i64 48      ; 2 uses
  store ptr %i.az, ptr %i.be, align 8
  store ptr %i.x, ptr %i.bd, align 8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.critedge2.i
  store ptr %i.x, ptr %i.p, align 8
  br label %bb.o

bb.k:                                             ; preds = %bb.f
  %i.bh = icmp ult i16 %i.ak, %i.ao
  br i1 %i.bh, label %bb.l, label %.preheader72.i

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr i8, ptr %i.x, i64 48
  store ptr %i.y, ptr %i.bi, align 8
  store ptr %i.x, ptr %i.o, align 8
  br label %bb.o

.preheader72.i:                                   ; preds = %bb.k, %bb.m
  %.2.i = phi ptr [ %i.bk, %bb.m ], [ %i.y, %bb.k ] ; 2 uses
  %i.bj = getelementptr i8, ptr %.2.i, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8            ; 4 uses
  %.not69.i = icmp eq ptr %i.bk, null
  br i1 %.not69.i, label %.critedge4.i, label %bb.m

bb.m:                                             ; preds = %.preheader72.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 28
  %i.bm = load i16, ptr %i.bl, align 4
  %i.bn = icmp ult i16 %i.bm, %i.ak
  br i1 %i.bn, label %.preheader72.i, label %.critedge4.i, !llvm.loop !22

.critedge4.i:                                     ; preds = %bb.m, %.preheader72.i
  %i.bo = getelementptr i8, ptr %.2.i, i64 48
  %i.bp = getelementptr i8, ptr %i.x, i64 48      ; 2 uses
  store ptr %i.bk, ptr %i.bp, align 8
  store ptr %i.x, ptr %i.bo, align 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge4.i
  store ptr %i.x, ptr %i.p, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge4.i, %bb.l, %bb.j, %.critedge2.i, %bb.h, %bb.e
  %i.bs = getelementptr i8, ptr %i.x, i64 32
  %i.bt = load i16, ptr %i.bs, align 8
  %i.bu = load <2 x i16>, ptr %i.q, align 8
  %i.bv = insertelement <2 x i16> <i16 poison, i16 1>, i16 %i.bt, i64 0
  %i.bw = add <2 x i16> %i.bu, %i.bv
  store <2 x i16> %i.bw, ptr %i.q, align 8
  br label %rlc_sdu_add_fragment.exit

rlc_sdu_add_fragment.exit:                        ; preds = %bb.c, %bb.d, %bb.o
  store ptr %i.w, ptr %i.t, align 8
  %i.bx = add nsw i16 %.051, 1
  %i.by = and i16 %i.bx, %i.f                     ; 3 uses
  %.not.i = icmp samesign ugt i16 %i.by, %i.g
  %7 = select i1 %.not.i, i32 %i.e, i32 0
  %8 = zext nneg i16 %i.by to i32
  %i.bz = add nuw nsw i32 %7, %i.h
  %.0.i = sub nsw i32 %8, %i.bz                   ; 2 uses
  %i.ca = icmp ne i32 %.0.i, %i.i
  %i.cb = icmp slt i32 %.0.i, 1
  %i.cc = and i1 %i.ca, %i.cb
  br i1 %i.cc, label %bb.b, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %rlc_sdu_add_fragment.exit, %bb.a
  %i.cd = getelementptr i8, ptr %1, i64 24        ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call ptr @g_list_first(ptr noundef %i.ce) ; 2 uses
  %.not = icmp eq ptr %i.cf, null
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.cg = load ptr, ptr %i.cd, align 8
  %i.ch = tail call ptr @g_list_delete_link(ptr noundef %i.cg, ptr noundef nonnull %i.cf) ; 4 uses
  store ptr %i.ch, ptr %i.cd, align 8
  %i.ci = zext i16 %4 to i64
  %i.cj = getelementptr [8 x i8], ptr %0, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8
  %.not32 = icmp eq ptr %i.ck, null
  %.not33 = icmp eq ptr %i.ch, null
  %or.cond = select i1 %.not32, i1 true, i1 %.not33
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = load ptr, ptr %i.ch, align 8
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = trunc i64 %i.cm to i32
  %i.co = add nsw i32 %i.e, -1
  %i.cp = add i32 %i.co, %i.cn
  %i.cq = srem i32 %i.cp, %i.e
  %i.cr = sext i32 %i.cq to i64
  %i.cs = inttoptr i64 %i.cr to ptr
  store ptr %i.cs, ptr %i.ch, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %._crit_edge
  %i.ct = icmp ne ptr %i.b, null
  %i.cu = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.cu, %i.ct
  br i1 %or.cond.i, label %bb.s, label %reassemble_data.exit

bb.s:                                             ; preds = %bb.r
  %i.cv = getelementptr i8, ptr %i.b, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not.i37 = icmp eq ptr %i.cw, null
  br i1 %.not.i37, label %reassemble_data.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = getelementptr i8, ptr %i.b, i64 16      ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8
  %.not32.i = icmp eq ptr %i.cy, null
  br i1 %.not32.i, label %.lr.ph.i.preheader, label %reassemble_data.exit

.lr.ph.i.preheader:                               ; preds = %bb.t
  %i.cz = getelementptr i8, ptr %i.b, i64 40
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr i8, ptr %i.b, i64 24
  store ptr %i.da, ptr %i.db, align 8
  %i.dc = tail call ptr @wmem_file_scope()
  %i.dd = getelementptr i8, ptr %i.b, i64 8       ; 2 uses
  %i.de = load i16, ptr %i.dd, align 8
  %i.df = zext i16 %i.de to i64
  %i.dg = tail call noalias ptr @wmem_alloc(ptr noundef %i.dc, i64 noundef %i.df) #16
  store ptr %i.dg, ptr %i.cx, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.w
  %.0284.i = phi ptr [ %.028.i, %bb.w ], [ %i.cw, %.lr.ph.i.preheader ] ; 4 uses
  %.03.i = phi i32 [ %i.ea, %bb.w ], [ 0, %.lr.ph.i.preheader ]
  %i.dh = and i32 %.03.i, 65535                   ; 3 uses
  %i.di = getelementptr i8, ptr %.0284.i, i64 32  ; 2 uses
  %i.dj = load i16, ptr %i.di, align 8            ; 2 uses
  %i.dk = zext i16 %i.dj to i32
  %i.dl = add nuw nsw i32 %i.dh, %i.dk
  %i.dm = load i16, ptr %i.dd, align 8
  %i.dn = zext i16 %i.dm to i32
  %.not34.i = icmp samesign ugt i32 %i.dl, %i.dn
  br i1 %.not34.i, label %reassemble_data.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.do = getelementptr i8, ptr %.0284.i, i64 40  ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not35.i = icmp eq ptr %i.dp, null
  br i1 %.not35.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dq = load ptr, ptr %i.cx, align 8
  %i.dr = zext nneg i32 %i.dh to i64
  %i.ds = getelementptr i8, ptr %i.dq, i64 %i.dr
  %i.dt = zext i16 %i.dj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.ds, ptr noundef nonnull align 1 %i.dp, i64 noundef range(i64 0, 65536) %i.dt, i1 noundef false) #15
  %i.du = tail call ptr @wmem_file_scope()
  %i.dv = load ptr, ptr %i.do, align 8
  tail call void @wmem_free(ptr noundef %i.du, ptr noundef %i.dv)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store ptr null, ptr %i.do, align 8
  %i.dw = load ptr, ptr @reassembled_table, align 8
  %i.dx = tail call i32 @g_hash_table_insert(ptr noundef %i.dw, ptr noundef nonnull %.0284.i, ptr noundef nonnull %i.b) ; 0 uses
  %i.dy = load i16, ptr %i.di, align 8
  %i.dz = zext i16 %i.dy to i32
  %i.ea = add nuw nsw i32 %i.dh, %i.dz
  %i.eb = getelementptr i8, ptr %.0284.i, i64 48
  %.028.i = load ptr, ptr %i.eb, align 8          ; 2 uses
  %.not33.i = icmp eq ptr %.028.i, null
  br i1 %.not33.i, label %reassemble_data.exit, label %.lr.ph.i, !llvm.loop !24

reassemble_data.exit:                             ; preds = %.lr.ph.i, %bb.w, %bb.r, %bb.s, %bb.t
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_list_delete_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memdup(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @mark_frame_as_depended_upon(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_rlc_am(i32 noundef range(i32 4, 9) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %6 = alloca [16 x %struct.rlc_li], align 16     ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.f = tail call ptr @wmem_file_scope()
  %i.g = load i32, ptr @proto_fp, align 4
  %i.h = tail call ptr @p_get_proto_data(ptr noundef %i.f, ptr noundef %2, i32 noundef %i.g, i32 noundef 0) ; 5 uses
  %i.i = tail call ptr @wmem_file_scope()
  %i.j = load i32, ptr @proto_umts_rlc, align 4
  %i.k = tail call ptr @p_get_proto_data(ptr noundef %i.i, ptr noundef %2, i32 noundef %i.j, i32 noundef 0) ; 8 uses
  %i.l = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 0) ; 2 uses
  %i.m = icmp ne ptr %4, null                     ; 3 uses
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ne ptr %i.h, null
  %i.o = icmp ne ptr %i.k, null
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @add_channel_info(ptr noundef %2, ptr noundef %4, ptr noundef %i.h, ptr noundef %i.k)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = load i32, ptr @hf_rlc_dc, align 4
  %i.q = tail call ptr @proto_tree_add_bits_item(ptr noundef nonnull %4, i32 noundef %i.p, ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.r = icmp sgt i8 %i.l, -1
  br i1 %i.r, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @col_set_str(ptr noundef %i.t, i32 noundef 25, ptr noundef nonnull @.str.228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.u = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 0)
  %i.v = lshr i8 %i.u, 4
  %i.w = and i8 %i.v, 7                           ; 3 uses
  %i.x = load i32, ptr @hf_rlc_ctrl_type, align 4
  %i.y = tail call ptr @proto_tree_add_bits_item(ptr noundef %4, i32 noundef %i.x, ptr noundef %1, i32 noundef 1, i32 noundef 3, i32 noundef 0) ; 2 uses
  switch i8 %i.w, label %bb.k [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.h
  ]

end_hunk_0
