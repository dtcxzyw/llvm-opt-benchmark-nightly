inline.NumInlined: 74
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@rtmp_parse_result:bb.a
  %i.na = getelementptr i8, ptr %i.b, i64 5
  %i.nb = load i128, ptr %i.na, align 1
  %i.nc = xor i128 %i.nb, 604626351417441629216975330207688050
  %i.nd = or i128 %i.mz, %i.nc
  %i.ne = icmp ne i128 %i.nd, 0
  %i.nf = zext i1 %i.ne to i32
  %.not44.i.i = icmp eq i32 %i.nf, 0
  br i1 %.not44.i.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lv, i64 88
  store i32 3, ptr %i.ng, align 8, !tbaa !37
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.nh = load i128, ptr %i.b, align 16
  %i.ni = xor i128 %i.nh, 110567231195855739630536328258124014926
  %i.nj = getelementptr i8, ptr %i.b, i64 16
  %i.nk = load i32, ptr %i.nj, align 16
  %i.nl = zext i32 %i.nk to i128
  %i.nm = xor i128 %i.nl, 7368564
  %i.nn = or i128 %i.ni, %i.nm
  %i.no = icmp ne i128 %i.nn, 0
  %i.np = zext i1 %i.no to i32
  %.not46.i.i = icmp eq i32 %i.np, 0
  br i1 %.not46.i.i, label %bb.ce, label %.critedge54.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.nq = getelementptr inbounds nuw i8, ptr %i.lv, i64 88
  store i32 8, ptr %i.nq, align 8, !tbaa !37
  br label %.critedge54.i.i

.critedge54.i.i:                                  ; preds = %bb.ce, %bb.cd
  %i.nr = load i128, ptr %i.b, align 16
  %i.ns = xor i128 %i.nr, 113225687187425571376343942378684704078
  %i.nt = getelementptr i8, ptr %i.b, i64 15
  %i.nu = load i128, ptr %i.nt, align 1
  %i.nv = xor i128 %i.nu, 630345080654172787807476663217843797
  %i.nw = or i128 %i.ns, %i.nv
  %i.nx = icmp ne i128 %i.nw, 0
  %i.ny = zext i1 %i.nx to i32
  %.not48.i.i = icmp eq i32 %i.ny, 0
  br i1 %.not48.i.i, label %bb.cf, label %.critedge55.i.i

bb.cf:                                            ; preds = %.critedge54.i.i
  %i.nz = getelementptr inbounds nuw i8, ptr %i.lv, i64 88
  store i32 8, ptr %i.nz, align 8, !tbaa !37
  br label %.critedge55.i.i

.critedge55.i.i:                                  ; preds = %bb.cf, %.critedge54.i.i
  %i.oa = load i128, ptr %i.b, align 16
  %i.ob = xor i128 %i.oa, 153408608986315282524482385368319288654
  %i.oc = getelementptr i8, ptr %i.b, i64 16
  %i.od = load i64, ptr %i.oc, align 16
  %i.oe = zext i64 %i.od to i128
  %i.of = xor i128 %i.oe, 32776860187438696
  %i.og = or i128 %i.ob, %i.of
  %i.oh = icmp ne i128 %i.og, 0
  %i.oi = zext i1 %i.oh to i32
  %.not50.i.i = icmp eq i32 %i.oi, 0
  br i1 %.not50.i.i, label %bb.cg, label %.critedge56.i.i

bb.cg:                                            ; preds = %.critedge55.i.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.lv, i64 88
  store i32 5, ptr %i.oj, align 8, !tbaa !37
  br label %.critedge56.i.i

.critedge56.i.i:                                  ; preds = %bb.cg, %.critedge55.i.i
  %i.ok = load i128, ptr %i.b, align 16
  %i.ol = xor i128 %i.ok, 103920807577946590908398136475830740302
  %i.om = getelementptr i8, ptr %i.b, i64 6
  %i.on = load i128, ptr %i.om, align 2
  %i.oo = xor i128 %i.on, 630345080654171717318725973656297829
  %i.op = or i128 %i.ol, %i.oo
  %i.oq = icmp ne i128 %i.op, 0
  %i.or = zext i1 %i.oq to i32
  %.not52.i.i = icmp eq i32 %i.or, 0
  br i1 %.not52.i.i, label %bb.ch, label %handle_invoke_status.exit.i

bb.ch:                                            ; preds = %.critedge56.i.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.lv, i64 88
  store i32 3, ptr %i.os, align 8, !tbaa !37
  br label %handle_invoke_status.exit.i

handle_invoke_status.exit.i:                      ; preds = %bb.ch, %.critedge56.i.i, %bb.ca, %.critedge.i.i, %bb.bz, %bb.bv, %bb.bu
  %.037.i.i = phi i32 [ 0, %.critedge56.i.i ], [ -1, %bb.bz ], [ -1, %.critedge.i.i ], [ 0, %bb.ca ], [ 0, %bb.ch ], [ 1, %bb.bv ], [ 1, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %handle_invoke.exit

bb.ci:                                            ; preds = %bb.bt
  %i.ot = tail call i32 @ff_amf_match_string(ptr noundef %i.lt, i32 noundef %i.lu, ptr noundef nonnull @.str.106) #10
  %.not49.i = icmp eq i32 %i.ot, 0
  br i1 %.not49.i, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ou = call i32 @ff_rtmp_packet_create(ptr noundef nonnull %2, i32 noundef 3, i32 noundef 20, i32 noundef 0, i32 noundef 21) #10 ; 2 uses
  %i.ov = icmp slt i32 %i.ou, 0
  br i1 %i.ov, label %gen_check_bw.exit.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ow = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !63
  store ptr %i.ox, ptr %i.a, align 8, !tbaa !33
  call void @ff_amf_write_string(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.129) #10
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ci, i64 228 ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !64
  %i.pa = add nsw i32 %i.oz, 1                    ; 2 uses
  store i32 %i.pa, ptr %i.oy, align 4, !tbaa !64
  %i.pb = sitofp nsz i32 %i.pa to double
  call void @ff_amf_write_number(ptr noundef nonnull %i.a, double noundef %i.pb) #10
  call void @ff_amf_write_null(ptr noundef nonnull %i.a) #10
  %i.pc = call fastcc i32 @rtmp_send_packet(ptr noundef %i.ci, ptr noundef nonnull %2, i32 noundef 1)
  br label %gen_check_bw.exit.i

gen_check_bw.exit.i:                              ; preds = %bb.ck, %bb.cj
  %.0.i68.i = phi i32 [ %i.pc, %bb.ck ], [ %i.ou, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %handle_invoke.exit

bb.cl:                                            ; preds = %bb.ci
  %i.pd = load ptr, ptr %i.cj, align 8, !tbaa !63
  %i.pe = load i32, ptr %i.cl, align 8, !tbaa !66
  %i.pf = tail call i32 @ff_amf_match_string(ptr noundef %i.pd, i32 noundef %i.pe, ptr noundef nonnull @.str.125) #10
  %.not50.i = icmp eq i32 %i.pf, 0
  br i1 %.not50.i, label %bb.cm, label %bb.cr

bb.cm:                                            ; preds = %bb.cl
  %i.pg = load ptr, ptr %i.cj, align 8, !tbaa !63
  %i.ph = load i32, ptr %i.cl, align 8, !tbaa !66
  %i.pi = tail call i32 @ff_amf_match_string(ptr noundef %i.pg, i32 noundef %i.ph, ptr noundef nonnull @.str.126) #10
  %.not51.i = icmp eq i32 %i.pi, 0
  br i1 %.not51.i, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  %i.pj = load ptr, ptr %i.cj, align 8, !tbaa !63
  %i.pk = load i32, ptr %i.cl, align 8, !tbaa !66
  %i.pl = tail call i32 @ff_amf_match_string(ptr noundef %i.pj, i32 noundef %i.pk, ptr noundef nonnull @.str.127) #10
  %.not52.i = icmp eq i32 %i.pl, 0
  br i1 %.not52.i, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.pm = load ptr, ptr %i.cj, align 8, !tbaa !63
  %i.pn = load i32, ptr %i.cl, align 8, !tbaa !66
  %i.po = tail call i32 @ff_amf_match_string(ptr noundef %i.pm, i32 noundef %i.pn, ptr noundef nonnull @.str.128) #10
  %.not53.i = icmp eq i32 %i.po, 0
  br i1 %.not53.i, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.pp = load ptr, ptr %i.cj, align 8, !tbaa !63
  %i.pq = load i32, ptr %i.cl, align 8, !tbaa !66
  %i.pr = tail call i32 @ff_amf_match_string(ptr noundef %i.pp, i32 noundef %i.pq, ptr noundef nonnull @.str.129) #10
  %.not54.i = icmp eq i32 %i.pr, 0
  br i1 %.not54.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ps = load ptr, ptr %i.cj, align 8, !tbaa !63
  %i.pt = load i32, ptr %i.cl, align 8, !tbaa !66
  %i.pu = tail call i32 @ff_amf_match_string(ptr noundef %i.ps, i32 noundef %i.pt, ptr noundef nonnull @.str.130) #10
  %.not55.i = icmp eq i32 %i.pu, 0
  br i1 %.not55.i, label %handle_user_control.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl
  %i.pv = tail call fastcc i32 @send_invoke_response(ptr noundef nonnull %0, ptr noundef nonnull readonly %1)
  br label %handle_invoke.exit

handle_invoke.exit:                               ; preds = %handle_invoke_error.exit.i, %bb.bs, %handle_invoke_status.exit.i, %gen_check_bw.exit.i, %bb.cr
  %.037.i = phi i32 [ %.037.i.i, %handle_invoke_status.exit.i ], [ %.016.i.i, %handle_invoke_error.exit.i ], [ %.2.i.i, %bb.bs ], [ %i.pv, %bb.cr ], [ %.0.i68.i, %gen_check_bw.exit.i ] ; 2 uses
  %i.pw = icmp slt i32 %.037.i, 0
  br i1 %i.pw, label %handle_user_control.exit.thread, label %handle_user_control.exit

bb.cs:                                            ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 40, ptr noundef nonnull @.str.118, i32 noundef %i.n) #10
  br label %handle_user_control.exit

handle_user_control.exit:                         ; preds = %.thread.i.i, %bb.aq, %bb.cq, %handle_window_ack_size.exit, %handle_set_peer_bw.exit, %bb.l, %gen_swf_verification.exit.i, %gen_pong.exit.i, %bb.f, %bb.a, %bb.a, %bb.a, %bb.a, %handle_invoke.exit, %bb.c, %bb.cs, %bb.b
  br label %handle_user_control.exit.thread

handle_user_control.exit.thread:                  ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %gen_swf_verification.exit.thread.i, %gen_pong.exit.thread.i, %gen_swf_verification.exit.i, %gen_pong.exit.i, %bb.e, %handle_invoke.exit.thread5, %handle_invoke.exit, %bb.c, %handle_user_control.exit
  %.0 = phi i32 [ 0, %handle_user_control.exit ], [ -1094995529, %bb.p ], [ %i.o, %bb.c ], [ %i.eu, %handle_invoke.exit.thread5 ], [ -1094995529, %bb.e ], [ %.037.i, %handle_invoke.exit ], [ %i.av, %gen_swf_verification.exit.thread.i ], [ %.0.i.ph.i, %gen_pong.exit.thread.i ], [ %i.bh, %gen_swf_verification.exit.i ], [ %i.ar, %gen_pong.exit.i ], [ -1094995529, %bb.n ], [ -1094995529, %bb.r ], [ -1094995529, %bb.t ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @append_flv_data(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !66
  %i.g = sub nsw i32 %i.f, %2                     ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !103  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !67
  switch i32 %i.k, label %bb.d [
    i32 8, label %bb.b
    i32 9, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 1, ptr %3, align 8, !tbaa !54
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 1, ptr %i.l, align 4, !tbaa !55
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.m = icmp sgt i32 %i.g, 2147483632
  br i1 %i.m, label %bytestream2_put_be32.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.g, 15                     ; 3 uses
  %i.o = icmp slt i32 %i.g, -15
  br i1 %i.o, label %bytestream2_put_be32.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !81   ; 6 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %bb.g, label %update_offset.exit.thread80

bb.g:                                             ; preds = %bb.f
  %i.u = sub nsw i32 2147483632, %i.g
  %i.v = icmp sgt i32 %i.s, %i.u
  br i1 %i.v, label %bytestream2_put_be32.exit, label %update_offset.exit

update_offset.exit.thread80:                      ; preds = %bb.f
  store i32 %i.n, ptr %i.r, align 8, !tbaa !81
  store i32 0, ptr %i.p, align 4, !tbaa !82
  br label %bb.h

update_offset.exit:                               ; preds = %bb.g
  %i.w = add nsw i32 %i.s, %i.n                   ; 2 uses
  store i32 %i.w, ptr %i.r, align 8, !tbaa !81
  %i.x = icmp slt i32 %i.s, 0
  br i1 %i.x, label %bytestream2_put_be32.exit, label %bb.h

bb.h:                                             ; preds = %update_offset.exit.thread80, %update_offset.exit
  %i.y = phi i32 [ %i.n, %update_offset.exit.thread80 ], [ %i.w, %update_offset.exit ]
  %.012.i82 = phi i32 [ 0, %update_offset.exit.thread80 ], [ %i.s, %update_offset.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aa = sext i32 %i.y to i64
  %i.ab = tail call i32 @av_reallocp(ptr noundef nonnull %i.z, i64 noundef %i.aa) #10 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.p, align 4, !tbaa !82
  store i32 0, ptr %i.r, align 8, !tbaa !81
  br label %bytestream2_put_be32.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !83  ; 2 uses
  %i.ae = load i32, ptr %i.r, align 8, !tbaa !81  ; 3 uses
  %i.af = icmp ne ptr %i.ad, null
  %i.ag = icmp sgt i32 %i.ae, -1
  %or.cond.i = and i1 %i.af, %i.ag
  br i1 %or.cond.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, i32 noundef 151) #10
  tail call void @abort() #12
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ah = zext nneg i32 %i.ae to i64              ; 4 uses
  %i.ai = icmp samesign ugt i32 %i.ae, %.012.i82
  br i1 %i.ai, label %bb.m, label %bytestream2_put_be32.exit

bb.m:                                             ; preds = %bb.l
  %i.aj = zext nneg i32 %.012.i82 to i64          ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aj ; 12 uses
  %i.al = load i32, ptr %i.j, align 4, !tbaa !67
  %i.am = trunc i32 %i.al to i8
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !26
  %i.an = sub nsw i64 %i.aj, %i.ah
  %i.ao = icmp slt i64 %i.an, -3
  br i1 %i.ao, label %bb.n, label %bytestream2_put_be32.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.aq = trunc i32 %i.g to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 3
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !26
  %i.as = lshr i32 %i.g, 8
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store i8 %i.at, ptr %i.au, align 1, !tbaa !26
  %i.av = lshr i32 %i.g, 16
  %i.aw = trunc i32 %i.av to i8
  store i8 %i.aw, ptr %i.ap, align 1, !tbaa !26
  %reass.sub = sub nsw i64 %i.ah, %i.aj           ; 3 uses
  %i.ax = icmp sgt i64 %reass.sub, 6
  br i1 %i.ax, label %bb.o, label %bytestream2_put_be32.exit

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.az = trunc i32 %i.i to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 6
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !26
  %i.bb = lshr i32 %i.i, 8
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 5
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !26
  %i.be = lshr i32 %i.i, 16
  %i.bf = trunc i32 %i.be to i8
  store i8 %i.bf, ptr %i.ay, align 1, !tbaa !26
  %i.bg = add nuw nsw i64 %i.aj, 7
  %i.bh = icmp samesign ult i64 %i.bg, %i.ah
  br i1 %i.bh, label %bb.p, label %bytestream2_put_be32.exit

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 7
  %i.bj = lshr i32 %i.i, 24
  %i.bk = trunc nuw i32 %i.bj to i8
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !26
  %i.bl = icmp samesign ugt i64 %reass.sub, 10
  br i1 %i.bl, label %bb.q, label %bytestream2_put_be32.exit

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 10
  store i8 0, ptr %i.bn, align 1, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 9
  store i8 0, ptr %i.bo, align 1, !tbaa !26
  store i8 0, ptr %i.bm, align 1, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 11 ; 2 uses
  %gepdiff113 = add nsw i64 %reass.sub, -11
  %i.bq = zext i32 %i.g to i64
  %i.br = tail call i64 @llvm.umin.i64(i64 %gepdiff113, i64 %i.bq) ; 4 uses
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %.not18.i = icmp eq i32 %i.g, %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %i.d, i64 %i.br, i1 false)
  br i1 %.not18.i, label %bb.r, label %bytestream2_put_be32.exit

bb.r:                                             ; preds = %bb.q
  %i.bt = add nsw i64 %i.ah, -11
  %i.bu = add nuw nsw i64 %i.br, %i.aj
  %gepdiff114 = sub nsw i64 %i.bt, %i.bu
  %i.bv = icmp sgt i64 %gepdiff114, 3
  br i1 %i.bv, label %bb.s, label %bytestream2_put_be32.exit

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.br
  %i.bx = add nuw nsw i32 %i.g, 11
  %i.by = tail call i32 @llvm.bswap.i32(i32 %i.bx)
  store i32 %i.by, ptr %i.bw, align 1, !tbaa !26
  br label %bytestream2_put_be32.exit

bytestream2_put_be32.exit:                        ; preds = %bb.q, %bb.l, %bb.p, %bb.o, %bb.n, %bb.m, %bb.e, %bb.g, %bb.s, %bb.r, %update_offset.exit, %bb.d, %bb.i
  %.0 = phi i32 [ 0, %bb.s ], [ -34, %bb.d ], [ %i.ab, %bb.i ], [ %i.s, %update_offset.exit ], [ 0, %bb.r ], [ -34, %bb.g ], [ 0, %bb.o ], [ -22, %bb.e ], [ 0, %bb.l ], [ 0, %bb.p ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.q ]
  ret i32 %.0
}

declare i32 @ff_amf_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @send_invoke_response(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 7 uses
  %i.c = alloca [64 x i8], align 16               ; 13 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 11 uses
  %2 = alloca %struct.RTMPPacket, align 8         ; 11 uses
  %3 = alloca %struct.GetByteContext, align 8     ; 9 uses
  %i.f = alloca [160 x i8], align 16              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store ptr null, ptr %i.e, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !66   ; 2 uses
  %i.m = icmp ne ptr %i.j, null
  %i.n = icmp sgt i32 %i.l, -1
  %or.cond.i = and i1 %i.m, %i.n
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, i32 noundef 141) #10
  tail call void @abort() #12
  unreachable

bytestream2_init.exit:                            ; preds = %bb.a
  store ptr %i.j, ptr %3, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.j, ptr %i.o, align 8, !tbaa !70
  %i.p = zext nneg i32 %i.l to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !71
  %i.s = call i32 @ff_amf_read_string(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i32 noundef 64, ptr noundef nonnull %i.d) #10
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bytestream2_init.exit
end_hunk_0
