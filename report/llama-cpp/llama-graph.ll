Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-graph?download=true
inline.NumInlined: 3692
inline.NumDeleted: 1965
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZL20dsv4_set_comp_inputsRKN20llm_graph_input_dsv410comp_inputERKN27llama_kv_cache_dsv4_context9comp_planEPKcbjl:bb.a
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !120
  %.not8.i65 = icmp eq ptr %i.ca, null
  br i1 %.not8.i65, label %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit66, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !44 ; 2 uses
  %i.cd = ptrtoint ptr %.val39 to i64
  %i.ce = ptrtoint ptr %.val38 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 2
  %i.ch = icmp eq i64 %i.cc, %i.cg
  br i1 %i.ch, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 753, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.164) #27
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ci = tail call i64 @ggml_element_size(ptr noundef nonnull %i.bw)
  %i.cj = mul i64 %i.ci, %i.cc
  tail call void @ggml_backend_tensor_set(ptr noundef nonnull %i.bw, ptr noundef %.val38, i64 noundef 0, i64 noundef %i.cj)
  br label %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit66

_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit66: ; preds = %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit63, %bb.v, %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !278 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val36 = load ptr, ptr %i.cm, align 8          ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val37 = load ptr, ptr %i.cn, align 8
  %.not.i67 = icmp eq ptr %i.cl, null
  br i1 %.not.i67, label %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit69, label %bb.z

bb.z:                                             ; preds = %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit66
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !120
  %.not8.i68 = icmp eq ptr %i.cp, null
  br i1 %.not8.i68, label %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit69, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !44 ; 2 uses
  %i.cs = ptrtoint ptr %.val37 to i64
  %i.ct = ptrtoint ptr %.val36 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 2
  %i.cw = icmp eq i64 %i.cr, %i.cv
  br i1 %i.cw, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 753, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.164) #27
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cx = tail call i64 @ggml_element_size(ptr noundef nonnull %i.cl)
  %i.cy = mul i64 %i.cx, %i.cr
  tail call void @ggml_backend_tensor_set(ptr noundef nonnull %i.cl, ptr noundef %.val36, i64 noundef 0, i64 noundef %i.cy)
  br label %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit69

_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit69: ; preds = %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit66, %bb.z, %bb.ac
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !279 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val34 = load ptr, ptr %i.db, align 8          ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val35 = load ptr, ptr %i.dc, align 8
  %.not.i70 = icmp eq ptr %i.da, null
  br i1 %.not.i70, label %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit72, label %bb.ad

bb.ad:                                            ; preds = %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit69
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !120
  %.not8.i71 = icmp eq ptr %i.de, null
  br i1 %.not8.i71, label %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit72, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !44 ; 2 uses
  %i.dh = ptrtoint ptr %.val35 to i64
  %i.di = ptrtoint ptr %.val34 to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 2
  %i.dl = icmp eq i64 %i.dg, %i.dk
  br i1 %i.dl, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 753, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.164) #27
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dm = tail call i64 @ggml_element_size(ptr noundef nonnull %i.da)
  %i.dn = mul i64 %i.dm, %i.dg
  tail call void @ggml_backend_tensor_set(ptr noundef nonnull %i.da, ptr noundef %.val34, i64 noundef 0, i64 noundef %i.dn)
  br label %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit72

_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit72: ; preds = %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit69, %bb.ad, %bb.ag
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !280 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val50 = load ptr, ptr %i.dq, align 8          ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val51 = load ptr, ptr %i.dr, align 8
  %.not.i73 = icmp eq ptr %i.dp, null
  br i1 %.not.i73, label %_ZL12dsv4_set_i64P11ggml_tensorRKSt6vectorIlSaIlEE.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit72
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !120
  %.not8.i74 = icmp eq ptr %i.dt, null
  br i1 %.not8.i74, label %_ZL12dsv4_set_i64P11ggml_tensorRKSt6vectorIlSaIlEE.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !44 ; 2 uses
  %i.dw = ptrtoint ptr %.val51 to i64
  %i.dx = ptrtoint ptr %.val50 to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 3
  %i.ea = icmp eq i64 %i.dv, %i.dz
  br i1 %i.ea, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 744, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.164) #27
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.eb = tail call i64 @ggml_element_size(ptr noundef nonnull %i.dp)
  %i.ec = mul i64 %i.eb, %i.dv
  tail call void @ggml_backend_tensor_set(ptr noundef nonnull %i.dp, ptr noundef %.val50, i64 noundef 0, i64 noundef %i.ec)
  br label %_ZL12dsv4_set_i64P11ggml_tensorRKSt6vectorIlSaIlEE.exit

_ZL12dsv4_set_i64P11ggml_tensorRKSt6vectorIlSaIlEE.exit: ; preds = %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit72, %bb.ah, %bb.ak
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !281 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %.val = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.val33 = load ptr, ptr %i.eg, align 8
  %.not.i75 = icmp eq ptr %i.ee, null
  br i1 %.not.i75, label %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit77, label %bb.al

bb.al:                                            ; preds = %_ZL12dsv4_set_i64P11ggml_tensorRKSt6vectorIlSaIlEE.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !120
  %.not8.i76 = icmp eq ptr %i.ei, null
  br i1 %.not8.i76, label %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit77, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !44 ; 2 uses
  %i.el = ptrtoint ptr %.val33 to i64
  %i.em = ptrtoint ptr %.val to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 2
  %i.ep = icmp eq i64 %i.ek, %i.eo
  br i1 %i.ep, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 753, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.164) #27
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.eq = tail call i64 @ggml_element_size(ptr noundef nonnull %i.ee)
  %i.er = mul i64 %i.eq, %i.ek
  tail call void @ggml_backend_tensor_set(ptr noundef nonnull %i.ee, ptr noundef %.val, i64 noundef 0, i64 noundef %i.er)
  br label %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit77

_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit77: ; preds = %_ZL12dsv4_set_i64P11ggml_tensorRKSt6vectorIlSaIlEE.exit, %bb.al, %bb.ao
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !282 ; 10 uses
  %.not.i78 = icmp eq ptr %i.et, null
  br i1 %.not.i78, label %_ZL16dsv4_set_kq_maskP11ggml_tensorRKN27llama_kv_cache_dsv4_context9comp_planEjl.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZL12dsv4_set_i32P11ggml_tensorRKSt6vectorIiSaIiEE.exit77
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !120 ; 2 uses
  %.not61.i = icmp eq ptr %i.ev, null
  br i1 %.not61.i, label %_ZL16dsv4_set_kq_maskP11ggml_tensorRKN27llama_kv_cache_dsv4_context9comp_planEjl.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ew = load i32, ptr %i.et, align 8, !tbaa !162
  %switch.i = icmp ult i32 %i.ew, 2
  br i1 %switch.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 766, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.165) #27
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.ex = icmp sgt i64 %5, 0
  br i1 %i.ex, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 767, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.166) #27
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.ey = zext i32 %4 to i64                      ; 5 uses
  %i.ez = urem i64 %i.ey, %5
  %i.fa = udiv exact i64 %i.ey, %5
  %i.fb = icmp eq i64 %i.ez, 0
  br i1 %i.fb, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 768, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.167) #27
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 3 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !44
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !283
  %i.fg = icmp eq i64 %i.fd, %i.ff
  br i1 %i.fg, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 769, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.168) #27
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.fh = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !44
  %i.fj = icmp eq i64 %i.fi, %i.fa
  br i1 %i.fj, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 770, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.169) #27
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.fk = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !44
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 771, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.170) #27
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.fn = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !44
  %i.fp = icmp eq i64 %i.fo, %5
  br i1 %i.fp, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 772, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.171) #27
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !284
  %i.ft = load ptr, ptr %i.fq, align 8, !tbaa !285
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = ashr exact i64 %i.fw, 2
  %i.fy = icmp eq i64 %i.fx, %i.ey
  br i1 %i.fy, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 773, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.172) #27
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.fz = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef nonnull %i.ev)
  br i1 %i.fz, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 774, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.173) #27
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.ga = load i32, ptr %i.et, align 8, !tbaa !162
  switch i32 %i.ga, label %_ZL16dsv4_set_kq_maskP11ggml_tensorRKN27llama_kv_cache_dsv4_context9comp_planEjl.exit [
    i32 0, label %bb.bj
    i32 1, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.gb = getelementptr inbounds nuw i8, ptr %i.et, i64 248
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !122
  %.not75.i = icmp eq i32 %4, 0
  br i1 %.not75.i, label %_ZL16dsv4_set_kq_maskP11ggml_tensorRKN27llama_kv_cache_dsv4_context9comp_planEjl.exit, label %.lr.ph73.i

.lr.ph73.i:                                       ; preds = %bb.bj
  %i.gd = load ptr, ptr %i.fq, align 8, !tbaa !285
  %i.ge = load i64, ptr %i.fc, align 8, !tbaa !44 ; 6 uses
  %i.gf = icmp sgt i64 %i.ge, 0
  br i1 %i.gf, label %.lr.ph69.i.preheader, label %_ZL16dsv4_set_kq_maskP11ggml_tensorRKN27llama_kv_cache_dsv4_context9comp_planEjl.exit

.lr.ph69.i.preheader:                             ; preds = %.lr.ph73.i
  %min.iters.check133 = icmp ult i64 %i.ge, 8
  %n.vec135 = and i64 %i.ge, 9223372036854775800  ; 3 uses
  %cmp.n144 = icmp eq i64 %i.ge, %n.vec135
  br label %.lr.ph69.i

.lr.ph69.i:                                       ; preds = %.lr.ph69.i.preheader, %._crit_edge70.i
  %.05371.i = phi i64 [ %i.gs, %._crit_edge70.i ], [ 0, %.lr.ph69.i.preheader ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %.05371.i
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !106
  %i.gi = sext i32 %i.gh to i64                   ; 2 uses
  %i.gj = mul nuw nsw i64 %.05371.i, %i.ge
  %i.gk = getelementptr [4 x i8], ptr %i.gc, i64 %i.gj ; 2 uses
  br i1 %min.iters.check133, label %scalar.ph132.preheader, label %vector.ph134

vector.ph134:                                     ; preds = %.lr.ph69.i
  %broadcast.splatinsert136 = insertelement <4 x i64> poison, i64 %i.gi, i64 0
  %broadcast.splat137 = shufflevector <4 x i64> %broadcast.splatinsert136, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph134
  %index139 = phi i64 [ 0, %vector.ph134 ], [ %index.next141, %vector.body138 ] ; 2 uses
  %vec.ind140 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph134 ], [ %vec.ind.next142, %vector.body138 ] ; 3 uses
  %step.add = add nuw <4 x i64> %vec.ind140, splat (i64 4)
  %i.gl = icmp slt <4 x i64> %vec.ind140, %broadcast.splat137
  %i.gm = icmp slt <4 x i64> %step.add, %broadcast.splat137
  %i.gn = select <4 x i1> %i.gl, <4 x float> zeroinitializer, <4 x float> splat (float -inf)
  %i.go = select <4 x i1> %i.gm, <4 x float> zeroinitializer, <4 x float> splat (float -inf)
  %i.gp = getelementptr [4 x i8], ptr %i.gk, i64 %index139 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 16
  store <4 x float> %i.gn, ptr %i.gp, align 4, !tbaa !113
  store <4 x float> %i.go, ptr %i.gq, align 4, !tbaa !113
  %index.next141 = add nuw i64 %index139, 8       ; 2 uses
  %vec.ind.next142 = add nuw <4 x i64> %vec.ind140, splat (i64 8)
  %i.gr = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.gr, label %middle.block143, label %vector.body138, !llvm.loop !594

middle.block143:                                  ; preds = %vector.body138
  br i1 %cmp.n144, label %._crit_edge70.i, label %scalar.ph132.preheader

scalar.ph132.preheader:                           ; preds = %.lr.ph69.i, %middle.block143
  %.05267.i.ph = phi i64 [ 0, %.lr.ph69.i ], [ %n.vec135, %middle.block143 ]
  br label %scalar.ph132

._crit_edge70.i:                                  ; preds = %scalar.ph132, %middle.block143
  %i.gs = add nuw nsw i64 %.05371.i, 1            ; 2 uses
  %exitcond79.not.i = icmp eq i64 %i.gs, %i.ey
  br i1 %exitcond79.not.i, label %_ZL16dsv4_set_kq_maskP11ggml_tensorRKN27llama_kv_cache_dsv4_context9comp_planEjl.exit, label %.lr.ph69.i, !llvm.loop !595

scalar.ph132:                                     ; preds = %scalar.ph132.preheader, %scalar.ph132
  %.05267.i = phi i64 [ %i.gw, %scalar.ph132 ], [ %.05267.i.ph, %scalar.ph132.preheader ] ; 3 uses
  %i.gt = icmp slt i64 %.05267.i, %i.gi
  %i.gu = select i1 %i.gt, float 0.000000e+00, float -inf
  %i.gv = getelementptr [4 x i8], ptr %i.gk, i64 %.05267.i
  store float %i.gu, ptr %i.gv, align 4, !tbaa !113
  %i.gw = add nuw nsw i64 %.05267.i, 1            ; 2 uses
  %exitcond78.not.i = icmp eq i64 %i.gw, %i.ge
  br i1 %exitcond78.not.i, label %._crit_edge70.i, label %scalar.ph132, !llvm.loop !596

bb.bk:                                            ; preds = %bb.bi
  %i.gx = getelementptr inbounds nuw i8, ptr %i.et, i64 248
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !122
  %i.gz = tail call noundef zeroext i16 @ggml_fp32_to_fp16(float noundef -inf) ; 2 uses
  %i.ha = tail call noundef zeroext i16 @ggml_fp32_to_fp16(float noundef 0.000000e+00) ; 2 uses
  %.not74.i = icmp eq i32 %4, 0
  br i1 %.not74.i, label %_ZL16dsv4_set_kq_maskP11ggml_tensorRKN27llama_kv_cache_dsv4_context9comp_planEjl.exit, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %bb.bk
  %i.hb = load ptr, ptr %i.fq, align 8, !tbaa !285
  %i.hc = load i64, ptr %i.fc, align 8, !tbaa !44 ; 6 uses
  %i.hd = icmp sgt i64 %i.hc, 0
  br i1 %i.hd, label %.lr.ph.i.preheader, label %_ZL16dsv4_set_kq_maskP11ggml_tensorRKN27llama_kv_cache_dsv4_context9comp_planEjl.exit

.lr.ph.i.preheader:                               ; preds = %.lr.ph66.i
  %min.iters.check = icmp ult i64 %i.hc, 8
  %n.vec = and i64 %i.hc, 9223372036854775800     ; 3 uses
  %broadcast.splatinsert128 = insertelement <8 x i16> poison, i16 %i.ha, i64 0
  %broadcast.splat129 = shufflevector <8 x i16> %broadcast.splatinsert128, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert130 = insertelement <8 x i16> poison, i16 %i.gz, i64 0
  %broadcast.splat131 = shufflevector <8 x i16> %broadcast.splatinsert130, <8 x i16> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.hc, %n.vec
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %._crit_edge.i
  %.05164.i = phi i64 [ %i.hn, %._crit_edge.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.05164.i
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !106
  %i.hg = sext i32 %i.hf to i64                   ; 2 uses
  %i.hh = mul nuw nsw i64 %.05164.i, %i.hc
  %i.hi = getelementptr [2 x i8], ptr %i.gy, i64 %i.hh ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.hg, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.hj = icmp slt <8 x i64> %vec.ind, %broadcast.splat
  %i.hk = select <8 x i1> %i.hj, <8 x i16> %broadcast.splat129, <8 x i16> %broadcast.splat131
  %i.hl = getelementptr [2 x i8], ptr %i.hi, i64 %index
  store <8 x i16> %i.hk, ptr %i.hl, align 2, !tbaa !165
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.hm = icmp eq i64 %index.next, %n.vec
  br i1 %i.hm, label %middle.block, label %vector.body, !llvm.loop !597
end_hunk_0
begin_hunk_1_@_ZNK17llm_graph_context21build_attn_inp_k_iswaEv:bb.a
.noexc22:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cz
  %i.dj = ptrtoint ptr %i.g to i64
  store i64 %i.dj, ptr %i.di, align 8, !tbaa !418
  %.not10.i.i.i.i = icmp eq ptr %i.cw, %i.cq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc22
  %i.dk = add i64 %i.cx, -8
  %i.dl = sub i64 %i.dk, %i.cy                    ; 2 uses
  %i.dm = lshr i64 %i.dl, 3
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dl, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader57, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.do = add i64 %i.cx, -8
  %i.dp = sub i64 %i.do, %i.cy
  %i.dq = and i64 %i.dp, -8
  %i.dr = add i64 %i.dq, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dh, i64 %i.dr
  %scevgep53 = getelementptr i8, ptr %i.cw, i64 %i.dr
  %bound0 = icmp ult ptr %i.dh, %scevgep53
  %bound1 = icmp ult ptr %i.cw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dn, 4611686018427387900     ; 3 uses
  %i.ds = shl i64 %n.vec, 3                       ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dh, i64 %i.ds  ; 2 uses
  %i.du = getelementptr i8, ptr %i.cw, i64 %i.ds
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dh, i64 %i.dv ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.cw, i64 %i.dv ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.dw = getelementptr i8, ptr %next.gep54, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep54, align 8, !tbaa !418, !alias.scope !1028, !noalias !1026
  %wide.load55 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !418, !alias.scope !1028, !noalias !1026
  %i.dx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !418, !alias.scope !1029, !noalias !1028
  store <2 x i64> %wide.load55, ptr %i.dx, align 8, !tbaa !418, !alias.scope !1029, !noalias !1028
  %i.dy = getelementptr i8, ptr %next.gep54, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep54, align 8, !tbaa !418, !alias.scope !1028, !noalias !1026
  store <2 x ptr> splat (ptr null), ptr %i.dy, align 8, !tbaa !418, !alias.scope !1028, !noalias !1026
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !1020

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader57

.lr.ph.i.i.i.i.preheader57:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dh, %vector.memcheck ], [ %i.dh, %.lr.ph.i.i.i.i.preheader ], [ %i.dt, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph.i.i.i.i.preheader ], [ %i.du, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader57, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader57 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader57 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.ea = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !418, !alias.scope !1027, !noalias !1026
  store i64 %i.ea, ptr %.012.i.i.i.i, align 8, !tbaa !418, !alias.scope !1026, !noalias !1027
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !418, !alias.scope !1027, !noalias !1026
  %i.eb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.eb, %i.cq
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1021

_ZNSt6vectorISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc22
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dh, %.noexc22 ], [ %i.dt, %middle.block ], [ %i.ec, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cw, null
  br i1 %.not.i23.i, label %.noexc12, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.cz) #29
  br label %.noexc12

.noexc12:                                         ; preds = %bb.x, %_ZNSt6vectorISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  store ptr %i.dh, ptr %i.cv, align 8, !tbaa !415
  store ptr %i.ed, ptr %i.cp, align 8, !tbaa !416
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.df
  store ptr %i.ee, ptr %i.cr, align 8, !tbaa !430
  br label %_ZNSt10unique_ptrI27llm_graph_input_attn_k_iswaSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI27llm_graph_input_attn_k_iswaSt14default_deleteIS0_EED2Ev.exit: ; preds = %.noexc12, %bb.u
  %i.ef = phi ptr [ %i.cq, %bb.u ], [ %.0.lcssa.i.i.i.i, %.noexc12 ]
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !418
  ret ptr %i.eg

.thread:                                          ; preds = %bb.w, %_ZNKSt6vectorISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  %i.ei = load ptr, ptr %i.g, align 8, !tbaa !187
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  tail call void %i.ek(ptr noundef nonnull align 8 dereferenceable(12) %i.g) #30, !inline_history !7
  br label %common.resume

_ZNKSt14default_deleteI27llm_graph_input_attn_k_iswaEclEPS0_.exit.i18: ; preds = %.noexc9, %.noexc8, %bb.p, %bb.n, %.noexc5, %.noexc4, %bb.h, %bb.f, %bb.s, %bb.r, %bb.q, %_ZL22build_attn_inp_kq_maskP12ggml_contextPK22llama_kv_cache_contextRK12llama_ubatchRK13llama_cparams.exit11, %bb.m, %bb.l, %bb.k, %bb.i, %bb.e, %bb.d, %_ZSt11make_uniqueI27llm_graph_input_attn_k_iswaJRK13llama_hparamsRK13llama_cparamsRPK27llama_kv_cache_iswa_contextEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = load ptr, ptr %i.g, align 8, !tbaa !187
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  tail call void %i.eo(ptr noundef nonnull align 8 dereferenceable(36320) %i.g) #30, !inline_history !1022
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK17llm_graph_context14build_inp_dsv4Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.57", align 8 ; 4 uses
  %2 = alloca %"class.std::unique_ptr.57", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !503  ; 9 uses
  %i.c = tail call noundef ptr @_ZNK27llama_kv_cache_dsv4_context7get_rawEv(ptr noundef nonnull align 8 dereferenceable(1188) %i.b) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !448, !nonnull !133, !align !167 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %i.f = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #28, !noalias !1043 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.f, i8 0, i64 32, i1 false), !noalias !1043
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.g, ptr noundef nonnull align 8 dereferenceable(176) %i.e, i64 93, i1 false), !noalias !1043
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_ZSt11make_uniqueI24llm_graph_input_dsv4_rawJRK13llama_cparamsRPK31llama_kv_cache_dsv4_raw_contextEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1043

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 216) #29, !noalias !1043
  br label %common.resume

_ZSt11make_uniqueI24llm_graph_input_dsv4_rawJRK13llama_cparamsRPK31llama_kv_cache_dsv4_raw_contextEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !noalias !1043
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  store ptr %i.c, ptr %i.m, align 8, !tbaa !243, !noalias !1043
  store ptr %i.f, ptr %2, align 8, !tbaa !268, !alias.scope !1043
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !450, !nonnull !133, !align !167
  %i.p = ptrtoint ptr %i.f to i64
  %i.q = invoke noundef nonnull align 8 dereferenceable(280) ptr @_ZNK27llama_kv_cache_dsv4_context12get_csa_planERK12llama_ubatch(ptr noundef nonnull align 8 dereferenceable(1188) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.o)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZSt11make_uniqueI24llm_graph_input_dsv4_rawJRK13llama_cparamsRPK31llama_kv_cache_dsv4_raw_contextEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load i64, ptr %i.r, align 8, !tbaa !267  ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !447, !nonnull !133, !align !167
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12580
  %i.w = load i32, ptr %i.v, align 4, !tbaa !390
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %.invoke, label %bb.e

bb.d:                                             ; preds = %.invoke, %.noexc15, %.noexc14, %bb.h, %bb.f, %_ZL22dsv4_build_raw_kq_maskP12ggml_contextPK31llama_kv_cache_dsv4_raw_contextRK12llama_ubatchRK13llama_cparamsl.exit, %bb.e, %_ZSt11make_uniqueI24llm_graph_input_dsv4_rawJRK13llama_cparamsRPK31llama_kv_cache_dsv4_raw_contextEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 9 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !459
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !450, !nonnull !133, !align !167
  %i.ab = invoke noundef ptr @_ZNK31llama_kv_cache_dsv4_raw_context18build_input_k_idxsEP12ggml_contextRK12llama_ubatch(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(104) %i.aa)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !242
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !459
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !450, !nonnull !133, !align !167
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !448, !nonnull !133, !align !167
  %i.af = invoke noundef i32 @_ZNK31llama_kv_cache_dsv4_raw_context8get_n_kvEv(ptr noundef nonnull align 8 dereferenceable(144) %i.c)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.s, 0
  br i1 %i.ag, label %bb.g, label %.invoke

bb.g:                                             ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !35
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = urem i64 %i.aj, %i.s
  %i.al = udiv exact i64 %i.aj, %i.s
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %bb.h, label %.invoke

.invoke:                                          ; preds = %bb.c, %bb.g, %.noexc
  %i.an = phi i32 [ 810, %.noexc ], [ 811, %bb.g ], [ 3392, %bb.c ]
  %i.ao = phi ptr [ @.str.166, %.noexc ], [ @.str.167, %bb.g ], [ @.str.140, %bb.c ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef %i.an, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.ao) #27
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 77
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !504, !range !132, !noundef !133
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = zext i32 %i.af to i64
  %i.at = invoke ptr @ggml_new_tensor_4d(ptr noundef %i.ac, i32 noundef %i.ar, i64 noundef %i.as, i64 noundef %i.al, i64 noundef 1, i64 noundef %i.s)
          to label %.noexc14 unwind label %bb.d   ; 4 uses

.noexc14:                                         ; preds = %bb.h
  invoke void @ggml_set_input(ptr noundef %i.at)
          to label %.noexc15 unwind label %bb.d

.noexc15:                                         ; preds = %.noexc14
  %i.au = invoke ptr @ggml_set_name(ptr noundef %i.at, ptr noundef nonnull @.str.181)
          to label %_ZL22dsv4_build_raw_kq_maskP12ggml_contextPK31llama_kv_cache_dsv4_raw_contextRK12llama_ubatchRK13llama_cparamsl.exit unwind label %bb.d ; 0 uses

_ZL22dsv4_build_raw_kq_maskP12ggml_contextPK31llama_kv_cache_dsv4_raw_contextRK12llama_ubatchRK13llama_cparamsl.exit: ; preds = %.noexc15
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.at, ptr %i.av, align 8, !tbaa !244
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !1044
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !459
  %i.ay = invoke noundef ptr @_ZNK31llama_kv_cache_dsv4_raw_context17build_input_k_rotEP12ggml_context(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef %i.ax)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %_ZL22dsv4_build_raw_kq_maskP12ggml_contextPK31llama_kv_cache_dsv4_raw_contextRK12llama_ubatchRK13llama_cparamsl.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !246
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !448, !nonnull !133, !align !167 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.bb = invoke noalias noundef nonnull dereferenceable(496) ptr @_Znwm(i64 noundef 496) #28
          to label %.noexc17 unwind label %bb.ab  ; 21 uses

.noexc17:                                         ; preds = %bb.i
  store ptr null, ptr %2, align 8, !tbaa !268, !noalias !1045
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17llm_graph_input_i, i64 16), ptr %i.bb, align 8, !tbaa !187, !noalias !1045
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !168, !noalias !1045
  %i.bd = tail call ptr @getenv(ptr noundef nonnull @.str.162) #30, !noalias !1045 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %_ZN17llm_graph_input_iC2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.noexc17
  %i.be = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.bd, ptr noundef null, i32 noundef 10) #30, !noalias !1045, !inline_history !0
  %i.bf = trunc i64 %i.be to i32
  br label %_ZN17llm_graph_input_iC2Ev.exit.i.i

_ZN17llm_graph_input_iC2Ev.exit.i.i:              ; preds = %bb.j, %.noexc17
  %i.bg = phi i32 [ %i.bf, %bb.j ], [ 0, %.noexc17 ]
  store i32 %i.bg, ptr %i.bc, align 8, !tbaa !168, !noalias !1045
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV20llm_graph_input_dsv4, i64 16), ptr %i.bb, align 8, !tbaa !187, !noalias !1045
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  store i64 %i.p, ptr %i.bh, align 8, !tbaa !268, !noalias !1045
  store ptr null, ptr %1, align 8, !tbaa !268, !noalias !1045
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.bi, i8 0, i64 288, i1 false), !noalias !1045
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.bj, ptr noundef nonnull align 8 dereferenceable(176) %i.ba, i64 93, i1 false), !noalias !1045
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 408
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(40) %i.bl)
          to label %bb.k unwind label %.body.i, !noalias !1045

.body.i:                                          ; preds = %_ZN17llm_graph_input_iC2Ev.exit.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10unique_ptrI24llm_graph_input_dsv4_rawSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bh) #30, !noalias !1045
  call void @_ZNSt10unique_ptrI24llm_graph_input_dsv4_rawSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #30, !noalias !1045
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 496) #29, !noalias !1045
  br label %.body

bb.k:                                             ; preds = %_ZN17llm_graph_input_iC2Ev.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 448
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bn, ptr noundef nonnull align 8 dereferenceable(40) %i.bo, i64 40, i1 false), !noalias !1045
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 488
  store ptr %i.b, ptr %i.bp, align 8, !tbaa !257, !noalias !1045
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bq = load ptr, ptr %i.y, align 8, !tbaa !459
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !450, !nonnull !133, !align !167
  %i.bs = invoke noundef nonnull align 8 dereferenceable(280) ptr @_ZNK27llama_kv_cache_dsv4_context12get_csa_planERK12llama_ubatch(ptr noundef nonnull align 8 dereferenceable(1188) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.br)
          to label %bb.l unwind label %_ZNKSt14default_deleteI20llm_graph_input_dsv4EclEPS0_.exit.i25

bb.l:                                             ; preds = %bb.k
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !448, !nonnull !133, !align !167
  invoke fastcc void @_ZL22dsv4_build_comp_inputsP12ggml_contextRN20llm_graph_input_dsv410comp_inputERKN27llama_kv_cache_dsv4_context9comp_planEPKcRK13llama_cparamsl(ptr noundef %i.bq, ptr noundef nonnull align 8 dereferenceable(96) %i.bi, ptr noundef nonnull align 8 dereferenceable(280) %i.bs, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(176) %i.bt, i64 noundef %i.s)
          to label %bb.m unwind label %_ZNKSt14default_deleteI20llm_graph_input_dsv4EclEPS0_.exit.i25

bb.m:                                             ; preds = %bb.l
  %i.bu = load ptr, ptr %i.y, align 8, !tbaa !459
  %i.bv = load ptr, ptr %i.n, align 8, !tbaa !450, !nonnull !133, !align !167
  %i.bw = invoke noundef nonnull align 8 dereferenceable(280) ptr @_ZNK27llama_kv_cache_dsv4_context12get_hca_planERK12llama_ubatch(ptr noundef nonnull align 8 dereferenceable(1188) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.bv)
          to label %bb.n unwind label %_ZNKSt14default_deleteI20llm_graph_input_dsv4EclEPS0_.exit.i25

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bb, i64 120
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !448, !nonnull !133, !align !167
  invoke fastcc void @_ZL22dsv4_build_comp_inputsP12ggml_contextRN20llm_graph_input_dsv410comp_inputERKN27llama_kv_cache_dsv4_context9comp_planEPKcRK13llama_cparamsl(ptr noundef %i.bu, ptr noundef nonnull align 8 dereferenceable(96) %i.bx, ptr noundef nonnull align 8 dereferenceable(280) %i.bw, ptr noundef nonnull @.str.22, ptr noundef nonnull align 8 dereferenceable(176) %i.by, i64 noundef %i.s)
          to label %bb.o unwind label %_ZNKSt14default_deleteI20llm_graph_input_dsv4EclEPS0_.exit.i25

bb.o:                                             ; preds = %bb.n
  %i.bz = load ptr, ptr %i.y, align 8, !tbaa !459
  %i.ca = load ptr, ptr %i.n, align 8, !tbaa !450, !nonnull !133, !align !167
  %i.cb = invoke noundef nonnull align 8 dereferenceable(280) ptr @_ZNK27llama_kv_cache_dsv4_context12get_lid_planERK12llama_ubatch(ptr noundef nonnull align 8 dereferenceable(1188) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.ca)
          to label %bb.p unwind label %_ZNKSt14default_deleteI20llm_graph_input_dsv4EclEPS0_.exit.i25

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 216
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !448, !nonnull !133, !align !167
  invoke fastcc void @_ZL22dsv4_build_comp_inputsP12ggml_contextRN20llm_graph_input_dsv410comp_inputERKN27llama_kv_cache_dsv4_context9comp_planEPKcRK13llama_cparamsl(ptr noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(96) %i.cc, ptr noundef nonnull align 8 dereferenceable(280) %i.cb, ptr noundef nonnull @.str.23, ptr noundef nonnull align 8 dereferenceable(176) %i.cd, i64 noundef %i.s)
          to label %bb.q unwind label %_ZNKSt14default_deleteI20llm_graph_input_dsv4EclEPS0_.exit.i25

bb.q:                                             ; preds = %bb.p
  %i.ce = invoke noundef ptr @_ZNK27llama_kv_cache_dsv4_context7get_csaEv(ptr noundef nonnull align 8 dereferenceable(1188) %i.b)
          to label %bb.r unwind label %_ZNKSt14default_deleteI20llm_graph_input_dsv4EclEPS0_.exit.i25

bb.r:                                             ; preds = %bb.q
  %i.cf = load ptr, ptr %i.y, align 8, !tbaa !459
  %i.cg = invoke noundef ptr @_ZNK32llama_kv_cache_dsv4_comp_context17build_input_k_rotEP12ggml_context(ptr noundef nonnull align 8 dereferenceable(68) %i.ce, ptr noundef %i.cf)
          to label %bb.s unwind label %_ZNKSt14default_deleteI20llm_graph_input_dsv4EclEPS0_.exit.i25

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !269
  %i.ci = invoke noundef ptr @_ZNK27llama_kv_cache_dsv4_context7get_hcaEv(ptr noundef nonnull align 8 dereferenceable(1188) %i.b)
          to label %bb.t unwind label %_ZNKSt14default_deleteI20llm_graph_input_dsv4EclEPS0_.exit.i25

bb.t:                                             ; preds = %bb.s
  %i.cj = load ptr, ptr %i.y, align 8, !tbaa !459
  %i.ck = invoke noundef ptr @_ZNK32llama_kv_cache_dsv4_comp_context17build_input_k_rotEP12ggml_context(ptr noundef nonnull align 8 dereferenceable(68) %i.ci, ptr noundef %i.cj)
          to label %bb.u unwind label %_ZNKSt14default_deleteI20llm_graph_input_dsv4EclEPS0_.exit.i25

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bb, i64 208
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !270
  %i.cm = invoke noundef ptr @_ZNK27llama_kv_cache_dsv4_context7get_lidEv(ptr noundef nonnull align 8 dereferenceable(1188) %i.b)
          to label %bb.v unwind label %_ZNKSt14default_deleteI20llm_graph_input_dsv4EclEPS0_.exit.i25

bb.v:                                             ; preds = %bb.u
  %i.cn = load ptr, ptr %i.y, align 8, !tbaa !459
  %i.co = invoke noundef ptr @_ZNK32llama_kv_cache_dsv4_comp_context17build_input_k_rotEP12ggml_context(ptr noundef nonnull align 8 dereferenceable(68) %i.cm, ptr noundef %i.cn)
          to label %bb.w unwind label %_ZNKSt14default_deleteI20llm_graph_input_dsv4EclEPS0_.exit.i25

bb.w:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 304
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !271
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !458 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 184 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !416 ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 192 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !430
  %.not.i.i = icmp eq ptr %i.ct, %i.cv
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = ptrtoint ptr %i.bb to i64
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !418
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !416
  br label %_ZNSt10unique_ptrI24llm_graph_input_dsv4_rawSt14default_deleteIS0_EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 176 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !415 ; 10 uses
  %i.da = ptrtoint ptr %i.ct to i64               ; 3 uses
  %i.db = ptrtoint ptr %i.cz to i64               ; 3 uses
  %i.dc = sub i64 %i.da, %i.db                    ; 4 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775800
  br i1 %i.dd, label %bb.z, label %_ZNKSt6vectorISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.198) #27
          to label %.noexc28 unwind label %.thread

.noexc28:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorISt10unique_ptrI17llm_graph_input_iSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.y
  %i.de = ashr exact i64 %i.dc, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.df = add nsw i64 %.sroa.speculated.i.i, %i.de ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.de
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 1152921504606846975)
  %i.di = select i1 %i.dg, i64 1152921504606846975, i64 %i.dh ; 3 uses
  %.not.i.i27 = icmp ne i64 %i.di, 0
  tail call void @llvm.assume(i1 %.not.i.i27)
  %i.dj = shl nuw nsw i64 %i.di, 3
end_hunk_1
begin_hunk_2_@_ZL22dsv4_build_comp_inputsP12ggml_contextRN20llm_graph_input_dsv410comp_inputERKN27llama_kv_cache_dsv4_context9comp_planEPKcRK13llama_cparamsl:._crit_edge.i.i
  %i.zs = icmp eq ptr %i.zr, %i.ns
  br i1 %i.zs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499: ; preds = %bb.co
  %i.zt = load i64, ptr %i.ns, align 8, !tbaa !130
  %i.zu = add i64 %i.zt, 1
  call void @_ZdlPvm(ptr noundef %i.zr, i64 noundef %i.zu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499, %bb.cn
  %.pn117 = phi { ptr, i32 } [ %i.zp, %bb.cn ], [ %i.zq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499 ], [ %i.zq, %bb.co ] ; 2 uses
  %i.zv = load ptr, ptr %25, align 8, !tbaa !290  ; 2 uses
  %i.zw = icmp eq ptr %i.zv, %i.nc
  br i1 %i.zw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501
  %i.zx = load i64, ptr %i.nc, align 8, !tbaa !130
  %i.zy = add i64 %i.zx, 1
  call void @_ZdlPvm(ptr noundef %i.zv, i64 noundef %i.zy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502, %bb.cm
  %.pn117.pn = phi { ptr, i32 } [ %i.zo, %bb.cm ], [ %.pn117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502 ], [ %.pn117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501 ]
  %i.zz = load ptr, ptr %26, align 8, !tbaa !290  ; 2 uses
  %i.aaa = icmp eq ptr %i.zz, %i.mw
  br i1 %i.aaa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504
  %i.aab = load i64, ptr %i.mw, align 8, !tbaa !130
  %i.aac = add i64 %i.aab, 1
  call void @_ZdlPvm(ptr noundef %i.zz, i64 noundef %i.aac) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %bb.dl

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i353, %bb.ax
  %i.aad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i360, %bb.ba
  %i.aae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510

bb.cr:                                            ; preds = %.noexc369, %.noexc368, %bb.bd
  %i.aaf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aag = load ptr, ptr %27, align 8, !tbaa !290 ; 2 uses
  %i.aah = icmp eq ptr %i.aag, %i.pz
  br i1 %i.aah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i508

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i508: ; preds = %bb.cr
  %i.aai = load i64, ptr %i.pz, align 8, !tbaa !130
  %i.aaj = add i64 %i.aai, 1
  call void @_ZdlPvm(ptr noundef %i.aag, i64 noundef %i.aaj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i508, %bb.cq
  %.pn121 = phi { ptr, i32 } [ %i.aae, %bb.cq ], [ %i.aaf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i508 ], [ %i.aaf, %bb.cr ] ; 2 uses
  %i.aak = load ptr, ptr %28, align 8, !tbaa !290 ; 2 uses
  %i.aal = icmp eq ptr %i.aak, %i.pj
  br i1 %i.aal, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510
  %i.aam = load i64, ptr %i.pj, align 8, !tbaa !130
  %i.aan = add i64 %i.aam, 1
  call void @_ZdlPvm(ptr noundef %i.aak, i64 noundef %i.aan) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511, %bb.cp
  %.pn121.pn = phi { ptr, i32 } [ %i.aad, %bb.cp ], [ %.pn121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i511 ], [ %.pn121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510 ]
  %i.aao = load ptr, ptr %29, align 8, !tbaa !290 ; 2 uses
  %i.aap = icmp eq ptr %i.aao, %i.pd
  br i1 %i.aap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513
  %i.aaq = load i64, ptr %i.pd, align 8, !tbaa !130
  %i.aar = add i64 %i.aaq, 1
  call void @_ZdlPvm(ptr noundef %i.aao, i64 noundef %i.aar) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit513, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i514
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  br label %bb.dl

bb.cs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i385, %bb.be
  %i.aas = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i392, %bb.bh
  %i.aat = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519

bb.cu:                                            ; preds = %.noexc401, %.noexc400, %bb.bk
  %i.aau = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aav = load ptr, ptr %30, align 8, !tbaa !290 ; 2 uses
  %i.aaw = icmp eq ptr %i.aav, %i.sg
  br i1 %i.aaw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517: ; preds = %bb.cu
  %i.aax = load i64, ptr %i.sg, align 8, !tbaa !130
  %i.aay = add i64 %i.aax, 1
  call void @_ZdlPvm(ptr noundef %i.aav, i64 noundef %i.aay) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517, %bb.ct
  %.pn125 = phi { ptr, i32 } [ %i.aat, %bb.ct ], [ %i.aau, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517 ], [ %i.aau, %bb.cu ] ; 2 uses
  %i.aaz = load ptr, ptr %31, align 8, !tbaa !290 ; 2 uses
  %i.aba = icmp eq ptr %i.aaz, %i.rq
  br i1 %i.aba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519
  %i.abb = load i64, ptr %i.rq, align 8, !tbaa !130
  %i.abc = add i64 %i.abb, 1
  call void @_ZdlPvm(ptr noundef %i.aaz, i64 noundef %i.abc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520, %bb.cs
  %.pn125.pn = phi { ptr, i32 } [ %i.aas, %bb.cs ], [ %.pn125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520 ], [ %.pn125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519 ]
  %i.abd = load ptr, ptr %32, align 8, !tbaa !290 ; 2 uses
  %i.abe = icmp eq ptr %i.abd, %i.rk
  br i1 %i.abe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522
  %i.abf = load i64, ptr %i.rk, align 8, !tbaa !130
  %i.abg = add i64 %i.abf, 1
  call void @_ZdlPvm(ptr noundef %i.abd, i64 noundef %i.abg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  br label %bb.dl

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i417, %bb.bl
  %i.abh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i424, %bb.bo
  %i.abi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528

bb.cx:                                            ; preds = %.noexc433, %.noexc432, %bb.br
  %i.abj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abk = load ptr, ptr %33, align 8, !tbaa !290 ; 2 uses
  %i.abl = icmp eq ptr %i.abk, %i.un
  br i1 %i.abl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i526

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i526: ; preds = %bb.cx
  %i.abm = load i64, ptr %i.un, align 8, !tbaa !130
  %i.abn = add i64 %i.abm, 1
  call void @_ZdlPvm(ptr noundef %i.abk, i64 noundef %i.abn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i526, %bb.cw
  %.pn129 = phi { ptr, i32 } [ %i.abi, %bb.cw ], [ %i.abj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i526 ], [ %i.abj, %bb.cx ] ; 2 uses
  %i.abo = load ptr, ptr %34, align 8, !tbaa !290 ; 2 uses
  %i.abp = icmp eq ptr %i.abo, %i.tx
  br i1 %i.abp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528
  %i.abq = load i64, ptr %i.tx, align 8, !tbaa !130
  %i.abr = add i64 %i.abq, 1
  call void @_ZdlPvm(ptr noundef %i.abo, i64 noundef %i.abr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529, %bb.cv
  %.pn129.pn = phi { ptr, i32 } [ %i.abh, %bb.cv ], [ %.pn129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i529 ], [ %.pn129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528 ]
  %i.abs = load ptr, ptr %35, align 8, !tbaa !290 ; 2 uses
  %i.abt = icmp eq ptr %i.abs, %i.tr
  br i1 %i.abt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531
  %i.abu = load i64, ptr %i.tr, align 8, !tbaa !130
  %i.abv = add i64 %i.abu, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit531, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i532
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  br label %bb.dl

bb.cy:                                            ; preds = %bb.bs
  %i.abw = srem i64 %i.wa, %5
  %i.abx = sdiv exact i64 %i.wa, %5
  %i.aby = icmp eq i64 %i.abw, 0
  br i1 %i.aby, label %._crit_edge.i.i535, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 972, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.167) #27
  unreachable

._crit_edge.i.i535:                               ; preds = %bb.cy
  %i.abz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(4) @.str.23) #31
  %.not = icmp eq i32 %i.abz, 0
  %.in.in.v = select i1 %.not, i64 82, i64 77
  %.in.in = getelementptr inbounds nuw i8, ptr %4, i64 %.in.in.v
  %.in = load i8, ptr %.in.in, align 1, !tbaa !287, !range !132, !noundef !133
  %i.aca = zext nneg i8 %.in to i32
  %i.acb = call ptr @ggml_new_tensor_4d(ptr noundef %0, i32 noundef %i.aca, i64 noundef %i.vr, i64 noundef %i.abx, i64 noundef 1, i64 noundef %5) ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store ptr %i.acb, ptr %i.acc, align 8, !tbaa !282
  call void @ggml_set_input(ptr noundef %i.acb)
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !282
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #30
  %i.ace = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 6 uses
  store ptr %i.ace, ptr %38, align 8, !tbaa !512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ace, ptr noundef nonnull align 1 dereferenceable(5) @.str.182, i64 5, i1 false)
  %i.acf = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 5, ptr %i.acf, align 8, !tbaa !513
  %i.acg = getelementptr inbounds nuw i8, ptr %38, i64 21
  store i8 0, ptr %i.acg, align 1, !tbaa !130
  call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  %i.ach = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #30, !noalias !1114 ; 2 uses
  %i.aci = icmp ugt i64 %i.ach, 4611686018427387898
  br i1 %i.aci, label %bb.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i539

bb.da:                                            ; preds = %._crit_edge.i.i535
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.194) #27
          to label %.noexc543 unwind label %bb.dh

.noexc543:                                        ; preds = %bb.da
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i539: ; preds = %._crit_edge.i.i535
  %i.acj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull %3, i64 noundef %i.ach)
          to label %.noexc544 unwind label %bb.dh ; 6 uses

.noexc544:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i539
  %i.ack = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 7 uses
  store ptr %i.ack, ptr %37, align 8, !tbaa !512, !alias.scope !1114
  %i.acl = load ptr, ptr %i.acj, align 8, !tbaa !290 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acj, i64 16 ; 5 uses
  %i.acn = icmp eq ptr %i.acl, %i.acm
  br i1 %i.acn, label %bb.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540

bb.db:                                            ; preds = %.noexc544
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !513 ; 3 uses
  %i.acq = icmp ult i64 %i.acp, 16
  call void @llvm.assume(i1 %i.acq)
  %i.acr = add nuw nsw i64 %i.acp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ack, ptr noundef nonnull align 8 dereferenceable(1) %i.acm, i64 %i.acr, i1 false)
  br label %bb.dc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540: ; preds = %.noexc544
  store ptr %i.acl, ptr %37, align 8, !tbaa !290, !alias.scope !1114
  %i.acs = load i64, ptr %i.acm, align 8, !tbaa !130
  store i64 %i.acs, ptr %i.ack, align 8, !tbaa !130, !alias.scope !1114
  %.phi.trans.insert.i541 = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  %.pre.i542 = load i64, ptr %.phi.trans.insert.i541, align 8, !tbaa !513
  br label %bb.dc

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540, %bb.db
  %i.act = phi i64 [ %i.acp, %bb.db ], [ %.pre.i542, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540 ]
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  %i.acv = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i64 %i.act, ptr %i.acv, align 8, !tbaa !513, !alias.scope !1114
  store ptr %i.acm, ptr %i.acj, align 8, !tbaa !290
  store i64 0, ptr %i.acu, align 8, !tbaa !513
  store i8 0, ptr %i.acm, align 8, !tbaa !130
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.acw = load i64, ptr %i.acv, align 8, !tbaa !513, !noalias !1115
  %i.acx = and i64 %i.acw, -8
  %i.acy = icmp eq i64 %i.acx, 4611686018427387896
  br i1 %i.acy, label %bb.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i546

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.194) #27
          to label %.noexc550 unwind label %bb.di

.noexc550:                                        ; preds = %bb.dd
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i546: ; preds = %bb.dc
  %i.acz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull @.str.193, i64 noundef 8)
          to label %.noexc551 unwind label %bb.di ; 6 uses

.noexc551:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i546
  %i.ada = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 8 uses
  store ptr %i.ada, ptr %36, align 8, !tbaa !512, !alias.scope !1115
  %i.adb = load ptr, ptr %i.acz, align 8, !tbaa !290 ; 3 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acz, i64 16 ; 5 uses
  %i.add = icmp eq ptr %i.adb, %i.adc
  br i1 %i.add, label %bb.de, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547

bb.de:                                            ; preds = %.noexc551
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  %i.adf = load i64, ptr %i.ade, align 8, !tbaa !513 ; 3 uses
  %i.adg = icmp ult i64 %i.adf, 16
  call void @llvm.assume(i1 %i.adg)
  %i.adh = add nuw nsw i64 %i.adf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ada, ptr noundef nonnull align 8 dereferenceable(1) %i.adc, i64 %i.adh, i1 false)
  br label %bb.df

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547: ; preds = %.noexc551
  store ptr %i.adb, ptr %36, align 8, !tbaa !290, !alias.scope !1115
  %i.adi = load i64, ptr %i.adc, align 8, !tbaa !130
  store i64 %i.adi, ptr %i.ada, align 8, !tbaa !130, !alias.scope !1115
  %.phi.trans.insert.i548 = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  %.pre.i549 = load i64, ptr %.phi.trans.insert.i548, align 8, !tbaa !513
  br label %bb.df

bb.df:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547, %bb.de
  %i.adj = phi ptr [ %i.ada, %bb.de ], [ %i.adb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547 ]
  %i.adk = phi i64 [ %i.adf, %bb.de ], [ %.pre.i549, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547 ]
  %i.adl = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  %i.adm = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 %i.adk, ptr %i.adm, align 8, !tbaa !513, !alias.scope !1115
  store ptr %i.adc, ptr %i.acz, align 8, !tbaa !290
  store i64 0, ptr %i.adl, align 8, !tbaa !513
  store i8 0, ptr %i.adc, align 8, !tbaa !130
  %i.adn = invoke ptr @ggml_set_name(ptr noundef %i.acd, ptr noundef %i.adj)
          to label %bb.dg unwind label %bb.dj     ; 0 uses

bb.dg:                                            ; preds = %bb.df
  %i.ado = load ptr, ptr %36, align 8, !tbaa !290 ; 2 uses
  %i.adp = icmp eq ptr %i.ado, %i.ada
  br i1 %i.adp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553: ; preds = %bb.dg
  %i.adq = load i64, ptr %i.ada, align 8, !tbaa !130
  %i.adr = add i64 %i.adq, 1
  call void @_ZdlPvm(ptr noundef %i.ado, i64 noundef %i.adr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553
  %i.ads = load ptr, ptr %37, align 8, !tbaa !290 ; 2 uses
  %i.adt = icmp eq ptr %i.ads, %i.ack
  br i1 %i.adt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555
  %i.adu = load i64, ptr %i.ack, align 8, !tbaa !130
  %i.adv = add i64 %i.adu, 1
  call void @_ZdlPvm(ptr noundef %i.ads, i64 noundef %i.adv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556
  %i.adw = load ptr, ptr %38, align 8, !tbaa !290 ; 2 uses
  %i.adx = icmp eq ptr %i.adw, %i.ace
  br i1 %i.adx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i559

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i559: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558
  %i.ady = load i64, ptr %i.ace, align 8, !tbaa !130
  %i.adz = add i64 %i.ady, 1
  call void @_ZdlPvm(ptr noundef %i.adw, i64 noundef %i.adz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit561: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i559
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  br label %bb.dk

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i539, %bb.da
  %i.aea = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit567

bb.di:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i546, %bb.dd
  %i.aeb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564

bb.dj:                                            ; preds = %bb.df
  %i.aec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aed = load ptr, ptr %36, align 8, !tbaa !290 ; 2 uses
  %i.aee = icmp eq ptr %i.aed, %i.ada
  br i1 %i.aee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i562

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i562: ; preds = %bb.dj
  %i.aef = load i64, ptr %i.ada, align 8, !tbaa !130
  %i.aeg = add i64 %i.aef, 1
  call void @_ZdlPvm(ptr noundef %i.aed, i64 noundef %i.aeg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i562, %bb.di
  %.pn133 = phi { ptr, i32 } [ %i.aeb, %bb.di ], [ %i.aec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i562 ], [ %i.aec, %bb.dj ] ; 2 uses
  %i.aeh = load ptr, ptr %37, align 8, !tbaa !290 ; 2 uses
  %i.aei = icmp eq ptr %i.aeh, %i.ack
  br i1 %i.aei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit567, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i565

end_hunk_2
