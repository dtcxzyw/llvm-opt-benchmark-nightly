Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/psaux?download=true
inline.NumInlined: 440
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@cf2_decoder_parse_charstrings:bb.a
  %i.qg = mul nsw i64 %i.qf, %i.px                ; 2 uses
  %i.qh = ashr i64 %i.qg, 63
  %i.qi = add nsw i64 %i.qg, 32768
  %i.qj = add nsw i64 %i.qi, %i.qh
  %i.qk = lshr i64 %i.qj, 16
  %i.ql = trunc i64 %i.qk to i32                  ; 2 uses
  %i.qm = add i32 %i.pz, %i.ql
  %.reass.i.reass.i.reass.reass = add i32 %i.ql, %invariant.op
  %.sink267.in.i.i.i = select i1 %.not208.i.i.i, i32 %i.qm, i32 %.reass.i.reass.i.reass.reass
  %.sink267.i.i.i = and i32 %.sink267.in.i.i.i, -65536
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qa, i64 12
  store i32 %.sink267.i.i.i, ptr %i.qn, align 4, !tbaa !253
  %i.qo = add nuw nsw i64 %.3190254.i.i.i, 1      ; 2 uses
  %exitcond263.not.i.i.i = icmp eq i64 %i.qo, %i.pt
  br i1 %exitcond263.not.i.i.i, label %cf2_font_setup.exit.i, label %bb.bt, !llvm.loop !463

cf2_font_setup.exit.i:                            ; preds = %bb.bt, %bb.bs, %bb.av, %bb.ad
  %.pr.i = load i32, ptr %i.di, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not.i85 = icmp eq i32 %.pr.i, 0
  br i1 %.not.i85, label %.peel.begin.i, label %cf2_getGlyphOutline.exit.thread

.peel.begin.i:                                    ; preds = %cf2_font_setup.exit.i
  %i.qp = getelementptr inbounds nuw i8, ptr %.0, i64 308 ; 2 uses
  store i8 0, ptr %i.qp, align 4, !tbaa !245
  %i.qq = getelementptr inbounds nuw i8, ptr %.0, i64 257
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !244
  %i.qs = getelementptr inbounds nuw i8, ptr %.0, i64 208 ; 3 uses
  %i.qt = load ptr, ptr %i.ae, align 8, !tbaa !254
  store i32 0, ptr %i.qs, align 8, !tbaa !529
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !255
  call void @FT_GlyphLoader_Rewind(ptr noundef %i.qv) #19
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %.0, ptr noundef nonnull readonly %4, ptr noundef nonnull %i.ad, ptr noundef %3, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, ptr noundef %i.c)
  %i.qw = load i32, ptr %i.di, align 8, !tbaa !24
  %.not19.peel.i = icmp eq i32 %i.qw, 0
  br i1 %.not19.peel.i, label %bb.bu, label %cf2_getGlyphOutline.exit.thread

bb.bu:                                            ; preds = %.peel.begin.i
  %i.qx = icmp eq i8 %i.qr, 0
  br i1 %i.qx, label %.loopexit29.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qy = load i32, ptr %i.qs, align 8, !tbaa !530
  %i.qz = icmp sgt i32 %i.qy, -1
  br i1 %i.qz, label %.loopexit29.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i8 1, ptr %i.qp, align 4, !tbaa !245
  %i.ra = load ptr, ptr %i.ae, align 8, !tbaa !254
  store i32 0, ptr %i.qs, align 8, !tbaa !529
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !255
  call void @FT_GlyphLoader_Rewind(ptr noundef %i.rc) #19
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %.0, ptr noundef nonnull readonly %4, ptr noundef nonnull %i.ad, ptr noundef %3, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, ptr noundef %i.c)
  %i.rd = load i32, ptr %i.di, align 8, !tbaa !24
  %.not19.i = icmp eq i32 %i.rd, 0
  br i1 %.not19.i, label %.loopexit29.i, label %cf2_getGlyphOutline.exit.thread

.loopexit29.i:                                    ; preds = %bb.bw, %bb.bv, %bb.bu
  %.val.i = load ptr, ptr %i.ae, align 8, !tbaa !254 ; 2 uses
  %i.re = getelementptr i8, ptr %.val.i, i64 40
  %.val.i21.i = load ptr, ptr %i.re, align 8, !tbaa !68 ; 11 uses
  %.not.i.i22.i = icmp eq ptr %.val.i21.i, null
  br i1 %.not.i.i22.i, label %cf2_getGlyphOutline.exit, label %bb.bx

bb.bx:                                            ; preds = %.loopexit29.i
  %i.rf = load i16, ptr %.val.i21.i, align 8, !tbaa !146 ; 6 uses
  %i.rg = icmp ult i16 %i.rf, 2
  br i1 %i.rg, label %bb.by, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bx
  %i.rh = zext i16 %i.rf to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 24
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !147
  %i.rk = getelementptr [2 x i8], ptr %i.rj, i64 %i.rh
  %i.rl = getelementptr i8, ptr %i.rk, i64 -4
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !44
  %i.rn = zext i16 %i.rm to i32
  %i.ro = add nuw nsw i32 %i.rn, 1
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %.not33.i.i.i = icmp eq i16 %i.rf, 0
  br i1 %.not33.i.i.i, label %._crit_edge.i.i23.i, label %bb.bz

._crit_edge.i.i23.i:                              ; preds = %bb.by
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 2
  %.pre.i.i24.i = load i16, ptr %.phi.trans.insert.i.i.i, align 2, !tbaa !139
  br label %bb.cb

bb.bz:                                            ; preds = %bb.by, %.thread.i.i.i
  %i.rp = phi i32 [ %i.ro, %.thread.i.i.i ], [ 0, %bb.by ] ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 2
  %i.rr = load i16, ptr %i.rq, align 2, !tbaa !139 ; 2 uses
  %i.rs = zext i16 %i.rr to i32
  %i.rt = icmp eq i32 %i.rp, %i.rs
  br i1 %i.rt, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ru = add i16 %i.rf, -1
  store i16 %i.ru, ptr %.val.i21.i, align 8, !tbaa !146
  br label %cf2_getGlyphOutline.exit

bb.cb:                                            ; preds = %bb.bz, %._crit_edge.i.i23.i
  %i.rv = phi i16 [ %i.rr, %bb.bz ], [ %.pre.i.i24.i, %._crit_edge.i.i23.i ] ; 7 uses
  %.not333.i.i.i = phi i1 [ false, %bb.bz ], [ true, %._crit_edge.i.i23.i ]
  %i.rw = phi i32 [ %i.rp, %bb.bz ], [ 0, %._crit_edge.i.i23.i ] ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 2 ; 2 uses
  %i.ry = icmp ugt i16 %i.rv, 1
  br i1 %i.ry, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %i.rz = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 8
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !138 ; 2 uses
  %i.sb = zext nneg i32 %i.rw to i64
  %i.sc = getelementptr inbounds nuw [16 x i8], ptr %i.sa, i64 %i.sb ; 2 uses
  %i.sd = zext i16 %i.rv to i64                   ; 2 uses
  %i.se = getelementptr inbounds nuw [16 x i8], ptr %i.sa, i64 %i.sd ; 2 uses
  %i.sf = getelementptr inbounds i8, ptr %i.se, i64 -16
  %i.sg = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 16
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !140
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sd
  %i.sj = getelementptr inbounds i8, ptr %i.si, i64 -1
  %i.sk = load i64, ptr %i.sc, align 8, !tbaa !141
  %i.sl = load i64, ptr %i.sf, align 8, !tbaa !141
  %i.sm = icmp eq i64 %i.sk, %i.sl
  br i1 %i.sm, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !142
  %i.sp = getelementptr inbounds i8, ptr %i.se, i64 -8
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !142
  %i.sr = icmp eq i64 %i.so, %i.sq
  br i1 %i.sr, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.ss = load i8, ptr %i.sj, align 1, !tbaa !41
  %i.st = icmp eq i8 %i.ss, 1
  br i1 %i.st, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.su = add i16 %i.rv, -1                       ; 2 uses
  store i16 %i.su, ptr %i.rx, align 2, !tbaa !139
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb
  %i.sv = phi i16 [ %i.rv, %bb.cc ], [ %i.rv, %bb.cd ], [ %i.su, %bb.cf ], [ %i.rv, %bb.ce ], [ %i.rv, %bb.cb ] ; 2 uses
  %i.sw = zext i16 %i.rf to i64
  br i1 %.not333.i.i.i, label %cf2_getGlyphOutline.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.sx = zext i16 %i.sv to i32
  %i.sy = add nsw i32 %i.sx, -1                   ; 2 uses
  %i.sz = icmp eq i32 %i.rw, %i.sy
  br i1 %i.sz, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ta = add i16 %i.rf, -1
  store i16 %i.ta, ptr %.val.i21.i, align 8, !tbaa !146
  %i.tb = add i16 %i.sv, -1
  store i16 %i.tb, ptr %i.rx, align 2, !tbaa !139
  br label %cf2_getGlyphOutline.exit

bb.cj:                                            ; preds = %bb.ch
  %i.tc = trunc i32 %i.sy to i16
  %i.td = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 24
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !147
  %i.tf = getelementptr [2 x i8], ptr %i.te, i64 %i.sw
  %i.tg = getelementptr i8, ptr %i.tf, i64 -2
  store i16 %i.tc, ptr %i.tg, align 2, !tbaa !44
  br label %cf2_getGlyphOutline.exit

cf2_getGlyphOutline.exit.thread:                  ; preds = %cf2_font_setup.exit.thread.i, %cf2_font_setup.exit.i, %.peel.begin.i, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %cf2_setGlyphWidth.exit

cf2_getGlyphOutline.exit:                         ; preds = %.loopexit29.i, %bb.ca, %bb.cg, %bb.ci, %bb.cj
  %i.th = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !255
  call void @FT_GlyphLoader_Add(ptr noundef %i.ti) #19
  %.pr = load i32, ptr %i.di, align 8, !tbaa !24
  %i.tj = load i32, ptr %i.c, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.not83 = icmp eq i32 %.pr, 0
  br i1 %.not83, label %bb.ck, label %cf2_setGlyphWidth.exit

bb.ck:                                            ; preds = %cf2_getGlyphOutline.exit
  %.val84 = load ptr, ptr %i.ae, align 8, !tbaa !254 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.val84, i64 92
  %i.tl = load i8, ptr %i.tk, align 4, !tbaa !168
  %.not.i86 = icmp eq i8 %i.tl, 0
  br i1 %.not.i86, label %bb.cl, label %cf2_setGlyphWidth.exit

bb.cl:                                            ; preds = %bb.ck
  %i.tm = add i32 %i.tj, 32768
  %6 = lshr i32 %i.tm, 16
  %7 = zext nneg i32 %6 to i64
  %sext.i = shl nuw i64 %7, 48
  %8 = ashr exact i64 %sext.i, 48
  %i.tn = getelementptr inbounds nuw i8, ptr %.val84, i64 1072
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !256
  store i64 %8, ptr %i.to, align 8, !tbaa !42
  br label %cf2_setGlyphWidth.exit

cf2_setGlyphWidth.exit:                           ; preds = %bb.q, %bb.p, %bb.r, %bb.cl, %bb.ck, %cf2_getGlyphOutline.exit.thread, %cf2_getGlyphOutline.exit
  %.068 = phi i32 [ 3, %cf2_getGlyphOutline.exit.thread ], [ 0, %bb.cl ], [ 3, %cf2_getGlyphOutline.exit ], [ 0, %bb.ck ], [ 164, %bb.r ], [ 36, %bb.p ], [ 164, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.cm

bb.cm:                                            ; preds = %bb.d, %bb.b, %cf2_setGlyphWidth.exit
  %.1 = phi i32 [ %.068, %cf2_setGlyphWidth.exit ], [ 8, %bb.b ], [ 64, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @afm_parser_init(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call ptr @ft_mem_alloc(ptr noundef %1, i64 noundef 32, ptr noundef nonnull %i.a) #19 ; 5 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !24   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !531
  store ptr %2, ptr %i.b, align 8, !tbaa !258
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %3, ptr %i.e, align 8, !tbaa !259
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 2, ptr %i.f, align 8, !tbaa !260
  store ptr %1, ptr %0, align 8, !tbaa !264
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.g, align 8, !tbaa !265
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal void @afm_parser_done(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !264
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !265
  tail call void @ft_mem_free(ptr noundef %i.a, ptr noundef %i.c) #19
  store ptr null, ptr %i.b, align 8, !tbaa !265
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @afm_parser_parse(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca [4 x %struct.AFM_ValueRec_], align 16 ; 12 uses
  %3 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca [5 x %struct.AFM_ValueRec_], align 16 ; 15 uses
  %5 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %6 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %7 = alloca [4 x %struct.AFM_ValueRec_], align 16 ; 19 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !264    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !535  ; 13 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %afm_parser_next_key.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8          ; 7 uses
  %.val67 = load ptr, ptr %i.f, align 8, !tbaa !265 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val67, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val67, i64 16
  %.pre.i = load i32, ptr %i.g, align 8, !tbaa !260
  %i.i = icmp sgt i32 %.pre.i, 1
  br i1 %i.i, label %afm_stream_read_string.exit.i.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @afm_stream_skip_spaces(ptr noundef nonnull %.val67)
  %i.j = load i32, ptr %i.g, align 8, !tbaa !260
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %afm_stream_read_string.exit.i.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %.val67, align 8, !tbaa !258 ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !259  ; 2 uses
  %i.n = icmp ult ptr %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %afm_stream_read_string.exit.i.preheader

bb.e:                                             ; preds = %.lr.ph
  %i.o = icmp ult ptr %i.q, %i.m
  br i1 %i.o, label %.lr.ph, label %afm_stream_read_string.exit.i.preheader

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.q, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  store ptr %i.q, ptr %.val67, align 8, !tbaa !258
  %i.r = load i8, ptr %i.p, align 1, !tbaa !41
  switch i8 %i.r, label %bb.e [
    i8 13, label %afm_stream_read_string.exit.i.preheader
    i8 10, label %afm_stream_read_string.exit.i.preheader
    i8 26, label %afm_stream_read_string.exit.i.preheader
  ]

afm_stream_read_string.exit.i.preheader:          ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %bb.e, %bb.b, %bb.c, %bb.d
  br label %afm_stream_read_string.exit.i

afm_stream_read_string.exit.i:                    ; preds = %afm_stream_read_string.exit.i.preheader, %bb.f
  store i32 0, ptr %i.g, align 8, !tbaa !260
  %i.s = tail call fastcc ptr @afm_stream_read_one(ptr noundef nonnull %.val67) ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.f, label %afm_parser_next_key.exit

bb.f:                                             ; preds = %afm_stream_read_string.exit.i
  %i.t = load i32, ptr %i.g, align 8, !tbaa !260
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %afm_stream_read_string.exit.i, label %afm_parser_next_key.exit.thread

afm_parser_next_key.exit:                         ; preds = %afm_stream_read_string.exit.i
  %i.v = load ptr, ptr %.val67, align 8, !tbaa !258
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = sub i64 %i.x, %i.w
  %.not140 = icmp eq i64 %i.y, -17
  br i1 %.not140, label %bb.g, label %afm_parser_next_key.exit.thread

bb.g:                                             ; preds = %afm_parser_next_key.exit
  %i.z = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(17) @.str.1, i64 noundef 16) #20
  %.not55 = icmp eq i32 %i.z, 0
  br i1 %.not55, label %.preheader156, label %afm_parser_next_key.exit.thread

.preheader156:                                    ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.preheader156, %afm_parse_kern_data.exit
  %.041 = phi i32 [ %.3, %afm_parse_kern_data.exit ], [ 160, %.preheader156 ] ; 16 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !265 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.pre.i68 = load i32, ptr %i.ap, align 8, !tbaa !260
  %i.ar = icmp sgt i32 %.pre.i68, 1
  br i1 %i.ar, label %afm_stream_read_string.exit.i69.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @afm_stream_skip_spaces(ptr noundef nonnull %.val)
  %i.as = load i32, ptr %i.ap, align 8, !tbaa !260
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %afm_stream_read_string.exit.i69.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %.val, align 8, !tbaa !258 ; 2 uses
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !259 ; 2 uses
  %i.aw = icmp ult ptr %i.au, %i.av
  br i1 %i.aw, label %.lr.ph644, label %afm_stream_read_string.exit.i69.preheader

bb.k:                                             ; preds = %.lr.ph644
  %i.ax = icmp ult ptr %i.az, %i.av
  br i1 %i.ax, label %.lr.ph644, label %afm_stream_read_string.exit.i69.preheader

.lr.ph644:                                        ; preds = %bb.j, %bb.k
  %i.ay = phi ptr [ %i.az, %bb.k ], [ %i.au, %bb.j ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
  store ptr %i.az, ptr %.val, align 8, !tbaa !258
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !41
  switch i8 %i.ba, label %bb.k [
    i8 13, label %afm_stream_read_string.exit.i69.preheader
    i8 10, label %afm_stream_read_string.exit.i69.preheader
    i8 26, label %afm_stream_read_string.exit.i69.preheader
  ]

afm_stream_read_string.exit.i69.preheader:        ; preds = %.lr.ph644, %.lr.ph644, %.lr.ph644, %bb.k, %bb.h, %bb.i, %bb.j
  br label %afm_stream_read_string.exit.i69

afm_stream_read_string.exit.i69:                  ; preds = %afm_stream_read_string.exit.i69.preheader, %bb.l
  store i32 0, ptr %i.ap, align 8, !tbaa !260
  %i.bb = tail call fastcc ptr @afm_stream_read_one(ptr noundef nonnull %.val) ; 4 uses
  %.not.i70 = icmp eq ptr %i.bb, null
  br i1 %.not.i70, label %bb.l, label %bb.m

bb.l:                                             ; preds = %afm_stream_read_string.exit.i69
end_hunk_0
