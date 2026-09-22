Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-mtp2?download=true
inline.NumInlined: 30
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_mtp2_bitstream:bb.a
  %i.dq = sext i32 %i.dh to i64
  %bcmp.i19.i = tail call i32 @bcmp(ptr %i.dn, ptr %i.dp, i64 %i.dq)
  %i.dr = icmp eq i32 %bcmp.i19.i, 0
  br i1 %i.dr, label %bb.s, label %addresses_equal.exit.i

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ds = getelementptr i8, ptr %.0152, i64 48
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = load i32, ptr %i.i, align 8
  %i.dv = icmp eq i32 %i.dt, %i.du
  br i1 %i.dv, label %bb.t, label %addresses_equal.exit.i

bb.t:                                             ; preds = %bb.s
  %i.dw = getelementptr i8, ptr %.0152, i64 52
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = load i32, ptr %i.k, align 4
  %i.dz = icmp eq i32 %i.dx, %i.dy
  br i1 %i.dz, label %get_direction_state.exit, label %addresses_equal.exit.i

addresses_equal.exit.i:                           ; preds = %bb.t, %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.l, %bb.k
  %i.ea = getelementptr i8, ptr %.0152, i64 24
  %i.eb = load i32, ptr %i.ea, align 8
  %i.ec = icmp eq i32 %i.eb, %i.co
  br i1 %i.ec, label %bb.u, label %addresses_equal.exit23.i

bb.u:                                             ; preds = %addresses_equal.exit.i
  %i.ed = getelementptr i8, ptr %.0152, i64 28
  %i.ee = load i32, ptr %i.ed, align 4            ; 3 uses
  %i.ef = getelementptr i8, ptr %1, i64 212
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = icmp eq i32 %i.ee, %i.eg
  br i1 %i.eh, label %bb.v, label %addresses_equal.exit23.i

bb.v:                                             ; preds = %bb.u
  %i.ei = icmp eq i32 %i.ee, 0
  br i1 %i.ei, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = getelementptr i8, ptr %.0152, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = getelementptr i8, ptr %1, i64 216
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = sext i32 %i.ee to i64
  %bcmp.i22.i = tail call i32 @bcmp(ptr %i.ek, ptr %i.em, i64 %i.en)
  %i.eo = icmp eq i32 %bcmp.i22.i, 0
  br i1 %i.eo, label %bb.x, label %addresses_equal.exit23.i

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ep = load i32, ptr %i.e, align 8
  %i.eq = icmp eq i32 %i.cn, %i.ep
  br i1 %i.eq, label %bb.y, label %addresses_equal.exit23.i

bb.y:                                             ; preds = %bb.x
  %i.er = getelementptr i8, ptr %.0152, i64 4
  %i.es = load i32, ptr %i.er, align 4            ; 3 uses
  %i.et = getelementptr i8, ptr %1, i64 236
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = icmp eq i32 %i.es, %i.eu
  br i1 %i.ev, label %bb.z, label %addresses_equal.exit23.i

bb.z:                                             ; preds = %bb.y
  %i.ew = icmp eq i32 %i.es, 0
  br i1 %i.ew, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ex = getelementptr i8, ptr %.0152, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr i8, ptr %1, i64 240
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = sext i32 %i.es to i64
  %bcmp.i25.i = tail call i32 @bcmp(ptr %i.ey, ptr %i.fa, i64 %i.fb)
  %i.fc = icmp eq i32 %bcmp.i25.i, 0
  br i1 %i.fc, label %bb.ab, label %addresses_equal.exit23.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fd = getelementptr i8, ptr %.0152, i64 52
  %i.fe = load i32, ptr %i.fd, align 4
  %i.ff = load i32, ptr %i.i, align 8
  %i.fg = icmp eq i32 %i.fe, %i.ff
  br i1 %i.fg, label %bb.ac, label %addresses_equal.exit23.i

bb.ac:                                            ; preds = %bb.ab
  %i.fh = getelementptr i8, ptr %.0152, i64 48
  %i.fi = load i32, ptr %i.fh, align 8
  %i.fj = load i32, ptr %i.k, align 4
  %i.fk = icmp eq i32 %i.fi, %i.fj
  br i1 %i.fk, label %get_direction_state.exit, label %addresses_equal.exit23.i

addresses_equal.exit23.i:                         ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.w, %bb.u, %addresses_equal.exit.i, %bb.j
  br label %get_direction_state.exit

get_direction_state.exit:                         ; preds = %bb.t, %bb.ac, %addresses_equal.exit23.i
  %i.fl = phi i1 [ true, %addresses_equal.exit23.i ], [ true, %bb.t ], [ false, %bb.ac ] ; 2 uses
  %i.fm = tail call ptr @wmem_file_scope()
  %i.fn = load i32, ptr @proto_mtp2, align 4
  %i.fo = load ptr, ptr %i.a, align 8
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = tail call ptr @p_get_proto_data(ptr noundef %i.fm, ptr noundef %1, i32 noundef %i.fn, i32 noundef %i.fp) ; 2 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %get_direction_state.exit
  %i.fs = tail call ptr @wmem_file_scope()
  %i.ft = tail call noalias dereferenceable_or_null(20) ptr @wmem_alloc(ptr noundef %i.fs, i64 noundef 20) #9 ; 8 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 2
  %i.fv = getelementptr i8, ptr %i.ft, i64 3
  %i.fw = getelementptr i8, ptr %i.ft, i64 16
  %i.fx = getelementptr i8, ptr %i.ft, i64 8
  %. = select i1 %i.fl, i64 56, i64 64
  %i.fy = getelementptr i8, ptr %.0152, i64 %.
  %i.fz = load ptr, ptr %i.fy, align 8            ; 6 uses
  %i.ga = load i16, ptr %i.fz, align 4
  store i16 %i.ga, ptr %i.ft, align 4
  %i.gb = getelementptr i8, ptr %i.fz, i64 2
  %i.gc = load i8, ptr %i.gb, align 2
  store i8 %i.gc, ptr %i.fu, align 2
  %i.gd = getelementptr i8, ptr %i.fz, i64 3
  %i.ge = load i8, ptr %i.gd, align 1
  store i8 %i.ge, ptr %i.fv, align 1
  %i.gf = getelementptr i8, ptr %i.fz, i64 12
  %i.gg = load i32, ptr %i.gf, align 4
  store i32 %i.gg, ptr %i.fw, align 4
  %i.gh = getelementptr i8, ptr %i.fz, i64 8
  %i.gi = load i32, ptr %i.gh, align 4
  store i32 %i.gi, ptr %i.fx, align 4
  %.sink.in = getelementptr i8, ptr %i.fz, i64 4
  %.sink = load i8, ptr %.sink.in, align 4
  %i.gj = getelementptr i8, ptr %i.ft, i64 4
  store i8 %.sink, ptr %i.gj, align 4
  %i.gk = tail call ptr @wmem_file_scope()
  %i.gl = load i32, ptr @proto_mtp2, align 4
  %i.gm = load ptr, ptr %i.a, align 8
  %i.gn = load i32, ptr %i.gm, align 8
  tail call void @p_add_proto_data(ptr noundef %i.gk, ptr noundef %1, i32 noundef %i.gl, i32 noundef %i.gn, ptr noundef %i.ft)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %get_direction_state.exit
  %.0151 = phi ptr [ %i.ft, %bb.ad ], [ %i.fq, %get_direction_state.exit ] ; 8 uses
  %i.go = getelementptr i8, ptr %.0151, i64 8     ; 4 uses
  %i.gp = load i32, ptr %i.go, align 4            ; 2 uses
  %i.gq = getelementptr i8, ptr %.0151, i64 2
  %i.gr = load i8, ptr %i.gq, align 2             ; 2 uses
  %i.gs = getelementptr i8, ptr %.0151, i64 3
  %i.gt = load i8, ptr %i.gs, align 1             ; 2 uses
  %i.gu = getelementptr i8, ptr %.0151, i64 16
  %i.gv = load i32, ptr %i.gu, align 4            ; 2 uses
  %i.gw = getelementptr i8, ptr %.0151, i64 4
  %i.gx = load i8, ptr %i.gw, align 4             ; 2 uses
  %i.gy = load i16, ptr %.0151, align 4           ; 3 uses
  %i.gz = getelementptr i8, ptr %1, i64 416       ; 8 uses
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = tail call noalias dereferenceable_or_null(48) ptr @wmem_alloc(ptr noundef %i.ha, i64 noundef 48) #9 ; 16 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 16     ; 3 uses
  %i.hd = getelementptr i8, ptr %i.hb, i64 17     ; 2 uses
  %i.he = getelementptr i8, ptr %i.hb, i64 8      ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(18) %i.hb, i8 0, i64 18, i1 false)
  %i.hf = load ptr, ptr %i.gz, align 8
  %i.hg = tail call ptr @wmem_list_new(ptr noundef %i.hf)
  %i.hh = getelementptr i8, ptr %i.hb, i64 32     ; 4 uses
  store ptr %i.hg, ptr %i.hh, align 8
  %i.hi = getelementptr i8, ptr %i.hb, i64 43     ; 4 uses
  store i8 0, ptr %i.hi, align 1
  %i.hj = getelementptr i8, ptr %i.hb, i64 42     ; 4 uses
  store i8 0, ptr %i.hj, align 2
  %i.hk = trunc i16 %i.gy to i1
  %.sroa.3.0.extract.shift.i = lshr i16 %i.gy, 8
  %.sroa.3.0.extract.trunc.i = trunc nuw i16 %.sroa.3.0.extract.shift.i to i8
  %.0.i170 = select i1 %i.hk, i8 %.sroa.3.0.extract.trunc.i, i8 0 ; 2 uses
  %i.hl = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %i.hm = and i32 %i.hl, 255                      ; 2 uses
  %.not179.i = icmp eq i32 %i.hm, 0
  br i1 %.not179.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ae
  %.mask.i = and i16 %i.gy, 1
  %i.hn = icmp eq i16 %.mask.i, 0
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i
  %i.ho = phi i8 [ 0, %.lr.ph.i ], [ %i.lr, %bb.ag ]
  %indvars.iv181.i = phi i32 [ 0, %.lr.ph.i ], [ %indvars.iv.next182.i, %bb.ag ] ; 3 uses
  %.1172.i = phi i8 [ %.0.i170, %.lr.ph.i ], [ %i.id, %bb.ag ]
  %.0103171.i = phi i8 [ %i.gr, %.lr.ph.i ], [ %.5.i, %bb.ag ]
  %.0108170.i = phi i32 [ %i.gv, %.lr.ph.i ], [ %.4112.i, %bb.ag ]
  %.0113169.i = phi i8 [ %i.gx, %.lr.ph.i ], [ %.3116.i, %bb.ag ]
  %.0118167.i = phi i8 [ %i.gt, %.lr.ph.i ], [ %.5123.i, %bb.ag ]
  %.0145166.i = phi i8 [ 0, %.lr.ph.i ], [ %.4149.i, %bb.ag ]
  %.0150165.i = phi ptr [ null, %.lr.ph.i ], [ %.4154.i, %bb.ag ]
  %i.hp = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %indvars.iv181.i)
  %i.hq = zext i8 %i.hp to i32
  %i.hr = icmp eq i32 %indvars.iv181.i, 0
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ay
  %indvars.iv.next182.i = add nuw nsw i32 %indvars.iv181.i, 1 ; 2 uses
  %exitcond184.not.i = icmp eq i32 %indvars.iv.next182.i, %i.hm
  br i1 %exitcond184.not.i, label %._crit_edge.i, label %bb.af, !llvm.loop !8

bb.ah:                                            ; preds = %bb.ay, %bb.af
  %i.hs = phi i8 [ %i.ho, %bb.af ], [ %i.lr, %bb.ay ] ; 2 uses
  %indvars.iv.i = phi i32 [ 1, %bb.af ], [ %indvars.iv.next.i, %bb.ay ] ; 6 uses
  %.2164.i = phi i8 [ %.1172.i, %bb.af ], [ %i.id, %bb.ay ]
  %.1104163.i = phi i8 [ %.0103171.i, %bb.af ], [ %.5.i, %bb.ay ] ; 3 uses
  %.1109160.i = phi i32 [ %.0108170.i, %bb.af ], [ %.4112.i, %bb.ay ] ; 4 uses
  %.1114159.i = phi i8 [ %.0113169.i, %bb.af ], [ %.3116.i, %bb.ay ] ; 5 uses
  %.1119158.i = phi i8 [ %.0118167.i, %bb.af ], [ %.5123.i, %bb.ay ] ; 4 uses
  %.1146157.i = phi i8 [ %.0145166.i, %bb.af ], [ %.4149.i, %bb.ay ] ; 9 uses
  %.1151156.i = phi ptr [ %.0150165.i, %bb.af ], [ %.4154.i, %bb.ay ] ; 25 uses
  %.1151156.i218 = ptrtoaddr ptr %.1151156.i to i64
  %i.ht = load i8, ptr @reverse_bit_order_mtp2, align 1, !range !6, !noundef !7
  %i.hu = icmp eq i8 %i.ht, 0
  %i.hv = add nsw i32 %indvars.iv.i, -1           ; 2 uses
  %i.hw = shl nuw nsw i32 1, %i.hv
  %i.hx = lshr i32 128, %i.hv
  %.sink.i.i = select i1 %i.hu, i32 %i.hx, i32 %i.hw
  %i.hy = and i32 %.sink.i.i, %i.hq
  %.0.i.i = icmp ne i32 %i.hy, 0
  %i.hz = zext i8 %.2164.i to i32
  %i.ia = shl nuw nsw i32 %i.hz, 1
  %i.ib = zext i1 %.0.i.i to i32                  ; 2 uses
  %i.ic = or disjoint i32 %i.ia, %i.ib            ; 4 uses
  %i.id = trunc i32 %i.ic to i8                   ; 4 uses
  %.not128.i = icmp eq i32 %.1109160.i, 0
  br i1 %.not128.i, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ie = and i32 %i.ic, 127
  %or.cond.i = icmp eq i32 %i.ie, 62
  br i1 %or.cond.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.if = add i8 %.1114159.i, 1
  %i.ig = and i8 %i.if, 7
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai
  %i.ih = zext nneg i8 %.1119158.i to i32
  %i.ii = shl nuw i32 %i.ib, %i.ih
  %i.ij = trunc i32 %i.ii to i8
  %i.ik = or i8 %.1104163.i, %i.ij                ; 4 uses
  %i.il = add i8 %.1119158.i, 1                   ; 2 uses
  %i.im = icmp eq i8 %i.il, 8
  br i1 %i.im, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.not129.i = icmp eq i8 %i.ik, 126
  br i1 %.not129.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.in = load ptr, ptr %i.gz, align 8            ; 2 uses
  %i.io = icmp eq i8 %.1146157.i, 0
  br i1 %i.io, label %bb.an, label %iter.check

bb.an:                                            ; preds = %bb.am
  %i.ip = tail call noalias dereferenceable_or_null(1) ptr @wmem_alloc(ptr noundef %i.in, i64 noundef 1) #9 ; 2 uses
  store i8 %i.ik, ptr %i.ip, align 1
  br label %new_byte.exit.i

iter.check:                                       ; preds = %bb.am
  %i.iq = zext i8 %.1146157.i to i64              ; 10 uses
  %i.ir = add nuw nsw i64 %i.iq, 1
  %i.is = tail call noalias ptr @wmem_alloc(ptr noundef %i.in, i64 noundef %i.ir) #9 ; 23 uses
  %min.iters.check = icmp ult i8 %.1146157.i, 4
  %i.it = ptrtoaddr ptr %i.is to i64
  %i.iu = sub i64 %.1151156.i218, %i.it
  %diff.check = icmp ugt i64 %i.iu, -32
  %or.cond227 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond227, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check219 = icmp ult i8 %.1146157.i, 32
  br i1 %min.iters.check219, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.iv = and i64 %i.iq, 28
  %n.vec = and i64 %i.iq, 224                     ; 9 uses
  %i.iw = getelementptr i8, ptr %.1151156.i, i64 16
  %wide.load = load <16 x i8>, ptr %.1151156.i, align 1
  %wide.load220 = load <16 x i8>, ptr %i.iw, align 1
  %i.ix = getelementptr i8, ptr %i.is, i64 16
  store <16 x i8> %wide.load, ptr %i.is, align 1
  store <16 x i8> %wide.load220, ptr %i.ix, align 1
  %i.iy = icmp eq i64 %n.vec, 32
  br i1 %i.iy, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.iz = getelementptr i8, ptr %.1151156.i, i64 32
  %i.ja = getelementptr i8, ptr %.1151156.i, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.iz, align 1
  %wide.load220.1 = load <16 x i8>, ptr %i.ja, align 1
  %i.jb = getelementptr i8, ptr %i.is, i64 32
  %i.jc = getelementptr i8, ptr %i.is, i64 48
  store <16 x i8> %wide.load.1, ptr %i.jb, align 1
  store <16 x i8> %wide.load220.1, ptr %i.jc, align 1
  %i.jd = icmp eq i64 %n.vec, 64
  br i1 %i.jd, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.je = getelementptr i8, ptr %.1151156.i, i64 64
  %i.jf = getelementptr i8, ptr %.1151156.i, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.je, align 1
  %wide.load220.2 = load <16 x i8>, ptr %i.jf, align 1
  %i.jg = getelementptr i8, ptr %i.is, i64 64
  %i.jh = getelementptr i8, ptr %i.is, i64 80
  store <16 x i8> %wide.load.2, ptr %i.jg, align 1
  store <16 x i8> %wide.load220.2, ptr %i.jh, align 1
  %i.ji = icmp eq i64 %n.vec, 96
  br i1 %i.ji, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.jj = getelementptr i8, ptr %.1151156.i, i64 96
  %i.jk = getelementptr i8, ptr %.1151156.i, i64 112
  %wide.load.3 = load <16 x i8>, ptr %i.jj, align 1
  %wide.load220.3 = load <16 x i8>, ptr %i.jk, align 1
  %i.jl = getelementptr i8, ptr %i.is, i64 96
  %i.jm = getelementptr i8, ptr %i.is, i64 112
  store <16 x i8> %wide.load.3, ptr %i.jl, align 1
  store <16 x i8> %wide.load220.3, ptr %i.jm, align 1
  %i.jn = icmp eq i64 %n.vec, 128
  br i1 %i.jn, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.jo = getelementptr i8, ptr %.1151156.i, i64 128
  %i.jp = getelementptr i8, ptr %.1151156.i, i64 144
  %wide.load.4 = load <16 x i8>, ptr %i.jo, align 1
  %wide.load220.4 = load <16 x i8>, ptr %i.jp, align 1
  %i.jq = getelementptr i8, ptr %i.is, i64 128
  %i.jr = getelementptr i8, ptr %i.is, i64 144
  store <16 x i8> %wide.load.4, ptr %i.jq, align 1
  store <16 x i8> %wide.load220.4, ptr %i.jr, align 1
  %i.js = icmp eq i64 %n.vec, 160
  br i1 %i.js, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.jt = getelementptr i8, ptr %.1151156.i, i64 160
  %i.ju = getelementptr i8, ptr %.1151156.i, i64 176
  %wide.load.5 = load <16 x i8>, ptr %i.jt, align 1
  %wide.load220.5 = load <16 x i8>, ptr %i.ju, align 1
  %i.jv = getelementptr i8, ptr %i.is, i64 160
  %i.jw = getelementptr i8, ptr %i.is, i64 176
  store <16 x i8> %wide.load.5, ptr %i.jv, align 1
  store <16 x i8> %wide.load220.5, ptr %i.jw, align 1
  %i.jx = icmp eq i64 %n.vec, 192
  br i1 %i.jx, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.jy = getelementptr i8, ptr %.1151156.i, i64 192
  %i.jz = getelementptr i8, ptr %.1151156.i, i64 208
  %wide.load.6 = load <16 x i8>, ptr %i.jy, align 1
  %wide.load220.6 = load <16 x i8>, ptr %i.jz, align 1
  %i.ka = getelementptr i8, ptr %i.is, i64 192
  %i.kb = getelementptr i8, ptr %i.is, i64 208
  store <16 x i8> %wide.load.6, ptr %i.ka, align 1
  store <16 x i8> %wide.load220.6, ptr %i.kb, align 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.iq
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.iv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec221 = and i64 %i.iq, 252                  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index222 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next224, %vec.epilog.vector.body ] ; 3 uses
  %i.kc = getelementptr i8, ptr %.1151156.i, i64 %index222
  %wide.load223 = load <4 x i8>, ptr %i.kc, align 1
  %i.kd = getelementptr i8, ptr %i.is, i64 %index222
  store <4 x i8> %wide.load223, ptr %i.kd, align 1
  %index.next224 = add nuw i64 %index222, 4       ; 2 uses
  %i.ke = icmp eq i64 %index.next224, %n.vec221
  br i1 %i.ke, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n225 = icmp eq i64 %n.vec221, %i.iq
  br i1 %cmp.n225, label %._crit_edge.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec221, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.iq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.kf = getelementptr i8, ptr %.1151156.i, i64 %indvars.iv.i.i.prol
  %i.kg = load i8, ptr %i.kf, align 1
  %i.kh = getelementptr i8, ptr %i.is, i64 %indvars.iv.i.i.prol
  store i8 %i.kg, ptr %i.kh, align 1
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !10

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ki = sub nsw i64 %indvars.iv.i.i.ph, %i.iq
  %i.kj = icmp ugt i64 %i.ki, -4
  br i1 %i.kj, label %._crit_edge.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.kk = getelementptr i8, ptr %.1151156.i, i64 %indvars.iv.i.i
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = getelementptr i8, ptr %i.is, i64 %indvars.iv.i.i
  store i8 %i.kl, ptr %i.km, align 1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
end_hunk_0
