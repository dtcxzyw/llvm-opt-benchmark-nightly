Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-umts_fp?download=true
inline.NumInlined: 102
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@heur_dissect_fp:bb.a
  %i.ga = tail call ptr @find_or_create_conversation(ptr noundef %1)
  br label %heur_dissect_fp_fach2.exit

heur_dissect_fp_fach2.exit:                       ; preds = %bb.al, %bb.az
  %.sink.i54 = phi ptr [ %i.ga, %bb.az ], [ %i.dz, %bb.al ]
  %i.gb = load ptr, ptr @fp_handle, align 8
  tail call void @conversation_set_dissector(ptr noundef %.sink.i54, ptr noundef %i.gb)
  %i.gc = tail call fastcc i32 @dissect_fp_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null) ; 0 uses
  br label %heur_dissect_fp_dcch_over_dch.exit

bb.ba:                                            ; preds = %bb.av, %bb.au, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.aw
  %i.gd = load i32, ptr %i.a, align 4
  %i.ge = load i32, ptr %i.e, align 4
  %i.gf = tail call i32 @conversation_pt_to_conversation_type(i32 noundef %i.ge)
  %i.gg = load i32, ptr %i.h, align 4
  %i.gh = load i32, ptr %i.j, align 8
  %i.gi = tail call ptr @find_conversation(i32 noundef %i.gd, ptr noundef %i.c, ptr noundef %i.d, i32 noundef %i.gf, i32 noundef %i.gg, i32 noundef %i.gh, i32 noundef 65536) ; 3 uses
  %.not.i56 = icmp eq ptr %i.gi, null
  br i1 %.not.i56, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gj = load i32, ptr @proto_fp, align 4
  %i.gk = tail call ptr @conversation_get_proto_data(ptr noundef nonnull %i.gi, i32 noundef %i.gj) ; 3 uses
  %.not82.i = icmp eq ptr %i.gk, null
  br i1 %.not82.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gl = getelementptr i8, ptr %i.gk, i64 8
  %i.gm = load i32, ptr %i.gl, align 8
  switch i32 %i.gm, label %bb.bp [
    i32 1, label %heur_dissect_fp_rach.exit
    i32 0, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.0.i57 = phi ptr [ %i.gk, %bb.bc ], [ null, %bb.bb ], [ null, %bb.ba ] ; 2 uses
  %i.gn = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.go = icmp ult i32 %i.gn, 6
  br i1 %i.go, label %bb.bp, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gp = tail call i32 @tvb_reported_length(ptr noundef %0) ; 3 uses
  switch i32 %i.gp, label %bb.bp [
    i32 52, label %bb.bf
    i32 28, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be
  %i.gq = tail call ptr @wmem_file_scope()
  %i.gr = load i32, ptr @proto_fp, align 4
  %i.gs = tail call ptr @p_get_proto_data(ptr noundef %i.gq, ptr noundef %1, i32 noundef %i.gr, i32 noundef 0)
  %.not84.i58 = icmp eq ptr %i.gs, null
  br i1 %.not84.i58, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %bb.bf
  %i.gt = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.gu = and i8 %i.gt, 1
  %.not85.i59 = icmp eq i8 %i.gu, 0
  br i1 %.not85.i59, label %bb.bh, label %bb.bp

bb.bh:                                            ; preds = %bb.bg
  %i.gv = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %i.gw = and i8 %i.gv, 31                        ; 2 uses
  %i.gx = icmp eq i32 %i.gp, 28
  %i.gy = icmp ne i8 %i.gw, 0
  %or.cond4.i60 = select i1 %i.gx, i1 %i.gy, i1 false
  br i1 %or.cond4.i60, label %bb.bp, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gz = icmp eq i32 %i.gp, 52
  %i.ha = icmp ne i8 %i.gw, 1
  %or.cond7.i61 = select i1 %i.gz, i1 %i.ha, i1 false
  br i1 %or.cond7.i61, label %bb.bp, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %or.cond10.i = icmp slt i8 %i.hb, 0
  br i1 %or.cond10.i, label %bb.bp, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hc = tail call fastcc zeroext i1 @check_header_crc_for_heur(ptr noundef %0, i16 noundef zeroext 4)
  br i1 %i.hc, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.hd = tail call fastcc zeroext i1 @check_payload_crc_for_heur(ptr noundef %0, i16 noundef zeroext 4)
  br i1 %i.hd, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %.not86.i62 = icmp eq ptr %.0.i57, null
  br i1 %.not86.i62, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.he = tail call ptr @wmem_file_scope()
  %i.hf = tail call noalias dereferenceable_or_null(132696) ptr @wmem_alloc0(ptr noundef %i.he, i64 noundef 132696) #12 ; 2 uses
  tail call fastcc void @set_both_sides_umts_fp_conv_data(ptr noundef %1, ptr noundef %i.hf)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.1.i63 = phi ptr [ %.0.i57, %bb.bm ], [ %i.hf, %bb.bn ] ; 17 uses
  store i32 0, ptr %.1.i63, align 8
  %i.hg = getelementptr i8, ptr %.1.i63, i64 4
  store i32 1, ptr %i.hg, align 4
  %i.hh = load i32, ptr %i.a, align 4             ; 2 uses
  %i.hi = getelementptr i8, ptr %.1.i63, i64 16
  store i32 %i.hh, ptr %i.hi, align 8
  %i.hj = getelementptr i8, ptr %.1.i63, i64 20
  store i32 %i.hh, ptr %i.hj, align 4
  %i.hk = getelementptr i8, ptr %.1.i63, i64 132684
  store i8 1, ptr %i.hk, align 4
  %i.hl = tail call fastcc i32 @generate_ue_id_for_heur(ptr noundef %1)
  %i.hm = getelementptr i8, ptr %.1.i63, i64 56
  store i32 %i.hl, ptr %i.hm, align 8
  %i.hn = getelementptr i8, ptr %.1.i63, i64 12
  store i32 3, ptr %i.hn, align 4
  %i.ho = tail call ptr @wmem_file_scope()
  %i.hp = getelementptr i8, ptr %.1.i63, i64 24
  %i.hq = getelementptr i8, ptr %1, i64 232
  tail call fastcc void @copy_address_wmem(ptr noundef %i.ho, ptr noundef %i.hp, ptr noundef %i.hq)
  %i.hr = load i32, ptr %i.h, align 4
  %i.hs = trunc i32 %i.hr to i16
  %i.ht = getelementptr i8, ptr %.1.i63, i64 48
  store i16 %i.hs, ptr %i.ht, align 8
  %i.hu = getelementptr i8, ptr %.1.i63, i64 8
  store i32 1, ptr %i.hu, align 8
  %i.hv = getelementptr i8, ptr %.1.i63, i64 72
  store i32 1, ptr %i.hv, align 8
  %i.hw = getelementptr i8, ptr %.1.i63, i64 588
  store i32 0, ptr %i.hw, align 4
  %i.hx = getelementptr i8, ptr %.1.i63, i64 848
  store i32 1, ptr %i.hx, align 8
  %i.hy = getelementptr i8, ptr %.1.i63, i64 852
  store i32 1, ptr %i.hy, align 4
  %i.hz = getelementptr i8, ptr %.1.i63, i64 592
  store i32 168, ptr %i.hz, align 8
  %i.ia = getelementptr i8, ptr %.1.i63, i64 596
  store i32 360, ptr %i.ia, align 4
  %i.ib = tail call ptr @wmem_file_scope()
  %i.ic = tail call noalias dereferenceable_or_null(8) ptr @wmem_alloc0(ptr noundef %i.ib, i64 noundef 8) #12 ; 2 uses
  %i.id = tail call ptr @wmem_epan_scope()
  %i.ie = tail call ptr @wmem_file_scope()
  %i.if = tail call ptr @wmem_tree_new_autoreset(ptr noundef %i.id, ptr noundef %i.ie)
  store ptr %i.if, ptr %i.ic, align 8
  %i.ig = getelementptr i8, ptr %.1.i63, i64 64
  store ptr %i.ic, ptr %i.ig, align 8
  %i.ih = tail call ptr @find_or_create_conversation(ptr noundef %1)
  br label %heur_dissect_fp_rach.exit

heur_dissect_fp_rach.exit:                        ; preds = %bb.bc, %bb.bo
  %.sink.i65 = phi ptr [ %i.ih, %bb.bo ], [ %i.gi, %bb.bc ]
  %i.ii = load ptr, ptr @fp_handle, align 8
  tail call void @conversation_set_dissector(ptr noundef %.sink.i65, ptr noundef %i.ii)
  %i.ij = tail call fastcc i32 @dissect_fp_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null) ; 0 uses
  br label %heur_dissect_fp_dcch_over_dch.exit

bb.bp:                                            ; preds = %bb.bk, %bb.bj, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bl
  %i.ik = load i32, ptr %i.a, align 4
  %i.il = load i32, ptr %i.e, align 4
  %i.im = tail call i32 @conversation_pt_to_conversation_type(i32 noundef %i.il)
  %i.in = load i32, ptr %i.h, align 4
  %i.io = load i32, ptr %i.j, align 8
  %i.ip = tail call ptr @find_conversation(i32 noundef %i.ik, ptr noundef %i.c, ptr noundef %i.d, i32 noundef %i.im, i32 noundef %i.in, i32 noundef %i.io, i32 noundef 65536) ; 2 uses
  %.not.i66 = icmp eq ptr %i.ip, null
  br i1 %.not.i66, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iq = load i32, ptr @proto_fp, align 4
  %i.ir = tail call ptr @conversation_get_proto_data(ptr noundef nonnull %i.ip, i32 noundef %i.iq) ; 6 uses
  %.not135.i = icmp eq ptr %i.ir, null
  br i1 %.not135.i, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.is = getelementptr i8, ptr %i.ir, i64 64
  %i.it = load ptr, ptr %i.is, align 8            ; 4 uses
  %i.iu = getelementptr i8, ptr %i.ir, i64 8
  %i.iv = load i32, ptr %i.iu, align 8            ; 2 uses
  %i.iw = icmp eq i32 %i.iv, 9
  %i.ix = icmp ne ptr %i.it, null
  %or.cond.i67 = select i1 %i.iw, i1 %i.ix, i1 false
  br i1 %or.cond.i67, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.iy = load i32, ptr %i.it, align 8
  %i.iz = icmp ne i32 %i.iy, 0                    ; 2 uses
  %i.ja = zext i1 %i.iz to i8
  %i.jb = getelementptr i8, ptr %i.ir, i64 1112
  %i.jc = load i32, ptr %i.jb, align 8
  %i.jd = icmp ne i32 %i.jc, 0                    ; 2 uses
  %i.je = zext i1 %i.jd to i8
  %or.cond3.i = select i1 %i.iz, i1 %i.jd, i1 false
  br i1 %or.cond3.i, label %heur_dissect_fp_pch.exit, label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %.not136.i = icmp eq i32 %i.iv, 0
  br i1 %.not136.i, label %bb.bu, label %bb.dd

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.bq, %bb.bp
  %.0126.i = phi ptr [ %i.ir, %bb.bs ], [ null, %bb.bq ], [ %i.ir, %bb.bt ], [ null, %bb.bp ] ; 6 uses
  %.0124.i = phi ptr [ %i.it, %bb.bs ], [ null, %bb.bq ], [ %i.it, %bb.bt ], [ null, %bb.bp ] ; 2 uses
  %.0123.i = phi i1 [ true, %bb.bs ], [ false, %bb.bq ], [ false, %bb.bt ], [ false, %bb.bp ] ; 3 uses
  %.0121.i = phi i8 [ %i.je, %bb.bs ], [ 0, %bb.bq ], [ 0, %bb.bt ], [ 0, %bb.bp ] ; 6 uses
  %.0120.i = phi i8 [ %i.ja, %bb.bs ], [ 0, %bb.bq ], [ 0, %bb.bt ], [ 0, %bb.bp ] ; 5 uses
  %i.jf = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.jg = icmp ult i32 %i.jf, 6
  br i1 %i.jg, label %bb.dd, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jh = tail call ptr @wmem_file_scope()
  %i.ji = load i32, ptr @proto_fp, align 4
  %i.jj = tail call ptr @p_get_proto_data(ptr noundef %i.jh, ptr noundef %1, i32 noundef %i.ji, i32 noundef 0)
  %.not137.i = icmp eq ptr %i.jj, null
  br i1 %.not137.i, label %bb.bw, label %bb.dd

bb.bw:                                            ; preds = %bb.bv
  %i.jk = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.jl = and i8 %i.jk, 1
  %.not138.i = icmp eq i8 %i.jl, 0
  br i1 %.not138.i, label %bb.bx, label %bb.dd

bb.bx:                                            ; preds = %bb.bw
  %i.jm = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %i.jn = and i8 %i.jm, 14
  %.not139.i = icmp eq i8 %i.jn, 0
  br i1 %.not139.i, label %bb.by, label %bb.dd

bb.by:                                            ; preds = %bb.bx
  %i.jo = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.jp = and i8 %i.jo, 31                        ; 3 uses
  %i.jq = icmp ne i8 %i.jp, 1                     ; 2 uses
  %or.cond6.i = icmp samesign ugt i8 %i.jp, 1
  br i1 %or.cond6.i, label %bb.dd, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jr = tail call fastcc zeroext i1 @check_header_crc_for_heur(ptr noundef %0, i16 noundef zeroext 4)
  br i1 %i.jr, label %bb.ca, label %bb.dd

bb.ca:                                            ; preds = %bb.bz
  %i.js = tail call fastcc zeroext i1 @check_payload_crc_for_heur(ptr noundef %0, i16 noundef zeroext 4)
  br i1 %i.js, label %bb.cb, label %bb.dd

bb.cb:                                            ; preds = %bb.ca
  %i.jt = tail call i32 @tvb_reported_length(ptr noundef %0) ; 3 uses
  %i.ju = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %i.jv = and i8 %i.ju, 1
  %.not140.i = icmp eq i8 %i.jv, 0
  br i1 %.not140.i, label %bb.cu, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %4 = or i8 %i.jp, %.0120.i
  %or.cond8.not.i = icmp eq i8 %4, 0
  br i1 %or.cond8.not.i, label %bb.cd, label %bb.cn

bb.cd:                                            ; preds = %bb.cc
  %i.jw = trunc i32 %i.jt to i8
  switch i8 %i.jw, label %bb.dd [
    i8 9, label %.thread.i
    i8 11, label %bb.ce
    i8 15, label %bb.cf
    i8 24, label %bb.cg
  ]

bb.ce:                                            ; preds = %bb.cd
  br label %.thread.i

bb.cf:                                            ; preds = %bb.cd
  br label %.thread.i

bb.cg:                                            ; preds = %bb.cd
  %i.jx = trunc nuw i8 %.0121.i to i1
  br i1 %i.jx, label %.thread.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jy = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %i.jz = icmp ult i8 %i.jy, 16
  br i1 %i.jz, label %bb.ci, label %.thread.i

bb.ci:                                            ; preds = %bb.ch
  %i.ka = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.kb = icmp eq i8 %i.ka, 0
  br i1 %i.kb, label %bb.dd, label %.thread.i

.thread.i:                                        ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd
  %.03.i = phi i32 [ 144, %bb.cg ], [ 144, %bb.ch ], [ 144, %bb.ci ], [ 18, %bb.cd ], [ 72, %bb.cf ], [ 36, %bb.ce ]
  %.not142.i = icmp eq ptr %.0126.i, null
  br i1 %.not142.i, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.thread.i
  %i.kc = tail call ptr @wmem_file_scope()
  %i.kd = tail call noalias dereferenceable_or_null(132696) ptr @wmem_alloc0(ptr noundef %i.kc, i64 noundef 132696) #12 ; 2 uses
  tail call fastcc void @set_both_sides_umts_fp_conv_data(ptr noundef %1, ptr noundef %i.kd)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.thread.i
  %.1127.i = phi ptr [ %.0126.i, %.thread.i ], [ %i.kd, %bb.cj ] ; 2 uses
  br i1 %.0123.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call fastcc void @fill_pch_conversation_info_for_heur(ptr noundef %.1127.i, ptr noundef %1)
  %i.ke = getelementptr i8, ptr %.1127.i, i64 64
  %i.kf = load ptr, ptr %i.ke, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.1125.i = phi ptr [ %.0124.i, %bb.ck ], [ %i.kf, %bb.cl ]
  store i32 %.03.i, ptr %.1125.i, align 8
  br label %bb.db

bb.cn:                                            ; preds = %bb.cc
  %5 = trunc nuw i8 %.0120.i to i1
  %i.kg = trunc nuw i8 %.0121.i to i1
  %or.cond12.i = select i1 %i.jq, i1 true, i1 %i.kg
  %or.cond12.not.i = xor i1 %or.cond12.i, true
  %or.cond14.i = and i1 %5, %or.cond12.not.i
  br i1 %or.cond14.i, label %bb.co, label %bb.db

bb.co:                                            ; preds = %bb.cn
  %i.kh = load i32, ptr %.0124.i, align 8
  %i.ki = add i32 %i.kh, 7
  %i.kj = sdiv i32 %i.ki, 8
  %.not143.i = icmp eq ptr %.0126.i, null
  br i1 %.not143.i, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.kk = tail call ptr @wmem_file_scope()
  %i.kl = tail call noalias dereferenceable_or_null(132696) ptr @wmem_alloc0(ptr noundef %i.kk, i64 noundef 132696) #12 ; 2 uses
  tail call fastcc void @set_both_sides_umts_fp_conv_data(ptr noundef %1, ptr noundef %i.kl)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.2128.i = phi ptr [ %.0126.i, %bb.co ], [ %i.kl, %bb.cp ] ; 2 uses
  br i1 %.0123.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call fastcc void @fill_pch_conversation_info_for_heur(ptr noundef %.2128.i, ptr noundef %1)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.km = and i32 %i.kj, 255
  %.neg14.i = add i32 %i.jt, -6
  %i.kn = sub i32 %.neg14.i, %i.km                ; 2 uses
  %trunc.i = trunc i32 %i.kn to i16
  switch i16 %trunc.i, label %bb.dd [
    i16 30, label %bb.ct
    i16 10, label %bb.ct
  ]

bb.ct:                                            ; preds = %bb.cs, %bb.cs
  %i.ko = shl i32 %i.kn, 3
  %i.kp = and i32 %i.ko, 524280
  %i.kq = getelementptr i8, ptr %.2128.i, i64 1112
  store i32 %i.kp, ptr %i.kq, align 4
  br label %bb.db

bb.cu:                                            ; preds = %bb.cb
  %i.kr = trunc nuw i8 %.0121.i to i1
  %or.cond19.i = select i1 %i.jq, i1 true, i1 %i.kr
  br i1 %or.cond19.i, label %bb.db, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not141.i = icmp eq ptr %.0126.i, null
  br i1 %.not141.i, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.ks = tail call ptr @wmem_file_scope()
  %i.kt = tail call noalias dereferenceable_or_null(132696) ptr @wmem_alloc0(ptr noundef %i.ks, i64 noundef 132696) #12 ; 2 uses
  tail call fastcc void @set_both_sides_umts_fp_conv_data(ptr noundef %1, ptr noundef %i.kt)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.3.i = phi ptr [ %.0126.i, %bb.cv ], [ %i.kt, %bb.cw ] ; 3 uses
  br i1 %.0123.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  tail call fastcc void @fill_pch_conversation_info_for_heur(ptr noundef %.3.i, ptr noundef %1)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.ku = add i32 %i.jt, 65530                    ; 2 uses
  %trunc13.i = trunc i32 %i.ku to i16
  switch i16 %trunc13.i, label %bb.dd [
    i16 30, label %bb.da
    i16 10, label %bb.da
  ]

bb.da:                                            ; preds = %bb.cz, %bb.cz
  %i.kv = shl i32 %i.ku, 3
  %i.kw = and i32 %i.kv, 524280
  %i.kx = getelementptr i8, ptr %.3.i, i64 1112
  store i32 %i.kw, ptr %i.kx, align 4
  tail call fastcc void @set_both_sides_umts_fp_conv_data(ptr noundef %1, ptr noundef %.3.i)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cu, %bb.ct, %bb.cn, %bb.cm
  %.1122.i = phi i8 [ 1, %bb.ct ], [ 1, %bb.da ], [ %.0121.i, %bb.cn ], [ %.0121.i, %bb.cm ], [ %.0121.i, %bb.cu ]
  %.2.i = phi i8 [ 1, %bb.ct ], [ %.0120.i, %bb.da ], [ %.0120.i, %bb.cn ], [ 1, %bb.cm ], [ %.0120.i, %bb.cu ]
  %i.ky = trunc nuw i8 %.2.i to i1
  %i.kz = trunc nuw i8 %.1122.i to i1
  %or.cond24.i = select i1 %i.ky, i1 %i.kz, i1 false
  br i1 %or.cond24.i, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.la = tail call ptr @find_or_create_conversation(ptr noundef %1)
  %i.lb = load ptr, ptr @fp_handle, align 8
  tail call void @conversation_set_dissector(ptr noundef %i.la, ptr noundef %i.lb)
  br label %heur_dissect_fp_pch.exit

heur_dissect_fp_pch.exit:                         ; preds = %bb.bs, %bb.dc
  %i.lc = tail call fastcc i32 @dissect_fp_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null) ; 0 uses
  br label %heur_dissect_fp_dcch_over_dch.exit

bb.dd:                                            ; preds = %bb.cs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.cz, %bb.ca, %bb.ci, %bb.bz, %bb.by, %bb.db, %bb.cd
  %i.ld = load i32, ptr %i.a, align 4
  %i.le = load i32, ptr %i.e, align 4
  %i.lf = tail call i32 @conversation_pt_to_conversation_type(i32 noundef %i.le)
  %i.lg = load i32, ptr %i.h, align 4
  %i.lh = load i32, ptr %i.j, align 8
  %i.li = tail call ptr @find_conversation(i32 noundef %i.ld, ptr noundef %i.c, ptr noundef %i.d, i32 noundef %i.lf, i32 noundef %i.lg, i32 noundef %i.lh, i32 noundef 65536) ; 3 uses
  %.not.i68 = icmp eq ptr %i.li, null
  br i1 %.not.i68, label %bb.dh, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.lj = load i32, ptr @proto_fp, align 4
  %i.lk = tail call ptr @conversation_get_proto_data(ptr noundef nonnull %i.li, i32 noundef %i.lj) ; 4 uses
  %.not100.i = icmp eq ptr %i.lk, null
  br i1 %.not100.i, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ll = getelementptr i8, ptr %i.lk, i64 8
  %i.lm = load i32, ptr %i.ll, align 8
  switch i32 %i.lm, label %.loopexit [
    i32 13, label %bb.dg
    i32 0, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  %i.ln = getelementptr i8, ptr %i.lk, i64 64
  %i.lo = load ptr, ptr %i.ln, align 8
  %i.lp = load i32, ptr %i.lo, align 4
  %i.lq = icmp eq i32 %i.lp, 1
  br i1 %i.lq, label %heur_dissect_fp_hsdsch_type_1.exit, label %.loopexit

bb.dh:                                            ; preds = %bb.df, %bb.de, %bb.dd
  %.090.i = phi ptr [ %i.lk, %bb.df ], [ null, %bb.de ], [ null, %bb.dd ] ; 2 uses
  %i.lr = tail call ptr @wmem_file_scope()
  %i.ls = load i32, ptr @proto_fp, align 4
  %i.lt = tail call ptr @p_get_proto_data(ptr noundef %i.lr, ptr noundef %1, i32 noundef %i.ls, i32 noundef 0)
  %.not102.i69 = icmp eq ptr %i.lt, null
  br i1 %.not102.i69, label %bb.di, label %.loopexit

bb.di:                                            ; preds = %bb.dh
  %i.lu = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %i.lv = icmp ult i32 %i.lu, 11
  br i1 %i.lv, label %.loopexit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.lw = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.lx = and i8 %i.lw, 1
  %.not103.i = icmp eq i8 %i.lx, 0
  br i1 %.not103.i, label %bb.dk, label %.loopexit

bb.dk:                                            ; preds = %bb.dj
  %i.ly = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %i.lz = icmp ult i32 %i.ly, 55
  br i1 %i.lz, label %.loopexit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ma = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 2, i32 noundef 0) ; 2 uses
  %i.mb = lshr i16 %i.ma, 3                       ; 4 uses
  %i.mc = zext nneg i16 %i.mb to i32
  switch i16 %i.mb, label %.loopexit [
    i16 656, label %bb.dm
    i16 336, label %bb.dm
  ]

bb.dm:                                            ; preds = %bb.dl, %bb.dl
  %i.md = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4) ; 4 uses
  %i.me = zext i8 %i.md to i32                    ; 2 uses
  %i.mf = icmp eq i8 %i.md, 0
  br i1 %i.mf, label %.loopexit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.mg = icmp eq i16 %i.mb, 336
  %i.mh = icmp ugt i8 %i.md, 32
  %or.cond5.i = and i1 %i.mg, %i.mh
  br i1 %or.cond5.i, label %.loopexit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.mi = icmp eq i16 %i.mb, 656
  %i.mj = icmp ugt i8 %i.md, 17
  %or.cond8.i71 = and i1 %i.mi, %i.mj
  br i1 %or.cond8.i71, label %.loopexit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.mk = mul nuw nsw i32 %i.me, %i.mc
  %i.ml = lshr exact i32 %i.mk, 3
  %i.mm = add nuw nsw i32 %i.ml, 9                ; 2 uses
  %i.mn = icmp ugt i32 %i.mm, %i.lu
  %i.mo = icmp ugt i32 %i.mm, %i.ly
  %or.cond.i72 = or i1 %i.mn, %i.mo
  br i1 %or.cond.i72, label %.loopexit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.mp = lshr i16 %i.ma, 6
  %i.mq = zext nneg i16 %i.mp to i32
  br label %bb.dr

bb.dr:                                            ; preds = %bb.ds, %bb.dq
  %.03.i73 = phi i32 [ 0, %bb.dq ], [ %i.mt, %bb.ds ]
  %.0892.i = phi i32 [ 7, %bb.dq ], [ %i.ms, %bb.ds ] ; 2 uses
end_hunk_0
