Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ituh263enc?download=true
inline.NumInlined: 118
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@ff_h263_update_motion_val

; Function Attrs: cold nounwind optsize uwtable
define void @ff_h263_encode_init(ptr noundef initializes((5360, 5368)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_once(ptr noundef nonnull @ff_h263_get_mv_penalty.init_static_once, ptr noundef nonnull @h263_encode_init_static) #13 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5360
  store ptr @mv_penalty, ptr %i.b, align 16, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2672
  tail call void @ff_h263dsp_init(ptr noundef nonnull %i.c) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6644
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1816 ; 2 uses
  tail call void @ff_permute_scantable(ptr noundef nonnull %i.d, ptr noundef nonnull @ff_alternate_horizontal_scan, ptr noundef nonnull %i.e) #13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6708
  tail call void @ff_permute_scantable(ptr noundef nonnull %i.f, ptr noundef nonnull @ff_alternate_vertical_scan, ptr noundef nonnull %i.e) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.h = load i32, ptr %i.g, align 16, !tbaa !62  ; 2 uses
  %i.i = icmp eq i32 %i.h, 12
  br i1 %i.i, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6176
  store ptr @uni_h263_inter_rl_len, ptr %i.j, align 16, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6144 ; 2 uses
  store ptr @uni_h263_inter_rl_len, ptr %i.k, align 16, !tbaa !108
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6184
  store ptr getelementptr inbounds nuw (i8, ptr @uni_h263_inter_rl_len, i64 8192), ptr %i.l, align 8, !tbaa !109
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @uni_h263_inter_rl_len, i64 8192), ptr %i.m, align 8, !tbaa !110
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !65
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @uni_h263_intra_aic_rl_len, ptr %i.k, align 16, !tbaa !108
  store ptr getelementptr inbounds nuw (i8, ptr @uni_h263_intra_aic_rl_len, i64 8192), ptr %i.m, align 8, !tbaa !110
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store ptr @ff_aic_dc_scale_table, ptr %i.p, align 8, !tbaa !111
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store ptr @ff_aic_dc_scale_table, ptr %i.q, align 16, !tbaa !112
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6136
  store i32 22, ptr %i.r, align 8, !tbaa !113
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6412
  %i.t = load i32, ptr %i.s, align 4, !tbaa !66
  %.not40 = icmp eq i32 %i.t, 0                   ; 2 uses
  br i1 %.not40, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store ptr @ff_h263_chroma_qscale_table, ptr %i.u, align 16, !tbaa !114
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.w = load i32, ptr %i.v, align 4, !tbaa !67   ; 2 uses
  %i.x = icmp slt i32 %i.w, 401
  %i.y = icmp slt i32 %i.w, 801
  %i.z = select i1 %i.y, i32 2, i32 4
  %i.aa = select i1 %i.x, i32 1, i32 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 6372
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !59
  switch i32 %i.h, label %bb.m [
    i32 19, label %bb.g
    i32 21, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 6400
  %i.ad = load i32, ptr %i.ac, align 16, !tbaa !68
  %.not41 = icmp eq i32 %i.ad, 0
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 10360
  store ptr getelementptr inbounds nuw (i8, ptr @umv_fcode_tab, i64 4096), ptr %i.ae, align 8, !tbaa !121
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6128 ; 2 uses
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store <2 x i32> <i32 -2047, i32 2047>, ptr %i.af, align 16, !tbaa !51
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  store <2 x i32> <i32 -127, i32 127>, ptr %i.af, align 16, !tbaa !51
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 10392
  store ptr @ff_flv_encode_picture_header, ptr %i.ag, align 8, !tbaa !122
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6128
  store <2 x i32> <i32 -1023, i32 1023>, ptr %i.ah, align 16, !tbaa !51
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 6128
  store <2 x i32> <i32 -127, i32 127>, ptr %i.ai, align 16, !tbaa !51
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.m, %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 10392 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !122
  %.not43 = icmp eq ptr %i.ak, null
  br i1 %.not43, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr @h263_encode_picture_header, ptr %i.aj, align 8, !tbaa !122
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 6552 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !123
  %.not44 = icmp eq ptr %i.am, null
  br i1 %.not44, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr @h263_encode_mb, ptr %i.al, align 8, !tbaa !123
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.a
  ret void
}

declare void @ff_h263dsp_init(ptr noundef) local_unnamed_addr #1

declare void @ff_permute_scantable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_flv_encode_picture_header(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @h263_encode_picture_header(ptr nofree noundef %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 50 uses
  %i.b = getelementptr i8, ptr %0, i64 4388       ; 49 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.d = load i32, ptr %i.c, align 16, !tbaa !62
  %i.e = icmp eq i32 %i.d, 19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !124  ; 2 uses
  br i1 %i.e, label %.preheader, label %.put_bits.exit_crit_edge

.put_bits.exit_crit_edge:                         ; preds = %bb.a
  %.phi.trans.insert360 = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %.pre361 = load i32, ptr %.phi.trans.insert360, align 4, !tbaa !125
  %.pre363 = sext i32 %i.i to i64
  %.pre364 = sext i32 %.pre361 to i64
  br label %put_bits.exit

.preheader:                                       ; preds = %bb.a
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = mul nsw i64 %i.j, 1800000                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.m = load i32, ptr %i.l, align 4, !tbaa !125
  %i.n = sext i32 %i.m to i64                     ; 4 uses
  %i.o = mul nsw i64 %i.n, 500
  %i.p = add nsw i64 %i.o, %i.k                   ; 2 uses
  %i.q = mul nsw i64 %i.n, 1000                   ; 2 uses
  %i.r = sdiv i64 %i.p, %i.q
  %i.s = trunc i64 %i.r to i32
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.s, i32 1)
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.t, i32 127) ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = mul nsw i64 %i.q, %i.v
  %i.x = sub nsw i64 %i.k, %i.w
  %i.y = tail call i64 @llvm.abs.i64(i64 %i.x, i1 true)
  %i.z = trunc i64 %i.y to i32
  %i.aa = mul nsw i64 %i.n, 1001                  ; 2 uses
  %i.ab = sdiv i64 %i.p, %i.aa
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 127) ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = mul nsw i64 %i.aa, %i.af
  %i.ah = sub nsw i64 %i.k, %i.ag
  %i.ai = tail call i64 @llvm.abs.i64(i64 %i.ah, i1 true)
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = icmp sgt i32 %i.z, %i.aj                ; 2 uses
  %.1131.1 = zext i1 %i.ak to i32
  %.1129.1 = select i1 %i.ak, i32 %i.ae, i32 %i.u
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %.put_bits.exit_crit_edge, %.preheader
  %.pre-phi365 = phi i64 [ %.pre364, %.put_bits.exit_crit_edge ], [ %i.n, %.preheader ]
  %.pre-phi = phi i64 [ %.pre363, %.put_bits.exit_crit_edge ], [ %i.j, %.preheader ]
  %.2132 = phi i32 [ 1, %.put_bits.exit_crit_edge ], [ %.1131.1, %.preheader ] ; 6 uses
  %.2 = phi i32 [ 60, %.put_bits.exit_crit_edge ], [ %.1129.1, %.preheader ] ; 6 uses
  %i.al = icmp eq i32 %.2132, 0
  %i.am = icmp ne i32 %.2, 60
  %i.an = or i1 %i.al, %i.am                      ; 2 uses
  %i.ao = zext i1 %i.an to i32                    ; 4 uses
  %i.ap = or disjoint i32 %.2132, 1000
  %i.aq = mul nuw nsw i32 %i.ap, %.2
  %i.ar = load i32, ptr %i.a, align 16, !tbaa !12
  %1 = shl i32 %i.ar, 30
  %2 = or disjoint i32 %1, 8192
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 6328
  %i.at = load i32, ptr %i.as, align 8, !tbaa !126
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.au, 1800000
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.ax = mul nsw i64 %i.av, %.pre-phi
  %i.ay = zext nneg i32 %i.aq to i64
  %i.az = mul nsw i64 %.pre-phi365, %i.ay
  %i.ba = sdiv i64 %i.ax, %i.az
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %3 = and i32 %i.bb, 255
  %4 = or disjoint i32 %3, %2
  %5 = shl i32 %4, 1
  %i.bc = or disjoint i32 %5, 1                   ; 2 uses
  store i32 %i.bc, ptr %i.a, align 16, !tbaa !12
  store i32 1, ptr %i.b, align 4, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4408 ; 48 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 144 uses
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !15 ; 2 uses
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = icmp ugt i64 %i.bj, 3
  br i1 %i.bk, label %bb.b, label %bb.c

bb.b:                                             ; preds = %put_bits.exit
  %i.bl = shl i32 %i.bc, 1
  %i.bm = tail call i32 @llvm.bswap.i32(i32 %i.bl)
  store i32 %i.bm, ptr %i.bg, align 1, !tbaa !16
  %i.bn = load ptr, ptr %i.bf, align 16, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store ptr %i.bo, ptr %i.bf, align 16, !tbaa !15
  br label %put_bits.exit149

bb.c:                                             ; preds = %put_bits.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #13
  br label %put_bits.exit149

put_bits.exit149:                                 ; preds = %bb.b, %bb.c
  store i32 0, ptr %i.a, align 16, !tbaa !12
  store i32 29, ptr %i.b, align 4, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 16, !tbaa !127
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !67
  %i.bt = tail call i32 @ff_match_2uint16(ptr noundef nonnull @ff_h263_format, i32 noundef 8, i32 noundef %i.bq, i32 noundef %i.bs) #13 ; 9 uses
  %i.bu = load i32, ptr %i.c, align 16, !tbaa !62
  %.not = icmp eq i32 %i.bu, 19
  %i.bv = load i32, ptr %i.a, align 16, !tbaa !12 ; 4 uses
  %i.bw = load i32, ptr %i.b, align 4, !tbaa !13  ; 7 uses
  %i.bx = icmp sgt i32 %i.bw, 3                   ; 2 uses
  br i1 %.not, label %bb.al, label %bb.d

bb.d:                                             ; preds = %put_bits.exit149
  br i1 %i.bx, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.by = shl i32 %i.bv, 3
  %i.bz = or i32 %i.by, %i.bt
  br label %put_bits.exit165

bb.f:                                             ; preds = %bb.d
  %i.ca = load ptr, ptr %i.bd, align 8, !tbaa !14
  %i.cb = load ptr, ptr %i.bf, align 16, !tbaa !15 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = icmp ugt i64 %i.ce, 3
  br i1 %i.cf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cg = shl i32 %i.bv, %i.bw
  %i.ch = sub nsw i32 3, %i.bw
  %i.ci = lshr i32 %i.bt, %i.ch
  %i.cj = or i32 %i.ci, %i.cg
  %i.ck = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  store i32 %i.ck, ptr %i.cb, align 1, !tbaa !16
  %i.cl = load ptr, ptr %i.bf, align 16, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store ptr %i.cm, ptr %i.bf, align 16, !tbaa !15
  br label %put_bits.exit165

bb.h:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #13
  br label %put_bits.exit165

put_bits.exit165:                                 ; preds = %bb.g, %bb.h, %bb.e
  %.sink = phi i32 [ -3, %bb.e ], [ 29, %bb.h ], [ 29, %bb.g ]
  %.026.i.i163 = phi i32 [ %i.bz, %bb.e ], [ %i.bt, %bb.h ], [ %i.bt, %bb.g ] ; 3 uses
  %i.cn = add nsw i32 %i.bw, %.sink               ; 5 uses
  store i32 %.026.i.i163, ptr %i.a, align 16, !tbaa !12
  store i32 %i.cn, ptr %i.b, align 4, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.cp = load i32, ptr %i.co, align 16, !tbaa !58
  %i.cq = icmp eq i32 %i.cp, 2
  %i.cr = zext i1 %i.cq to i32                    ; 4 uses
  %i.cs = icmp sgt i32 %i.cn, 1
  br i1 %i.cs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %put_bits.exit165
  %i.ct = shl i32 %.026.i.i163, 1
  %i.cu = or disjoint i32 %i.ct, %i.cr
  br label %put_bits.exit169

bb.j:                                             ; preds = %put_bits.exit165
  %i.cv = load ptr, ptr %i.bd, align 8, !tbaa !14
  %i.cw = load ptr, ptr %i.bf, align 16, !tbaa !15 ; 2 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = icmp ugt i64 %i.cz, 3
  br i1 %i.da, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.db = shl i32 %.026.i.i163, %i.cn
  %i.dc = sub nsw i32 1, %i.cn
  %i.dd = lshr i32 %i.cr, %i.dc
  %i.de = or i32 %i.dd, %i.db
  %i.df = tail call i32 @llvm.bswap.i32(i32 %i.de)
  store i32 %i.df, ptr %i.cw, align 1, !tbaa !16
  %i.dg = load ptr, ptr %i.bf, align 16, !tbaa !15
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store ptr %i.dh, ptr %i.bf, align 16, !tbaa !15
  br label %put_bits.exit169

bb.l:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #13
  br label %put_bits.exit169

put_bits.exit169:                                 ; preds = %bb.k, %bb.l, %bb.i
  %.sink379 = phi i32 [ -1, %bb.i ], [ 31, %bb.l ], [ 31, %bb.k ]
  %.026.i.i167 = phi i32 [ %i.cu, %bb.i ], [ %i.cr, %bb.l ], [ %i.cr, %bb.k ] ; 3 uses
  %i.di = add nsw i32 %i.cn, %.sink379            ; 4 uses
  store i32 %.026.i.i167, ptr %i.a, align 16, !tbaa !12
  store i32 %i.di, ptr %i.b, align 4, !tbaa !13
  %i.dj = icmp sgt i32 %i.di, 1
  br i1 %i.dj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %put_bits.exit169
  %i.dk = shl i32 %.026.i.i167, 1
  br label %put_bits.exit173

bb.n:                                             ; preds = %put_bits.exit169
  %i.dl = load ptr, ptr %i.bd, align 8, !tbaa !14
  %i.dm = load ptr, ptr %i.bf, align 16, !tbaa !15 ; 2 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = icmp ugt i64 %i.dp, 3
  br i1 %i.dq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dr = shl i32 %.026.i.i167, %i.di
  %i.ds = tail call i32 @llvm.bswap.i32(i32 %i.dr)
  store i32 %i.ds, ptr %i.dm, align 1, !tbaa !16
  %i.dt = load ptr, ptr %i.bf, align 16, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store ptr %i.du, ptr %i.bf, align 16, !tbaa !15
  br label %put_bits.exit173

bb.p:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #13
  br label %put_bits.exit173

put_bits.exit173:                                 ; preds = %bb.o, %bb.p, %bb.m
  %.sink380 = phi i32 [ -1, %bb.m ], [ 31, %bb.p ], [ 31, %bb.o ]
  %.026.i.i171 = phi i32 [ %i.dk, %bb.m ], [ 0, %bb.p ], [ 0, %bb.o ] ; 3 uses
  %i.dv = add nsw i32 %i.di, %.sink380            ; 4 uses
  store i32 %.026.i.i171, ptr %i.a, align 16, !tbaa !12
  store i32 %i.dv, ptr %i.b, align 4, !tbaa !13
  %i.dw = icmp sgt i32 %i.dv, 1
  br i1 %i.dw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %put_bits.exit173
  %i.dx = shl i32 %.026.i.i171, 1
  br label %put_bits.exit177

bb.r:                                             ; preds = %put_bits.exit173
  %i.dy = load ptr, ptr %i.bd, align 8, !tbaa !14
  %i.dz = load ptr, ptr %i.bf, align 16, !tbaa !15 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = icmp ugt i64 %i.ec, 3
  br i1 %i.ed, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ee = shl i32 %.026.i.i171, %i.dv
  %i.ef = tail call i32 @llvm.bswap.i32(i32 %i.ee)
  store i32 %i.ef, ptr %i.dz, align 1, !tbaa !16
  %i.eg = load ptr, ptr %i.bf, align 16, !tbaa !15
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store ptr %i.eh, ptr %i.bf, align 16, !tbaa !15
  br label %put_bits.exit177

bb.t:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #13
  br label %put_bits.exit177

put_bits.exit177:                                 ; preds = %bb.s, %bb.t, %bb.q
  %.sink381 = phi i32 [ -1, %bb.q ], [ 31, %bb.t ], [ 31, %bb.s ]
  %.026.i.i175 = phi i32 [ %i.dx, %bb.q ], [ 0, %bb.t ], [ 0, %bb.s ] ; 3 uses
  %i.ei = add nsw i32 %i.dv, %.sink381            ; 5 uses
  store i32 %.026.i.i175, ptr %i.a, align 16, !tbaa !12
  store i32 %i.ei, ptr %i.b, align 4, !tbaa !13
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 3724
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !128 ; 4 uses
  %i.el = icmp sgt i32 %i.ei, 1
  br i1 %i.el, label %bb.u, label %bb.v

bb.u:                                             ; preds = %put_bits.exit177
  %i.em = shl i32 %.026.i.i175, 1
  %i.en = or i32 %i.ek, %i.em
end_hunk_0
