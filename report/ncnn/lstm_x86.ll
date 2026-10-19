Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86?download=true
inline.NumInlined: 29
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ncnn8LSTM_x8620create_pipeline_int8ERKNS_6OptionE:bb.a

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !22 ; 3 uses
  %.not3.i6 = icmp eq ptr %i.bu, null
  %i.bv = load ptr, ptr %i.q, align 8, !tbaa !23  ; 3 uses
  br i1 %.not3.i6, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef %i.bv), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit7

bb.u:                                             ; preds = %bb.s
  %.not.i22 = icmp eq ptr %i.bv, null
  br i1 %.not.i22, label %_ZN4ncnn3Mat7releaseEv.exit7, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.bv) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit7

_ZN4ncnn3Mat7releaseEv.exit7:                     ; preds = %bb.v, %bb.u, %_ZN4ncnn3Mat7releaseEv.exit10, %bb.r, %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i64 0, ptr %i.ca, align 8, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.q, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bz, i8 0, i64 20, i1 false)
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit7
  %i.cd = atomicrmw add ptr %i.cc, i32 -1 acq_rel, align 4
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.x, label %_ZN4ncnn3Mat7releaseEv.exit

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !22 ; 3 uses
  %.not3.i = icmp eq ptr %i.cg, null
  %i.ch = load ptr, ptr %i.s, align 8, !tbaa !23  ; 3 uses
  br i1 %.not3.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !15
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef %i.ch), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.z:                                             ; preds = %bb.x
  %.not.i24 = icmp eq ptr %i.ch, null
  br i1 %.not.i24, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.ch) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.aa, %bb.z, %_ZN4ncnn3Mat7releaseEv.exit7, %bb.w, %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i64 0, ptr %i.cm, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.s, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cl, i8 0, i64 20, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn8LSTM_x8615create_pipelineERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !42     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !42
  %i.h = load i32, ptr %0, align 4, !tbaa !42     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !42
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !42
  %i.k = load i32, ptr %i.a, align 4, !tbaa !42   ; 2 uses
  %.not249 = icmp sgt i32 %i.k, %i.j
  br i1 %.not249, label %._crit_edge251.split, label %.noexc124.lr.ph

.noexc124.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 348
  %i.n = load i32, ptr %i.m, align 4, !tbaa !62, !noalias !192
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !23, !noalias !192 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24, !noalias !192 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 320
  %i.s = load i64, ptr %i.r, align 8, !tbaa !56, !noalias !192 ; 11 uses
  %factor.op.mul = mul i64 %i.q, %i.s
  %i.t = sext i32 %i.n to i64                     ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 376
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 420
  %i.w = load i32, ptr %i.v, align 4, !tbaa !62, !noalias !193
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !23, !noalias !193
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 440
  %i.z = load i64, ptr %i.y, align 8, !tbaa !24, !noalias !193
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 392
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !56, !noalias !193 ; 2 uses
  %factor.op.mul252 = mul i64 %i.z, %i.ab
  %i.ac = sext i32 %i.w to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 276
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !62, !noalias !194
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !23, !noalias !194 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24, !noalias !194 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !56, !noalias !194 ; 11 uses
  %factor.op.mul254 = mul i64 %i.ai, %i.ak
  %i.al = sext i32 %i.af to i64                   ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 664
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 708
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !62, !noalias !195
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !23, !noalias !195 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 728
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !24, !noalias !195 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 680
  %i.at = load i64, ptr %i.as, align 8, !tbaa !56, !noalias !195 ; 5 uses
  %factor.op.mul256 = mul i64 %i.ar, %i.at
  %i.au = sext i32 %i.ao to i64                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 736
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !23, !noalias !196
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 800
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !196
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 752
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !56, !noalias !196
  %factor.op.mul258 = mul i64 %i.ay, %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 808
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 852
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !62, !noalias !197
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !23, !noalias !197 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 872
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !24, !noalias !197 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 824
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !56, !noalias !197 ; 5 uses
  %factor.op.mul260 = mul i64 %i.bg, %i.bi
  %i.bj = sext i32 %i.bd to i64                   ; 3 uses
  %i.bk = mul i64 %i.ab, %i.ac                    ; 3 uses
  %i.bl = shl i64 %i.bk, 1
  %i.bm = mul i64 %i.bk, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 220
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !44 ; 4 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  %i.bq = mul i64 %i.s, %i.t                      ; 4 uses
  %i.br = mul i64 %i.ak, %i.al                    ; 4 uses
  %i.bs = mul i64 %i.at, %i.au
  %i.bt = mul i64 %i.bi, %i.bj
  br i1 %i.bp, label %.noexc124.lr.ph.split, label %._crit_edge251.split

.noexc124.lr.ph.split:                            ; preds = %.noexc124.lr.ph
  %i.bu = mul i32 %i.bo, 3
  %i.bv = shl nuw i32 %i.bo, 1
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.bx = load i32, ptr %4, align 4, !tbaa !42    ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 0
  %i.bz = load i32, ptr %i.bw, align 8, !tbaa !45 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  %i.cb = zext nneg i32 %i.bo to i64              ; 12 uses
  %i.cc = zext i32 %i.bv to i64                   ; 5 uses
  %i.cd = zext i32 %i.bu to i64                   ; 5 uses
  %i.ce = sext i32 %i.k to i64                    ; 5 uses
  %i.cf = add nsw i32 %i.j, 1
  %wide.trip.count = zext i32 %i.bx to i64        ; 7 uses
  %wide.trip.count266 = zext i32 %i.bz to i64     ; 7 uses
  %i.cg = add nsw i64 %i.cb, -1                   ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.bj
  %i.ci = mul i64 %i.bg, %i.ce
  %i.cj = add i64 %i.ch, %i.ci
  %i.ck = mul i64 %i.bi, %i.cj
  %i.cl = shl nuw nsw i64 %wide.trip.count266, 4
  %i.cm = mul i64 %i.bg, %i.bi
  %i.cn = mul i64 %i.bi, %i.bj
  %i.co = mul i64 %i.ai, %i.ce                    ; 7 uses
  %i.cp = mul nsw i64 %i.al, %i.cd
  %i.cq = add i64 %i.co, %i.cp
  %i.cr = mul i64 %i.ak, %i.cq
  %i.cs = mul i64 %i.ai, %i.ak
  %i.ct = add nuw nsw i64 %i.cb, %i.cd
  %i.cu = add nsw i64 %i.ct, -1
  %i.cv = mul i64 %i.cu, %i.al
  %i.cw = add i64 %i.cv, %i.co
  %i.cx = mul i64 %i.ak, %i.cw
  %i.cy = shl nuw nsw i64 %wide.trip.count266, 2  ; 4 uses
  %i.cz = mul i64 %i.ak, %i.al
  %i.da = mul nsw i64 %i.al, %i.cc
  %i.db = add i64 %i.co, %i.da
  %i.dc = mul i64 %i.ak, %i.db
  %i.dd = add nuw nsw i64 %i.cb, %i.cc
  %i.de = add nsw i64 %i.dd, -1
  %i.df = mul i64 %i.de, %i.al
  %i.dg = add i64 %i.df, %i.co
  %i.dh = mul i64 %i.ak, %i.dg
  %i.di = mul nsw i64 %i.al, %i.cb
  %i.dj = add i64 %i.co, %i.di
  %i.dk = mul i64 %i.ak, %i.dj
  %i.dl = shl nuw nsw i64 %i.cb, 1
  %i.dm = add nsw i64 %i.dl, -1
  %i.dn = mul i64 %i.dm, %i.al
  %i.do = add i64 %i.dn, %i.co
  %i.dp = mul i64 %i.ak, %i.do
  %i.dq = mul nsw i64 %i.cg, %i.al
  %i.dr = add i64 %i.dq, %i.co
  %i.ds = mul i64 %i.ak, %i.dr
  %i.dt = add nsw i64 %i.cb, -1                   ; 2 uses
  %i.du = mul nsw i64 %i.dt, %i.au
  %i.dv = mul i64 %i.ar, %i.ce
  %i.dw = add i64 %i.du, %i.dv
  %i.dx = mul i64 %i.at, %i.dw
  %i.dy = shl nuw nsw i64 %wide.trip.count, 4
  %i.dz = mul i64 %i.ar, %i.at
  %i.ea = mul i64 %i.at, %i.au
  %i.eb = mul i64 %i.q, %i.ce                     ; 7 uses
  %i.ec = mul nsw i64 %i.t, %i.cd
  %i.ed = add i64 %i.eb, %i.ec
  %i.ee = mul i64 %i.s, %i.ed
  %i.ef = mul i64 %i.q, %i.s
  %i.eg = add nuw nsw i64 %i.cb, %i.cd
  %i.eh = add nsw i64 %i.eg, -1
  %i.ei = mul i64 %i.eh, %i.t
  %i.ej = add i64 %i.ei, %i.eb
  %i.ek = mul i64 %i.s, %i.ej
  %i.el = shl nuw nsw i64 %wide.trip.count, 2     ; 4 uses
  %i.em = mul i64 %i.s, %i.t
  %i.en = mul nsw i64 %i.t, %i.cc
  %i.eo = add i64 %i.eb, %i.en
  %i.ep = mul i64 %i.s, %i.eo
  %i.eq = add nuw nsw i64 %i.cb, %i.cc
  %i.er = add nsw i64 %i.eq, -1
  %i.es = mul i64 %i.er, %i.t
  %i.et = add i64 %i.es, %i.eb
  %i.eu = mul i64 %i.s, %i.et
  %i.ev = mul nsw i64 %i.t, %i.cb
  %i.ew = add i64 %i.eb, %i.ev
  %i.ex = mul i64 %i.s, %i.ew
  %i.ey = shl nuw nsw i64 %i.cb, 1
  %i.ez = add nsw i64 %i.ey, -1
  %i.fa = mul i64 %i.ez, %i.t
  %i.fb = add i64 %i.fa, %i.eb
  %i.fc = mul i64 %i.s, %i.fb
  %i.fd = mul nsw i64 %i.dt, %i.t
  %i.fe = add i64 %i.fd, %i.eb
  %i.ff = mul i64 %i.s, %i.fe
  %i.fg = getelementptr i8, ptr %i.ap, i64 %i.dx
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.dy
  %i.fi = getelementptr i8, ptr %i.o, i64 %i.ee
  %i.fj = getelementptr i8, ptr %i.o, i64 %i.ek
  %i.fk = getelementptr i8, ptr %i.fj, i64 %i.el
  %i.fl = getelementptr i8, ptr %i.o, i64 %i.ep
  %i.fm = getelementptr i8, ptr %i.o, i64 %i.eu
  %i.fn = getelementptr i8, ptr %i.fm, i64 %i.el
  %i.fo = getelementptr i8, ptr %i.o, i64 %i.ex
  %i.fp = getelementptr i8, ptr %i.o, i64 %i.fc
  %i.fq = getelementptr i8, ptr %i.fp, i64 %i.el
  %i.fr = getelementptr i8, ptr %i.o, i64 %i.ff
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.el
  %i.ft = getelementptr i8, ptr %i.be, i64 %i.ck
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.cl
  %i.fv = getelementptr i8, ptr %i.ag, i64 %i.cr
  %i.fw = getelementptr i8, ptr %i.ag, i64 %i.cx
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.cy
  %i.fy = getelementptr i8, ptr %i.ag, i64 %i.dc
  %i.fz = getelementptr i8, ptr %i.ag, i64 %i.dh
  %i.ga = getelementptr i8, ptr %i.fz, i64 %i.cy
  %i.gb = getelementptr i8, ptr %i.ag, i64 %i.dk
  %i.gc = getelementptr i8, ptr %i.ag, i64 %i.dp
  %i.gd = getelementptr i8, ptr %i.gc, i64 %i.cy
  %i.ge = getelementptr i8, ptr %i.ag, i64 %i.ds
  %i.gf = getelementptr i8, ptr %i.ge, i64 %i.cy
  %min.iters.check344 = icmp ult i32 %i.bx, 12
  %i.gg = or i64 %i.em, %i.ea
  %i.gh = icmp slt i64 %i.gg, 0
  %n.vec346 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.gi = shl nuw nsw i64 %n.vec346, 4
  %cmp.n357 = icmp eq i64 %n.vec346, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.gj = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i32 %i.bz, 12
  %i.gk = or i64 %i.cz, %i.cn
  %i.gl = icmp slt i64 %i.gk, 0
  %n.vec = and i64 %wide.trip.count266, 2147483644 ; 4 uses
  %i.gm = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count266
  %xtraiter362 = and i64 %wide.trip.count266, 1
  %lcmp.mod363.not = icmp eq i64 %xtraiter362, 0
  %i.gn = add nsw i64 %wide.trip.count266, -1
  br label %.noexc124

.noexc124:                                        ; preds = %.noexc124.lr.ph.split, %._ZN4ncnn3MatD2Ev.exit_crit_edge
  %indvar = phi i64 [ 0, %.noexc124.lr.ph.split ], [ %indvar.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge ] ; 5 uses
  %indvars.iv273 = phi i64 [ %i.ce, %.noexc124.lr.ph.split ], [ %indvars.iv.next274, %._ZN4ncnn3MatD2Ev.exit_crit_edge ] ; 7 uses
  %i.go = mul i64 %i.dz, %indvar
  %scevgep312.a = getelementptr i8, ptr %i.fh, i64 %i.go ; 4 uses
  %i.gp = mul i64 %i.ef, %indvar                  ; 7 uses
  %scevgep313.a = getelementptr i8, ptr %i.fi, i64 %i.gp
  %scevgep314 = getelementptr i8, ptr %i.fk, i64 %i.gp
  %scevgep315 = getelementptr i8, ptr %i.fl, i64 %i.gp
  %scevgep316 = getelementptr i8, ptr %i.fn, i64 %i.gp
  %scevgep317 = getelementptr i8, ptr %i.fo, i64 %i.gp
  %scevgep318 = getelementptr i8, ptr %i.fq, i64 %i.gp
  %scevgep319 = getelementptr i8, ptr %i.fs, i64 %i.gp
  %i.gq = mul i64 %i.cm, %indvar
  %scevgep = getelementptr i8, ptr %i.fu, i64 %i.gq ; 4 uses
  %i.gr = mul i64 %i.cs, %indvar                  ; 7 uses
  %scevgep282 = getelementptr i8, ptr %i.fv, i64 %i.gr
  %scevgep283 = getelementptr i8, ptr %i.fx, i64 %i.gr
  %scevgep284 = getelementptr i8, ptr %i.fy, i64 %i.gr
  %scevgep285 = getelementptr i8, ptr %i.ga, i64 %i.gr
  %scevgep286 = getelementptr i8, ptr %i.gb, i64 %i.gr
  %scevgep287 = getelementptr i8, ptr %i.gd, i64 %i.gr
  %scevgep288 = getelementptr i8, ptr %i.gf, i64 %i.gr
  %.reass = mul i64 %factor.op.mul, %indvars.iv273
  %i.gs = getelementptr i8, ptr %i.o, i64 %.reass ; 5 uses
  %.reass253 = mul i64 %factor.op.mul252, %indvars.iv273
  %i.gt = getelementptr inbounds nuw i8, ptr %i.x, i64 %.reass253 ; 4 uses
  %.reass255 = mul i64 %factor.op.mul254, %indvars.iv273
  %i.gu = getelementptr i8, ptr %i.ag, i64 %.reass255 ; 5 uses
  %.reass257 = mul i64 %factor.op.mul256, %indvars.iv273
  %i.gv = getelementptr i8, ptr %i.ap, i64 %.reass257 ; 5 uses
  %.reass259 = mul i64 %factor.op.mul258, %indvars.iv273
  %i.gw = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.reass259
  %.reass261 = mul i64 %factor.op.mul260, %indvars.iv273
  %i.gx = getelementptr i8, ptr %i.be, i64 %.reass261 ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.bk
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.bl
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.bm
  %bound0320 = icmp ult ptr %i.gv, %scevgep314
  %bound1321 = icmp ult ptr %scevgep313.a, %scevgep312.a
  %found.conflict322 = and i1 %bound0320, %bound1321
  %i.hb = or i1 %found.conflict322, %i.gh
  %bound0325 = icmp ult ptr %i.gv, %scevgep316
  %bound1326 = icmp ult ptr %scevgep315, %scevgep312.a
  %found.conflict327 = and i1 %bound0325, %bound1326
  %conflict.rdx330.a = or i1 %i.hb, %found.conflict327
  %bound0331 = icmp ult ptr %i.gv, %scevgep318
  %bound1332 = icmp ult ptr %scevgep317, %scevgep312.a
  %found.conflict333 = and i1 %bound0331, %bound1332
  %conflict.rdx336 = or i1 %conflict.rdx330.a, %found.conflict333
  %bound0337 = icmp ult ptr %i.gv, %scevgep319
  %bound1338 = icmp ult ptr %i.gs, %scevgep312.a
  %found.conflict339 = and i1 %bound0337, %bound1338
  %conflict.rdx342 = or i1 %conflict.rdx336, %found.conflict339
  %bound0 = icmp ult ptr %i.gx, %scevgep283
  %bound1 = icmp ult ptr %scevgep282, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.hc = or i1 %found.conflict, %i.gl
  %bound0290 = icmp ult ptr %i.gx, %scevgep285
  %bound1291 = icmp ult ptr %scevgep284, %scevgep
  %found.conflict292 = and i1 %bound0290, %bound1291
  %conflict.rdx = or i1 %i.hc, %found.conflict292
  %bound0295 = icmp ult ptr %i.gx, %scevgep287
  %bound1296 = icmp ult ptr %scevgep286, %scevgep
  %found.conflict297 = and i1 %bound0295, %bound1296
  %conflict.rdx300.a = or i1 %conflict.rdx, %found.conflict297
  %bound0301 = icmp ult ptr %i.gx, %scevgep288
  %bound1302 = icmp ult ptr %i.gu, %scevgep
  %found.conflict303 = and i1 %bound0301, %bound1302
  %conflict.rdx306 = or i1 %conflict.rdx300.a, %found.conflict303
  br label %bb.c

bb.c:                                             ; preds = %.noexc124, %._crit_edge
  %indvars.iv268 = phi i64 [ 0, %.noexc124 ], [ %indvars.iv.next269, %._crit_edge ] ; 12 uses
  %.077246 = phi ptr [ %i.gw, %.noexc124 ], [ %i.ho, %._crit_edge ] ; 5 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv268
  %i.he = load float, ptr %i.hd, align 4, !tbaa !60
  store float %i.he, ptr %.077246, align 4, !tbaa !60
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv268
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !60
  %i.hh = getelementptr inbounds nuw i8, ptr %.077246, i64 4
  store float %i.hg, ptr %i.hh, align 4, !tbaa !60
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv268
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !60
  %i.hk = getelementptr inbounds nuw i8, ptr %.077246, i64 8
  store float %i.hj, ptr %i.hk, align 4, !tbaa !60
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv268
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !60
  %i.hn = getelementptr inbounds nuw i8, ptr %.077246, i64 12
  store float %i.hm, ptr %i.hn, align 4, !tbaa !60
  %i.ho = getelementptr inbounds nuw i8, ptr %.077246, i64 16
  %i.hp = mul i64 %i.bq, %indvars.iv268
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hp ; 4 uses
  %i.hr = add nuw nsw i64 %indvars.iv268, %i.cb   ; 2 uses
  %i.hs = mul i64 %i.bq, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hs ; 4 uses
  %i.hu = add nuw nsw i64 %indvars.iv268, %i.cc   ; 2 uses
  %i.hv = mul i64 %i.bq, %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hv ; 4 uses
  %i.hx = add nuw nsw i64 %indvars.iv268, %i.cd   ; 2 uses
  %i.hy = mul i64 %i.bq, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hy ; 4 uses
  %i.ia = mul i64 %i.br, %indvars.iv268
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.ia ; 4 uses
  %i.ic = mul i64 %i.br, %i.hr
  %i.id = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.ic ; 4 uses
  %i.ie = mul i64 %i.br, %i.hu
  %i.if = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.ie ; 4 uses
  %i.ig = mul i64 %i.br, %i.hx
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.ig ; 4 uses
  %i.ii = mul i64 %i.bt, %indvars.iv268
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.ii ; 3 uses
  br i1 %i.by, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ik = mul i64 %i.bs, %indvars.iv268
  %i.il = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ik ; 3 uses
  %brmerge = select i1 %min.iters.check344, i1 true, i1 %conflict.rdx342
  br i1 %brmerge, label %.lr.ph.preheader361, label %vector.ph345

vector.ph345:                                     ; preds = %.lr.ph.preheader
  %i.im = getelementptr i8, ptr %i.il, i64 %i.gi
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph345
  %index348 = phi i64 [ 0, %vector.ph345 ], [ %index.next355, %vector.body347 ] ; 6 uses
  %i.in = shl i64 %index348, 4
  %next.gep349 = getelementptr i8, ptr %i.il, i64 %i.in
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %index348
  %wide.load350 = load <4 x float>, ptr %i.io, align 4, !tbaa !60, !alias.scope !198
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %index348
  %wide.load351 = load <4 x float>, ptr %i.ip, align 4, !tbaa !60, !alias.scope !199
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %index348
  %wide.load352 = load <4 x float>, ptr %i.iq, align 4, !tbaa !60, !alias.scope !200
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %index348
  %wide.load353 = load <4 x float>, ptr %i.ir, align 4, !tbaa !60, !alias.scope !201
  %i.is = shufflevector <4 x float> %wide.load350, <4 x float> %wide.load351, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.it = shufflevector <4 x float> %wide.load352, <4 x float> %wide.load353, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec354 = shufflevector <8 x float> %i.is, <8 x float> %i.it, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec354, ptr %next.gep349, align 4, !tbaa !60, !alias.scope !202, !noalias !203
  %index.next355 = add nuw i64 %index348, 4       ; 2 uses
  %i.iu = icmp eq i64 %index.next355, %n.vec346
  br i1 %i.iu, label %middle.block356, label %vector.body347, !llvm.loop !181

middle.block356:                                  ; preds = %vector.body347
  br i1 %cmp.n357, label %.preheader, label %.lr.ph.preheader361

.lr.ph.preheader361:                              ; preds = %.lr.ph.preheader, %middle.block356
  %indvars.iv.ph = phi i64 [ %n.vec346, %middle.block356 ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %.075241.ph = phi ptr [ %i.im, %middle.block356 ], [ %i.il, %.lr.ph.preheader ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader361
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.ph
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !60
  store float %i.iw, ptr %.075241.ph, align 4, !tbaa !60
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.ph
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !60
  %i.iz = getelementptr inbounds nuw i8, ptr %.075241.ph, i64 4
  store float %i.iy, ptr %i.iz, align 4, !tbaa !60
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv.ph
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !60
  %i.jc = getelementptr inbounds nuw i8, ptr %.075241.ph, i64 8
  store float %i.jb, ptr %i.jc, align 4, !tbaa !60
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv.ph
  %i.je = load float, ptr %i.jd, align 4, !tbaa !60
  %i.jf = getelementptr inbounds nuw i8, ptr %.075241.ph, i64 12
  store float %i.je, ptr %i.jf, align 4, !tbaa !60
  %i.jg = getelementptr inbounds nuw i8, ptr %.075241.ph, i64 16
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader361
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader361 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.075241.unr = phi ptr [ %.075241.ph, %.lr.ph.preheader361 ], [ %i.jg, %.lr.ph.prol ]
  %i.jh = icmp eq i64 %indvars.iv.ph, %i.gj
  br i1 %i.jh, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block356, %bb.c
  br i1 %i.ca, label %.lr.ph245.preheader, label %._crit_edge

.lr.ph245.preheader:                              ; preds = %.preheader
  %brmerge364 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx306
  br i1 %brmerge364, label %.lr.ph245.preheader360, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph245.preheader
  %i.ji = getelementptr i8, ptr %i.ij, i64 %i.gm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.jj = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.ij, i64 %i.jj
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %index
  %wide.load = load <4 x float>, ptr %i.jk, align 4, !tbaa !60, !alias.scope !204
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %index
  %wide.load307 = load <4 x float>, ptr %i.jl, align 4, !tbaa !60, !alias.scope !205
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %index
  %wide.load308 = load <4 x float>, ptr %i.jm, align 4, !tbaa !60, !alias.scope !206
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %index
  %wide.load309 = load <4 x float>, ptr %i.jn, align 4, !tbaa !60, !alias.scope !207
  %i.jo = shufflevector <4 x float> %wide.load, <4 x float> %wide.load307, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jp = shufflevector <4 x float> %wide.load308, <4 x float> %wide.load309, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.jo, <8 x float> %i.jp, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !60, !alias.scope !208, !noalias !209
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jq = icmp eq i64 %index.next, %n.vec
  br i1 %i.jq, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph245.preheader360

.lr.ph245.preheader360:                           ; preds = %.lr.ph245.preheader, %middle.block
  %indvars.iv263.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph245.preheader ] ; 7 uses
  %.074243.ph = phi ptr [ %i.ji, %middle.block ], [ %i.ij, %.lr.ph245.preheader ] ; 6 uses
  br i1 %lcmp.mod363.not, label %.lr.ph245.prol.loopexit, label %.lr.ph245.prol

.lr.ph245.prol:                                   ; preds = %.lr.ph245.preheader360
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv263.ph
  %i.js = load float, ptr %i.jr, align 4, !tbaa !60
  store float %i.js, ptr %.074243.ph, align 4, !tbaa !60
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv263.ph
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !60
  %i.jv = getelementptr inbounds nuw i8, ptr %.074243.ph, i64 4
  store float %i.ju, ptr %i.jv, align 4, !tbaa !60
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv263.ph
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !60
  %i.jy = getelementptr inbounds nuw i8, ptr %.074243.ph, i64 8
  store float %i.jx, ptr %i.jy, align 4, !tbaa !60
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv263.ph
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !60
  %i.kb = getelementptr inbounds nuw i8, ptr %.074243.ph, i64 12
  store float %i.ka, ptr %i.kb, align 4, !tbaa !60
  %i.kc = getelementptr inbounds nuw i8, ptr %.074243.ph, i64 16
  %indvars.iv.next264.prol = or disjoint i64 %indvars.iv263.ph, 1
  br label %.lr.ph245.prol.loopexit

.lr.ph245.prol.loopexit:                          ; preds = %.lr.ph245.prol, %.lr.ph245.preheader360
  %indvars.iv263.unr = phi i64 [ %indvars.iv263.ph, %.lr.ph245.preheader360 ], [ %indvars.iv.next264.prol, %.lr.ph245.prol ]
  %.074243.unr = phi ptr [ %.074243.ph, %.lr.ph245.preheader360 ], [ %i.kc, %.lr.ph245.prol ]
  %i.kd = icmp eq i64 %indvars.iv263.ph, %i.gn
  br i1 %i.kd, label %._crit_edge, label %.lr.ph245

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.075241 = phi ptr [ %i.lb, %.lr.ph ], [ %.075241.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !60
  store float %i.kf, ptr %.075241, align 4, !tbaa !60
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !60
  %i.ki = getelementptr inbounds nuw i8, ptr %.075241, i64 4
  store float %i.kh, ptr %i.ki, align 4, !tbaa !60
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !60
  %i.kl = getelementptr inbounds nuw i8, ptr %.075241, i64 8
  store float %i.kk, ptr %i.kl, align 4, !tbaa !60
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv
  %i.kn = load float, ptr %i.km, align 4, !tbaa !60
  %i.ko = getelementptr inbounds nuw i8, ptr %.075241, i64 12
  store float %i.kn, ptr %i.ko, align 4, !tbaa !60
  %i.kp = getelementptr inbounds nuw i8, ptr %.075241, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.next
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !60
  store float %i.kr, ptr %i.kp, align 4, !tbaa !60
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.next
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !60
  %i.ku = getelementptr inbounds nuw i8, ptr %.075241, i64 20
  store float %i.kt, ptr %i.ku, align 4, !tbaa !60
end_hunk_0
