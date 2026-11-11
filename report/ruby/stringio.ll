Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/stringio?download=true
inline.NumInlined: 271
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@prepare_getline_args:rb_scan_args_n_opt.exit
  %.val31 = load ptr, ptr %i.bn, align 8, !tbaa !221
  %i.bo = getelementptr i8, ptr %i.au, i64 8
  %.val = load ptr, ptr %i.bo, align 8, !tbaa !221
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bm, ptr noundef nonnull @.str.92, ptr noundef %.val31, ptr noundef %.val) #18
  unreachable

bb.ac:                                            ; preds = %bb.w, %bb.y, %rb_enc_asciicompat.exit, %bb.aa, %bb.s, %rb_num2long_inline.exit34
  %i.bp = phi i64 [ %.pre52, %bb.w ], [ %.pre, %bb.y ], [ %.pre, %rb_enc_asciicompat.exit ], [ %.pre51, %bb.aa ], [ 4, %bb.s ], [ %.pre53, %rb_num2long_inline.exit34 ]
  store i64 %i.bp, ptr %1, align 8, !tbaa !145
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.1, ptr %i.bq, align 8, !tbaa !136
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bs = load i8, ptr %i.br, align 8
  %i.bt = and i8 %i.bs, -2
  store i8 %i.bt, ptr %i.br, align 8
  %i.bu = icmp eq i64 %.1.i7175, 4
  br i1 %i.bu, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.bv = load i64, ptr @prepare_getline_args.keywords, align 8, !tbaa !119
  %.not29 = icmp eq i64 %i.bv, 0
  br i1 %.not29, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bw = call i64 @rb_intern2(ptr noundef nonnull @.str.93, i64 noundef 5) #15
  store i64 %i.bw, ptr @prepare_getline_args.keywords, align 8, !tbaa !119
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bx = call i32 @rb_get_kwargs(i64 noundef %.1.i7175, ptr noundef nonnull @prepare_getline_args.keywords, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.b) #15 ; 0 uses
  br i1 %i.aq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.by = load i64, ptr %i.b, align 8, !tbaa !119 ; 2 uses
  %.not30 = icmp ne i64 %i.by, 36
  %i.bz = and i64 %i.by, -5
  %i.ca = icmp ne i64 %i.bz, 0
  %narrow = and i1 %.not30, %i.ca
  %i.cb = zext i1 %narrow to i8
  %i.cc = load i8, ptr %i.br, align 8
  %i.cd = and i8 %i.cc, -2
  %i.ce = or disjoint i8 %i.cd, %i.cb
  store i8 %i.ce, ptr %i.br, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @strio_getline(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 !guid !228 {
bb.a:
  %i.a = alloca [256 x i64], align 16             ; 136 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !136  ; 3 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !145    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !131  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !tbaa !123    ; 2 uses
  %i.h = icmp eq i64 %i.g, 4
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @rb_enc_get(i64 noundef %i.g) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.ph = phi ptr [ %i.f, %bb.a ], [ %i.i, %bb.c ] ; 8 uses
  %.pr = load i64, ptr %1, align 8, !tbaa !123    ; 3 uses
  %i.j = icmp eq i64 %.pr, 4
  br i1 %i.j, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !132  ; 3 uses
  %i.m = inttoptr i64 %.pr to ptr                 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !134  ; 3 uses
  %.not173 = icmp slt i64 %i.l, %i.o
  br i1 %.not173, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %i.m, align 8, !tbaa !128
  %i.q = and i64 %i.p, 8192
  %.not.i = icmp eq i64 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !138
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.f, %bb.g
  %i.t = phi ptr [ %i.s, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.o ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 17 uses
  %i.w = icmp sgt i64 %i.c, 0
  %gepdiff = sub nsw i64 %i.o, %i.l
  %i.x = icmp ult i64 %i.c, %gepdiff
  %or.cond186 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond186, label %bb.h, label %bb.k

bb.h:                                             ; preds = %RSTRING_PTR.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !131  ; 2 uses
  %.not174 = icmp eq ptr %i.z, null
  br i1 %.not174, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call ptr @rb_enc_get(i64 noundef %.pr) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ab = phi ptr [ %i.z, %bb.h ], [ %i.aa, %bb.i ]
  %i.ac = tail call ptr @onigenc_get_right_adjust_char_head(ptr noundef %i.ab, ptr noundef %i.v, ptr noundef nonnull %i.y, ptr noundef %i.u) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %RSTRING_PTR.exit
  %.0154 = phi ptr [ %i.ac, %bb.j ], [ %i.u, %RSTRING_PTR.exit ] ; 27 uses
  %i.ad = icmp eq i64 %i.d, 4
  br i1 %i.ad, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i8, ptr %i.ae, align 8
  %.not185 = trunc i8 %i.af to i1
  %i.ag = icmp ugt ptr %.0154, %i.v
  %or.cond214 = select i1 %.not185, i1 %i.ag, i1 false
  br i1 %or.cond214, label %bb.m, label %chomp_newline_width.exit

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds i8, ptr %.0154, i64 -1 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !138
  %i.aj = icmp eq i8 %i.ai, 10
  br i1 %i.aj, label %bb.n, label %chomp_newline_width.exit

bb.n:                                             ; preds = %bb.m
  %i.ak = icmp ugt ptr %i.ah, %i.v
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds i8, ptr %.0154, i64 -2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !138
  %i.an = icmp eq i8 %i.am, 13
  br i1 %i.an, label %chomp_newline_width.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %chomp_newline_width.exit

chomp_newline_width.exit:                         ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  %.0147.neg236 = phi i64 [ 0, %bb.l ], [ -2, %bb.o ], [ -1, %bb.p ], [ 0, %bb.m ]
  %i.ao = load i64, ptr %i.k, align 8, !tbaa !132 ; 2 uses
  %i.ap = ptrtoint ptr %.0154 to i64
  %i.aq = ptrtoint ptr %i.v to i64
  %.neg220 = sub i64 %i.ap, %i.aq
  %i.ar = add i64 %.neg220, %.0147.neg236
  %.val190 = load i64, ptr %1, align 8, !tbaa !123 ; 2 uses
  %i.as = inttoptr i64 %.val190 to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !134
  %i.av = sub nsw i64 %i.au, %i.ao
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.ar, i64 %i.av) ; 2 uses
  %i.aw = icmp slt i64 %spec.select.i, 1
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %chomp_newline_width.exit
  %i.ax = tail call i64 @rb_enc_str_new_static(ptr noundef null, i64 noundef 0, ptr noundef %.ph) #15
  br label %strio_substr.exit

bb.r:                                             ; preds = %chomp_newline_width.exit
  %i.ay = tail call i64 @rb_str_subseq(i64 noundef %.val190, i64 noundef %i.ao, i64 noundef %spec.select.i) #15 ; 2 uses
  %i.az = tail call i64 @rb_enc_associate(i64 noundef %i.ay, ptr noundef %.ph) #15 ; 0 uses
  br label %strio_substr.exit

bb.s:                                             ; preds = %bb.k
  %i.ba = inttoptr i64 %i.d to ptr                ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !134 ; 16 uses
  switch i64 %i.bc, label %bb.aq [
    i64 0, label %.preheader223
    i64 1, label %bb.ai
  ]

.preheader223:                                    ; preds = %bb.s, %bb.t
  %.0150 = phi ptr [ %i.bl, %bb.t ], [ %i.v, %bb.s ] ; 4 uses
  %i.bd = load i8, ptr %.0150, align 1, !tbaa !138
  %.not184 = icmp eq i8 %i.bd, 10
  br i1 %.not184, label %bb.t, label %.preheader221

.preheader221:                                    ; preds = %.preheader223
  %i.be = ptrtoint ptr %.0154 to i64              ; 4 uses
  %i.bf = ptrtoint ptr %.0150 to i64              ; 3 uses
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = tail call ptr @memchr(ptr noundef nonnull %.0150, i32 noundef 10, i64 noundef %i.bg) #20 ; 3 uses
  %i.bi = icmp ne ptr %i.bh, null
  %i.bj = icmp ne ptr %i.bh, %.0154
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %i.bk, label %.lr.ph, label %.critedge2

bb.t:                                             ; preds = %.preheader223
  %i.bl = getelementptr inbounds nuw i8, ptr %.0150, i64 1 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %.0154
  br i1 %i.bm, label %.thread, label %.preheader223, !llvm.loop !222

.lr.ph:                                           ; preds = %.preheader221, %bb.y
  %i.bn = phi ptr [ %i.ca, %bb.y ], [ %i.bh, %.preheader221 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 7 uses
  %i.bp = icmp ult ptr %i.bo, %.0154
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !138
  %i.br = icmp eq i8 %i.bq, 10
  br i1 %i.br, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 2 ; 2 uses
  %i.bt = icmp ult ptr %i.bs, %.0154
  br i1 %i.bt, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bu = load i8, ptr %i.bo, align 1, !tbaa !138
  %i.bv = icmp eq i8 %i.bu, 13
  br i1 %i.bv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !138
  %i.bx = icmp eq i8 %i.bw, 10
  br i1 %i.bx, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.by = ptrtoint ptr %i.bo to i64
  %i.bz = sub i64 %i.be, %i.by
  %i.ca = tail call ptr @memchr(ptr noundef nonnull %i.bo, i32 noundef 10, i64 noundef %i.bz) #20 ; 3 uses
  %i.cb = icmp ne ptr %i.ca, null
  %i.cc = icmp ne ptr %i.ca, %.0154
  %i.cd = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %i.cd, label %.lr.ph, label %.critedge2, !llvm.loop !223

bb.z:                                             ; preds = %bb.x, %bb.u
  %i.ce = getelementptr inbounds i8, ptr %i.bn, i64 -1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !138
  %i.cg = icmp eq i8 %i.cf, 13
  %.neg182 = select i1 %i.cg, i64 -2, i64 -1
  %i.ch = getelementptr inbounds i8, ptr %i.bo, i64 %.neg182
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge, %bb.z
  %.2152 = phi ptr [ %i.bo, %bb.z ], [ %i.cs, %.critedge ] ; 7 uses
  %i.ci = icmp ult ptr %.2152, %.0154
  br i1 %i.ci, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cj = load i8, ptr %.2152, align 1, !tbaa !138
  %i.ck = icmp eq i8 %i.cj, 10
  br i1 %i.ck, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cl = getelementptr inbounds nuw i8, ptr %.2152, i64 1 ; 2 uses
  %i.cm = icmp ult ptr %i.cl, %.0154
  br i1 %i.cm, label %bb.ad, label %.critedge2.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.cn = load i8, ptr %.2152, align 1, !tbaa !138
  %i.co = icmp eq i8 %i.cn, 13
  br i1 %i.co, label %bb.ae, label %.critedge2.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !138
  %i.cq = icmp eq i8 %i.cp, 10
  br i1 %i.cq, label %.critedge, label %.critedge2.loopexit

.critedge:                                        ; preds = %bb.ab, %bb.ae
  %i.cr = phi i64 [ 1, %bb.ab ], [ 2, %bb.ae ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.2152, i64 %i.cr
  br label %bb.aa, !llvm.loop !224

.critedge2.loopexit:                              ; preds = %bb.ad, %bb.ac, %bb.ae
  %.pre = ptrtoint ptr %.2152 to i64
  br label %.critedge2

.critedge2:                                       ; preds = %bb.y, %.critedge2.loopexit, %.preheader221
  %.pre-phi = phi i64 [ %i.be, %.preheader221 ], [ %.pre, %.critedge2.loopexit ], [ %i.be, %bb.y ] ; 2 uses
  %.1155 = phi ptr [ %.0154, %.preheader221 ], [ %.2152, %.critedge2.loopexit ], [ %.0154, %bb.y ] ; 2 uses
  %.0 = phi ptr [ null, %.preheader221 ], [ %i.ch, %.critedge2.loopexit ], [ null, %bb.y ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cu = load i8, ptr %i.ct, align 8
  %i.cv = trunc i8 %i.cu to i1
  %i.cw = icmp ne ptr %.0, null
  %or.cond = select i1 %i.cv, i1 %i.cw, i1 false
  %i.cx = ptrtoint ptr %.0 to i64
  %.neg183 = sub i64 %i.cx, %.pre-phi
  %.1.neg = select i1 %or.cond, i64 %.neg183, i64 0
  %i.cy = load i64, ptr %1, align 8, !tbaa !123   ; 2 uses
  %i.cz = inttoptr i64 %i.cy to ptr               ; 3 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !128
  %i.db = and i64 %i.da, 8192
  %.not.i192 = icmp eq i64 %i.db, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 2 uses
  br i1 %.not.i192, label %RSTRING_PTR.exit193, label %bb.af

bb.af:                                            ; preds = %.critedge2
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !138
  br label %RSTRING_PTR.exit193

RSTRING_PTR.exit193:                              ; preds = %.critedge2, %bb.af
  %i.de = phi ptr [ %i.dd, %bb.af ], [ %i.dc, %.critedge2 ]
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.bf, %i.df                    ; 2 uses
  %i.dh = sub i64 %.pre-phi, %i.bf
  %i.di = add i64 %i.dh, %.1.neg
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !134
  %i.dl = sub nsw i64 %i.dk, %i.dg
  %spec.select.i194 = tail call i64 @llvm.smin.i64(i64 %i.di, i64 %i.dl) ; 2 uses
  %i.dm = icmp slt i64 %spec.select.i194, 1
  br i1 %i.dm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %RSTRING_PTR.exit193
  %i.dn = tail call i64 @rb_enc_str_new_static(ptr noundef null, i64 noundef 0, ptr noundef %.ph) #15
  br label %strio_substr.exit

bb.ah:                                            ; preds = %RSTRING_PTR.exit193
  %i.do = tail call i64 @rb_str_subseq(i64 noundef %i.cy, i64 noundef %i.dg, i64 noundef %spec.select.i194) #15 ; 2 uses
  %i.dp = tail call i64 @rb_enc_associate(i64 noundef %i.do, ptr noundef %.ph) #15 ; 0 uses
  br label %strio_substr.exit

bb.ai:                                            ; preds = %bb.s
  %i.dq = load i64, ptr %i.ba, align 8, !tbaa !128
  %i.dr = and i64 %i.dq, 8192
  %.not.i197 = icmp eq i64 %i.dr, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  br i1 %.not.i197, label %RSTRING_PTR.exit198, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !138
  br label %RSTRING_PTR.exit198

RSTRING_PTR.exit198:                              ; preds = %bb.ai, %bb.aj
  %i.du = phi ptr [ %i.dt, %bb.aj ], [ %i.ds, %bb.ai ]
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !138
  %i.dw = sext i8 %i.dv to i32
  %i.dx = ptrtoint ptr %.0154 to i64
  %i.dy = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = tail call ptr @memchr(ptr noundef %i.v, i32 noundef %i.dw, i64 noundef %i.dz) #20 ; 4 uses
  %.not178 = icmp eq ptr %i.ea, null
  br i1 %.not178, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %RSTRING_PTR.exit198
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = load i8, ptr %i.ec, align 8
  %i.ee = and i8 %i.ed, 1
  %.not179 = icmp eq i8 %i.ee, 0
  br i1 %.not179, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ef = icmp ugt ptr %i.ea, %i.v
  br i1 %i.ef, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eg = getelementptr inbounds i8, ptr %i.ea, i64 -1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !138
  %i.ei = icmp eq i8 %i.eh, 13
  %.neg = select i1 %i.ei, i64 -2, i64 -1
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.am, %bb.al, %RSTRING_PTR.exit198
  %.3157 = phi ptr [ %.0154, %RSTRING_PTR.exit198 ], [ %i.eb, %bb.al ], [ %i.eb, %bb.am ], [ %i.eb, %bb.ak ] ; 3 uses
  %.2.neg = phi i64 [ 0, %RSTRING_PTR.exit198 ], [ -1, %bb.al ], [ %.neg, %bb.am ], [ 0, %bb.ak ]
  %i.ej = load i64, ptr %i.k, align 8, !tbaa !132 ; 2 uses
  %i.ek = ptrtoint ptr %.3157 to i64
  %i.el = sub i64 %i.ek, %i.dy
  %i.em = add i64 %i.el, %.2.neg
  %.val188 = load i64, ptr %1, align 8, !tbaa !123 ; 2 uses
  %i.en = inttoptr i64 %.val188 to ptr
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !134
  %i.eq = sub nsw i64 %i.ep, %i.ej
  %spec.select.i199 = tail call i64 @llvm.smin.i64(i64 %i.em, i64 %i.eq) ; 2 uses
  %i.er = icmp slt i64 %spec.select.i199, 1
  br i1 %i.er, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.es = tail call i64 @rb_enc_str_new_static(ptr noundef null, i64 noundef 0, ptr noundef %.ph) #15
  br label %strio_substr.exit

bb.ap:                                            ; preds = %bb.an
  %i.et = tail call i64 @rb_str_subseq(i64 noundef %.val188, i64 noundef %i.ej, i64 noundef %spec.select.i199) #15 ; 2 uses
  %i.eu = tail call i64 @rb_enc_associate(i64 noundef %i.et, ptr noundef %.ph) #15 ; 0 uses
  br label %strio_substr.exit

bb.aq:                                            ; preds = %bb.s
  %i.ev = ptrtoint ptr %.0154 to i64
  %i.ew = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ex = sub i64 %i.ev, %i.ew                    ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ez = load i8, ptr %i.ey, align 8
  %i.fa = and i8 %i.ez, 1                         ; 3 uses
  %i.fb = zext nneg i8 %i.fa to i64
  %i.fc = add nsw i64 %i.ex, %i.fb
  %i.fd = icmp slt i64 %i.bc, %i.fc
  br i1 %i.fd, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  %i.fe = icmp slt i64 %i.ex, 1024
  %i.ff = icmp eq i64 %i.bc, %i.ex
  %or.cond187 = or i1 %i.fe, %i.ff
  br i1 %or.cond187, label %.preheader, label %bb.as

.preheader:                                       ; preds = %bb.ar
  %i.fg = getelementptr inbounds i8, ptr %i.v, i64 %i.bc ; 3 uses
  %.not176228 = icmp ugt ptr %i.fg, %.0154
  br i1 %.not176228, label %.loopexit, label %.lr.ph230

.lr.ph230:                                        ; preds = %.preheader
  %i.fh = load i64, ptr %i.ba, align 8, !tbaa !128
  %i.fi = and i64 %i.fh, 8192
  %.not.i202 = icmp eq i64 %i.fi, 0
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 3 uses
  br i1 %.not.i202, label %.lr.ph230.split.us, label %.lr.ph230.split

.lr.ph230.split.us:                               ; preds = %.lr.ph230
  %bcmp.us233 = tail call i32 @bcmp(ptr %i.v, ptr nonnull %i.fj, i64 %i.bc)
  %i.fk = icmp eq i32 %bcmp.us233, 0
  br i1 %i.fk, label %.split.us, label %.lr.ph234

RSTRING_PTR.exit203.us:                           ; preds = %.lr.ph234
  %bcmp.us = tail call i32 @bcmp(ptr nonnull %i.fm, ptr nonnull %i.fj, i64 %i.bc)
  %i.fl = icmp eq i32 %bcmp.us, 0
  br i1 %i.fl, label %.split.us, label %.lr.ph234, !llvm.loop !225

.lr.ph234:                                        ; preds = %.lr.ph230.split.us, %RSTRING_PTR.exit203.us
  %.3153229.us.pn = phi ptr [ %i.fm, %RSTRING_PTR.exit203.us ], [ %i.v, %.lr.ph230.split.us ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.3153229.us.pn, i64 1 ; 3 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %i.bc ; 2 uses
  %.not176.us = icmp ugt ptr %i.fn, %.0154
  br i1 %.not176.us, label %.loopexit, label %RSTRING_PTR.exit203.us, !llvm.loop !225

.lr.ph230.split:                                  ; preds = %.lr.ph230
  %i.fo = load ptr, ptr %i.fj, align 8, !tbaa !138 ; 2 uses
  %bcmp231 = tail call i32 @bcmp(ptr %i.v, ptr %i.fo, i64 %i.bc)
  %i.fp = icmp eq i32 %bcmp231, 0
  br i1 %i.fp, label %.split.us, label %.lr.ph232

.lr.ph232:                                        ; preds = %.lr.ph230.split, %RSTRING_PTR.exit203
  %.3153229.pn = phi ptr [ %i.fq, %RSTRING_PTR.exit203 ], [ %i.v, %.lr.ph230.split ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.3153229.pn, i64 1 ; 3 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 %i.bc ; 2 uses
  %.not176 = icmp ugt ptr %i.fr, %.0154
  br i1 %.not176, label %.loopexit, label %RSTRING_PTR.exit203, !llvm.loop !225

RSTRING_PTR.exit203:                              ; preds = %.lr.ph232
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.fq, ptr %i.fo, i64 %i.bc)
  %i.fs = icmp eq i32 %bcmp, 0
  br i1 %i.fs, label %.split.us, label %.lr.ph232, !llvm.loop !225

.split.us:                                        ; preds = %RSTRING_PTR.exit203, %RSTRING_PTR.exit203.us, %.lr.ph230.split, %.lr.ph230.split.us
  %.us-phi = phi ptr [ %i.fn, %RSTRING_PTR.exit203.us ], [ %i.fg, %.lr.ph230.split.us ], [ %i.fg, %.lr.ph230.split ], [ %i.fr, %RSTRING_PTR.exit203 ]
  %.not177 = icmp eq i8 %i.fa, 0
  %i.ft = select i1 %.not177, i64 0, i64 %i.bc
  br label %.loopexit

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.fu = load i64, ptr %i.ba, align 8, !tbaa !128
  %i.fv = and i64 %i.fu, 8192
  %.not.i204 = icmp eq i64 %i.fv, 0
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  br i1 %.not.i204, label %vector.ph, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !138
  br label %vector.ph

vector.ph:                                        ; preds = %bb.at, %bb.as
  %i.fy = phi ptr [ %i.fx, %bb.at ], [ %i.fw, %bb.as ] ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bc, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 128 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.a, align 16, !tbaa !119
  store <2 x i64> %broadcast.splat, ptr %i.fz, align 16, !tbaa !119
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 48
end_hunk_0
