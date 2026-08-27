Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-erf?download=true
inline.NumInlined: 74
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@dissect_erf:bb.a
  %i.fe = load i64, ptr @erf_state.2, align 8
  %.0109.i = select i1 %.not115.i, i64 %i.fe, i64 %.116.i.i
  %i.ff = getelementptr i8, ptr %1, i64 80        ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fh = getelementptr i8, ptr %1, i64 20        ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 1 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 2 ; 8 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 5
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 3 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.bf, %find_host_id.exit.i
  %indvars.iv.i = phi i64 [ 0, %find_host_id.exit.i ], [ %indvars.iv.next.i, %bb.bf ] ; 14 uses
  %.0108140.i = phi i8 [ 0, %find_host_id.exit.i ], [ %.2.i, %bb.bf ] ; 11 uses
  %.1110139.i = phi i64 [ %.0109.i, %find_host_id.exit.i ], [ %.2111.i, %bb.bf ] ; 13 uses
  %i.fo = load ptr, ptr %i.g, align 8
  %i.fp = getelementptr i8, ptr %i.fo, i64 16
  %i.fq = getelementptr [8 x i8], ptr %i.fp, i64 %indvars.iv.i
  %i.fr = load i64, ptr %i.fq, align 8            ; 6 uses
  %i.fs = lshr i64 %i.fr, 56                      ; 2 uses
  %i.ft = trunc nuw nsw i64 %i.fs to i32
  %i.fu = load i32, ptr @hf_erf_ehdr_t, align 4
  %i.fv = and i32 %i.ft, 127                      ; 2 uses
  %i.fw = call ptr @proto_tree_add_uint(ptr noundef %i.v, i32 noundef %i.fu, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.fv)
  %i.fx = load i32, ptr @ett_erf_pseudo_hdr, align 4
  %i.fy = call ptr @proto_item_add_subtree(ptr noundef %i.fw, i32 noundef %i.fx) ; 34 uses
  switch i32 %i.fv, label %bb.be [
    i32 3, label %bb.r
    i32 4, label %bb.s
    i32 5, label %bb.t
    i32 6, label %bb.u
    i32 12, label %bb.v
    i32 14, label %bb.ae
    i32 16, label %bb.af
    i32 17, label %bb.ag
    i32 18, label %bb.an
    i32 19, label %bb.bd
  ]

bb.r:                                             ; preds = %bb.q
  %.val119.i = load ptr, ptr %i.g, align 8
  %i.fz = getelementptr i8, ptr %.val119.i, i64 16
  %i.ga = getelementptr [8 x i8], ptr %i.fz, i64 %indvars.iv.i
  %i.gb = load i64, ptr %i.ga, align 8            ; 2 uses
  %i.gc = lshr i64 %i.gb, 32
  %i.gd = trunc nuw i64 %i.gc to i32
  %i.ge = and i32 %i.gd, 16777215                 ; 8 uses
  %i.gf = load i32, ptr @hf_erf_ehdr_class_flags, align 4
  %i.gg = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.gf, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ge)
  %i.gh = load i32, ptr @ett_erf_flags, align 4
  %i.gi = call ptr @proto_item_add_subtree(ptr noundef %i.gg, i32 noundef %i.gh) ; 7 uses
  %i.gj = load i32, ptr @hf_erf_ehdr_class_flags_sh, align 4
  %i.gk = call ptr @proto_tree_add_uint(ptr noundef %i.gi, i32 noundef %i.gj, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ge) ; 0 uses
  %i.gl = load i32, ptr @hf_erf_ehdr_class_flags_shm, align 4
  %i.gm = call ptr @proto_tree_add_uint(ptr noundef %i.gi, i32 noundef %i.gl, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ge) ; 0 uses
  %i.gn = load i32, ptr @hf_erf_ehdr_class_flags_res1, align 4
  %i.go = call ptr @proto_tree_add_uint(ptr noundef %i.gi, i32 noundef %i.gn, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ge) ; 0 uses
  %i.gp = load i32, ptr @hf_erf_ehdr_class_flags_user, align 4
  %i.gq = call ptr @proto_tree_add_uint(ptr noundef %i.gi, i32 noundef %i.gp, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ge) ; 0 uses
  %i.gr = load i32, ptr @hf_erf_ehdr_class_flags_res2, align 4
  %i.gs = call ptr @proto_tree_add_uint(ptr noundef %i.gi, i32 noundef %i.gr, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ge) ; 0 uses
  %i.gt = load i32, ptr @hf_erf_ehdr_class_flags_drop, align 4
  %i.gu = call ptr @proto_tree_add_uint(ptr noundef %i.gi, i32 noundef %i.gt, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ge) ; 0 uses
  %i.gv = load i32, ptr @hf_erf_ehdr_class_flags_str, align 4
  %i.gw = call ptr @proto_tree_add_uint(ptr noundef %i.gi, i32 noundef %i.gv, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ge) ; 0 uses
  %i.gx = load i32, ptr @hf_erf_ehdr_class_seqnum, align 4
  %i.gy = trunc i64 %i.gb to i32
  %i.gz = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.gx, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.gy) ; 0 uses
  br label %bb.bf

bb.s:                                             ; preds = %bb.q
  %.val120.i = load ptr, ptr %i.g, align 8
  %i.ha = getelementptr i8, ptr %.val120.i, i64 16
  %i.hb = getelementptr [8 x i8], ptr %i.ha, i64 %indvars.iv.i
  %i.hc = load i64, ptr %i.hb, align 8            ; 3 uses
  %i.hd = load i32, ptr @hf_erf_ehdr_int_res1, align 4
  %i.he = lshr i64 %i.hc, 48
  %i.hf = trunc nuw nsw i64 %i.he to i32
  %i.hg = and i32 %i.hf, 255
  %i.hh = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.hd, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.hg) ; 0 uses
  %i.hi = load i32, ptr @hf_erf_ehdr_int_id, align 4
  %i.hj = lshr i64 %i.hc, 32
  %i.hk = trunc nuw i64 %i.hj to i32
  %i.hl = and i32 %i.hk, 65535
  %i.hm = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.hi, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.hl) ; 0 uses
  %i.hn = load i32, ptr @hf_erf_ehdr_int_res2, align 4
  %i.ho = trunc i64 %i.hc to i32
  %i.hp = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.hn, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ho) ; 0 uses
  br label %bb.bf

bb.t:                                             ; preds = %bb.q
  %.val121.i = load ptr, ptr %i.g, align 8
  %i.hq = getelementptr i8, ptr %.val121.i, i64 16
  %i.hr = getelementptr [8 x i8], ptr %i.hq, i64 %indvars.iv.i
  %i.hs = load i64, ptr %i.hr, align 8            ; 2 uses
  %i.ht = load i32, ptr @hf_erf_ehdr_raw_link_res, align 4
  %i.hu = lshr i64 %i.hs, 32
  %i.hv = trunc nuw i64 %i.hu to i32
  %i.hw = and i32 %i.hv, 16777215
  %i.hx = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.ht, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.hw) ; 0 uses
  %i.hy = load i32, ptr @hf_erf_ehdr_raw_link_seqnum, align 4
  %i.hz = trunc i64 %i.hs to i32                  ; 3 uses
  %i.ia = lshr i32 %i.hz, 16
  %i.ib = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.hy, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ia) ; 0 uses
  %i.ic = load i32, ptr @hf_erf_ehdr_raw_link_rate, align 4
  %i.id = lshr i32 %i.hz, 8
  %i.ie = and i32 %i.id, 255
  %i.if = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.ic, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ie) ; 0 uses
  %i.ig = load i32, ptr @hf_erf_ehdr_raw_link_type, align 4
  %i.ih = and i32 %i.hz, 255
  %i.ii = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.ig, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ih) ; 0 uses
  br label %bb.bf

bb.u:                                             ; preds = %bb.q
  %.val122.i = load ptr, ptr %i.g, align 8
  %i.ij = getelementptr i8, ptr %.val122.i, i64 16
  %i.ik = getelementptr [8 x i8], ptr %i.ij, i64 %indvars.iv.i
  %i.il = load i64, ptr %i.ik, align 8            ; 3 uses
  %i.im = load i32, ptr @hf_erf_ehdr_bfs_hash, align 4
  %i.in = lshr i64 %i.il, 48
  %i.io = trunc nuw nsw i64 %i.in to i32
  %i.ip = and i32 %i.io, 255
  %i.iq = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.im, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ip) ; 0 uses
  %i.ir = load i32, ptr @hf_erf_ehdr_bfs_color, align 4
  %i.is = lshr i64 %i.il, 32
  %i.it = trunc nuw i64 %i.is to i32
  %i.iu = and i32 %i.it, 65535
  %i.iv = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.ir, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.iu) ; 0 uses
  %i.iw = load i32, ptr @hf_erf_ehdr_bfs_raw_hash, align 4
  %i.ix = trunc i64 %i.il to i32
  %i.iy = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.iw, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ix) ; 0 uses
  br label %bb.bf

bb.v:                                             ; preds = %bb.q
  %.val123.i = load ptr, ptr %i.g, align 8
  %.val124.i = load ptr, ptr %i.o, align 8
  %i.iz = getelementptr i8, ptr %.val123.i, i64 16
  %i.ja = getelementptr [8 x i8], ptr %i.iz, i64 %indvars.iv.i
  %i.jb = load i64, ptr %i.ja, align 8            ; 7 uses
  %i.jc = lshr i64 %i.jb, 16                      ; 3 uses
  %i.jd = trunc i64 %i.jc to i8                   ; 2 uses
  %i.je = lshr i64 %i.jb, 8                       ; 4 uses
  %i.jf = trunc i64 %i.je to i8                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.jg = call ptr @wmem_strbuf_new(ptr noundef %.val124.i, ptr noundef nonnull @.str.77) ; 13 uses
  %i.jh = trunc i64 %i.jb to i32                  ; 2 uses
  %i.ji = lshr i32 %i.jh, 24                      ; 4 uses
  %i.jj = and i64 %i.jc, 255
  %i.jk = add i8 %i.jd, -6
  %or.cond.i.i.i = icmp ult i8 %i.jk, -5
  %i.jl = icmp ugt i8 %i.jf, 5
  %or.cond5.i.i.i = or i1 %i.jl, %or.cond.i.i.i
  br i1 %or.cond5.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.fj, align 1
  store i8 0, ptr %11, align 2
  store i32 0, ptr %i.fk, align 2
  br label %channelised_fill_sdh_g707_format.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.jm = trunc i64 %i.je to i16
  store i16 %i.jm, ptr %11, align 2
  store i32 -1, ptr %i.fk, align 2
  %i.jn = icmp samesign ugt i8 %i.jf, 1
  br i1 %i.jn, label %.lr.ph.i.i.i, label %channelised_fill_sdh_g707_format.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.x
  %i.jo = and i64 %i.je, 7
  %i.jp = add nuw nsw i64 %i.jo, 4294967294       ; 2 uses
  %i.jq = add nsw i64 %i.jj, -1                   ; 2 uses
  %i.jr = and i64 %i.jp, 4294967295               ; 6 uses
  %i.js = add nuw nsw i64 %i.jr, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.jr, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %i.js, 8589934576              ; 3 uses
  %i.jt = sub nsw i64 %i.jr, %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.jq, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert222 = insertelement <16 x i32> poison, i32 %i.ji, i64 0
  %broadcast.splat223 = shufflevector <16 x i32> %broadcast.splatinsert222, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert224 = insertelement <16 x i64> poison, i64 %i.jr, i64 0
  %broadcast.splat225 = shufflevector <16 x i64> %broadcast.splatinsert224, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.ju = add nsw <16 x i64> %broadcast.splat225, <i64 0, i64 -1, i64 -2, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8, i64 -9, i64 -10, i64 -11, i64 -12, i64 -13, i64 -14, i64 -15>
  %i.jv = trunc i64 %i.jp to i32
  %broadcast.splatinsert226 = insertelement <16 x i32> poison, i32 %i.jv, i64 0
  %broadcast.splat227 = shufflevector <16 x i32> %broadcast.splatinsert226, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.jw = add <16 x i32> %broadcast.splat227, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 -8, i32 -9, i32 -10, i32 -11, i32 -12, i32 -13, i32 -14, i32 -15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %i.ju, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind228 = phi <16 x i32> [ %i.jw, %vector.ph ], [ %vec.ind.next229, %vector.body ] ; 2 uses
  %i.jx = sub i64 %i.jr, %index
  %i.jy = icmp ult <16 x i64> %vec.ind, %broadcast.splat
  %i.jz = shl <16 x i32> %vec.ind228, splat (i32 1)
  %i.ka = lshr <16 x i32> %broadcast.splat223, %i.jz
  %i.kb = trunc nuw <16 x i32> %i.ka to <16 x i8>
  %i.kc = and <16 x i8> %i.kb, splat (i8 3)
  %i.kd = add nuw nsw <16 x i8> %i.kc, splat (i8 1)
  %i.ke = select <16 x i1> %i.jy, <16 x i8> zeroinitializer, <16 x i8> %i.kd
  %i.kf = getelementptr i8, ptr %i.fk, i64 %i.jx
  %i.kg = getelementptr i8, ptr %i.kf, i64 -15
  %reverse = shufflevector <16 x i8> %i.ke, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.kg, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <16 x i64> %vec.ind, splat (i64 -16)
  %vec.ind.next229 = add <16 x i32> %vec.ind228, splat (i32 -16)
  %i.kh = icmp eq i64 %index.next, %n.vec
  br i1 %i.kh, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.js, %n.vec
  br i1 %cmp.n, label %channelised_fill_sdh_g707_format.exit.loopexit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ %i.jr, %.lr.ph.i.i.i ], [ %i.jt, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 5 uses
  %.not.i.i.i = icmp samesign ult i64 %indvars.iv.i.i.i, %i.jq
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.ki = shl i32 %indvars.iv.tr.i.i.i, 1
  %i.kj = lshr i32 %i.ji, %i.ki
  %i.kk = trunc nuw i32 %i.kj to i8
  %i.kl = and i8 %i.kk, 3
  %i.km = add nuw nsw i8 %i.kl, 1
  %.0.i.i.i = select i1 %.not.i.i.i, i8 0, i8 %i.km
  %i.kn = getelementptr i8, ptr %i.fk, i64 %indvars.iv.i.i.i
  store i8 %.0.i.i.i, ptr %i.kn, align 1
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1
  %.not33.i.i.i = icmp eq i64 %indvars.iv.i.i.i, 0
  br i1 %.not33.i.i.i, label %channelised_fill_sdh_g707_format.exit.loopexit.i.i, label %scalar.ph, !llvm.loop !12

channelised_fill_sdh_g707_format.exit.loopexit.i.i: ; preds = %scalar.ph, %middle.block
  %.pre.i.i = load i8, ptr %i.fj, align 1
  %.pre4.i.i = load i8, ptr %11, align 2
  br label %channelised_fill_sdh_g707_format.exit.i.i

channelised_fill_sdh_g707_format.exit.i.i:        ; preds = %channelised_fill_sdh_g707_format.exit.loopexit.i.i, %bb.x, %bb.w
  %i.ko = phi i8 [ %.pre.i.i, %channelised_fill_sdh_g707_format.exit.loopexit.i.i ], [ 0, %bb.w ], [ %i.jd, %bb.x ] ; 5 uses
  %i.kp = phi i8 [ %.pre4.i.i, %channelised_fill_sdh_g707_format.exit.loopexit.i.i ], [ 0, %bb.w ], [ %i.jf, %bb.x ] ; 3 uses
  call void @wmem_strbuf_truncate(ptr noundef %i.jg, i64 noundef 0)
  %i.kq = icmp ugt i8 %i.ko, 5
  %i.kr = icmp ugt i8 %i.kp, 5
  %or.cond.i.i = select i1 %i.kq, i1 true, i1 %i.kr
  br i1 %or.cond.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %channelised_fill_sdh_g707_format.exit.i.i
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.jg, ptr noundef nonnull @.str.85)
  br label %dissect_channelised_ex_header.exit.i

bb.z:                                             ; preds = %channelised_fill_sdh_g707_format.exit.i.i
  %i.ks = zext nneg i8 %i.ko to i64
  %i.kt = getelementptr [8 x i8], ptr @channelised_fill_vc_id_string.g_vc_size_strings, i64 %i.ks
  %i.ku = load ptr, ptr %i.kt, align 8
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.jg, ptr noundef nonnull @.str.86, ptr noundef %i.ku)
  switch i8 %i.kp, label %.lr.ph.i35.i.i [
    i8 0, label %.preheader36.i.i.i
    i8 1, label %.preheader.i.i.i
  ]

.preheader36.i.i.i:                               ; preds = %bb.z
  %i.kv = load i8, ptr %i.fl, align 1             ; 2 uses
  %i.kw = icmp sgt i8 %i.kv, 0
  br i1 %i.kw, label %.thread.i.i.i, label %bb.aa

.thread.i.i.i:                                    ; preds = %.preheader36.i.i.i
  %i.kx = zext nneg i8 %i.kv to i32
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.jg, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.77, i32 noundef %i.kx)
  %i.ky = load i8, ptr %i.fm, align 2
  %.pre5.pre.i.i = load i8, ptr %i.fk, align 2
  %.pre.i138 = load i8, ptr %i.fn, align 1
  br label %.thread58.i.i.i

bb.aa:                                            ; preds = %.preheader36.i.i.i
  %i.kz = load i8, ptr %i.fm, align 2             ; 2 uses
  %i.la = icmp sgt i8 %i.kz, 0
  %.pre5.pre7.i.i = load i8, ptr %i.fk, align 2   ; 4 uses
  %.pre146.i = load i8, ptr %i.fn, align 1        ; 3 uses
  br i1 %i.la, label %.thread58.i.i.i, label %bb.ab

.thread58.i.i.i:                                  ; preds = %bb.aa, %.thread.i.i.i
  %i.lb = phi i8 [ %.pre.i138, %.thread.i.i.i ], [ %.pre146.i, %bb.aa ]
  %.pre5.i.i = phi i8 [ %.pre5.pre.i.i, %.thread.i.i.i ], [ %.pre5.pre7.i.i, %bb.aa ]
  %i.lc = phi ptr [ @.str.88, %.thread.i.i.i ], [ @.str.77, %bb.aa ]
  %i.ld = phi i8 [ %i.ky, %.thread.i.i.i ], [ %i.kz, %bb.aa ]
  %i.le = sext i8 %i.ld to i32
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.jg, ptr noundef nonnull @.str.87, ptr noundef nonnull %i.lc, i32 noundef %i.le)
  br label %.thread64.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.lf = icmp sgt i8 %.pre146.i, 0
  br i1 %i.lf, label %.thread64.i.i.i, label %bb.ac

.thread64.i.i.i:                                  ; preds = %bb.ab, %.thread58.i.i.i
  %i.lg = phi i8 [ %.pre5.i.i, %.thread58.i.i.i ], [ %.pre5.pre7.i.i, %bb.ab ]
  %i.lh = phi i8 [ %i.lb, %.thread58.i.i.i ], [ %.pre146.i, %bb.ab ]
  %or.cond.15661.i.i.i = phi ptr [ @.str.88, %.thread58.i.i.i ], [ @.str.77, %bb.ab ]
  %i.li = sext i8 %i.lh to i32
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.jg, ptr noundef nonnull @.str.87, ptr noundef nonnull %or.cond.15661.i.i.i, i32 noundef %i.li)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.lj = icmp sgt i8 %.pre5.pre7.i.i, 0
  br i1 %i.lj, label %bb.ad, label %.preheader.i.i.i

bb.ad:                                            ; preds = %bb.ac, %.thread64.i.i.i
  %i.lk = phi i8 [ %i.lg, %.thread64.i.i.i ], [ %.pre5.pre7.i.i, %bb.ac ]
  %or.cond.26267.i.i.i = phi ptr [ @.str.88, %.thread64.i.i.i ], [ @.str.77, %bb.ac ]
  %i.ll = sext i8 %i.lk to i32
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.jg, ptr noundef nonnull @.str.87, ptr noundef nonnull %or.cond.26267.i.i.i, i32 noundef %i.ll)
  br label %.loopexit.i.i.i

.lr.ph.i35.i.i:                                   ; preds = %bb.z
  %i.lm = zext nneg i8 %i.kp to i64
  %i.ln = add nuw nsw i64 %i.lm, 4294967294
  %i.lo = and i64 %i.ln, 4294967295               ; 3 uses
  %i.lp = getelementptr i8, ptr %i.fk, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1
  %i.lr = sext i8 %i.lq to i32
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.jg, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.77, i32 noundef %i.lr)
  %.not54.i.i.i = icmp eq i64 %i.lo, 0
  br i1 %.not54.i.i.i, label %.loopexit.i.i.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %.lr.ph.i35.i.i, %.peel.next.i.i.i
  %indvars.iv.in.i.i.i = phi i64 [ %indvars.iv.i36.i.i, %.peel.next.i.i.i ], [ %i.lo, %.lr.ph.i35.i.i ] ; 2 uses
  %indvars.iv.i36.i.i = add nsw i64 %indvars.iv.in.i.i.i, -1 ; 2 uses
  %i.ls = getelementptr i8, ptr %i.fk, i64 %indvars.iv.i36.i.i
  %i.lt = load i8, ptr %i.ls, align 1
  %i.lu = sext i8 %i.lt to i32
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.jg, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, i32 noundef %i.lu)
  %i.lv = icmp samesign ugt i64 %indvars.iv.in.i.i.i, 1
  br i1 %i.lv, label %.peel.next.i.i.i, label %.loopexit.i.i.i, !llvm.loop !13

.preheader.i.i.i:                                 ; preds = %bb.ac, %bb.z
  %i.lw = icmp samesign ugt i8 %i.ko, 2
  br i1 %i.lw, label %.lr.ph45.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph45.preheader.i.i.i:                         ; preds = %.preheader.i.i.i
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.jg, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.77)
  %.not.i.i = icmp eq i8 %i.ko, 3
  br i1 %.not.i.i, label %.loopexit.i.i.i, label %.lr.ph45.i.preheader.i.i

.lr.ph45.i.preheader.i.i:                         ; preds = %.lr.ph45.preheader.i.i.i
  %i.lx = zext nneg i8 %i.ko to i32
  %i.ly = add nsw i32 %i.lx, -3
  br label %.lr.ph45.i.i.i

.lr.ph45.i.i.i:                                   ; preds = %.lr.ph45.i.i.i, %.lr.ph45.i.preheader.i.i
  %.23343.i.i.i = phi i32 [ %i.lz, %.lr.ph45.i.i.i ], [ 1, %.lr.ph45.i.preheader.i.i ] ; 2 uses
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.jg, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88)
  %i.lz = add nuw nsw i32 %.23343.i.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %.23343.i.i.i, %i.ly
  br i1 %exitcond.not.i.i, label %.loopexit.i.i.i, label %.lr.ph45.i.i.i, !llvm.loop !15

.loopexit.i.i.i:                                  ; preds = %.lr.ph45.i.i.i, %.peel.next.i.i.i, %.lr.ph45.preheader.i.i.i, %.preheader.i.i.i, %.lr.ph.i35.i.i, %bb.ad
  call void @wmem_strbuf_append_c(ptr noundef %i.jg, i8 noundef signext 41)
  br label %dissect_channelised_ex_header.exit.i

dissect_channelised_ex_header.exit.i:             ; preds = %.loopexit.i.i.i, %bb.y
  %i.ma = load i32, ptr @hf_erf_ehdr_chan_morebits, align 4
  %i.mb = lshr i64 %i.jb, 63
  %i.mc = call ptr @proto_tree_add_boolean(ptr noundef %i.fy, i32 noundef %i.ma, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef %i.mb) ; 0 uses
  %i.md = load i32, ptr @hf_erf_ehdr_chan_morefrag, align 4
  %i.me = lshr i64 %i.jb, 55
  %i.mf = and i64 %i.me, 1
  %i.mg = call ptr @proto_tree_add_boolean(ptr noundef %i.fy, i32 noundef %i.md, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef %i.mf) ; 0 uses
  %i.mh = load i32, ptr @hf_erf_ehdr_chan_seqnum, align 4
  %i.mi = lshr i64 %i.jb, 40
  %i.mj = trunc nuw nsw i64 %i.mi to i32
  %i.mk = and i32 %i.mj, 32767
  %i.ml = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.mh, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.mk) ; 0 uses
  %i.mm = load i32, ptr @hf_erf_ehdr_chan_res, align 4
  %i.mn = lshr i64 %i.jb, 32
  %i.mo = trunc nuw i64 %i.mn to i32
  %i.mp = and i32 %i.mo, 255
  %i.mq = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.mm, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.mp) ; 0 uses
  %i.mr = load i32, ptr @hf_erf_ehdr_chan_virt_container_id, align 4
  %i.ms = call ptr @wmem_strbuf_get_str(ptr noundef %i.jg)
  %i.mt = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.fy, i32 noundef %i.mr, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ji, ptr noundef nonnull @.str.78, i32 noundef %i.ji, ptr noundef %i.ms) ; 0 uses
  %i.mu = load i32, ptr @hf_erf_ehdr_chan_assoc_virt_container_size, align 4
  %i.mv = trunc i64 %i.jc to i32
  %i.mw = and i32 %i.mv, 255
  %i.mx = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.mu, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.mw) ; 0 uses
  %i.my = load i32, ptr @hf_erf_ehdr_chan_rate, align 4
  %i.mz = trunc i64 %i.je to i32
  %i.na = and i32 %i.mz, 255
  %i.nb = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.my, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.na) ; 0 uses
  %i.nc = load i32, ptr @hf_erf_ehdr_chan_type, align 4
  %i.nd = and i32 %i.jh, 255
  %i.ne = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.nc, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.nd) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.bf

bb.ae:                                            ; preds = %bb.q
  %.val125.i = load ptr, ptr %i.g, align 8
  %i.nf = getelementptr i8, ptr %.val125.i, i64 16
  %i.ng = getelementptr [8 x i8], ptr %i.nf, i64 %indvars.iv.i
  %i.nh = load i64, ptr %i.ng, align 8            ; 2 uses
  %i.ni = load i32, ptr @hf_erf_ehdr_signature_payload_hash, align 4
  %i.nj = lshr i64 %i.nh, 32
  %i.nk = trunc nuw i64 %i.nj to i32
  %i.nl = and i32 %i.nk, 16777215
  %i.nm = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.ni, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.nl) ; 0 uses
  %i.nn = load i32, ptr @hf_erf_ehdr_signature_color, align 4
  %i.no = trunc i64 %i.nh to i32                  ; 2 uses
  %i.np = lshr i32 %i.no, 24
  %i.nq = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.nn, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.np) ; 0 uses
  %i.nr = load i32, ptr @hf_erf_ehdr_signature_flow_hash, align 4
  %i.ns = and i32 %i.no, 16777215
  %i.nt = call ptr @proto_tree_add_uint(ptr noundef %i.fy, i32 noundef %i.nr, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ns) ; 0 uses
  br label %bb.bf

bb.af:                                            ; preds = %bb.q
  %i.nu = icmp eq i8 %.0108140.i, 0
  %i.nv = lshr i64 %i.fr, 48
  %i.nw = trunc i64 %i.nv to i8
  %.1.i137 = select i1 %i.nu, i8 %i.nw, i8 %.0108140.i
  %.val126.i = load ptr, ptr %i.g, align 8
  %i.nx = getelementptr i8, ptr %.val126.i, i64 16
  %i.ny = getelementptr [8 x i8], ptr %i.nx, i64 %indvars.iv.i
  %i.nz = load i64, ptr %i.ny, align 8            ; 4 uses
end_hunk_0
begin_hunk_1_@dissect_erf:bb.a
  %.not17.i.i = icmp eq i32 %i.aof, -1
  br i1 %.not17.i.i, label %dissect_meta_tag_bitfield.exit.i, label %.lr.ph.i.i155, !llvm.loop !20

dissect_meta_tag_bitfield.exit.i:                 ; preds = %.lr.ph.i.i155, %.preheader.i.i
  %.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.aod, %.lr.ph.i.i155 ]
  %i.aog = getelementptr [8 x i8], ptr %i.b, i64 %.lcssa.i.i
  store ptr null, ptr %i.aog, align 8
  %i.aoh = add i32 %.0408619.i, 4
  %.sroa.gep537.i = getelementptr i8, ptr %i.aiy, i64 28
  %spec.store.select.sroa.sel538.i = select i1 %i.aiz, ptr %i.aib, ptr %.sroa.gep537.i
  %i.aoi = load i32, ptr %spec.store.select.sroa.sel538.i, align 4
  %.sroa.gep540.i = getelementptr i8, ptr %i.aiy, i64 24
  %spec.store.select.sroa.sel541.i = select i1 %i.aiz, ptr %i.ahz, ptr %.sroa.gep540.i
  %i.aoj = load i32, ptr %spec.store.select.sroa.sel541.i, align 8
  %i.aok = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %.1.i145, ptr noundef %0, i32 noundef %i.aoh, i32 noundef %i.aoi, i32 noundef %i.aoj, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.aol = call ptr @proto_item_get_subtree(ptr noundef %i.aok)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  store ptr %i.aok, ptr %i.c, align 8
  br label %.critedge.i

bb.el:                                            ; preds = %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy
  %i.aom = call i32 @ftype_wire_size(i32 noundef %i.ale) ; 3 uses
  %.sroa.gep476.i = getelementptr i8, ptr %i.aiy, i64 32
  %spec.store.select.sroa.sel477.i = select i1 %i.aiz, ptr %i.aid, ptr %.sroa.gep476.i ; 3 uses
  %i.aon = load ptr, ptr %spec.store.select.sroa.sel477.i, align 8
  %.not433.i = icmp eq ptr %i.aon, null
  br i1 %.not433.i, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, i32 noundef 2914, ptr noundef nonnull @.str.109) #13
  unreachable

bb.en:                                            ; preds = %bb.el
  %i.aoo = add i32 %.0408619.i, 4                 ; 3 uses
  %.sroa.gep479.i = getelementptr i8, ptr %i.aiy, i64 24
  %spec.store.select.sroa.sel480.i = select i1 %i.aiz, ptr %i.ahz, ptr %.sroa.gep479.i
  %i.aop = load i32, ptr %spec.store.select.sroa.sel480.i, align 8
  %i.aoq = load ptr, ptr %spec.store.select.sroa.sel532.i, align 8
  %i.aor = getelementptr i8, ptr %i.aoq, i64 8
  %i.aos = load ptr, ptr %i.aor, align 8
  %i.aot = call ptr @proto_tree_add_subtree(ptr noundef %.1.i145, ptr noundef %0, i32 noundef %i.aoo, i32 noundef %i.ajg, i32 noundef %i.aop, ptr noundef nonnull %i.c, ptr noundef %i.aos) ; 4 uses
  %i.aou = load ptr, ptr %spec.store.select.sroa.sel477.i, align 8
  %i.aov = getelementptr i8, ptr %i.aou, i64 4
  %i.aow = load i32, ptr %i.aov, align 4
  %i.aox = call i32 @llvm.smin.i32(i32 %i.aom, i32 %i.ajg)
  %i.aoy = call ptr @proto_tree_add_item(ptr noundef %i.aot, i32 noundef %i.aow, ptr noundef %0, i32 noundef %i.aoo, i32 noundef %i.aox, i32 noundef 0) ; 2 uses
  %i.aoz = load ptr, ptr %spec.store.select.sroa.sel477.i, align 8
  %i.apa = getelementptr i8, ptr %i.aoz, i64 8
  %i.apb = load i32, ptr %i.apa, align 4
  %i.apc = add i32 %i.aom, %i.aoo                 ; 2 uses
  %i.apd = sub i32 %i.ajg, %i.aom                 ; 2 uses
  %i.ape = call ptr @proto_tree_add_item(ptr noundef %i.aot, i32 noundef %i.apb, ptr noundef %0, i32 noundef %i.apc, i32 noundef %i.apd, i32 noundef 2) ; 0 uses
  %.not434.i = icmp eq ptr %i.aoy, null
  br i1 %.not434.i, label %.critedge.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.apf = getelementptr i8, ptr %i.aoy, i64 40
  %i.apg = load ptr, ptr %i.apf, align 8
  call void @proto_item_fill_label(ptr noundef %i.apg, ptr noundef nonnull %i.e, ptr noundef null)
  %i.aph = load ptr, ptr %i.c, align 8
  %i.api = load ptr, ptr %i.o, align 8
  %i.apj = call ptr @tvb_get_stringzpad(ptr noundef %i.api, ptr noundef %0, i32 noundef %i.apc, i32 noundef %i.apd, i32 noundef 2)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aph, ptr noundef nonnull @.str.124, ptr noundef %i.apj, ptr noundef nonnull %i.e)
  br label %.critedge.i

bb.ep:                                            ; preds = %bb.dy, %bb.dy
  %i.apk = add i32 %.0408619.i, 4                 ; 3 uses
  %i.apl = call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %i.apk) ; 2 uses
  %.sroa.gep473.i = getelementptr i8, ptr %i.aiy, i64 28
  %spec.store.select.sroa.sel474.i = select i1 %i.aiz, ptr %i.aib, ptr %.sroa.gep473.i
  %i.apm = load i32, ptr %spec.store.select.sroa.sel474.i, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.apn = call i64 @llvm.abs.i64(i64 %i.apl, i1 false) ; 2 uses
  %i.apo = shl i64 %i.apn, 1
  %i.app = and i64 %i.apo, 65536
  %i.apq = add nuw i64 %i.app, %i.apn             ; 2 uses
  %i.apr = lshr i64 %i.apq, 16
  %i.aps = udiv i64 %i.apq, 65536000000000        ; 3 uses
  store i64 %i.aps, ptr %4, align 8
  %i.apt = urem i64 %i.apr, 1000000000
  %i.apu = trunc nuw nsw i64 %i.apt to i32        ; 3 uses
  store i32 %i.apu, ptr %i.aii, align 8
  %i.apv = icmp slt i64 %i.apl, 0
  br i1 %i.apv, label %bb.eq, label %thread-pre-split.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.apw = sub nsw i64 0, %i.aps                  ; 2 uses
  store i64 %i.apw, ptr %4, align 8
  %i.apx = sub nsw i32 0, %i.apu                  ; 2 uses
  store i32 %i.apx, ptr %i.aii, align 8
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.eq, %bb.ep
  %i.apy = phi i32 [ %i.apx, %bb.eq ], [ %i.apu, %bb.ep ] ; 2 uses
  %i.apz = phi i64 [ %i.apw, %bb.eq ], [ %i.aps, %bb.ep ]
  %i.aqa = icmp eq i64 %i.apz, 0
  %i.aqb = add nsw i32 %i.apy, 999999
  %or.cond.i.i.i152 = icmp ult i32 %i.aqb, 1999999
  %or.cond.i.i153 = select i1 %i.aqa, i1 %or.cond.i.i.i152, i1 false
  br i1 %or.cond.i.i153, label %bb.er, label %bb.es

bb.er:                                            ; preds = %thread-pre-split.i.i
  %i.aqc = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_time_format_value(ptr noundef %.1.i145, i32 noundef %i.apm, ptr noundef %0, i32 noundef %i.apk, i32 noundef range(i32 0, 65536) %i.ajg, ptr noundef nonnull %4, ptr noundef nonnull @.str.129, i32 noundef %i.apy)
  br label %dissect_ptp_timeinterval.exit.i

bb.es:                                            ; preds = %thread-pre-split.i.i
  %i.aqd = call ptr @proto_tree_add_time(ptr noundef %.1.i145, i32 noundef %i.apm, ptr noundef %0, i32 noundef %i.apk, i32 noundef range(i32 0, 65536) %i.ajg, ptr noundef nonnull %4)
  br label %dissect_ptp_timeinterval.exit.i

dissect_ptp_timeinterval.exit.i:                  ; preds = %bb.es, %bb.er
  %.0.i.i.i154 = phi ptr [ %i.aqc, %bb.er ], [ %i.aqd, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  store ptr %.0.i.i.i154, ptr %i.c, align 8
  br label %.critedge.i

bb.et:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.aqe = add i32 %.0408619.i, 4                 ; 3 uses
  %i.aqf = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.aqe) ; 2 uses
  %i.aqg = sext i32 %i.aqf to i64
  store i64 %i.aqg, ptr %7, align 8
  store i32 0, ptr %i.aih, align 8
  %.sroa.gep470.i = getelementptr i8, ptr %i.aiy, i64 28
  %spec.store.select.sroa.sel471.i = select i1 %i.aiz, ptr %i.aib, ptr %.sroa.gep470.i
  %i.aqh = load i32, ptr %spec.store.select.sroa.sel471.i, align 4 ; 2 uses
  %i.aqi = icmp eq i32 %i.aqf, 0
  br i1 %i.aqi, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.aqj = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_time_format_value(ptr noundef %.1.i145, i32 noundef %i.aqh, ptr noundef %0, i32 noundef %i.aqe, i32 noundef range(i32 0, 65536) %i.ajg, ptr noundef nonnull %7, ptr noundef nonnull @.str.129, i32 noundef 0)
  br label %dissect_relative_time.exit.i

bb.ev:                                            ; preds = %bb.et
  %i.aqk = call ptr @proto_tree_add_time(ptr noundef %.1.i145, i32 noundef %i.aqh, ptr noundef %0, i32 noundef %i.aqe, i32 noundef range(i32 0, 65536) %i.ajg, ptr noundef nonnull %7)
  br label %dissect_relative_time.exit.i

dissect_relative_time.exit.i:                     ; preds = %bb.ev, %bb.eu
  %.0.i455.i = phi ptr [ %i.aqj, %bb.eu ], [ %i.aqk, %bb.ev ]
  store ptr %.0.i455.i, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.critedge.i

bb.ew:                                            ; preds = %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy, %bb.dy
  %i.aql = add i32 %.0408619.i, 4
  %i.aqm = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.aql)
  %i.aqn = trunc i32 %i.aqm to i8                 ; 2 uses
  %i.aqo = icmp eq i8 %i.aqn, 0
  %i.aqp = uitofp i8 %i.aqn to float
  %i.aqq = fadd nnan float %i.aqp, 1.000000e+00
  %i.aqr = fmul nnan float %i.aqq, 3.125000e-02
  %i.aqs = select i1 %i.aqo, float 0.000000e+00, float %i.aqr ; 3 uses
  %.sroa.gep467.i = getelementptr i8, ptr %i.aiy, i64 28
  %spec.store.select.sroa.sel468.i = select i1 %i.aiz, ptr %i.aib, ptr %.sroa.gep467.i
  %i.aqt = load i32, ptr %spec.store.select.sroa.sel468.i, align 4
  %i.aqu = fpext float %i.aqs to double
  %i.aqv = fcmp oeq float %i.aqs, 0.000000e+00
  %i.aqw = select i1 %i.aqv, ptr @.str.103, ptr @.str.104
  %i.aqx = call ptr (ptr, i32, ptr, i32, i32, float, ptr, ...) @proto_tree_add_float_format_value(ptr noundef %.1.i145, i32 noundef %i.aqt, ptr noundef %0, i32 noundef 0, i32 noundef 0, float noundef %i.aqs, ptr noundef nonnull @.str.102, double noundef %i.aqu, ptr noundef nonnull %i.aqw)
  store ptr %i.aqx, ptr %i.c, align 8
  br label %.critedge.i

bb.ex:                                            ; preds = %bb.dy, %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.aqy = call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.ajg, i32 16)
  %spec.select.i.i146 = lshr i32 %i.aqy, 2        ; 2 uses
  %.sroa.gep543.i = getelementptr i8, ptr %i.aiy, i64 32
  %spec.store.select.sroa.sel544.i = select i1 %i.aiz, ptr %i.aid, ptr %.sroa.gep543.i ; 7 uses
  %i.aqz = load ptr, ptr %spec.store.select.sroa.sel544.i, align 8
  %.not.i457.i = icmp eq ptr %i.aqz, null
  br i1 %.not.i457.i, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, i32 noundef 2501, ptr noundef nonnull @.str.109) #13
  unreachable

bb.ez:                                            ; preds = %bb.ex
  %.sroa.gep546.i = getelementptr i8, ptr %i.aiy, i64 28
  %spec.store.select.sroa.sel547.i = select i1 %i.aiz, ptr %i.aib, ptr %.sroa.gep546.i
  %i.ara = load i32, ptr %spec.store.select.sroa.sel547.i, align 4
  %i.arb = add i32 %.0408619.i, 4                 ; 4 uses
  %i.arc = call ptr @proto_tree_add_item(ptr noundef %.1.i145, i32 noundef %i.ara, ptr noundef %0, i32 noundef %i.arb, i32 noundef range(i32 0, 65536) %i.ajg, i32 noundef 0) ; 6 uses
  %.sroa.gep549.i = getelementptr i8, ptr %i.aiy, i64 24
  %spec.store.select.sroa.sel550.i = select i1 %i.aiz, ptr %i.ahz, ptr %.sroa.gep549.i ; 3 uses
  %i.ard = load i32, ptr %spec.store.select.sroa.sel550.i, align 8
  %i.are = call ptr @proto_item_add_subtree(ptr noundef %i.arc, i32 noundef %i.ard) ; 3 uses
  %.not97.i.i = icmp eq i32 %spec.select.i.i146, 0
  br i1 %.not97.i.i, label %._crit_edge94.thread.i.i, label %.lr.ph.preheader.i.i

._crit_edge94.thread.i.i:                         ; preds = %bb.ez
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.arc, ptr noundef nonnull @.str.130)
  br label %bb.fi

.lr.ph.preheader.i.i:                             ; preds = %bb.ez
  %wide.trip.count.i.i = zext nneg i32 %spec.select.i.i146 to i64 ; 3 uses
  br label %.lr.ph.i458.i

.lr.ph.i458.i:                                    ; preds = %.lr.ph.i458.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i147 = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i148, %.lr.ph.i458.i ] ; 3 uses
  %.078.i.i = phi i1 [ true, %.lr.ph.preheader.i.i ], [ %spec.select76.i.i, %.lr.ph.i458.i ]
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i147 to i32
  %i.arf = shl i32 %indvars.iv.tr.i.i, 2
  %i.arg = add i32 %i.arf, %i.arb
  %i.arh = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.arg, i32 noundef 0) ; 2 uses
  %i.ari = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i.i147
  store i32 %i.arh, ptr %i.ari, align 4
  %.not75.i.i = icmp eq i32 %i.arh, -1
  %spec.select76.i.i = select i1 %.not75.i.i, i1 %.078.i.i, i1 false ; 2 uses
  %indvars.iv.next.i.i148 = add nuw nsw i64 %indvars.iv.i.i147, 1 ; 2 uses
  %exitcond.not.i.i149 = icmp eq i64 %indvars.iv.next.i.i148, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i149, label %._crit_edge.i.i, label %.lr.ph.i458.i, !llvm.loop !21

._crit_edge.i.i:                                  ; preds = %.lr.ph.i458.i
  br i1 %spec.select76.i.i, label %.lr.ph93.split.us.preheader.i.i, label %.lr.ph93.split.preheader.i.i

.lr.ph93.split.preheader.i.i:                     ; preds = %._crit_edge.i.i
  %i.arj = load i32, ptr %i.a, align 16
  %i.ark = zext i32 %i.arj to i64
  br label %.lr.ph93.split.i.i

.lr.ph93.split.us.preheader.i.i:                  ; preds = %._crit_edge.i.i
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.arc, ptr noundef nonnull @.str.130)
  %i.arl = load i32, ptr %i.a, align 16
  %i.arm = zext i32 %i.arl to i64
  br label %.lr.ph93.split.us.i.i

.lr.ph93.split.us.i.i:                            ; preds = %.split87.us.us.i.i, %.lr.ph93.split.us.preheader.i.i
  %indvars.iv107.i.i = phi i64 [ 0, %.lr.ph93.split.us.preheader.i.i ], [ %indvars.iv.next108.i.i, %.split87.us.us.i.i ] ; 5 uses
  %.06191.us.i.i = phi i8 [ 1, %.lr.ph93.split.us.preheader.i.i ], [ %.2.us.us.i.i, %.split87.us.us.i.i ]
  %.06390.us.i.i = phi i32 [ 0, %.lr.ph93.split.us.preheader.i.i ], [ %i.aso, %.split87.us.us.i.i ]
  %i.arn = load ptr, ptr %spec.store.select.sroa.sel544.i, align 8
  %i.aro = getelementptr i8, ptr %i.arn, i64 4
  %i.arp = getelementptr [4 x i8], ptr %i.aro, i64 %indvars.iv107.i.i
  %i.arq = load i32, ptr %i.arp, align 4
  %indvars.iv107.tr.i.i = trunc i64 %indvars.iv107.i.i to i32
  %i.arr = shl i32 %indvars.iv107.tr.i.i, 2
  %i.ars = add i32 %i.arr, %i.arb                 ; 2 uses
  %i.art = call ptr @proto_tree_add_item(ptr noundef %i.are, i32 noundef %i.arq, ptr noundef %0, i32 noundef %i.ars, i32 noundef 4, i32 noundef 0) ; 2 uses
  %i.aru = icmp eq i64 %indvars.iv107.i.i, 0
  br i1 %i.aru, label %bb.fa, label %.split.us.us.i.i

bb.fa:                                            ; preds = %.lr.ph93.split.us.i.i
  %i.arv = load i32, ptr %spec.store.select.sroa.sel550.i, align 8
  %i.arw = call ptr @proto_item_add_subtree(ptr noundef %i.art, i32 noundef %i.arv)
  %i.arx = load ptr, ptr %spec.store.select.sroa.sel544.i, align 8
  %i.ary = getelementptr i8, ptr %i.arx, i64 20
  %i.arz = load i32, ptr %i.ary, align 4          ; 2 uses
  %.not7379.us.i.i = icmp eq i32 %i.arz, -1
  br i1 %.not7379.us.i.i, label %.split.us.us.i.i, label %.lr.ph82.us.i.i

.lr.ph82.us.i.i:                                  ; preds = %bb.fa, %.lr.ph82.us.i.i
  %i.asa = phi i32 [ %i.ash, %.lr.ph82.us.i.i ], [ %i.arz, %bb.fa ]
  %.06880.us.i.i = phi i32 [ %i.asc, %.lr.ph82.us.i.i ], [ 4, %bb.fa ]
  %i.asb = call ptr @proto_tree_add_boolean(ptr noundef %i.arw, i32 noundef %i.asa, ptr noundef %0, i32 noundef %i.ars, i32 noundef 4, i64 noundef %i.arm) ; 0 uses
  %i.asc = add i32 %.06880.us.i.i, 1              ; 2 uses
  %i.asd = load ptr, ptr %spec.store.select.sroa.sel544.i, align 8
  %i.ase = getelementptr i8, ptr %i.asd, i64 4
  %i.asf = sext i32 %i.asc to i64
  %i.asg = getelementptr [4 x i8], ptr %i.ase, i64 %i.asf
  %i.ash = load i32, ptr %i.asg, align 4          ; 2 uses
  %.not73.us.i.i = icmp eq i32 %i.ash, -1
  br i1 %.not73.us.i.i, label %.split.us.us.i.i, label %.lr.ph82.us.i.i, !llvm.loop !22

.split.us.us.i.i:                                 ; preds = %.lr.ph82.us.i.i, %bb.fa, %.lr.ph93.split.us.i.i
  %i.asi = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv107.i.i
  %i.asj = load i32, ptr %i.asi, align 4
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fd, %.split.us.us.i.i
  %.16285.us.us.i.i = phi i8 [ %.06191.us.i.i, %.split.us.us.i.i ], [ %.2.us.us.i.i, %bb.fd ]
  %.16484.us.us.i.i = phi i32 [ %.06390.us.i.i, %.split.us.us.i.i ], [ %i.aso, %bb.fd ] ; 2 uses
  %.06583.us.us.i.i = phi i32 [ 0, %.split.us.us.i.i ], [ %i.asp, %bb.fd ] ; 2 uses
  %i.ask = shl nuw i32 1, %.06583.us.us.i.i
  %i.asl = and i32 %i.ask, %i.asj
  %.not74.us.us.i.i = icmp eq i32 %i.asl, 0
  br i1 %.not74.us.us.i.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.asm = load ptr, ptr %i.o, align 8
  %i.asn = call ptr @val_to_str(ptr noundef %i.asm, i32 noundef %.16484.us.us.i.i, ptr noundef nonnull @ehdr_type_vals, ptr noundef nonnull @.str.131)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.art, ptr noundef nonnull @.str.132, ptr noundef %i.asn)
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.2.us.us.i.i = phi i8 [ %.16285.us.us.i.i, %bb.fb ], [ 0, %bb.fc ] ; 3 uses
  %i.aso = add i32 %.16484.us.us.i.i, 1           ; 2 uses
  %i.asp = add nuw nsw i32 %.06583.us.us.i.i, 1   ; 2 uses
  %exitcond106.not.i.i = icmp eq i32 %i.asp, 32
  br i1 %exitcond106.not.i.i, label %.split87.us.us.i.i, label %bb.fb, !llvm.loop !23

.split87.us.us.i.i:                               ; preds = %bb.fd
  %indvars.iv.next108.i.i = add nuw nsw i64 %indvars.iv107.i.i, 1 ; 2 uses
  %exitcond110.not.i.i = icmp eq i64 %indvars.iv.next108.i.i, %wide.trip.count.i.i
  br i1 %exitcond110.not.i.i, label %._crit_edge94.i.i, label %.lr.ph93.split.us.i.i, !llvm.loop !24

.lr.ph93.split.i.i:                               ; preds = %.split87.i.i, %.lr.ph93.split.preheader.i.i
  %indvars.iv102.i.i = phi i64 [ 0, %.lr.ph93.split.preheader.i.i ], [ %indvars.iv.next103.i.i, %.split87.i.i ] ; 5 uses
  %.06191.i.i = phi i8 [ 1, %.lr.ph93.split.preheader.i.i ], [ %.2.i.i, %.split87.i.i ]
  %.06390.i.i = phi i32 [ 0, %.lr.ph93.split.preheader.i.i ], [ %i.att, %.split87.i.i ]
  %i.asq = load ptr, ptr %spec.store.select.sroa.sel544.i, align 8
  %i.asr = getelementptr i8, ptr %i.asq, i64 4
  %i.ass = getelementptr [4 x i8], ptr %i.asr, i64 %indvars.iv102.i.i
  %i.ast = load i32, ptr %i.ass, align 4
  %indvars.iv102.tr.i.i = trunc i64 %indvars.iv102.i.i to i32
  %i.asu = shl i32 %indvars.iv102.tr.i.i, 2
  %i.asv = add i32 %i.asu, %i.arb                 ; 2 uses
  %i.asw = call ptr @proto_tree_add_item(ptr noundef %i.are, i32 noundef %i.ast, ptr noundef %0, i32 noundef %i.asv, i32 noundef 4, i32 noundef 0) ; 2 uses
  %i.asx = icmp eq i64 %indvars.iv102.i.i, 0
  br i1 %i.asx, label %bb.fe, label %.split.i.i

bb.fe:                                            ; preds = %.lr.ph93.split.i.i
  %i.asy = load i32, ptr %spec.store.select.sroa.sel550.i, align 8
  %i.asz = call ptr @proto_item_add_subtree(ptr noundef %i.asw, i32 noundef %i.asy)
  %i.ata = load ptr, ptr %spec.store.select.sroa.sel544.i, align 8
  %i.atb = getelementptr i8, ptr %i.ata, i64 20
  %i.atc = load i32, ptr %i.atb, align 4          ; 2 uses
  %.not7379.i.i = icmp eq i32 %i.atc, -1
  br i1 %.not7379.i.i, label %.split.i.i, label %.lr.ph82.i.i

.lr.ph82.i.i:                                     ; preds = %bb.fe, %.lr.ph82.i.i
  %i.atd = phi i32 [ %i.atk, %.lr.ph82.i.i ], [ %i.atc, %bb.fe ]
  %.06880.i.i = phi i32 [ %i.atf, %.lr.ph82.i.i ], [ 4, %bb.fe ]
  %i.ate = call ptr @proto_tree_add_boolean(ptr noundef %i.asz, i32 noundef %i.atd, ptr noundef %0, i32 noundef %i.asv, i32 noundef 4, i64 noundef %i.ark) ; 0 uses
  %i.atf = add i32 %.06880.i.i, 1                 ; 2 uses
  %i.atg = load ptr, ptr %spec.store.select.sroa.sel544.i, align 8
  %i.ath = getelementptr i8, ptr %i.atg, i64 4
  %i.ati = sext i32 %i.atf to i64
  %i.atj = getelementptr [4 x i8], ptr %i.ath, i64 %i.ati
  %i.atk = load i32, ptr %i.atj, align 4          ; 2 uses
  %.not73.i.i = icmp eq i32 %i.atk, -1
  br i1 %.not73.i.i, label %.split.i.i, label %.lr.ph82.i.i, !llvm.loop !22

.split.i.i:                                       ; preds = %.lr.ph82.i.i, %bb.fe, %.lr.ph93.split.i.i
  %i.atl = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv102.i.i
  %i.atm = load i32, ptr %i.atl, align 4
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fh, %.split.i.i
  %.16285.i.i = phi i8 [ %.06191.i.i, %.split.i.i ], [ %.2.i.i, %bb.fh ] ; 2 uses
  %.16484.i.i = phi i32 [ %.06390.i.i, %.split.i.i ], [ %i.att, %bb.fh ] ; 2 uses
  %.06583.i.i = phi i32 [ 0, %.split.i.i ], [ %i.atu, %bb.fh ] ; 2 uses
  %i.atn = shl nuw i32 1, %.06583.i.i
  %i.ato = and i32 %i.atn, %i.atm
  %.not74.i.i = icmp eq i32 %i.ato, 0
  br i1 %.not74.i.i, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.atp = load ptr, ptr %i.o, align 8
  %i.atq = call ptr @val_to_str(ptr noundef %i.atp, i32 noundef %.16484.i.i, ptr noundef nonnull @ehdr_type_vals, ptr noundef nonnull @.str.131) ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.asw, ptr noundef nonnull @.str.132, ptr noundef %i.atq)
  %i.atr = trunc nuw i8 %.16285.i.i to i1
  %i.ats = select i1 %i.atr, ptr @.str.134, ptr @.str.135
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.arc, ptr noundef nonnull @.str.133, ptr noundef nonnull %i.ats, ptr noundef %i.atq)
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.2.i.i = phi i8 [ %.16285.i.i, %bb.ff ], [ 0, %bb.fg ] ; 3 uses
  %i.att = add i32 %.16484.i.i, 1                 ; 2 uses
  %i.atu = add nuw nsw i32 %.06583.i.i, 1         ; 2 uses
  %exitcond101.not.i.i = icmp eq i32 %i.atu, 32
  br i1 %exitcond101.not.i.i, label %.split87.i.i, label %bb.ff, !llvm.loop !23

.split87.i.i:                                     ; preds = %bb.fh
  %indvars.iv.next103.i.i = add nuw nsw i64 %indvars.iv102.i.i, 1 ; 2 uses
  %exitcond105.not.i.i = icmp eq i64 %indvars.iv.next103.i.i, %wide.trip.count.i.i
  br i1 %exitcond105.not.i.i, label %._crit_edge94.i.i, label %.lr.ph93.split.i.i, !llvm.loop !24

._crit_edge94.i.i:                                ; preds = %.split87.i.i, %.split87.us.us.i.i
  %.061.lcssa.i.i = phi i8 [ %.2.us.us.i.i, %.split87.us.us.i.i ], [ %.2.i.i, %.split87.i.i ]
  %i.atv = trunc nuw i8 %.061.lcssa.i.i to i1
  br i1 %i.atv, label %bb.fi, label %dissect_meta_tag_ext_hdrs.exit.i

bb.fi:                                            ; preds = %._crit_edge94.i.i, %._crit_edge94.thread.i.i
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.arc, ptr noundef nonnull @.str.136)
  br label %dissect_meta_tag_ext_hdrs.exit.i

dissect_meta_tag_ext_hdrs.exit.i:                 ; preds = %bb.fi, %._crit_edge94.i.i
  %i.atw = icmp ugt i16 %i.aio, 15
  %i.atx = and i32 %i.ajg, 3
  %.not72.i.i = icmp eq i32 %i.atx, 0
  %or.cond.i459.i = or i1 %i.atw, %.not72.i.i
  %spec.select593.i = select i1 %or.cond.i459.i, ptr %.1562.i, ptr @ei_erf_meta_truncated_tag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  store ptr %i.arc, ptr %i.c, align 8
  br label %.critedge.i

bb.fj:                                            ; preds = %bb.dy
  switch i32 %i.ale, label %bb.fm [
    i32 35, label %bb.fk
    i32 19, label %bb.fk
    i32 18, label %bb.fk
    i32 17, label %bb.fk
    i32 16, label %bb.fk
    i32 15, label %bb.fk
    i32 14, label %bb.fk
    i32 13, label %bb.fk
    i32 12, label %bb.fk
    i32 11, label %bb.fk
    i32 10, label %bb.fk
    i32 9, label %bb.fk
    i32 8, label %bb.fk
    i32 7, label %bb.fk
    i32 6, label %bb.fk
    i32 5, label %bb.fk
    i32 4, label %bb.fk
    i32 3, label %bb.fk
    i32 45, label %bb.fl
    i32 43, label %bb.fl
    i32 39, label %bb.fl
    i32 28, label %bb.fl
    i32 27, label %bb.fl
    i32 26, label %bb.fl
  ]

bb.fk:                                            ; preds = %bb.fj, %bb.fj, %bb.fj, %bb.fj, %bb.fj, %bb.fj, %bb.fj, %bb.fj, %bb.fj, %bb.fj, %bb.fj, %bb.fj, %bb.fj, %bb.fj, %bb.fj, %bb.fj, %bb.fj, %bb.fj
  %.sroa.gep518.i = getelementptr i8, ptr %i.aiy, i64 28
  %spec.store.select.sroa.sel519.i = select i1 %i.aiz, ptr %i.aib, ptr %.sroa.gep518.i
  %i.aty = load i32, ptr %spec.store.select.sroa.sel519.i, align 4
  %i.atz = add i32 %.0408619.i, 4
  %i.aua = call ptr @proto_tree_add_item(ptr noundef %.1.i145, i32 noundef %i.aty, ptr noundef %0, i32 noundef %i.atz, i32 noundef %i.ajg, i32 noundef 0)
  store ptr %i.aua, ptr %i.c, align 8
  br label %.critedge.i

bb.fl:                                            ; preds = %bb.fj, %bb.fj, %bb.fj, %bb.fj, %bb.fj, %bb.fj
  %.sroa.gep515.i = getelementptr i8, ptr %i.aiy, i64 28
  %spec.store.select.sroa.sel516.i = select i1 %i.aiz, ptr %i.aib, ptr %.sroa.gep515.i
  %i.aub = load i32, ptr %spec.store.select.sroa.sel516.i, align 4
  %i.auc = add i32 %.0408619.i, 4
  %i.aud = call ptr @proto_tree_add_item(ptr noundef %.1.i145, i32 noundef %i.aub, ptr noundef %0, i32 noundef %i.auc, i32 noundef %i.ajg, i32 noundef 2)
  store ptr %i.aud, ptr %i.c, align 8
  br label %.critedge.i

bb.fm:                                            ; preds = %bb.fj
  %i.aue = and i32 %i.ale, -2
  %or.cond74.i = icmp eq i32 %i.aue, 24
  br i1 %or.cond74.i, label %bb.fn, label %bb.fr

bb.fn:                                            ; preds = %bb.fm
  %i.auf = icmp eq i32 %i.ale, 25                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.aug = add i32 %.0408619.i, 4                 ; 2 uses
  %i.auh = call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef %i.aug) ; 3 uses
  %i.aui = call i64 @llvm.abs.i64(i64 %i.auh, i1 false)
  %.0.i460.i = select i1 %i.auf, i64 %i.aui, i64 %i.auh ; 2 uses
  %i.auj = lshr i64 %.0.i460.i, 32                ; 3 uses
  store i64 %i.auj, ptr %8, align 8
  %i.auk = and i64 %.0.i460.i, 4294967295         ; 2 uses
  %i.aul = mul nuw nsw i64 %i.auk, 1000000000
  %i.aum = mul nuw nsw i64 %i.auk, 2000000000
  %i.aun = and i64 %i.aum, 4294967296
  %i.auo = add nuw nsw i64 %i.aun, %i.aul         ; 2 uses
  %i.aup = lshr i64 %i.auo, 32
  %i.auq = trunc nuw nsw i64 %i.aup to i32        ; 2 uses
  store i32 %i.auq, ptr %i.aij, align 8
  %i.aur = icmp samesign ugt i64 %i.auo, 4294967295999999999
  br i1 %i.aur, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  store i32 0, ptr %i.aij, align 8
  %i.aus = add nuw nsw i64 %i.auj, 1              ; 2 uses
  store i64 %i.aus, ptr %8, align 8
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.aut = phi i32 [ 0, %bb.fo ], [ %i.auq, %bb.fn ]
  %i.auu = phi i64 [ %i.aus, %bb.fo ], [ %i.auj, %bb.fn ]
  %i.auv = icmp slt i64 %i.auh, 0
  %or.cond.i461.i = and i1 %i.auf, %i.auv
  br i1 %or.cond.i461.i, label %bb.fq, label %erf_ts_to_nstime.exit.i

bb.fq:                                            ; preds = %bb.fp
  %i.auw = sub nsw i64 0, %i.auu
  store i64 %i.auw, ptr %8, align 8
  %i.aux = sub nsw i32 0, %i.aut
  store i32 %i.aux, ptr %i.aij, align 8
  br label %erf_ts_to_nstime.exit.i

erf_ts_to_nstime.exit.i:                          ; preds = %bb.fq, %bb.fp
  %.sroa.gep512.i = getelementptr i8, ptr %i.aiy, i64 28
  %spec.store.select.sroa.sel513.i = select i1 %i.aiz, ptr %i.aib, ptr %.sroa.gep512.i
  %i.auy = load i32, ptr %spec.store.select.sroa.sel513.i, align 4
  %i.auz = call fastcc ptr @dissect_relative_time(ptr noundef %.1.i145, i32 noundef %i.auy, ptr noundef %0, i32 noundef %i.aug, i32 noundef %i.ajg, ptr noundef nonnull %8)
  store ptr %i.auz, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %.critedge.i

bb.fr:                                            ; preds = %bb.fm
  %.sroa.gep509.i = getelementptr i8, ptr %i.aiy, i64 28
  %spec.store.select.sroa.sel510.i = select i1 %i.aiz, ptr %i.aib, ptr %.sroa.gep509.i
  %i.ava = load i32, ptr %spec.store.select.sroa.sel510.i, align 4
  %i.avb = add i32 %.0408619.i, 4
  %i.avc = call ptr @proto_tree_add_item(ptr noundef %.1.i145, i32 noundef %i.ava, ptr noundef %0, i32 noundef %i.avb, i32 noundef %i.ajg, i32 noundef 0)
  store ptr %i.avc, ptr %i.c, align 8
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.fr, %erf_ts_to_nstime.exit.i, %bb.fl, %bb.fk, %dissect_meta_tag_ext_hdrs.exit.i, %bb.ew, %dissect_relative_time.exit.i, %dissect_ptp_timeinterval.exit.i, %bb.eo, %bb.en, %dissect_meta_tag_bitfield.exit.i, %bb.ei, %bb.eh, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz
  %.0565.i = phi ptr [ null, %erf_ts_to_nstime.exit.i ], [ null, %bb.fr ], [ null, %bb.fk ], [ null, %bb.fl ], [ null, %bb.dz ], [ null, %bb.ea ], [ null, %bb.eb ], [ null, %bb.ec ], [ null, %bb.ed ], [ null, %bb.ee ], [ %i.and, %bb.eh ], [ null, %bb.ei ], [ %i.aol, %dissect_meta_tag_bitfield.exit.i ], [ %i.aot, %bb.en ], [ %i.aot, %bb.eo ], [ null, %dissect_ptp_timeinterval.exit.i ], [ null, %dissect_relative_time.exit.i ], [ null, %bb.ew ], [ %i.are, %dissect_meta_tag_ext_hdrs.exit.i ]
  %.2563.i = phi ptr [ %.1562.i, %erf_ts_to_nstime.exit.i ], [ %.1562.i, %bb.fr ], [ %.1562.i, %bb.fk ], [ %.1562.i, %bb.fl ], [ %.1562.i, %bb.dz ], [ %.1562.i, %bb.ea ], [ %.1562.i, %bb.eb ], [ %.1562.i, %bb.ec ], [ %.1562.i, %bb.ed ], [ %.1562.i, %bb.ee ], [ %.1562.i, %bb.eh ], [ %.1562.i, %bb.ei ], [ %.1562.i, %dissect_meta_tag_bitfield.exit.i ], [ %.1562.i, %bb.en ], [ %.1562.i, %bb.eo ], [ %.1562.i, %dissect_ptp_timeinterval.exit.i ], [ %.1562.i, %dissect_relative_time.exit.i ], [ %.1562.i, %bb.ew ], [ %spec.select593.i, %dissect_meta_tag_ext_hdrs.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %bb.fs

bb.fs:                                            ; preds = %.critedge.i, %bb.du, %bb.dt, %bb.ds
  %.1566.i = phi ptr [ %i.ake, %bb.du ], [ %.0565.i, %.critedge.i ], [ %i.ake, %bb.dt ], [ %i.ake, %bb.ds ] ; 2 uses
  %.3564.i = phi ptr [ %spec.select592.i, %bb.du ], [ %.2563.i, %.critedge.i ], [ %.1562.i, %bb.dt ], [ %.1562.i, %bb.ds ] ; 2 uses
  %.1417.i = phi ptr [ %.0416617.i, %bb.du ], [ %.0416617.i, %.critedge.i ], [ %i.akt, %bb.dt ], [ %i.akt, %bb.ds ] ; 2 uses
end_hunk_1
