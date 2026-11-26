Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-cops?download=true
inline.NumInlined: 104
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_cops_pdu:bb.a
  %.2.i.i = phi i32 [ %i.hb, %bb.bh ], [ %i.go, %bb.bg ]
  %.0291.i.i = phi ptr [ %i.hi, %bb.bh ], [ %i.gv, %bb.bg ]
  %i.ho = add i32 %.2.i.i, 2
  %i.hp = load i32, ptr @hf_cops_pdp_tcp_port, align 4
  %i.hq = call ptr @proto_tree_add_uint(ptr noundef %.0291.i.i, i32 noundef %i.hp, ptr noundef %0, i32 noundef %i.ho, i32 noundef 2, i32 noundef %.pre-phi.i.i) ; 0 uses
  br label %dissect_cops_object.exit

bb.bj:                                            ; preds = %cops_c_type_to_str.exit75.i
  %.not300.i.i = icmp eq i8 %i.ba, 1
  br i1 %.not300.i.i, label %bb.bk, label %dissect_cops_object.exit

bb.bk:                                            ; preds = %bb.bj
  %i.hr = add i32 %.0227276, 6                    ; 3 uses
  %i.hs = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.hr)
  %i.ht = icmp eq i16 %i.hs, 0
  %i.hu = load i32, ptr @hf_cops_accttimer, align 4 ; 2 uses
  br i1 %i.ht, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hv = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.bm, i32 noundef %i.hu, ptr noundef %0, i32 noundef %i.hr, i32 noundef 2, i32 noundef 0, ptr noundef @.str.802) ; 0 uses
  br label %dissect_cops_object.exit

bb.bm:                                            ; preds = %bb.bk
  %i.hw = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.hu, ptr noundef %0, i32 noundef %i.hr, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %dissect_cops_object.exit

bb.bn:                                            ; preds = %cops_c_type_to_str.exit75.i
  %.not.i.i = icmp eq i8 %i.ba, 1
  br i1 %.not.i.i, label %bb.bo, label %dissect_cops_object.exit

bb.bo:                                            ; preds = %bb.bn
  %i.hx = load i32, ptr @hf_cops_key_id, align 4
  %i.hy = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.hx, ptr noundef %0, i32 noundef %i.cc, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.hz = load i32, ptr @hf_cops_seq_num, align 4
  %i.ia = add i32 %.0227276, 8
  %i.ib = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.hz, ptr noundef %0, i32 noundef %i.ia, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ic = load i32, ptr @hf_cops_keyed_message_digest, align 4
  %i.id = add i32 %.0227276, 12
  %i.ie = add nsw i32 %i.as, -12
  %i.if = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.ic, ptr noundef %0, i32 noundef %i.id, i32 noundef %i.ie, i32 noundef 0) ; 0 uses
  br label %dissect_cops_object.exit

bb.bp:                                            ; preds = %cops_c_type_to_str.exit75.i
  %i.ig = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.bm, ptr noundef %1, ptr noundef @ei_cops_unknown_c_num, ptr noundef %0, i32 noundef %i.cc, i32 noundef range(i32 0, 65532) %i.cd, ptr noundef @.str.803, i32 noundef %i.bc, i32 noundef range(i32 0, 65532) %i.cd) ; 0 uses
  br label %dissect_cops_object.exit

dissect_cops_object.exit:                         ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.ab, %bb.ad, %bb.ae, %bb.ag, %bb.ah, %bb.aj, %.thread.i.i, %bb.ak, %bb.al, %bb.an, %bb.ao, %bb.aq, %bb.as, %bb.at, %bb.au, %bb.av, %bb.ax, %bb.ay, %bb.az, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bi, %bb.bj, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp
  %.1258 = phi i32 [ %.0257275, %bb.bp ], [ %i.cg, %bb.w ], [ %.0257275, %bb.v ], [ %.0257275, %bb.x ], [ %.0257275, %bb.y ], [ %.0257275, %bb.ab ], [ %.0257275, %bb.ad ], [ %.0257275, %bb.ae ], [ %.0257275, %bb.aj ], [ %.0257275, %bb.ak ], [ %.0257275, %.thread.i.i ], [ %.0257275, %bb.ag ], [ %.0257275, %bb.ah ], [ %.0257275, %bb.an ], [ %.0257275, %bb.ao ], [ %.0257275, %bb.al ], [ %.0257275, %bb.aq ], [ %.0257275, %bb.as ], [ %.0257275, %bb.au ], [ %.0257275, %bb.at ], [ %.0257275, %bb.ax ], [ %.0257275, %bb.ay ], [ %.0257275, %bb.av ], [ %.0257275, %bb.bb ], [ %.0257275, %bb.bc ], [ %.0257275, %bb.az ], [ %.0257275, %bb.be ], [ %.0257275, %bb.bd ], [ %.0257275, %bb.bf ], [ %.0257275, %bb.bi ], [ %.0257275, %bb.bl ], [ %.0257275, %bb.bm ], [ %.0257275, %bb.bj ], [ %.0257275, %bb.bo ], [ %.0257275, %bb.bn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ih = and i16 %i.ar, 3
  %.not61.i = icmp eq i16 %i.ih, 0
  %reass.sub.i = and i32 %i.as, 65532
  %i.ii = add nuw nsw i32 %reass.sub.i, 4
  %.0.i = select i1 %.not61.i, i32 %i.as, i32 %i.ii
  %i.ij = add i32 %.0.i, %.0227276                ; 3 uses
  %i.ik = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ij)
  %i.il = icmp ugt i32 %i.ik, 3
  br i1 %i.il, label %bb.b, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %dissect_cops_object.exit, %bb.a
  %.0257.lcssa = phi i32 [ 0, %bb.a ], [ %.1258, %dissect_cops_object.exit ] ; 3 uses
  %.0227.lcssa = phi i32 [ 8, %bb.a ], [ %i.ij, %dissect_cops_object.exit ] ; 4 uses
  %i.im = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0227.lcssa) ; 4 uses
  %i.in = icmp sgt i32 %i.im, 0
  br i1 %i.in, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %._crit_edge
  %i.io = icmp eq i32 %i.im, 1
  %i.ip = select i1 %i.io, ptr @.str.765, ptr @.str.766
  %i.iq = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef @ei_cops_trailing_garbage, ptr noundef %0, i32 noundef %.0227.lcssa, i32 noundef %i.im, ptr noundef @.str.764, i32 noundef %i.im, ptr noundef nonnull %i.ip) ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge
  %i.ir = icmp eq i32 %.0257.lcssa, 0
  %i.is = add i8 %i.h, -11
  %i.it = icmp ult i8 %i.is, -6
  %or.cond17 = and i1 %i.it, %i.ir
  br i1 %or.cond17, label %bb.dc, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.iu = icmp eq i8 %i.h, 1
  br i1 %i.iu, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.iv = icmp ne i8 %i.h, 2
  %or.cond19 = or i1 %i.iv, %i.t
  %i.iw = add i8 %i.h, -7
  %i.ix = icmp ult i8 %i.iw, -2
  %or.cond25.not = and i1 %i.ix, %or.cond19
  br i1 %or.cond25.not, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.iy = icmp eq i8 %i.h, 9
  %i.iz = xor i1 %i.t, true
  %i.ja = and i1 %i.iy, %i.iz
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu, %bb.bs
  %i.jb = phi i1 [ true, %bb.bs ], [ %i.ja, %bb.bu ], [ true, %bb.bt ]
  %i.jc = icmp eq i8 %i.h, 2                      ; 2 uses
  %or.cond27 = and i1 %i.jc, %i.t                 ; 2 uses
  %i.jd = icmp eq i8 %i.h, 3
  %or.cond29 = and i1 %i.jd, %i.t                 ; 2 uses
  %or.cond = or i1 %or.cond27, %or.cond29
  br i1 %or.cond, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.je = icmp eq i8 %i.h, 4
  %i.jf = icmp eq i8 %i.h, 7
  %i.jg = and i8 %i.h, -2
  %i.jh = icmp eq i8 %i.jg, 8
  %i.ji = or i1 %i.je, %i.jh
  %i.jj = and i1 %i.ji, %i.t
  %or.cond244 = or i1 %i.jf, %i.jj
  %i.jk = icmp eq i8 %i.h, 10
  %spec.select = or i1 %i.jk, %or.cond244
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.jl = phi i1 [ %spec.select, %bb.bw ], [ true, %bb.bv ]
  %i.jm = call ptr @find_or_create_conversation(ptr noundef %1) ; 2 uses
  %i.jn = load i32, ptr @proto_cops, align 4
  %i.jo = call ptr @conversation_get_proto_data(ptr noundef %i.jm, i32 noundef %i.jn) ; 2 uses
  %.not238 = icmp eq ptr %i.jo, null
  br i1 %.not238, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.jp = call ptr @wmem_file_scope()
  %i.jq = call noalias dereferenceable_or_null(8) ptr @wmem_alloc(ptr noundef %i.jp, i64 noundef 8) #9 ; 3 uses
  %i.jr = call ptr @wmem_file_scope()
  %i.js = call ptr @wmem_map_new(ptr noundef %i.jr, ptr noundef @g_direct_hash, ptr noundef @g_direct_equal)
  store ptr %i.js, ptr %i.jq, align 8
  %i.jt = load i32, ptr @proto_cops, align 4
  call void @conversation_add_proto_data(ptr noundef %i.jm, i32 noundef %i.jt, ptr noundef %i.jq)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.0225 = phi ptr [ %i.jo, %bb.bx ], [ %i.jq, %bb.by ] ; 3 uses
  %brmerge = or i1 %or.cond27, %i.jb
  br i1 %brmerge, label %bb.ca, label %.loopexit

bb.ca:                                            ; preds = %bb.bz
  %i.ju = load ptr, ptr %.0225, align 8
  %i.jv = zext i32 %.0257.lcssa to i64
  %i.jw = inttoptr i64 %i.jv to ptr               ; 2 uses
  %i.jx = call ptr @wmem_map_lookup(ptr noundef %i.ju, ptr noundef %i.jw) ; 2 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.jz = call ptr @wmem_file_scope()
  %i.ka = call ptr @wmem_array_new(ptr noundef %i.jz, i64 noundef 8) ; 2 uses
  %i.kb = load ptr, ptr %.0225, align 8
  %i.kc = call ptr @wmem_map_insert(ptr noundef %i.kb, ptr noundef %i.jw, ptr noundef %i.ka) ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.0 = phi ptr [ %i.ka, %bb.cb ], [ %i.jx, %bb.ca ] ; 4 uses
  %i.kd = getelementptr i8, ptr %1, i64 80
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = getelementptr i8, ptr %i.ke, i64 53
  %i.kg = load i16, ptr %i.kf, align 1
  %i.kh = and i16 %i.kg, 8
  %.not239 = icmp eq i16 %i.kh, 0
  br i1 %.not239, label %bb.cd, label %.preheader270

.preheader270:                                    ; preds = %bb.cc
  %i.ki = call i32 @wmem_array_get_count(ptr noundef %.0)
  %.not288 = icmp eq i32 %i.ki, 0
  br i1 %.not288, label %.loopexit, label %.lr.ph280

.lr.ph280:                                        ; preds = %.preheader270
  %i.kj = getelementptr i8, ptr %1, i64 20
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.kk = call ptr @wmem_file_scope()
  %i.kl = call noalias dereferenceable_or_null(32) ptr @wmem_alloc0(ptr noundef %i.kk, i64 noundef 32) #9 ; 6 uses
  store ptr %i.kl, ptr %i.d, align 8
  store i8 %i.h, ptr %i.kl, align 8
  %i.km = getelementptr i8, ptr %i.kl, i64 1
  store i8 %i.u, ptr %i.km, align 1
  %i.kn = getelementptr i8, ptr %1, i64 20
  %i.ko = load i32, ptr %i.kn, align 4
  %i.kp = getelementptr i8, ptr %i.kl, i64 4
  store i32 %i.ko, ptr %i.kp, align 4
  %i.kq = getelementptr i8, ptr %i.kl, i64 8
  store i32 0, ptr %i.kq, align 8
  %i.kr = getelementptr i8, ptr %i.kl, i64 16
  %i.ks = getelementptr i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.kr, ptr noundef align 8 dereferenceable(16) %i.ks, i64 16, i1 false)
  %i.kt = call zeroext i1 @wmem_array_append(ptr noundef %.0, ptr noundef nonnull %i.d, i32 noundef 1) ; 0 uses
  br label %.loopexit

bb.ce:                                            ; preds = %.lr.ph280, %proto_item_set_generated.exit
  %.0226279 = phi i32 [ 0, %.lr.ph280 ], [ %i.lj, %proto_item_set_generated.exit ] ; 2 uses
  %i.ku = call ptr @wmem_array_index(ptr noundef %.0, i32 noundef %.0226279)
  %i.kv = load ptr, ptr %i.ku, align 8            ; 3 uses
  store ptr %i.kv, ptr %i.d, align 8
  %i.kw = getelementptr i8, ptr %i.kv, i64 4
  %i.kx = load i32, ptr %i.kw, align 4
  %i.ky = load i32, ptr %i.kj, align 4
  %i.kz = icmp eq i32 %i.kx, %i.ky
  br i1 %i.kz, label %bb.cf, label %proto_item_set_generated.exit

bb.cf:                                            ; preds = %bb.ce
  %i.la = getelementptr i8, ptr %i.kv, i64 8
  %i.lb = load i32, ptr %i.la, align 8            ; 3 uses
  %.not242 = icmp eq i32 %i.lb, 0
  br i1 %.not242, label %proto_item_set_generated.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lc = load i32, ptr @hf_cops_response_in, align 4
  %i.ld = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.p, i32 noundef %i.lc, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.lb, ptr noundef @.str.767, i32 noundef %i.lb) ; 2 uses
  %.not.i247 = icmp eq ptr %i.ld, null
  br i1 %.not.i247, label %proto_item_set_generated.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.le = getelementptr i8, ptr %i.ld, i64 40
  %i.lf = load ptr, ptr %i.le, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.lf, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lg = getelementptr i8, ptr %i.lf, i64 28     ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4
  %i.li = or i32 %i.lh, 2
  store i32 %i.li, ptr %i.lg, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.ce, %bb.cf
  %i.lj = add nuw i32 %.0226279, 1                ; 2 uses
  %i.lk = call i32 @wmem_array_get_count(ptr noundef %.0)
  %i.ll = icmp ult i32 %i.lj, %i.lk
  br i1 %i.ll, label %bb.ce, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %proto_item_set_generated.exit, %.preheader270, %bb.bz, %bb.cd
  br i1 %i.jl, label %bb.cj, label %proto_item_set_generated.exit253

bb.cj:                                            ; preds = %.loopexit
  %i.lm = load ptr, ptr %.0225, align 8
  %i.ln = zext i32 %.0257.lcssa to i64
  %i.lo = inttoptr i64 %i.ln to ptr
  %i.lp = call ptr @wmem_map_lookup(ptr noundef %i.lm, ptr noundef %i.lo) ; 6 uses
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %bb.dc, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.lr = getelementptr i8, ptr %1, i64 80
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = getelementptr i8, ptr %i.ls, i64 53
  %i.lu = load i16, ptr %i.lt, align 1
  %i.lv = and i16 %i.lu, 8
  %.not240 = icmp eq i16 %i.lv, 0
  %i.lw = call i32 @wmem_array_get_count(ptr noundef nonnull %i.lp)
  %.not290 = icmp eq i32 %i.lw, 0                 ; 2 uses
  br i1 %.not240, label %.preheader, label %.preheader268

.preheader268:                                    ; preds = %bb.ck
  br i1 %.not290, label %proto_item_set_generated.exit253, label %.lr.ph282

.lr.ph282:                                        ; preds = %.preheader268
  %i.lx = getelementptr i8, ptr %1, i64 20
  br label %bb.cw

.preheader:                                       ; preds = %bb.ck
  br i1 %.not290, label %proto_item_set_generated.exit253, label %.lr.ph285

.lr.ph285:                                        ; preds = %.preheader
  %i.ly = getelementptr i8, ptr %1, i64 24
  %i.lz = icmp eq i8 %i.h, 4
  %or.cond53 = and i1 %i.lz, %i.t
  %i.ma = icmp eq i8 %i.h, 10
  %or.cond56 = or i1 %i.ma, %or.cond53
  %i.mb = add i8 %i.h, -3
  %or.cond29267 = icmp ult i8 %i.mb, 2
  %or.cond245 = and i1 %or.cond29267, %i.t
  %i.mc = add i8 %i.h, -7
  %or.cond59 = icmp ult i8 %i.mc, 2
  %i.md = icmp eq i8 %i.h, 9
  %brmerge287 = or i1 %or.cond29, %or.cond56
  %invariant.op = and i1 %i.jc, %i.t
  %invariant.op347 = and i1 %i.md, %i.t
  br label %bb.cl

bb.cl:                                            ; preds = %.lr.ph285, %.thread265
  %.1284 = phi i32 [ 0, %.lr.ph285 ], [ %i.mw, %.thread265 ] ; 2 uses
  %i.me = call ptr @wmem_array_index(ptr noundef nonnull %i.lp, i32 noundef %.1284)
  %i.mf = load ptr, ptr %i.me, align 8            ; 2 uses
  store ptr %i.mf, ptr %i.d, align 8
  %i.mg = getelementptr i8, ptr %i.mf, i64 16
  %i.mh = call i32 @nstime_cmp(ptr noundef %i.ly, ptr noundef %i.mg)
  %i.mi = icmp slt i32 %i.mh, 1
  br i1 %i.mi, label %.thread265, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mj = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 8
  %i.ml = load i32, ptr %i.mk, align 8
  %.not241 = icmp eq i32 %i.ml, 0
  br i1 %.not241, label %bb.cn, label %.thread265

bb.cn:                                            ; preds = %bb.cm
  %i.mm = load i8, ptr %i.mj, align 8             ; 4 uses
  %i.mn = icmp eq i8 %i.mm, 1
  %or.cond45.reass.reass.reass = and i1 %i.mn, %invariant.op
  br i1 %or.cond45.reass.reass.reass, label %bb.cu, label %bb.co

bb.co:                                            ; preds = %bb.cn
  switch i8 %i.mm, label %bb.cr [
    i8 2, label %bb.cp
    i8 5, label %bb.cq
  ]

bb.cp:                                            ; preds = %bb.co
  br i1 %or.cond245, label %bb.cu, label %.thread265

bb.cq:                                            ; preds = %bb.co
  br i1 %brmerge287, label %bb.cu, label %.thread265

bb.cr:                                            ; preds = %bb.co
  %i.mo = icmp eq i8 %i.mm, 6
  %or.cond246 = and i1 %or.cond59, %i.mo
  br i1 %or.cond246, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.mp = icmp eq i8 %i.mm, 9
  br i1 %i.mp, label %bb.ct, label %.thread265

bb.ct:                                            ; preds = %bb.cs
  %i.mq = getelementptr i8, ptr %i.mj, i64 1
  %i.mr = load i8, ptr %i.mq, align 1, !range !6, !noundef !7
  %i.ms = trunc nuw i8 %i.mr to i1
  %.not = xor i1 %i.ms, true
  %or.cond64.reass.reass.reass = and i1 %.not, %invariant.op347
  br i1 %or.cond64.reass.reass.reass, label %bb.cu, label %.thread265

bb.cu:                                            ; preds = %bb.cq, %bb.cr, %bb.ct, %bb.cp, %bb.cn
  %i.mt = getelementptr i8, ptr %i.mj, i64 8
  %i.mu = getelementptr i8, ptr %1, i64 20
  %i.mv = load i32, ptr %i.mu, align 4
  store i32 %i.mv, ptr %i.mt, align 8
  br label %proto_item_set_generated.exit253

.thread265:                                       ; preds = %bb.cq, %bb.cp, %bb.cs, %bb.ct, %bb.cl, %bb.cm
  %i.mw = add nuw i32 %.1284, 1                   ; 2 uses
  %i.mx = call i32 @wmem_array_get_count(ptr noundef nonnull %i.lp)
  %i.my = icmp ult i32 %i.mw, %i.mx
  br i1 %i.my, label %bb.cl, label %proto_item_set_generated.exit253, !llvm.loop !11

bb.cv:                                            ; preds = %bb.cw
  %i.mz = add nuw i32 %.2281, 1                   ; 2 uses
  %i.na = call i32 @wmem_array_get_count(ptr noundef nonnull %i.lp)
  %i.nb = icmp ult i32 %i.mz, %i.na
  br i1 %i.nb, label %bb.cw, label %proto_item_set_generated.exit253, !llvm.loop !12

bb.cw:                                            ; preds = %.lr.ph282, %bb.cv
  %.2281 = phi i32 [ 0, %.lr.ph282 ], [ %i.mz, %bb.cv ] ; 2 uses
  %i.nc = call ptr @wmem_array_index(ptr noundef nonnull %i.lp, i32 noundef %.2281)
  %i.nd = load ptr, ptr %i.nc, align 8            ; 3 uses
  store ptr %i.nd, ptr %i.d, align 8
  %i.ne = getelementptr i8, ptr %i.nd, i64 8
  %i.nf = load i32, ptr %i.ne, align 8
  %i.ng = load i32, ptr %i.lx, align 4
  %i.nh = icmp eq i32 %i.nf, %i.ng
  br i1 %i.nh, label %bb.cx, label %bb.cv

bb.cx:                                            ; preds = %bb.cw
  %i.ni = load i32, ptr @hf_cops_response_to, align 4
  %i.nj = getelementptr i8, ptr %i.nd, i64 4
  %i.nk = load i32, ptr %i.nj, align 4            ; 2 uses
  %i.nl = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.p, i32 noundef %i.ni, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.nk, ptr noundef @.str.768, i32 noundef %i.nk) ; 2 uses
  %.not.i248 = icmp eq ptr %i.nl, null
  br i1 %.not.i248, label %proto_item_set_generated.exit250, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.nm = getelementptr i8, ptr %i.nl, i64 40
  %i.nn = load ptr, ptr %i.nm, align 8            ; 2 uses
  %.not5.i249 = icmp eq ptr %i.nn, null
  br i1 %.not5.i249, label %proto_item_set_generated.exit250, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.no = getelementptr i8, ptr %i.nn, i64 28     ; 2 uses
  %i.np = load i32, ptr %i.no, align 4
  %i.nq = or i32 %i.np, 2
  store i32 %i.nq, ptr %i.no, align 4
  br label %proto_item_set_generated.exit250

proto_item_set_generated.exit250:                 ; preds = %bb.cx, %bb.cy, %bb.cz
  %i.nr = getelementptr i8, ptr %1, i64 24
  %i.ns = load ptr, ptr %i.d, align 8
  %i.nt = getelementptr i8, ptr %i.ns, i64 16
  call void @nstime_delta(ptr noundef nonnull %4, ptr noundef %i.nr, ptr noundef %i.nt)
  %i.nu = load i32, ptr @hf_cops_response_time, align 4
  %i.nv = call ptr @proto_tree_add_time(ptr noundef %i.p, i32 noundef %i.nu, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) ; 2 uses
  %.not.i251 = icmp eq ptr %i.nv, null
  br i1 %.not.i251, label %proto_item_set_generated.exit253, label %bb.da

bb.da:                                            ; preds = %proto_item_set_generated.exit250
  %i.nw = getelementptr i8, ptr %i.nv, i64 40
  %i.nx = load ptr, ptr %i.nw, align 8            ; 2 uses
  %.not5.i252 = icmp eq ptr %i.nx, null
  br i1 %.not5.i252, label %proto_item_set_generated.exit253, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ny = getelementptr i8, ptr %i.nx, i64 28     ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4
  %i.oa = or i32 %i.nz, 2
  store i32 %i.oa, ptr %i.ny, align 4
  br label %proto_item_set_generated.exit253

proto_item_set_generated.exit253:                 ; preds = %bb.cv, %.thread265, %.preheader268, %.preheader, %bb.db, %bb.da, %proto_item_set_generated.exit250, %bb.cu, %.loopexit
  %i.ob = call i32 @tvb_reported_length(ptr noundef %0)
  br label %bb.dc

bb.dc:                                            ; preds = %dissect_cops_object.exit.thread, %bb.cj, %bb.br, %proto_item_set_generated.exit253
  %.0228 = phi i32 [ %i.ob, %proto_item_set_generated.exit253 ], [ %.0227276, %dissect_cops_object.exit.thread ], [ %.0227.lcssa, %bb.br ], [ %.0227.lcssa, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  ret i32 %.0228
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

end_hunk_0
