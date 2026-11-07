Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-pfcp?download=true
inline.NumInlined: 112
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dissect_pfcp:bb.a
  %i.bs = load i64, ptr %i.a, align 8
  %i.bt = and i64 %i.bs, 1
  %.not.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = call i64 @tvb_get_ntohi64(ptr noundef %i.x, i32 noundef 4) ; 2 uses
  store i64 %i.bu, ptr %i.aa, align 8
  %i.bv = load i32, ptr @hf_pfcp_seid, align 4
  %i.bw = call ptr @proto_tree_add_uint64(ptr noundef %i.bg, i32 noundef %i.bv, ptr noundef %i.x, i32 noundef 4, i32 noundef 8, i64 noundef %i.bu) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.088.i = phi i32 [ 12, %bb.g ], [ 4, %bb.f ]   ; 3 uses
  %i.bx = load i32, ptr @hf_pfcp_seqno, align 4
  %i.by = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bg, i32 noundef %i.bx, ptr noundef %i.x, i32 noundef %.088.i, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.bz = or disjoint i32 %.088.i, 3              ; 2 uses
  %i.ca = load i64, ptr %i.a, align 8
  %i.cb = and i64 %i.ca, 2
  %.not91.i = icmp eq i64 %i.cb, 0
  br i1 %.not91.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = load i32, ptr @hf_pfcp_mp, align 4
  %i.cd = call ptr @proto_tree_add_item(ptr noundef %i.bg, i32 noundef %i.cc, ptr noundef %i.x, i32 noundef %i.bz, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %hf_pfcp_spare_oct.sink.i = phi ptr [ @hf_pfcp_spare_h0, %bb.i ], [ @hf_pfcp_spare_oct, %bb.h ]
  %i.ce = load i32, ptr %hf_pfcp_spare_oct.sink.i, align 4
  %i.cf = call ptr @proto_tree_add_item(ptr noundef %i.bg, i32 noundef %i.ce, ptr noundef %i.x, i32 noundef %i.bz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cg = add nuw nsw i32 %.088.i, 4
  %i.ch = trunc i32 %i.br to i16
  call fastcc void @dissect_pfcp_ies_common(ptr noundef %i.x, ptr noundef %1, ptr noundef %i.bg, i32 noundef %i.cg, i16 noundef zeroext %i.ch, i8 noundef zeroext %i.ad, ptr noundef %i.ai)
  %i.ci = load i8, ptr @g_pfcp_session, align 1, !range !6, !noundef !7
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.ck = load ptr, ptr %i.g, align 8
  %i.cl = getelementptr i8, ptr %i.ck, i64 53
  %i.cm = load i16, ptr %i.cl, align 1
  %i.cn = and i16 %i.cm, 8
  %.not92.i = icmp eq i16 %i.cn, 0
  br i1 %.not92.i, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.co = load ptr, ptr %i.ai, align 8
  %i.cp = getelementptr i8, ptr %i.ai, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = load i32, ptr %i.h, align 4
  %i.cs = call ptr @wmem_list_head(ptr noundef %i.cq) ; 2 uses
  %.not24.i.i = icmp eq ptr %i.cs, null
  br i1 %.not24.i.i, label %pfcp_fill_map.exit.i, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.l
  %i.ct = zext i32 %i.cr to i64
  %i.cu = inttoptr i64 %i.ct to ptr               ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %.01725.i.i = phi ptr [ %i.cs, %.lr.ph27.i.i ], [ %i.dz, %._crit_edge.i.i ] ; 2 uses
  %i.cv = call ptr @wmem_list_frame_data(ptr noundef nonnull %.01725.i.i) ; 3 uses
  %i.cw = call ptr @wmem_list_head(ptr noundef %i.co) ; 2 uses
  %.not1922.i.i = icmp eq ptr %i.cw, null
  br i1 %.not1922.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.cx = getelementptr i8, ptr %i.cv, i64 4
  %i.cy = getelementptr i8, ptr %i.cv, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.i.i
  %.023.i.i = phi ptr [ %i.cw, %.lr.ph.i.i ], [ %i.dy, %bb.r ] ; 2 uses
  %i.cz = call ptr @wmem_list_frame_data(ptr noundef nonnull %.023.i.i)
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = call ptr @wmem_file_scope()
  %i.dc = call noalias dereferenceable_or_null(32) ptr @wmem_alloc0(ptr noundef %i.db, i64 noundef 32) #15 ; 7 uses
  store i64 %i.da, ptr %i.dc, align 8
  %i.dd = call ptr @wmem_file_scope()
  %i.de = getelementptr i8, ptr %i.dc, i64 8      ; 2 uses
  %i.df = load i32, ptr %i.cv, align 8
  %i.dg = load i32, ptr %i.cx, align 4            ; 3 uses
  %i.dh = load ptr, ptr %i.cy, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.de, i8 0, i64 24, i1 false)
  store i32 %i.df, ptr %i.de, align 8
  %i.di = icmp eq i32 %i.dg, 0
  br i1 %i.di, label %copy_address_wmem.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = sext i32 %i.dg to i64
  %i.dk = call ptr @wmem_memdup(ptr noundef %i.dd, ptr noundef %i.dh, i64 noundef %i.dj) #16 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dc, i64 24
  store ptr %i.dk, ptr %i.dl, align 8
  %i.dm = getelementptr i8, ptr %i.dc, i64 16
  store ptr %i.dk, ptr %i.dm, align 8
  %i.dn = getelementptr i8, ptr %i.dc, i64 12
  store i32 %i.dg, ptr %i.dn, align 4
  br label %copy_address_wmem.exit.i.i

copy_address_wmem.exit.i.i:                       ; preds = %bb.o, %bb.n
  %i.do = load ptr, ptr @pfcp_frame_map, align 8
  %i.dp = call ptr @wmem_map_lookup(ptr noundef %i.do, ptr noundef %i.dc)
  %.not20.i.i = icmp eq ptr %i.dp, null
  br i1 %.not20.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %copy_address_wmem.exit.i.i
  %i.dq = load ptr, ptr @pfcp_session_table, align 8
  %i.dr = call ptr @wmem_map_lookup(ptr noundef %i.dq, ptr noundef %i.cu)
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = and i64 %i.ds, 4294967295               ; 2 uses
  %.not21.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not21.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.du = load ptr, ptr @pfcp_session_table, align 8
  %i.dv = inttoptr i64 %i.dt to ptr
  call void @wmem_map_foreach(ptr noundef %i.du, ptr noundef @pfcp_remove_session_from_table, ptr noundef nonnull %i.dv)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %copy_address_wmem.exit.i.i
  %i.dw = load ptr, ptr @pfcp_frame_map, align 8
  %i.dx = call ptr @wmem_map_insert(ptr noundef %i.dw, ptr noundef %i.dc, ptr noundef %i.cu) ; 0 uses
  %i.dy = call ptr @wmem_list_frame_next(ptr noundef nonnull %.023.i.i) ; 2 uses
  %.not19.i.i = icmp eq ptr %i.dy, null
  br i1 %.not19.i.i, label %._crit_edge.i.i, label %bb.n, !llvm.loop !10

._crit_edge.i.i:                                  ; preds = %bb.r, %bb.m
  %i.dz = call ptr @wmem_list_frame_next(ptr noundef nonnull %.01725.i.i) ; 2 uses
  %.not.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i, label %pfcp_fill_map.exit.i, label %bb.m, !llvm.loop !11

pfcp_fill_map.exit.i:                             ; preds = %._crit_edge.i.i, %bb.l
  %i.ea = load i8, ptr %i.aj, align 8
  %i.eb = icmp eq i8 %i.ea, 1
  br label %bb.s

bb.s:                                             ; preds = %pfcp_fill_map.exit.i, %bb.k, %bb.j
  %.087.i = phi i1 [ false, %bb.k ], [ %i.eb, %pfcp_fill_map.exit.i ], [ false, %bb.j ]
  %i.ec = load i32, ptr %i.c, align 4             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store i32 %i.ec, ptr %i.i, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.ed = and i32 %i.af, 253                      ; 2 uses
  %i.ee = and i32 %i.af, 249
  %or.cond5.i.i = icmp eq i32 %i.ee, 1
  %i.ef = insertelement <4 x i8> poison, i8 %i.ad, i64 0
  %i.eg = shufflevector <4 x i8> %i.ef, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eh = icmp eq <4 x i8> %i.eg, <i8 9, i8 16, i8 50, i8 56>
  %i.ei = icmp eq i32 %i.ed, 12
  %i.ej = icmp eq i32 %i.ed, 52
  %i.ek = bitcast <4 x i1> %i.eh to i4
  %i.el = icmp ne i4 %i.ek, 0
  %op.rdx60 = or i1 %i.el, %or.cond5.i.i
  %op.rdx61 = or i1 %i.ei, %i.ej
  %op.rdx62 = or i1 %op.rdx60, %op.rdx61
  br i1 %op.rdx62, label %.thread.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.em = insertelement <2 x i32> poison, i32 %i.af, i64 0
  %i.en = shufflevector <2 x i32> %i.em, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.eo = icmp eq <4 x i8> %i.eg, <i8 4, i8 11, i8 17, i8 51>
  %i.ep = and <2 x i32> %i.en, <i32 251, i32 253>
  %i.eq = shufflevector <2 x i32> %i.ep, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.er = icmp eq <4 x i32> %i.eq, <i32 2, i32 8, i32 13, i32 53>
  %i.es = icmp eq i8 %i.ad, 57
  %rdx.op = or <4 x i1> %i.eo, %i.er
  %i.et = bitcast <4 x i1> %rdx.op to i4
  %i.eu = icmp ne i4 %i.et, 0
  %op.rdx = or i1 %i.eu, %i.es                    ; 2 uses
  br i1 %op.rdx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ev = load i32, ptr %i.h, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink.i.i = phi i32 [ %i.ev, %bb.u ], [ 0, %bb.t ]
  store i8 0, ptr %5, align 8
  store i32 0, ptr %i.l, align 4
  store i32 %.sink.i.i, ptr %i.m, align 8
  %i.ew = getelementptr i8, ptr %.0.i, i64 8      ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = call ptr @wmem_map_lookup(ptr noundef %i.ex, ptr noundef nonnull %5) ; 2 uses
  %.not.i94.i = icmp eq ptr %i.ey, null
  br i1 %.not.i94.i, label %bb.z, label %bb.w

.thread.i.i:                                      ; preds = %bb.s
  store i8 1, ptr %5, align 8
  %i.ez = load i32, ptr %i.h, align 4
  store i32 %i.ez, ptr %i.l, align 4
  store i32 0, ptr %i.m, align 8
  %i.fa = getelementptr i8, ptr %.0.i, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call ptr @wmem_map_lookup(ptr noundef %i.fb, ptr noundef nonnull %5) ; 2 uses
  %.not221.i.i = icmp eq ptr %i.fc, null
  br i1 %.not221.i.i, label %.thread222.i.i, label %bb.w

bb.w:                                             ; preds = %.thread.i.i, %bb.v
  %i.fd = phi ptr [ %i.fc, %.thread.i.i ], [ %i.ey, %bb.v ] ; 2 uses
  %i.fe = load i8, ptr %5, align 8, !range !6, !noundef !7
  store i8 %i.fe, ptr %i.fd, align 8
  br label %bb.ad

.thread222.i.i:                                   ; preds = %.thread.i.i
  store i32 %i.ec, ptr %i.i, align 4
  %i.ff = load ptr, ptr %.0.i, align 8
  %i.fg = call ptr @wmem_map_remove(ptr noundef %i.ff, ptr noundef nonnull %5) ; 2 uses
  %.not210.i.i = icmp eq ptr %i.fg, null
  br i1 %.not210.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread222.i.i
  %i.fh = call ptr @wmem_file_scope()
  %i.fi = call noalias dereferenceable_or_null(40) ptr @wmem_alloc(ptr noundef %i.fh, i64 noundef 40) #15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread222.i.i
  %.0.i.i = phi ptr [ %i.fg, %.thread222.i.i ], [ %i.fi, %bb.x ] ; 8 uses
  %i.fj = getelementptr i8, ptr %.0.i.i, i64 28
  store i32 %i.ec, ptr %i.fj, align 4
  %i.fk = load i32, ptr %i.h, align 4
  %i.fl = getelementptr i8, ptr %.0.i.i, i64 4
  store i32 %i.fk, ptr %i.fl, align 4
  %i.fm = getelementptr i8, ptr %.0.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.fm, ptr noundef align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.fn = getelementptr i8, ptr %.0.i.i, i64 24
  store i32 0, ptr %i.fn, align 8
  %i.fo = getelementptr i8, ptr %.0.i.i, i64 32
  store i32 %i.af, ptr %i.fo, align 8
  store i8 1, ptr %.0.i.i, align 8
  %i.fp = load ptr, ptr %.0.i, align 8
  %i.fq = call ptr @wmem_map_insert(ptr noundef %i.fp, ptr noundef %.0.i.i, ptr noundef %.0.i.i) ; 0 uses
  br label %pfcp_match_response.exit.i

bb.z:                                             ; preds = %bb.v
  br i1 %op.rdx, label %bb.aa, label %pfcp_match_response.exit.i

bb.aa:                                            ; preds = %bb.z
  store i32 %i.ec, ptr %i.i, align 4
  %i.fr = load ptr, ptr %.0.i, align 8
  %i.fs = call ptr @wmem_map_lookup(ptr noundef %i.fr, ptr noundef nonnull %5) ; 8 uses
  %.not208.i.i = icmp eq ptr %i.fs, null
  br i1 %.not208.i.i, label %pfcp_match_response.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ft = getelementptr i8, ptr %i.fs, i64 24     ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8
  %.not209.i.i = icmp eq i32 %i.fu, 0
  br i1 %.not209.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fv = load ptr, ptr %.0.i, align 8
  %i.fw = call ptr @wmem_map_remove(ptr noundef %i.fv, ptr noundef nonnull %i.fs) ; 0 uses
  %i.fx = load i32, ptr %i.h, align 4
  store i32 %i.fx, ptr %i.ft, align 8
  store i8 0, ptr %i.fs, align 8
  %i.fy = load ptr, ptr %i.ew, align 8
  %i.fz = call ptr @wmem_map_insert(ptr noundef %i.fy, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.fs) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.w
  %.1.ph.i.i = phi ptr [ %i.fs, %bb.ac ], [ %i.fs, %bb.ab ], [ %i.fd, %bb.w ] ; 5 uses
  %7 = load i8, ptr %.1.ph.i.i, align 8, !range !6, !noundef !7
  %i.ga = trunc nuw i8 %7 to i1
  br i1 %i.ga, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.gb = load i32, ptr @hf_pfcp_response_in, align 4
  %i.gc = getelementptr i8, ptr %.1.ph.i.i, i64 24
  %i.gd = load i32, ptr %i.gc, align 8
  %i.ge = call ptr @proto_tree_add_uint(ptr noundef %i.bg, i32 noundef %i.gb, ptr noundef %i.x, i32 noundef 0, i32 noundef 0, i32 noundef %i.gd) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i, label %bb.at, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gf = getelementptr i8, ptr %i.ge, i64 40
  %i.gg = load ptr, ptr %i.gf, align 8            ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not5.i.i.i, label %bb.at, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gh = getelementptr i8, ptr %i.gg, i64 28     ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4
  %i.gj = or i32 %i.gi, 2
  store i32 %i.gj, ptr %i.gh, align 4
  br label %bb.at

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.gk = load i32, ptr @hf_pfcp_response_to, align 4
  %i.gl = getelementptr i8, ptr %.1.ph.i.i, i64 4 ; 3 uses
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = call ptr @proto_tree_add_uint(ptr noundef %i.bg, i32 noundef %i.gk, ptr noundef %i.x, i32 noundef 0, i32 noundef 0, i32 noundef %i.gm) ; 2 uses
  %.not.i215.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i215.i.i, label %proto_item_set_generated.exit217.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.go = getelementptr i8, ptr %i.gn, i64 40
  %i.gp = load ptr, ptr %i.go, align 8            ; 2 uses
  %.not5.i216.i.i = icmp eq ptr %i.gp, null
  br i1 %.not5.i216.i.i, label %proto_item_set_generated.exit217.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gq = getelementptr i8, ptr %i.gp, i64 28     ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = or i32 %i.gr, 2
  store i32 %i.gs, ptr %i.gq, align 4
  br label %proto_item_set_generated.exit217.i.i

proto_item_set_generated.exit217.i.i:             ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.gt = getelementptr i8, ptr %.1.ph.i.i, i64 8
  call void @nstime_delta(ptr noundef nonnull %6, ptr noundef %i.k, ptr noundef %i.gt)
  %i.gu = load i32, ptr @hf_pfcp_response_time, align 4
  %i.gv = call ptr @proto_tree_add_time(ptr noundef %i.bg, i32 noundef %i.gu, ptr noundef %i.x, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6) ; 2 uses
  %.not.i218.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i218.i.i, label %proto_item_set_generated.exit220.i.i, label %bb.ak

bb.ak:                                            ; preds = %proto_item_set_generated.exit217.i.i
  %i.gw = getelementptr i8, ptr %i.gv, i64 40
  %i.gx = load ptr, ptr %i.gw, align 8            ; 2 uses
  %.not5.i219.i.i = icmp eq ptr %i.gx, null
  br i1 %.not5.i219.i.i, label %proto_item_set_generated.exit220.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gy = getelementptr i8, ptr %i.gx, i64 28     ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = or i32 %i.gz, 2
  store i32 %i.ha, ptr %i.gy, align 4
  br label %proto_item_set_generated.exit220.i.i

proto_item_set_generated.exit220.i.i:             ; preds = %bb.al, %bb.ak, %proto_item_set_generated.exit217.i.i
  %i.hb = load i8, ptr @g_pfcp_session, align 1, !range !6, !noundef !7
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.am, label %bb.as

bb.am:                                            ; preds = %proto_item_set_generated.exit220.i.i
  %i.hd = load ptr, ptr %i.g, align 8
  %i.he = getelementptr i8, ptr %i.hd, i64 53
  %i.hf = load i16, ptr %i.he, align 1
  %i.hg = and i16 %i.hf, 8
  %.not212.i.i = icmp eq i16 %i.hg, 0
  br i1 %.not212.i.i, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.hh = load ptr, ptr @pfcp_session_table, align 8
  %i.hi = load i32, ptr %i.h, align 4
  %i.hj = zext i32 %i.hi to i64
  %i.hk = inttoptr i64 %i.hj to ptr
  %i.hl = call ptr @wmem_map_lookup(ptr noundef %i.hh, ptr noundef %i.hk)
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = and i64 %i.hm, 4294967295
  %.not213.i.i = icmp eq i64 %i.hn, 0
  br i1 %.not213.i.i, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ho = load ptr, ptr @pfcp_session_table, align 8
  %i.hp = load i32, ptr %i.gl, align 4
  %i.hq = zext i32 %i.hp to i64
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = call ptr @wmem_map_lookup(ptr noundef %i.ho, ptr noundef %i.hr)
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = and i64 %i.ht, 4294967295               ; 2 uses
  %.not214.i.i = icmp eq i64 %i.hu, 0
  br i1 %.not214.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hv = load i32, ptr %i.h, align 4
  %i.hw = load ptr, ptr @pfcp_session_table, align 8
  %i.hx = zext i32 %i.hv to i64
  %i.hy = inttoptr i64 %i.hx to ptr
  %i.hz = inttoptr i64 %i.hu to ptr
  %i.ia = call ptr @wmem_map_insert(ptr noundef %i.hw, ptr noundef %i.hy, ptr noundef nonnull %i.hz) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  br i1 %.087.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ib = load i32, ptr %i.gl, align 4
  %i.ic = load ptr, ptr @pfcp_frame_map, align 8
  %i.id = zext i32 %i.ib to i64
  %i.ie = inttoptr i64 %i.id to ptr
  %i.if = call i32 @wmem_map_foreach_remove(ptr noundef %i.ic, ptr noundef @pfcp_frame_equal, ptr noundef %i.ie) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.am, %proto_item_set_generated.exit220.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.at

pfcp_match_response.exit.i:                       ; preds = %bb.aa, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ag, %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.ig = load i32, ptr @pfcp_tap, align 4
  call void @tap_queue_packet(i32 noundef %i.ig, ptr noundef %1, ptr noundef nonnull %.1.ph.i.i)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %pfcp_match_response.exit.i
  %i.ih = load i8, ptr @g_pfcp_session, align 1, !range !6, !noundef !7
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %bb.av, label %dissect_pfcp_message.exit

bb.av:                                            ; preds = %bb.au
  %i.ij = load ptr, ptr %i.g, align 8
  %i.ik = getelementptr i8, ptr %i.ij, i64 53
  %i.il = load i16, ptr %i.ik, align 1
  %i.im = and i16 %i.il, 8
  %.not.i95.i = icmp eq i16 %i.im, 0
  br i1 %.not.i95.i, label %bb.aw, label %bb.bh

bb.aw:                                            ; preds = %bb.av
  %i.in = load ptr, ptr @pfcp_session_table, align 8
  %i.io = load i32, ptr %i.h, align 4
  %i.ip = zext i32 %i.io to i64
  %i.iq = inttoptr i64 %i.ip to ptr
  %i.ir = call ptr @wmem_map_lookup(ptr noundef %i.in, ptr noundef %i.iq)
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = and i64 %i.is, 4294967295
  %.not45.i.i = icmp eq i64 %i.it, 0
  br i1 %.not45.i.i, label %bb.ax, label %bb.bh

bb.ax:                                            ; preds = %bb.aw
  %i.iu = load i8, ptr %i.z, align 8              ; 2 uses
  %.off.i.i = add i8 %i.iu, -50
  %switch.i.i = icmp ult i8 %.off.i.i, 8
  br i1 %switch.i.i, label %thread-pre-split.i.i.a, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iv = load ptr, ptr %i.ai, align 8
  %i.iw = call i32 @wmem_list_count(ptr noundef %i.iv)
  %.not54.i.i = icmp eq i32 %i.iw, 0
  br i1 %.not54.i.i, label %thread-pre-split.i.i.a, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ix = getelementptr i8, ptr %i.ai, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = call i32 @wmem_list_count(ptr noundef %i.iy)
  %.not55.i.i = icmp eq i32 %i.iz, 0
  br i1 %.not55.i.i, label %thread-pre-split.i.i.a, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ja = load i32, ptr %i.h, align 4
  %i.jb = load ptr, ptr @pfcp_frame_map, align 8
  %i.jc = zext i32 %i.ja to i64
  %i.jd = inttoptr i64 %i.jc to ptr
  %i.je = call i32 @wmem_map_foreach_remove(ptr noundef %i.jb, ptr noundef @pfcp_frame_equal, ptr noundef %i.jd) ; 0 uses
  br label %thread-pre-split.i.i.a

thread-pre-split.i.i.a:                           ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax
  switch i8 %i.iu, label %bb.bd [
    i8 50, label %bb.bb
    i8 51, label %bb.bh
  ]

bb.bb:                                            ; preds = %thread-pre-split.i.i.a
  %i.jf = load i32, ptr %i.h, align 4
  %i.jg = load i32, ptr @pfcp_session_count, align 4
  %i.jh = load ptr, ptr @pfcp_session_table, align 8
  %i.ji = zext i32 %i.jf to i64
  %i.jj = inttoptr i64 %i.ji to ptr
  %i.jk = zext i32 %i.jg to i64
end_hunk_0
