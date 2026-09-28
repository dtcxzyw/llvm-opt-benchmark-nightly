Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/blend_gui?download=true
inline.NumInlined: 231
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@blend_color_picker_apply:bb.a
  %i.fr = load ptr, ptr %i.aj, align 8, !tbaa !115
  %i.fs = call reassoc nsz arcp contract afn double @dtgtk_gradient_slider_multivalue_get_value(ptr noundef %i.fr, i32 noundef 3) #18
  %i.ft = fptrunc reassoc nsz arcp contract afn double %i.fs to float
  call void %i.fq(float noundef %i.ft, float noundef %i.ew, ptr noundef nonnull %i.e, i32 noundef 256) #18
  %i.fu = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !119
  call void @gtk_label_set_text(ptr noundef %i.fv, ptr noundef nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %i.fw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 104
  %i.fy = atomicrmw sub ptr %i.fx, i32 1 seq_cst, align 4 ; 0 uses
  %i.fz = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.du) #18 ; 0 uses
  %i.ga = load ptr, ptr %i.aj, align 8, !tbaa !115
  %i.gb = call reassoc nsz arcp contract afn double @dtgtk_gradient_slider_multivalue_get_value(ptr noundef %i.ga, i32 noundef 0) #18
  %i.gc = fptrunc reassoc nsz arcp contract afn double %i.gb to float
  store float %i.gc, ptr %i.an, align 4, !tbaa !79
  %i.gd = load ptr, ptr %i.aj, align 8, !tbaa !115
  %i.ge = call reassoc nsz arcp contract afn double @dtgtk_gradient_slider_multivalue_get_value(ptr noundef %i.gd, i32 noundef 1) #18
  %i.gf = fptrunc reassoc nsz arcp contract afn double %i.ge to float
  %i.gg = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  store float %i.gf, ptr %i.gg, align 4, !tbaa !79
  %i.gh = load ptr, ptr %i.aj, align 8, !tbaa !115
  %i.gi = call reassoc nsz arcp contract afn double @dtgtk_gradient_slider_multivalue_get_value(ptr noundef %i.gh, i32 noundef 2) #18
  %i.gj = fptrunc reassoc nsz arcp contract afn double %i.gi to float
  %i.gk = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store float %i.gj, ptr %i.gk, align 4, !tbaa !79
  %i.gl = load ptr, ptr %i.aj, align 8, !tbaa !115
  %i.gm = call reassoc nsz arcp contract afn double @dtgtk_gradient_slider_multivalue_get_value(ptr noundef %i.gl, i32 noundef 3) #18
  %i.gn = fptrunc reassoc nsz arcp contract afn double %i.gm to float
  %i.go = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store float %i.gn, ptr %i.go, align 4, !tbaa !79
  %i.gp = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.du) #18 ; 0 uses
  %i.gq = load float, ptr %i.gg, align 4, !tbaa !79
  %i.gr = fcmp reassoc nsz arcp contract afn oeq float %i.gq, 0.000000e+00
  br i1 %i.gr, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.gs = load float, ptr %i.gk, align 4, !tbaa !79
  %i.gt = fcmp reassoc nsz arcp contract afn oeq float %i.gs, 1.000000e+00
  br i1 %i.gt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gu = shl nuw i32 1, %i.ah
  %i.gv = xor i32 %i.gu, -1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !121
  %i.gy = and i32 %i.gx, %i.gv
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.gz = shl nuw i32 1, %i.ah
  %i.ha = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !121
  %i.hc = or i32 %i.hb, %i.gz
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.hd = phi i32 [ %i.hc, %bb.s ], [ %i.gy, %bb.r ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !122
  %i.hg = and i32 %i.hf, 1
  %i.hh = icmp eq i32 %.0142, %i.hg
  %i.hi = add i32 %i.ah, 16
  %i.hj = shl nuw i32 1, %i.hi                    ; 2 uses
  br i1 %i.hh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hk = xor i32 %i.hj, -1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.hm = and i32 %i.hd, %i.hk
  store i32 %i.hm, ptr %i.hl, align 4, !tbaa !121
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.hn = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.ho = or i32 %i.hd, %i.hj
  store i32 %i.ho, ptr %i.hn, align 4, !tbaa !121
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.hp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !123
  call void @dt_dev_add_history_item(ptr noundef %i.hp, ptr noundef nonnull %0, i32 noundef 1) #18
  call fastcc void @_blendop_blendif_update_tab(ptr noundef nonnull %0, i32 noundef %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.aa

bb.x:                                             ; preds = %bb.a
  %i.hq = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !124
  %i.hs = icmp eq ptr %1, %i.hr
  br i1 %i.hs, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ht = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 104
  %i.hv = load atomic i32, ptr %i.hu seq_cst, align 4
  %.not = icmp eq i32 %i.hv, 0
  br i1 %.not, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @_update_gradient_slider_pickers(ptr poison, ptr noundef nonnull %0)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.y, %bb.b, %bb.z, %bb.w
  %.0141 = phi i32 [ 1, %bb.w ], [ 1, %bb.y ], [ 1, %bb.b ], [ 1, %bb.z ], [ 0, %bb.x ]
  ret i32 %.0141
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @dt_key_modifier_state(...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dt_ioppr_get_iop_work_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_blendif_scale(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store <8 x float> splat (float -1.000000e+00), ptr %3, align 4, !tbaa !79
  switch i32 %1, label %bb.j [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = load float, ptr %2, align 4, !tbaa !79
  %i.h = getelementptr i8, ptr %0, i64 32
  %.val107 = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.i = getelementptr i8, ptr %0, i64 384
  %.val108 = load ptr, ptr %i.i, align 8, !tbaa !80 ; 3 uses
  %i.j = getelementptr i8, ptr %.val107, i64 768
  %.val107.val = load ptr, ptr %i.j, align 16, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %.val107.val, i64 324 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val108, i64 40
  %i.m = zext nneg i32 %5 to i64                  ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !81
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !79
  %i.s = fmul reassoc nsz arcp contract afn float %i.g, f0x3C23D70A
  %i.t = fneg reassoc nsz arcp contract afn float %i.r
  %i.u = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.t)
  %i.v = fmul reassoc nsz arcp contract afn float %i.s, %i.u
  store float %i.v, ptr %3, align 4, !tbaa !79
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %.val108, i64 120
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.m
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !81
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !79
  %i.ae = fmul reassoc nsz arcp contract afn float %i.x, 3.906250e-03
  %i.af = fneg reassoc nsz arcp contract afn float %i.ad
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.af)
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ae, %i.ag
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, 5.000000e-01
  store float %i.ai, ptr %i.f, align 4, !tbaa !79
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !79
  %i.al = getelementptr inbounds nuw i8, ptr %.val108, i64 200
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.m
  %i.an = load i32, ptr %i.am, align 4, !tbaa !81
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !79
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ak, 3.906250e-03
  %i.as = fneg reassoc nsz arcp contract afn float %i.aq
  %i.at = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.as)
  %i.au = fmul reassoc nsz arcp contract afn float %i.ar, %i.at
  %i.av = fadd reassoc nsz arcp contract afn float %i.au, 5.000000e-01
  store float %i.av, ptr %i.e, align 4, !tbaa !79
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.aw = icmp eq ptr %4, null
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ax = load float, ptr %2, align 4, !tbaa !79
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, 3.000000e-01
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 4
  %6 = load <2 x float>, ptr %i.az, align 4, !tbaa !79
  %7 = fmul reassoc nsz arcp contract afn <2 x float> %6, <float 5.900000e-01, float 1.100000e-01> ; 2 uses
  %8 = extractelement <2 x float> %7, i64 0
  %9 = fadd reassoc nsz arcp contract afn float %8, %i.ay
  %10 = extractelement <2 x float> %7, i64 1
  %i.ba = fadd reassoc nsz arcp contract afn float %9, %10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 576
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 712
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 768
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 704
  %i.bf = load i32, ptr %i.be, align 64, !tbaa !126
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 852
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !127
  %i.bi = tail call reassoc nsz arcp contract afn fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr noundef %2, ptr noundef %i.bb, ptr noundef %i.bc, ptr noundef %i.bd, i32 noundef %i.bf, i32 noundef %i.bh)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi float [ %i.bi, %bb.e ], [ %i.ba, %bb.d ] ; 2 uses
  store float %storemerge, ptr %3, align 4, !tbaa !79
  %i.bj = getelementptr i8, ptr %0, i64 32
  %.val101 = load ptr, ptr %i.bj, align 8, !tbaa !83
  %i.bk = getelementptr i8, ptr %0, i64 384
  %.val102 = load ptr, ptr %i.bk, align 8, !tbaa !80 ; 4 uses
  %i.bl = getelementptr i8, ptr %.val101, i64 768
  %.val101.val = load ptr, ptr %i.bl, align 16, !tbaa !75
  %i.bm = getelementptr inbounds nuw i8, ptr %.val101.val, i64 324 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val102, i64 40
  %i.bo = zext nneg i32 %5 to i64                 ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !81
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !79
  %i.bu = fneg reassoc nsz arcp contract afn float %i.bt
  %i.bv = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bu)
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, %storemerge
  store float %i.bw, ptr %3, align 4, !tbaa !79
  %i.bx = load float, ptr %2, align 4, !tbaa !79
  %i.by = getelementptr inbounds nuw i8, ptr %.val102, i64 120
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bo
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !81
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !79
  %i.ce = fneg reassoc nsz arcp contract afn float %i.cd
  %i.cf = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ce)
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.bx
  store float %i.cg, ptr %i.f, align 4, !tbaa !79
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !79
  %i.cj = getelementptr inbounds nuw i8, ptr %.val102, i64 200
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.bo
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !81
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !79
  %i.cp = fneg reassoc nsz arcp contract afn float %i.co
  %i.cq = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.cp)
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, %i.ci
  store float %i.cr, ptr %i.e, align 4, !tbaa !79
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !79
  %i.cu = getelementptr inbounds nuw i8, ptr %.val102, i64 280
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.bo
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !81
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !79
  %i.da = fneg reassoc nsz arcp contract afn float %i.cz
  %i.db = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.da)
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, %i.ct
  store float %i.dc, ptr %i.d, align 4, !tbaa !79
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !79
  %i.df = getelementptr i8, ptr %0, i64 32
  %.val93 = load ptr, ptr %i.df, align 8, !tbaa !83
  %i.dg = getelementptr i8, ptr %0, i64 384
  %.val94 = load ptr, ptr %i.dg, align 8, !tbaa !80 ; 2 uses
  %i.dh = getelementptr i8, ptr %.val93, i64 768
  %.val93.val = load ptr, ptr %i.dh, align 16, !tbaa !75
  %i.di = getelementptr inbounds nuw i8, ptr %.val93.val, i64 324 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.val94, i64 280
  %i.dk = zext nneg i32 %5 to i64                 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !81
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !79
  %i.dq = fmul reassoc nsz arcp contract afn float %i.de, f0x3BB504F3
  %i.dr = fneg reassoc nsz arcp contract afn float %i.dp
  %i.ds = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.dr)
  %i.dt = fmul reassoc nsz arcp contract afn float %i.dq, %i.ds
  store float %i.dt, ptr %i.d, align 4, !tbaa !79
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dv = load float, ptr %i.du, align 4, !tbaa !79
  %i.dw = getelementptr inbounds nuw i8, ptr %.val94, i64 360
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dk
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !81
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !79
  %i.ec = fneg reassoc nsz arcp contract afn float %i.eb
  %i.ed = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ec)
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, %i.dv
  store float %i.ee, ptr %i.c, align 4, !tbaa !79
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.ef = load float, ptr %2, align 4, !tbaa !79
  %i.eg = getelementptr i8, ptr %0, i64 32
  %.val89 = load ptr, ptr %i.eg, align 8, !tbaa !83
  %i.eh = getelementptr i8, ptr %0, i64 384
  %.val90 = load ptr, ptr %i.eh, align 8, !tbaa !80 ; 3 uses
  %i.ei = getelementptr i8, ptr %.val89, i64 768
  %.val89.val = load ptr, ptr %i.ei, align 16, !tbaa !75
  %i.ej = getelementptr inbounds nuw i8, ptr %.val89.val, i64 324 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val90, i64 360
  %i.el = zext nneg i32 %5 to i64                 ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !81
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !79
  %i.er = fneg reassoc nsz arcp contract afn float %i.eq
  %i.es = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.er)
  %i.et = fmul reassoc nsz arcp contract afn float %i.es, %i.ef
  store float %i.et, ptr %i.c, align 4, !tbaa !79
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !79
  %i.ew = getelementptr inbounds nuw i8, ptr %.val90, i64 440
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.el
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !81
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !79
  %i.fc = fneg reassoc nsz arcp contract afn float %i.fb
  %i.fd = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fc)
  %i.fe = fmul reassoc nsz arcp contract afn float %i.fd, %i.ev
  store float %i.fe, ptr %i.b, align 4, !tbaa !79
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !79
  %i.fh = getelementptr inbounds nuw i8, ptr %.val90, i64 520
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.el
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !81
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !79
  %i.fn = fneg reassoc nsz arcp contract afn float %i.fm
  %i.fo = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fn)
  %i.fp = fmul reassoc nsz arcp contract afn float %i.fo, %i.fg
  store float %i.fp, ptr %i.a, align 4, !tbaa !79
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.fq = load float, ptr %2, align 4, !tbaa !79
  %i.fr = getelementptr i8, ptr %0, i64 32
  %.val83 = load ptr, ptr %i.fr, align 8, !tbaa !83
  %i.fs = getelementptr i8, ptr %0, i64 384
  %.val84 = load ptr, ptr %i.fs, align 8, !tbaa !80 ; 3 uses
  %i.ft = getelementptr i8, ptr %.val83, i64 768
  %.val83.val = load ptr, ptr %i.ft, align 16, !tbaa !75
  %i.fu = getelementptr inbounds nuw i8, ptr %.val83.val, i64 324 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val84, i64 360
  %i.fw = zext nneg i32 %5 to i64                 ; 3 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !81
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !79
  %i.gc = fneg reassoc nsz arcp contract afn float %i.gb
  %i.gd = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.gc)
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gd, %i.fq
  store float %i.ge, ptr %i.c, align 4, !tbaa !79
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !79
  %i.gh = getelementptr inbounds nuw i8, ptr %.val84, i64 440
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.fw
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !81
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.gk
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !79
  %i.gn = fneg reassoc nsz arcp contract afn float %i.gm
  %i.go = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.gn)
  %i.gp = fmul reassoc nsz arcp contract afn float %i.go, %i.gg
  store float %i.gp, ptr %i.b, align 4, !tbaa !79
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !79
  %i.gs = getelementptr inbounds nuw i8, ptr %.val84, i64 520
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.fw
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !81
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !79
  %i.gy = fneg reassoc nsz arcp contract afn float %i.gx
  %i.gz = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.gy)
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gz, %i.gr
  store float %i.ha, ptr %i.a, align 4, !tbaa !79
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.b
  ret void
}

declare void @dtgtk_gradient_slider_multivalue_set_value(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @_update_gradient_slider_pickers(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 4 uses
  %i.b = alloca [8 x float], align 16             ; 4 uses
  %i.c = alloca [8 x float], align 16             ; 4 uses
  %i.d = alloca [8 x float], align 16             ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !28  ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 380 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !82
  switch i32 %i.h, label %_blendop_blendif_get_picker_colorspace.exit [
    i32 3, label %bb.b
    i32 4, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  %i.j = load i32, ptr %i.i, align 8, !tbaa !76
  %i.k = icmp slt i32 %i.j, 4
  %..i = select i1 %i.k, i32 2, i32 4
  br label %_blendop_blendif_get_picker_colorspace.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  %i.m = load i32, ptr %i.l, align 8, !tbaa !76
  %i.n = icmp slt i32 %i.m, 4
  %.7.i = select i1 %i.n, i32 2, i32 5
  br label %_blendop_blendif_get_picker_colorspace.exit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  %i.p = load i32, ptr %i.o, align 8, !tbaa !76
  %i.q = icmp slt i32 %i.p, 3
  %.8.i = select i1 %i.q, i32 1, i32 3
  br label %_blendop_blendif_get_picker_colorspace.exit

_blendop_blendif_get_picker_colorspace.exit:      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %..i, %bb.b ], [ -1, %bb.a ], [ %.7.i, %bb.c ], [ %.8.i, %bb.d ]
  tail call void @dt_iop_color_picker_set_cst(ptr noundef nonnull %1, i32 noundef %.0.i) #18
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.t = atomicrmw add ptr %i.s, i32 1 seq_cst, align 4 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 392 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 136 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.w
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = atomicrmw sub ptr %i.af, i32 1 seq_cst, align 4 ; 0 uses
  ret void

bb.f:                                             ; preds = %_blendop_blendif_get_picker_colorspace.exit, %bb.w
  %indvars.iv = phi i64 [ 1, %_blendop_blendif_get_picker_colorspace.exit ], [ %indvars.iv.next, %bb.w ] ; 6 uses
  %.not = icmp eq i64 %indvars.iv, 0              ; 3 uses
  %.062.v = select i1 %.not, i64 512, i64 560
  %.062 = getelementptr inbounds nuw i8, ptr %1, i64 %.062.v ; 13 uses
  %.061.v = select i1 %.not, i64 528, i64 576
  %.061 = getelementptr inbounds nuw i8, ptr %1, i64 %.061.v ; 2 uses
  %.060.v = select i1 %.not, i64 544, i64 592
  %.060 = getelementptr inbounds nuw i8, ptr %1, i64 %.060.v
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !124
  %i.ai = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.ah) #18
  %.not66 = icmp eq i32 %i.ai, 0
  br i1 %.not66, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !34
  %i.ak = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.aj) #18
  %.not67 = icmp eq i32 %i.ak, 0
  br i1 %.not67, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = load float, ptr %.061, align 4, !tbaa !79
  %i.am = fcmp reassoc nsz arcp contract afn une float %i.al, f0x7F7FFFFF
  br i1 %i.am, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.an = load i32, ptr %i.g, align 4, !tbaa !82
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !83
  %i.ap = tail call i32 @dt_iop_color_picker_get_active_cst(ptr noundef %i.ao) #18 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %bb.j, label %_blendif_colorpicker_cst.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = load i32, ptr %i.g, align 4, !tbaa !82
  %switch.tableidx = add i32 %i.ar, -2            ; 2 uses
  %i.as = icmp ult i32 %switch.tableidx, 3
  br i1 %i.as, label %switch.lookup, label %_blendif_colorpicker_cst.exit

switch.lookup:                                    ; preds = %bb.j
  %i.at = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._update_gradient_slider_pickers, i64 %i.at
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_blendif_colorpicker_cst.exit

_blendif_colorpicker_cst.exit:                    ; preds = %switch.lookup, %bb.j, %bb.i
  %.0.i70 = phi i32 [ -1, %bb.j ], [ %switch.ext, %switch.lookup ], [ %i.ap, %bb.i ] ; 4 uses
  %i.au = icmp eq i32 %i.an, 4
  %i.av = load ptr, ptr %i.x, align 8, !tbaa !84  ; 2 uses
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_blendif_colorpicker_cst.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2760
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !220
  %i.ay = tail call ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef nonnull %1, ptr noundef %i.ax) #18
  br label %bb.m

bb.l:                                             ; preds = %_blendif_colorpicker_cst.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 2088
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !111
  %i.bb = tail call ptr @dt_ioppr_get_iop_work_profile_info(ptr noundef nonnull %1, ptr noundef %i.ba) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = phi ptr [ %i.ay, %bb.k ], [ %i.bb, %bb.l ] ; 9 uses
  %i.bd = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  call fastcc void @_blendif_scale(ptr noundef nonnull %i.f, i32 noundef %.0.i70, ptr noundef nonnull %.062, ptr noundef %i.a, ptr noundef %i.bc, i32 noundef %i.bd)
  call fastcc void @_blendif_scale(ptr noundef nonnull %i.f, i32 noundef %.0.i70, ptr noundef nonnull %.061, ptr noundef %i.b, ptr noundef %i.bc, i32 noundef %i.bd)
  call fastcc void @_blendif_scale(ptr noundef nonnull %i.f, i32 noundef %.0.i70, ptr noundef nonnull %.060, ptr noundef %i.c, ptr noundef %i.bc, i32 noundef %i.bd)
  store <8 x float> splat (float -1.000000e+00), ptr %i.d, align 16, !tbaa !79
  switch i32 %.0.i70, label %_blendif_cook.exit [
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
  ]

bb.n:                                             ; preds = %bb.m
  %i.be = load <2 x float>, ptr %.062, align 4, !tbaa !79
  store <2 x float> %i.be, ptr %i.d, align 16, !tbaa !79
  %i.bf = getelementptr inbounds nuw i8, ptr %.062, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !79
  store float %i.bg, ptr %i.ab, align 8, !tbaa !79
  br label %_blendif_cook.exit

bb.o:                                             ; preds = %bb.m
  %i.bh = icmp eq ptr %i.bc, null
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %.062, i64 4
  %i.bj = load <2 x float>, ptr %.062, align 4, !tbaa !79 ; 2 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, 3.000000e-01
  %2 = load <2 x float>, ptr %i.bi, align 4, !tbaa !79 ; 2 uses
  %3 = fmul reassoc nsz arcp contract afn <2 x float> %2, <float 5.900000e-01, float 1.100000e-01> ; 2 uses
  %4 = extractelement <2 x float> %3, i64 0
  %5 = fadd reassoc nsz arcp contract afn float %4, %i.bl
  %6 = extractelement <2 x float> %3, i64 1
  %i.bm = fadd reassoc nsz arcp contract afn float %5, %6
  %i.bn = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bo = insertelement <4 x float> %i.bn, float %i.bm, i64 0
  %7 = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %8 = shufflevector <4 x float> %i.bo, <4 x float> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 576
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 712
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 768
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 704
  %i.bt = load i32, ptr %i.bs, align 64, !tbaa !126
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 852
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !127
  %i.bw = tail call reassoc nsz arcp contract afn fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr noundef nonnull readonly %.062, ptr noundef readonly %i.bp, ptr noundef readonly %i.bq, ptr noundef readonly %i.br, i32 noundef %i.bt, i32 noundef %i.bv)
  %.pre = load float, ptr %.062, align 4, !tbaa !79
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.062, i64 4
  %i.bx = load <2 x float>, ptr %.phi.trans.insert, align 4, !tbaa !79
  %i.by = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.bz = insertelement <4 x float> %i.by, float %.pre, i64 1
  %i.ca = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x float> %i.bz, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cc = phi <4 x float> [ %i.cb, %bb.q ], [ %8, %bb.p ]
  %i.cd = fmul reassoc nsz arcp contract afn <4 x float> %i.cc, splat (float 1.000000e+02)
  store <4 x float> %i.cd, ptr %i.d, align 16, !tbaa !79
  br label %_blendif_cook.exit

bb.s:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %.062, i64 4
  %i.cf = load <2 x float>, ptr %i.ce, align 4, !tbaa !79
  %i.cg = fmul reassoc nsz arcp contract afn <2 x float> %i.cf, <float f0x3F0D6BDE, float 3.600000e+02>
  store <2 x float> %i.cg, ptr %i.aa, align 4, !tbaa !79
  br label %_blendif_cook.exit

bb.t:                                             ; preds = %bb.m
  %i.ch = load <2 x float>, ptr %.062, align 4, !tbaa !79
  %i.ci = fmul reassoc nsz arcp contract afn <2 x float> %i.ch, <float 3.600000e+02, float 1.000000e+02>
  store <2 x float> %i.ci, ptr %i.z, align 16, !tbaa !79
  %i.cj = getelementptr inbounds nuw i8, ptr %.062, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !79
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ck, 1.000000e+02
  store float %i.cl, ptr %i.y, align 8, !tbaa !79
  br label %_blendif_cook.exit

bb.u:                                             ; preds = %bb.m
  %i.cm = load <2 x float>, ptr %.062, align 4, !tbaa !79
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, splat (float 1.000000e+02)
  store <2 x float> %i.cn, ptr %i.z, align 16, !tbaa !79
  %i.co = getelementptr inbounds nuw i8, ptr %.062, i64 8
  %i.cp = load float, ptr %i.co, align 4, !tbaa !79
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, 3.600000e+02
  store float %i.cq, ptr %i.y, align 8, !tbaa !79
  br label %_blendif_cook.exit

_blendif_cook.exit:                               ; preds = %bb.m, %bb.n, %bb.r, %bb.s, %bb.t, %bb.u
  %i.cr = load i32, ptr %i.ac, align 8, !tbaa !76
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !79 ; 2 uses
  %i.cv = fcmp reassoc nsz arcp contract afn olt float %i.cu, 1.000000e+01
  %i.cw = select i1 %i.cv, i32 2, i32 1
  %i.cx = fpext reassoc nsz arcp contract afn float %i.cu to double
  %i.cy = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.204, i32 noundef %i.cw, double noundef %i.cx) #18 ; 2 uses
  %i.cz = getelementptr inbounds nuw [72 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !115
  %i.db = load i32, ptr %i.ac, align 8, !tbaa !76
  %i.dc = sext i32 %i.db to i64                   ; 3 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !79 ; 3 uses
  %i.df = fcmp reassoc nsz arcp contract afn ogt float %i.de, 1.000000e+00
  %i.dg = fcmp reassoc nsz arcp contract afn olt float %i.de, 0.000000e+00
  %i.dh = fpext reassoc nsz arcp contract afn float %i.de to double
  %spec.select = select i1 %i.dg, double 0.000000e+00, double %i.dh
  %i.di = select i1 %i.df, double 1.000000e+00, double %spec.select
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dc
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !79 ; 3 uses
  %i.dl = fcmp reassoc nsz arcp contract afn ogt float %i.dk, 1.000000e+00
  %i.dm = fcmp reassoc nsz arcp contract afn olt float %i.dk, 0.000000e+00
  %i.dn = fpext reassoc nsz arcp contract afn float %i.dk to double
  %spec.select68 = select i1 %i.dm, double 0.000000e+00, double %i.dn
  %i.do = select i1 %i.dl, double 1.000000e+00, double %spec.select68
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dc
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !79 ; 3 uses
  %i.dr = fcmp reassoc nsz arcp contract afn ogt float %i.dq, 1.000000e+00
  %i.ds = fcmp reassoc nsz arcp contract afn olt float %i.dq, 0.000000e+00
  %i.dt = fpext reassoc nsz arcp contract afn float %i.dq to double
  %spec.select69 = select i1 %i.ds, double 0.000000e+00, double %i.dt
  %i.du = select i1 %i.dr, double 1.000000e+00, double %spec.select69
  tail call void @dtgtk_gradient_slider_multivalue_set_picker_meanminmax(ptr noundef %i.da, double noundef %i.di, double noundef %i.do, double noundef %i.du) #18
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !128
  tail call void @gtk_label_set_text(ptr noundef %i.dw, ptr noundef %i.cy) #18
  tail call void @g_free(ptr noundef %i.cy) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.w

bb.v:                                             ; preds = %bb.h, %bb.g
  %i.dx = getelementptr inbounds nuw [72 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !115
  tail call void @dtgtk_gradient_slider_multivalue_set_picker(ptr noundef %i.dy, double noundef +qnan) #18
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !128
  tail call void @gtk_label_set_text(ptr noundef %i.ea, ptr noundef nonnull @.str.123) #18
  br label %bb.w

bb.w:                                             ; preds = %_blendif_cook.exit, %bb.v
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not78 = icmp eq i64 %indvars.iv, 0
  br i1 %.not78, label %bb.e, label %bb.f
}

declare double @dtgtk_gradient_slider_multivalue_get_value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_label_set_text(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_blendop_blendif_update_tab(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !28  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !75  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !129
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = atomicrmw add ptr %i.i, i32 1 seq_cst, align 4 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 384 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.m = sext i32 %1 to i64                       ; 3 uses
  %i.n = getelementptr inbounds [80 x i8], ptr %i.l, i64 %i.m ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 632 ; 2 uses
  %i.u = getelementptr i8, ptr %i.c, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 20 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 396
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.m
  br label %bb.c

bb.b:                                             ; preds = %bb.f
  call void @_update_gradient_slider_pickers(ptr poison, ptr noundef %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !221 ; 2 uses
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.f
  %indvars.iv99 = phi i64 [ 1, %bb.a ], [ %indvars.iv.next100, %bb.f ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv99
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !81 ; 2 uses
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %indvars.iv99 ; 21 uses
  %i.ah = shl i32 %i.af, 2
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ai ; 5 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ai ; 4 uses
  %i.al = load i32, ptr %i.s, align 4, !tbaa !121
  %i.am = add i32 %i.af, 16
  %i.an = shl nuw i32 1, %i.am
  %i.ao = and i32 %i.an, %i.al
  %.not88 = icmp eq i32 %i.ao, 0                  ; 3 uses
  %i.ap = zext i1 %.not88 to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !130
  call void @gtk_toggle_button_set_active(ptr noundef %i.ar, i32 noundef %i.ap) #18
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !115
  %i.at = select i1 %.not88, i32 10, i32 12       ; 2 uses
  call void @dtgtk_gradient_slider_multivalue_set_marker(ptr noundef %i.as, i32 noundef %i.at, i32 noundef 0) #18
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !115
  %i.av = select i1 %.not88, i32 13, i32 11       ; 2 uses
  call void @dtgtk_gradient_slider_multivalue_set_marker(ptr noundef %i.au, i32 noundef %i.av, i32 noundef 1) #18
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !115
  call void @dtgtk_gradient_slider_multivalue_set_marker(ptr noundef %i.aw, i32 noundef %i.av, i32 noundef 2) #18
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !115
  call void @dtgtk_gradient_slider_multivalue_set_marker(ptr noundef %i.ax, i32 noundef %i.at, i32 noundef 3) #18
  %i.ay = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.t) #18 ; 0 uses
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !115
  %i.ba = load float, ptr %i.aj, align 4, !tbaa !79
  %i.bb = fpext reassoc nsz arcp contract afn float %i.ba to double
  call void @dtgtk_gradient_slider_multivalue_set_value(ptr noundef %i.az, double noundef %i.bb, i32 noundef 0) #18
  %i.bc = load ptr, ptr %i.ag, align 8, !tbaa !115
  %i.bd = load float, ptr %i.ak, align 4, !tbaa !79
  %i.be = fpext reassoc nsz arcp contract afn float %i.bd to double
  call void @dtgtk_gradient_slider_multivalue_set_resetvalue(ptr noundef %i.bc, double noundef %i.be, i32 noundef 0) #18
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !115
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !79
  %i.bi = fpext reassoc nsz arcp contract afn float %i.bh to double
end_hunk_0
begin_hunk_1_@_blendop_blendif_feathering_callback:bb.a
  %i.e = icmp ne ptr %1, null
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !137
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 768
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !262
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.l, align 4, !tbaa !262
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !123
  tail call void @dt_dev_add_history_item(ptr noundef %i.o, ptr noundef nonnull %i.i, i32 noundef 1) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  ret void
}

declare i32 @dt_iop_color_picker_get_active_cst(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add nsw i32 %4, -1
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to float ; 9 uses
  %i.c = add nsw i32 %4, -2
  %i.d = sitofp reassoc nsz arcp contract afn i32 %i.c to float ; 6 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !264    ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !79
  %i.g = fcmp reassoc nsz arcp contract afn ult float %i.f, 0.000000e+00
  %i.h = load float, ptr %0, align 4, !tbaa !79   ; 4 uses
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp reassoc nsz arcp contract afn olt float %i.h, 1.000000e+00
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = fmul reassoc nsz arcp contract afn float %i.h, %i.b ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 0.000000e+00
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.j, %i.b
  %..i.i = select reassoc nsz arcp contract afn i1 %i.l, float %i.j, float %i.b
  %i.m = select reassoc nsz arcp contract afn i1 %i.k, float %..i.i, float 0.000000e+00 ; 3 uses
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.m, %i.d
  %i.o = select reassoc nsz arcp contract afn i1 %i.n, float %i.m, float %i.d
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.r = fsub reassoc nnan nsz arcp contract afn float %i.m, %i.q
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !79 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !79
  %i.x = fsub reassoc nsz arcp contract afn float %i.w, %i.u
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.r
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.u
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !79
  %i.ac = load float, ptr %3, align 4, !tbaa !79
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !79
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ad, float %i.af)
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.ai = phi reassoc nsz arcp contract afn float [ %i.ah, %bb.e ], [ %i.z, %bb.d ], [ %i.h, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !264 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !79
  %i.am = fcmp reassoc nsz arcp contract afn ult float %i.al, 0.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !79 ; 4 uses
  br i1 %i.am, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.ao, 1.000000e+00
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !79
  %i.at = load float, ptr %i.aq, align 4, !tbaa !79
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, %i.ao
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aw = load float, ptr %i.av, align 4, !tbaa !79
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.au, float %i.aw)
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.as
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.az = fmul reassoc nsz arcp contract afn float %i.ao, %i.b ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 0.000000e+00
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %i.az, %i.b
  %..i.1.i = select reassoc nsz arcp contract afn i1 %i.bb, float %i.az, float %i.b
  %i.bc = select reassoc nsz arcp contract afn i1 %i.ba, float %..i.1.i, float 0.000000e+00 ; 3 uses
  %i.bd = fcmp reassoc nsz arcp contract afn olt float %i.bc, %i.d
  %i.be = select reassoc nsz arcp contract afn i1 %i.bd, float %i.bc, float %i.d
  %i.bf = fptosi float %i.be to i32               ; 2 uses
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.bh = fsub reassoc nnan nsz arcp contract afn float %i.bc, %i.bg
  %i.bi = sext i32 %i.bf to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.bi ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !79 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !79
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.bk
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bh
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bk
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.bq = phi reassoc nsz arcp contract afn float [ %i.ay, %bb.h ], [ %i.bp, %bb.i ], [ %i.ao, %bb.f ]
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !264 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !79
  %i.bu = fcmp reassoc nsz arcp contract afn ult float %i.bt, 0.000000e+00
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !79 ; 4 uses
  br i1 %i.bu, label %dt_ioppr_apply_trc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %i.bw, 1.000000e+00
  br i1 %i.bx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !79
  %i.cb = load float, ptr %i.by, align 4, !tbaa !79
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.bw
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !79
  %i.cf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cc, float %i.ce)
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.ca
  br label %dt_ioppr_apply_trc.exit

bb.m:                                             ; preds = %bb.k
  %i.ch = fmul reassoc nsz arcp contract afn float %i.bw, %i.b ; 3 uses
  %i.ci = fcmp reassoc nsz arcp contract afn ogt float %i.ch, 0.000000e+00
  %i.cj = fcmp reassoc nsz arcp contract afn olt float %i.ch, %i.b
  %..i.2.i = select reassoc nsz arcp contract afn i1 %i.cj, float %i.ch, float %i.b
  %i.ck = select reassoc nsz arcp contract afn i1 %i.ci, float %..i.2.i, float 0.000000e+00 ; 3 uses
  %i.cl = fcmp reassoc nsz arcp contract afn olt float %i.ck, %i.d
  %i.cm = select reassoc nsz arcp contract afn i1 %i.cl, float %i.ck, float %i.d
  %i.cn = fptosi float %i.cm to i32               ; 2 uses
  %i.co = sitofp reassoc nsz arcp contract afn i32 %i.cn to float
  %i.cp = fsub reassoc nnan nsz arcp contract afn float %i.ck, %i.co
  %i.cq = sext i32 %i.cn to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cq ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !79 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cr, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !79
  %i.cv = fsub reassoc nsz arcp contract afn float %i.cu, %i.cs
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.cp
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cw, %i.cs
  br label %dt_ioppr_apply_trc.exit

dt_ioppr_apply_trc.exit:                          ; preds = %bb.j, %bb.l, %bb.m
  %i.cy = phi reassoc nsz arcp contract afn float [ %i.cg, %bb.l ], [ %i.cx, %bb.m ], [ %i.bw, %bb.j ]
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.da = load float, ptr %i.cz, align 4, !tbaa !79
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, %i.ai
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !79
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.bq
  %i.df = fadd reassoc nsz arcp contract afn float %i.de, %i.db
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !79
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.cy
  %i.dj = fadd reassoc nsz arcp contract afn float %i.df, %i.di
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !79
  %i.dm = load float, ptr %0, align 4, !tbaa !79
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load <2 x float>, ptr %i.do, align 4, !tbaa !79
  %7 = load <2 x float>, ptr %i.dp, align 4, !tbaa !79
  %8 = fmul reassoc nsz arcp contract afn <2 x float> %7, %6 ; 2 uses
  %9 = extractelement <2 x float> %8, i64 0
  %10 = fadd reassoc nsz arcp contract afn float %9, %i.dn
  %11 = extractelement <2 x float> %8, i64 1
  %i.dq = fadd reassoc nsz arcp contract afn float %10, %11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %dt_ioppr_apply_trc.exit
  %.0 = phi nsz float [ %i.dj, %dt_ioppr_apply_trc.exit ], [ %i.dq, %bb.n ]
  ret float %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare void @dt_iop_color_picker_set_cst(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gtk_toggle_button_get_active(ptr noundef) local_unnamed_addr #2

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #2

declare void @dtgtk_gradient_slider_multivalue_set_picker_meanminmax(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @dtgtk_gradient_slider_multivalue_set_picker(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #12

declare void @dtgtk_gradient_slider_multivalue_set_marker(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @dtgtk_gradient_slider_multivalue_set_resetvalue(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare void @dtgtk_gradient_slider_multivalue_clear_stops(ptr noundef) local_unnamed_addr #2

declare void @dtgtk_gradient_slider_multivalue_set_stop(ptr noundef, float noundef, ptr noundef byval(%struct._GdkRGBA) align 8) local_unnamed_addr #2

declare void @dtgtk_gradient_slider_multivalue_set_increment(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_blendop_blendif_highlight_changed_tabs(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !28  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !144
  %.not40 = icmp eq ptr %i.e, null
  br i1 %.not40, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !129  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !75  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 68 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 68 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.o = phi ptr [ %i.d, %.preheader.lr.ph ], [ %i.bb, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i32, ptr %i.l, align 4, !tbaa !121
  %i.r = load i32, ptr %i.m, align 4, !tbaa !121
  %i.s = xor i32 %i.r, %i.q                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !81   ; 2 uses
  %i.v = shl i32 %i.u, 2
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.w
  %i.z = load <4 x float>, ptr %i.x, align 4, !tbaa !79
  %i.aa = load <4 x float>, ptr %i.y, align 4, !tbaa !79
  %i.ab = fcmp reassoc nsz arcp contract afn une <4 x float> %i.z, %i.aa
  %i.ac = bitcast <4 x i1> %i.ab to i4
  %i.ad = icmp ne i4 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = add i32 %i.u, 16
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = and i32 %i.s, %i.ag
  %i.ai = load i32, ptr %i.p, align 4, !tbaa !81  ; 2 uses
  %i.aj = shl i32 %i.ai, 2
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ak
  %i.an = load <4 x float>, ptr %i.al, align 4, !tbaa !79
  %i.ao = load <4 x float>, ptr %i.am, align 4, !tbaa !79
  %i.ap = fcmp reassoc nsz arcp contract afn une <4 x float> %i.an, %i.ao
  %i.aq = add i32 %i.ai, 16
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = and i32 %i.s, %i.ar
  %i.at = bitcast <4 x i1> %i.ap to i4
  %i.au = icmp ne i4 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %op.rdx = or i32 %i.ah, %i.av
  %op.rdx46 = or i32 %i.as, %i.ae
  %op.rdx47 = or i32 %op.rdx, %op.rdx46
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !143 ; 2 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32
  %i.ay = tail call ptr @gtk_notebook_get_nth_page(ptr noundef %i.aw, i32 noundef %i.ax) #18
  %i.az = tail call ptr @gtk_notebook_get_tab_label(ptr noundef %i.aw, ptr noundef %i.ay) #18 ; 2 uses
  %.not35 = icmp eq i32 %op.rdx47, 0
  br i1 %.not35, label %bb.c, label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.preheader
  tail call void @dt_gui_add_class(ptr noundef %i.az, ptr noundef nonnull @.str.206) #18
  br label %bb.d

bb.c:                                             ; preds = %.preheader
  tail call void @dt_gui_remove_class(ptr noundef %i.az, ptr noundef nonnull @.str.206) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.bb = getelementptr inbounds nuw [80 x i8], ptr %i.ba, i64 %indvars.iv.next ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !144
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %._crit_edge, label %.preheader
}

declare void @dtgtk_gradient_slider_multivalue_set_scale_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gtk_notebook_get_tab_label(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_gui_remove_class(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal float @_log10_scale_callback(ptr nofree readnone captures(none) %0, float noundef %1, i32 noundef %2) #13 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = fcmp reassoc nsz arcp contract afn ogt float %1, 1.000000e+00
  %i.b = fcmp reassoc nsz arcp contract afn olt float %1, f0x38D1B717
  %i.c = select reassoc nsz arcp contract afn i1 %i.b, float f0x38D1B717, float %1
  %i.d = select reassoc nsz arcp contract afn i1 %i.a, float 1.000000e+00, float %i.c
  %i.e = fpext reassoc nsz arcp contract afn float %i.d to double
  %i.f = tail call reassoc nsz arcp contract afn double @llvm.log10.f64(double %i.e)
  %i.g = fmul reassoc nsz arcp contract afn double %i.f, 2.500000e-01
  %i.h = fadd reassoc nsz arcp contract afn double %i.g, 1.000000e+00
  %i.i = fptrunc reassoc nsz arcp contract afn double %i.h to float
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = fmul reassoc nsz arcp contract afn float %1, 4.000000e+00
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, -4.000000e+00
  %i.l = fpext reassoc nsz arcp contract afn float %i.k to double
  %i.m = fmul reassoc nsz arcp contract afn double %i.l, f0x40026BB1BBB55516
  %i.n = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.m) ; 2 uses
  %.inv = fcmp reassoc nsz arcp contract afn oge double %i.n, 1.000000e+00
  %i.o = select i1 %.inv, double 1.000000e+00, double %i.n ; 2 uses
  %i.p = fptrunc double %i.o to float
  %i.q = fcmp reassoc nsz arcp contract afn ole double %i.o, f0x3F1A36E2EFFFFFFF
  %spec.store.select = select i1 %i.q, float 0.000000e+00, float %i.p ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn oge float %spec.store.select, f0x3F7FF972
  %spec.store.select1 = select i1 %i.r, float 1.000000e+00, float %spec.store.select
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi nsz float [ %spec.store.select1, %bb.c ], [ %i.i, %bb.b ], [ %1, %bb.a ]
  ret float %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal float @_magnifier_scale_callback(ptr nofree readnone captures(none) %0, float noundef %1, i32 noundef %2) #13 {
bb.a:
  %i.a = tail call reassoc nsz arcp contract afn double @llvm.tanh.f64(double 3.000000e+00)
  %i.b = fptrunc reassoc nsz arcp contract afn double %i.a to float ; 2 uses
  switch i32 %2, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = fdiv reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.b
  %i.d = fpext reassoc nnan nsz arcp contract afn float %i.c to double
  %i.e = fcmp reassoc nsz arcp contract afn ogt float %1, 1.000000e+00
  %i.f = fcmp reassoc nsz arcp contract afn olt float %1, 0.000000e+00
  %i.g = select reassoc nsz arcp contract afn i1 %i.f, float 0.000000e+00, float %1
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, 6.000000e+00
end_hunk_1
