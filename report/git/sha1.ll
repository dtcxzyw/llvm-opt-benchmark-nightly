Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/sha1?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@sha1_process:bb.a
  %i.boh = add i32 %i.bog, -899497514
  %i.boi = add i32 %i.boh, %i.bnk
  %i.boj = add i32 %i.boi, %i.bof
  %i.bok = add i32 %i.boj, %i.bod                 ; 5 uses
  %i.bol = call i32 @llvm.fshl.i32(i32 %i.bns, i32 %i.bns, i32 30) ; 3 uses
  %i.bom = call i32 @llvm.fshl.i32(i32 %i.bok, i32 %i.bok, i32 5)
  %i.bon = xor i32 %i.bol, %i.boc
  %i.boo = xor i32 %i.bon, %i.bob
  %i.bop = load i32, ptr %i.cu, align 4, !tbaa !13
  %i.boq = add i32 %i.bop, -899497514
  %i.bor = add i32 %i.boq, %i.bnt
  %i.bos = add i32 %i.bor, %i.boo
  %i.bot = add i32 %i.bos, %i.bom                 ; 5 uses
  %i.bou = call i32 @llvm.fshl.i32(i32 %i.bob, i32 %i.bob, i32 30) ; 3 uses
  %i.bov = call i32 @llvm.fshl.i32(i32 %i.bot, i32 %i.bot, i32 5)
  %i.bow = xor i32 %i.bou, %i.bol
  %i.box = xor i32 %i.bow, %i.bok
  %i.boy = load i32, ptr %i.cv, align 8, !tbaa !13
  %i.boz = add i32 %i.boy, -899497514
  %i.bpa = add i32 %i.boz, %i.boc
  %i.bpb = add i32 %i.bpa, %i.box
  %i.bpc = add i32 %i.bpb, %i.bov                 ; 5 uses
  %i.bpd = call i32 @llvm.fshl.i32(i32 %i.bok, i32 %i.bok, i32 30) ; 3 uses
  %i.bpe = call i32 @llvm.fshl.i32(i32 %i.bpc, i32 %i.bpc, i32 5)
  %i.bpf = xor i32 %i.bpd, %i.bou
  %i.bpg = xor i32 %i.bpf, %i.bot
  %i.bph = load i32, ptr %i.cw, align 4, !tbaa !13
  %i.bpi = add i32 %i.bph, -899497514
  %i.bpj = add i32 %i.bpi, %i.bol
  %i.bpk = add i32 %i.bpj, %i.bpg
  %i.bpl = add i32 %i.bpk, %i.bpe                 ; 5 uses
  %i.bpm = call i32 @llvm.fshl.i32(i32 %i.bot, i32 %i.bot, i32 30) ; 3 uses
  %i.bpn = call i32 @llvm.fshl.i32(i32 %i.bpl, i32 %i.bpl, i32 5)
  %i.bpo = xor i32 %i.bpm, %i.bpd
  %i.bpp = xor i32 %i.bpo, %i.bpc
  %i.bpq = load i32, ptr %i.cx, align 8, !tbaa !13
  %i.bpr = add i32 %i.bpq, -899497514
  %i.bps = add i32 %i.bpr, %i.bou
  %i.bpt = add i32 %i.bps, %i.bpp
  %i.bpu = add i32 %i.bpt, %i.bpn                 ; 3 uses
  %i.bpv = call i32 @llvm.fshl.i32(i32 %i.bpc, i32 %i.bpc, i32 30) ; 2 uses
  %i.bpw = call i32 @llvm.fshl.i32(i32 %i.bpu, i32 %i.bpu, i32 5)
  %i.bpx = xor i32 %i.bpv, %i.bpm
  %i.bpy = xor i32 %i.bpx, %i.bpl
  %i.bpz = load i32, ptr %i.cy, align 4, !tbaa !13
  %i.bqa = call i32 @llvm.fshl.i32(i32 %i.bpl, i32 %i.bpl, i32 30)
  %i.bqb = add i32 %i.bpz, -899497514
  %i.bqc = add i32 %i.bqb, %i.bpd
  %i.bqd = add i32 %i.bqc, %i.bpy
  %i.bqe = add i32 %i.bqd, %i.bpw
  %i.bqf = add i32 %i.bqe, %i.bkb
  %i.bqg = add i32 %i.bkl, %i.bpu
  %i.bqh = add i32 %i.bka, %i.bqa
  %i.bqi = add i32 %i.bkk, %i.bpv
  %i.bqj = add i32 %i.bku, %i.bpm
  br label %sha1_recompression_step.exit

bb.g:                                             ; preds = %middle.block
  call void @abort() #9
  unreachable

sha1_recompression_step.exit:                     ; preds = %bb.e, %bb.f
  %.sroa.11.0 = phi i32 [ %i.alv, %bb.e ], [ %i.bqi, %bb.f ]
  %.sroa.8.0 = phi i32 [ %i.alu, %bb.e ], [ %i.bqh, %bb.f ]
  %.sroa.5.0 = phi i32 [ %i.alt, %bb.e ], [ %i.bqg, %bb.f ]
  %.sroa.0.0 = phi i32 [ %i.als, %bb.e ], [ %i.bqf, %bb.f ]
  %.sink.i = phi i32 [ %i.alw, %bb.e ], [ %i.bqj, %bb.f ]
  %i.bqk = load i32, ptr %i.b, align 8, !tbaa !13
  %i.bql = load i32, ptr %i.d, align 4, !tbaa !13
  %i.bqm = load i32, ptr %i.e, align 8, !tbaa !13
  %i.bqn = load i32, ptr %i.f, align 4, !tbaa !13
  %i.bqo = load i32, ptr %i.h, align 8, !tbaa !13
  %i.bqp = icmp eq i32 %.sroa.0.0, %i.bqk
  %i.bqq = icmp eq i32 %.sroa.5.0, %i.bql
  %i.bqr = and i1 %i.bqp, %i.bqq
  %i.bqs = icmp eq i32 %.sroa.8.0, %i.bqm
  %i.bqt = and i1 %i.bqr, %i.bqs
  %i.bqu = icmp eq i32 %.sroa.11.0, %i.bqn
  %i.bqv = and i1 %i.bqt, %i.bqu
  %i.bqw = icmp eq i32 %.sink.i, %i.bqo
  %i.bqx = and i1 %i.bqv, %i.bqw
  br i1 %i.bqx, label %bb.j, label %bb.h

bb.h:                                             ; preds = %sha1_recompression_step.exit
  %i.bqy = load i32, ptr %i.cz, align 4, !tbaa !18
  %.not59 = icmp eq i32 %i.bqy, 0
  br i1 %.not59, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bqz = load i32, ptr %i.j, align 8, !tbaa !13
  %i.bra = load i32, ptr %i.cj, align 4, !tbaa !13
  %i.brb = load <4 x i32>, ptr %i.c, align 8, !tbaa !13
  %i.brc = load <4 x i32>, ptr %i.t, align 4, !tbaa !13
  %i.brd = icmp eq i32 %i.bqz, %i.bra
  %i.bre = icmp ne <4 x i32> %i.brb, %i.brc
  %i.brf = bitcast <4 x i1> %i.bre to i4
  %i.brg = icmp eq i4 %i.brf, 0
  %op.rdx = and i1 %i.brg, %i.brd
  br i1 %op.rdx, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %sha1_recompression_step.exit
  %i.brh = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %i.brh, align 4, !tbaa !24
  %i.bri = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.brj = load i32, ptr %i.bri, align 8, !tbaa !20
  %.not60 = icmp eq i32 %i.brj, 0
  br i1 %.not60, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @sha1_compression_W(ptr noundef nonnull %i.b, ptr noundef nonnull %i.k)
  call fastcc void @sha1_compression_W(ptr noundef nonnull %i.b, ptr noundef nonnull %i.k)
  br label %.loopexit

bb.l:                                             ; preds = %bb.d, %bb.i, %bb.h
  %i.brk = add i32 %.054754, 1                    ; 2 uses
  %i.brl = zext i32 %i.brk to i64
  %i.brm = getelementptr inbounds nuw [344 x i8], ptr @sha1_dvs, i64 %i.brl ; 2 uses
  %i.brn = load i32, ptr %i.brm, align 4, !tbaa !31
  %.not57 = icmp eq i32 %i.brn, 0
  br i1 %.not57, label %.loopexit, label %bb.d, !llvm.loop !29

.loopexit:                                        ; preds = %bb.l, %.preheader751, %bb.c, %bb.j, %bb.k, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SHA1DCFinal(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !17     ; 4 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = and i32 %i.b, 63                         ; 5 uses
  %i.d = icmp samesign ult i32 %i.c, 56
  %.v = select i1 %i.d, i32 56, i32 120
  %i.e = sub nsw i32 %.v, %i.c                    ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 4 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw nsw i32 64, %i.c                 ; 2 uses
  %.not37.i = icmp ult i32 %i.e, %i.g
  br i1 %.not37.i, label %._crit_edge.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i32 %i.g to i64                ; 4 uses
  %i.i = add i64 %i.a, %i.h
  store i64 %i.i, ptr %1, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.k = and i64 %i.a, 63
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 16 dereferenceable(1) @sha1_padding, i64 %i.h, i1 false)
  tail call fastcc void @sha1_process(ptr noundef nonnull %1, ptr noundef nonnull %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr @sha1_padding, i64 %i.h
  %i.n = sub nuw nsw i64 %i.f, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.031.i = phi ptr [ %i.m, %bb.c ], [ @sha1_padding, %bb.a ] ; 2 uses
  %.030.i = phi i64 [ %i.n, %bb.c ], [ %i.f, %bb.a ] ; 3 uses
  %i.o = icmp samesign ugt i64 %.030.i, 63
  br i1 %i.o, label %.lr.ph.i, label %.._crit_edge.thread.i_crit_edge

.._crit_edge.thread.i_crit_edge:                  ; preds = %bb.d
  %.pre72 = load i64, ptr %1, align 8, !tbaa !17
  br label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.140.i = phi i64 [ %i.s, %.lr.ph.i ], [ %.030.i, %bb.d ]
  %.13239.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.031.i, %bb.d ] ; 2 uses
  %i.p = load i64, ptr %1, align 8, !tbaa !17
  %i.q = add i64 %i.p, 64
  store i64 %i.q, ptr %1, align 8, !tbaa !17
  tail call fastcc void @sha1_process(ptr noundef nonnull %1, ptr noundef %.13239.i)
  %i.r = getelementptr inbounds nuw i8, ptr %.13239.i, i64 64 ; 2 uses
  %i.s = add i64 %.140.i, -64                     ; 4 uses
  %i.t = icmp ugt i64 %i.s, 63
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not38.i = icmp eq i64 %i.s, 0
  %.pre73 = load i64, ptr %1, align 8, !tbaa !17  ; 2 uses
  br i1 %.not38.i, label %SHA1DCUpdate.exit, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.._crit_edge.thread.i_crit_edge, %._crit_edge.i, %bb.b
  %i.u = phi i64 [ %.pre73, %._crit_edge.i ], [ %i.a, %bb.b ], [ %.pre72, %.._crit_edge.thread.i_crit_edge ]
  %.1.lcssa57.i = phi i64 [ %i.s, %._crit_edge.i ], [ %i.f, %bb.b ], [ %.030.i, %.._crit_edge.thread.i_crit_edge ] ; 2 uses
  %.132.lcssa56.i = phi ptr [ %i.r, %._crit_edge.i ], [ @sha1_padding, %bb.b ], [ %.031.i, %.._crit_edge.thread.i_crit_edge ]
  %.05055.i = phi i32 [ 0, %._crit_edge.i ], [ %i.c, %bb.b ], [ 0, %.._crit_edge.thread.i_crit_edge ]
  %i.v = add i64 %i.u, %.1.lcssa57.i              ; 2 uses
  store i64 %i.v, ptr %1, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.x = zext nneg i32 %.05055.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %.132.lcssa56.i, i64 %.1.lcssa57.i, i1 false)
  br label %SHA1DCUpdate.exit

SHA1DCUpdate.exit:                                ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.z = phi i64 [ %i.v, %._crit_edge.thread.i ], [ %.pre73, %._crit_edge.i ]
  %i.aa = sub i64 %i.z, %i.f
  %i.ab = shl i64 %i.aa, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 84
  %2 = bitcast i64 %i.ab to <8 x i8>
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %3, ptr %i.ad, align 4, !tbaa !37
  tail call fastcc void @sha1_process(ptr noundef nonnull %1, ptr noundef nonnull %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !13
  %i.ag = lshr i32 %i.af, 24
  %i.ah = trunc nuw i32 %i.ag to i8
  store i8 %i.ah, ptr %0, align 1, !tbaa !37
  %i.ai = load i32, ptr %i.ae, align 8, !tbaa !13
  %i.aj = lshr i32 %i.ai, 16
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !37
  %i.am = load i32, ptr %i.ae, align 8, !tbaa !13
  %i.an = lshr i32 %i.am, 8
  %i.ao = trunc i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !37
  %i.aq = load i32, ptr %i.ae, align 8, !tbaa !13
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !13
  %i.av = lshr i32 %i.au, 24
  %i.aw = trunc nuw i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !37
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !13
  %i.az = lshr i32 %i.ay, 16
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !37
  %i.bc = load i32, ptr %i.at, align 4, !tbaa !13
  %i.bd = lshr i32 %i.bc, 8
  %i.be = trunc i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !37
  %i.bg = load i32, ptr %i.at, align 4, !tbaa !13
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !37
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !13
  %i.bl = lshr i32 %i.bk, 24
  %i.bm = trunc nuw i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !37
  %i.bo = load i32, ptr %i.bj, align 8, !tbaa !13
  %i.bp = lshr i32 %i.bo, 16
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !37
  %i.bs = load i32, ptr %i.bj, align 8, !tbaa !13
  %i.bt = lshr i32 %i.bs, 8
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !37
  %i.bw = load i32, ptr %i.bj, align 8, !tbaa !13
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !13
  %i.cb = lshr i32 %i.ca, 24
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !37
  %i.ce = load i32, ptr %i.bz, align 4, !tbaa !13
  %i.cf = lshr i32 %i.ce, 16
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !37
  %i.ci = load i32, ptr %i.bz, align 4, !tbaa !13
  %i.cj = lshr i32 %i.ci, 8
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !37
  %i.cm = load i32, ptr %i.bz, align 4, !tbaa !13
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !37
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !13
  %i.cr = lshr i32 %i.cq, 24
  %i.cs = trunc nuw i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !37
  %i.cu = load i32, ptr %i.cp, align 8, !tbaa !13
  %i.cv = lshr i32 %i.cu, 16
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !37
  %i.cy = load i32, ptr %i.cp, align 8, !tbaa !13
  %i.cz = lshr i32 %i.cy, 8
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.da, ptr %i.db, align 1, !tbaa !37
  %i.dc = load i32, ptr %i.cp, align 8, !tbaa !13
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !37
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !24
  ret i32 %i.dg
}

declare void @ubc_check(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sha1_compression_W(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly %1) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !13     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13   ; 2 uses
  %i.j = tail call i32 @llvm.fshl.i32(i32 %i.a, i32 %i.a, i32 5)
  %i.k = xor i32 %i.g, %i.e
  %i.l = and i32 %i.k, %i.c
  %i.m = xor i32 %i.l, %i.g
  %i.n = load i32, ptr %1, align 4, !tbaa !13
  %i.o = add i32 %i.j, 1518500249
  %i.p = add i32 %i.o, %i.i
  %i.q = add i32 %i.p, %i.n
  %i.r = add i32 %i.q, %i.m                       ; 5 uses
  %i.s = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 30) ; 4 uses
  %i.t = tail call i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 5)
  %i.u = xor i32 %i.s, %i.e
  %i.v = and i32 %i.u, %i.a
  %i.w = xor i32 %i.v, %i.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !13
  %i.z = add i32 %i.g, 1518500249
  %i.aa = add i32 %i.z, %i.w
  %i.ab = add i32 %i.aa, %i.y
  %i.ac = add i32 %i.ab, %i.t                     ; 5 uses
  %i.ad = tail call i32 @llvm.fshl.i32(i32 %i.a, i32 %i.a, i32 30) ; 4 uses
  %i.ae = tail call i32 @llvm.fshl.i32(i32 %i.ac, i32 %i.ac, i32 5)
  %i.af = xor i32 %i.s, %i.ad
  %i.ag = and i32 %i.r, %i.af
  %i.ah = xor i32 %i.ag, %i.s
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !13
  %i.ak = add i32 %i.e, 1518500249
  %i.al = add i32 %i.ak, %i.aj
  %i.am = add i32 %i.al, %i.ah
  %i.an = add i32 %i.am, %i.ae                    ; 5 uses
  %i.ao = tail call i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 30) ; 4 uses
  %i.ap = tail call i32 @llvm.fshl.i32(i32 %i.an, i32 %i.an, i32 5)
  %i.aq = xor i32 %i.ao, %i.ad
  %i.ar = and i32 %i.ac, %i.aq
  %i.as = xor i32 %i.ar, %i.ad
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !13
  %i.av = add i32 %i.s, 1518500249
  %i.aw = add i32 %i.av, %i.au
  %i.ax = add i32 %i.aw, %i.as
  %i.ay = add i32 %i.ax, %i.ap                    ; 5 uses
  %i.az = tail call i32 @llvm.fshl.i32(i32 %i.ac, i32 %i.ac, i32 30) ; 4 uses
  %i.ba = tail call i32 @llvm.fshl.i32(i32 %i.ay, i32 %i.ay, i32 5)
  %i.bb = xor i32 %i.az, %i.ao
  %i.bc = and i32 %i.an, %i.bb
  %i.bd = xor i32 %i.bc, %i.ao
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !13
  %i.bg = add i32 %i.ad, 1518500249
  %i.bh = add i32 %i.bg, %i.bf
  %i.bi = add i32 %i.bh, %i.bd
  %i.bj = add i32 %i.bi, %i.ba                    ; 5 uses
  %i.bk = tail call i32 @llvm.fshl.i32(i32 %i.an, i32 %i.an, i32 30) ; 4 uses
  %i.bl = tail call i32 @llvm.fshl.i32(i32 %i.bj, i32 %i.bj, i32 5)
  %i.bm = xor i32 %i.bk, %i.az
  %i.bn = and i32 %i.ay, %i.bm
  %i.bo = xor i32 %i.bn, %i.az
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !13
  %i.br = add i32 %i.bq, 1518500249
  %i.bs = add i32 %i.br, %i.ao
  %i.bt = add i32 %i.bs, %i.bo
  %i.bu = add i32 %i.bt, %i.bl                    ; 5 uses
  %i.bv = tail call i32 @llvm.fshl.i32(i32 %i.ay, i32 %i.ay, i32 30) ; 4 uses
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 5)
  %i.bx = xor i32 %i.bv, %i.bk
  %i.by = and i32 %i.bj, %i.bx
  %i.bz = xor i32 %i.by, %i.bk
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !13
  %i.cc = add i32 %i.cb, 1518500249
  %i.cd = add i32 %i.cc, %i.az
  %i.ce = add i32 %i.cd, %i.bz
  %i.cf = add i32 %i.ce, %i.bw                    ; 5 uses
  %i.cg = tail call i32 @llvm.fshl.i32(i32 %i.bj, i32 %i.bj, i32 30) ; 4 uses
  %i.ch = tail call i32 @llvm.fshl.i32(i32 %i.cf, i32 %i.cf, i32 5)
  %i.ci = xor i32 %i.cg, %i.bv
  %i.cj = and i32 %i.bu, %i.ci
  %i.ck = xor i32 %i.cj, %i.bv
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 28
end_hunk_0
