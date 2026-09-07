Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/lzf_c?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lzf_compress:bb.a
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %.0213303, i64 13
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !15
  %.not255 = icmp eq i8 %i.cq, %i.cs
  br i1 %.not255, label %bb.s, label %.critedge.thread

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !15
  %i.cv = getelementptr inbounds nuw i8, ptr %.0213303, i64 14
  %i.cw = load i8, ptr %i.cv, align 2, !tbaa !15
  %.not256 = icmp eq i8 %i.cu, %i.cw
  br i1 %.not256, label %bb.t, label %.critedge.thread

bb.t:                                             ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aa, i64 15
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !15
  %i.cz = getelementptr inbounds nuw i8, ptr %.0213303, i64 15
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !15
  %.not257 = icmp eq i8 %i.cy, %i.da
  br i1 %.not257, label %bb.u, label %.critedge.thread

bb.u:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !15
  %i.dd = getelementptr inbounds nuw i8, ptr %.0213303, i64 16
  %i.de = load i8, ptr %i.dd, align 2, !tbaa !15
  %.not258 = icmp eq i8 %i.dc, %i.de
  br i1 %.not258, label %bb.v, label %.critedge.thread

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %i.aa, i64 17
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !15
  %i.dh = getelementptr inbounds nuw i8, ptr %.0213303, i64 17
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !15
  %.not259 = icmp eq i8 %i.dg, %i.di
  br i1 %.not259, label %bb.w, label %.critedge.thread

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aa, i64 18
  %i.dk = load i8, ptr %i.dj, align 2, !tbaa !15
  %i.dl = getelementptr inbounds nuw i8, ptr %.0213303, i64 18
  %i.dm = load i8, ptr %i.dl, align 2, !tbaa !15
  %.not260 = icmp eq i8 %i.dk, %i.dm
  br i1 %.not260, label %bb.x, label %.critedge.thread

bb.x:                                             ; preds = %bb.w, %._crit_edge320
  %.0 = phi i32 [ 18, %bb.w ], [ 2, %._crit_edge320 ] ; 3 uses
  %i.dn = trunc nuw nsw i64 %i.aq to i32          ; 2 uses
  %i.do = or disjoint i32 %.0, 1                  ; 3 uses
  %i.dp = icmp samesign ult i32 %i.do, %i.dn
  br i1 %i.dp, label %.lr.ph334, label %.critedge

bb.y:                                             ; preds = %.lr.ph334
  %i.dq = add nuw nsw i32 %i.ds, 1                ; 3 uses
  %i.dr = icmp samesign ult i32 %i.dq, %i.dn
  br i1 %i.dr, label %.lr.ph334, label %.critedge, !llvm.loop !13

.lr.ph334:                                        ; preds = %bb.x, %bb.y
  %i.ds = phi i32 [ %i.dq, %bb.y ], [ %i.do, %bb.x ] ; 5 uses
  %.1332 = phi i32 [ %i.ds, %bb.y ], [ %.0, %bb.x ]
  %i.dt = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !15
  %i.dw = getelementptr inbounds nuw i8, ptr %.0213303, i64 %i.dt
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !15
  %i.dy = icmp eq i8 %i.dv, %i.dx
  br i1 %i.dy, label %bb.y, label %..critedge_crit_edge336, !llvm.loop !13

.critedge.thread:                                 ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.2.ph = phi i32 [ 18, %bb.w ], [ 17, %bb.v ], [ 16, %bb.u ], [ 15, %bb.t ], [ 14, %bb.s ], [ 13, %bb.r ], [ 12, %bb.q ], [ 11, %bb.p ], [ 10, %bb.o ], [ 9, %bb.n ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.0213303, i64 1
  br label %bb.aa

.critedge.thread273:                              ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.2.ph272 = phi i32 [ 8, %bb.m ], [ 7, %bb.l ], [ 6, %bb.k ], [ 5, %bb.j ], [ 4, %bb.i ], [ 3, %bb.h ] ; 2 uses
  %i.ea = add nsw i32 %.2.ph272, -2
  %i.eb = getelementptr inbounds nuw i8, ptr %.0213303, i64 1
  br label %bb.z

..critedge_crit_edge336:                          ; preds = %.lr.ph334
  br label %.critedge, !llvm.loop !13

.critedge:                                        ; preds = %bb.y, %..critedge_crit_edge336, %bb.x
  %.1.lcssa = phi i32 [ %.0, %bb.x ], [ %.1332, %..critedge_crit_edge336 ], [ %i.ds, %bb.y ] ; 2 uses
  %.lcssa = phi i32 [ %i.do, %bb.x ], [ %i.ds, %..critedge_crit_edge336 ], [ %i.dq, %bb.y ] ; 2 uses
  %i.ec = add nsw i32 %.1.lcssa, -1
  %i.ed = getelementptr inbounds nuw i8, ptr %.0213303, i64 1 ; 2 uses
  %i.ee = icmp samesign ult i32 %.1.lcssa, 8
  br i1 %i.ee, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.critedge.thread273, %.critedge
  %i.ef = phi ptr [ %i.eb, %.critedge.thread273 ], [ %i.ed, %.critedge ]
  %i.eg = phi i32 [ %i.ea, %.critedge.thread273 ], [ %i.ec, %.critedge ]
  %.2275 = phi i32 [ %.2.ph272, %.critedge.thread273 ], [ %.lcssa, %.critedge ]
  %i.eh = lshr i64 %i.ae, 8
  %i.ei = shl nuw nsw i32 %i.eg, 5
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = or disjoint i64 %i.eh, %i.ej
  %i.el = trunc nuw i64 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.el, ptr %i.az, align 1, !tbaa !15
  br label %bb.ab

bb.aa:                                            ; preds = %.critedge.thread, %.critedge
  %i.en = phi ptr [ %i.dz, %.critedge.thread ], [ %i.ed, %.critedge ]
  %.2269 = phi i32 [ %.2.ph, %.critedge.thread ], [ %.lcssa, %.critedge ] ; 2 uses
  %i.eo = lshr i64 %i.ae, 8
  %i.ep = trunc nuw nsw i64 %i.eo to i8
  %i.eq = or disjoint i8 %i.ep, -32
  %i.er = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.eq, ptr %i.az, align 1, !tbaa !15
  %i.es = trunc i32 %.2269 to i8
  %i.et = add i8 %i.es, -9
  %i.eu = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 %i.et, ptr %i.er, align 1, !tbaa !15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ev = phi ptr [ %i.ef, %bb.z ], [ %i.en, %bb.aa ]
  %.2270 = phi i32 [ %.2275, %bb.z ], [ %.2269, %bb.aa ]
  %.1207 = phi ptr [ %i.em, %bb.z ], [ %i.eu, %bb.aa ] ; 2 uses
  %i.ew = trunc i64 %i.ae to i8
  store i8 %i.ew, ptr %.1207, align 1, !tbaa !15
  %i.ex = getelementptr inbounds nuw i8, ptr %.1207, i64 2 ; 2 uses
  %i.ey = add i32 %.2270, -1
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ez ; 7 uses
  %.not261 = icmp ult ptr %i.fa, %i.h
  br i1 %.not261, label %bb.ac, label %.thread.thread297.loopexit, !prof !21

bb.ac:                                            ; preds = %bb.ab
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -2 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !15
  %i.fd = zext i8 %i.fc to i32
  %i.fe = getelementptr inbounds i8, ptr %i.fa, i64 -1 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !15
  %i.fg = zext i8 %i.ff to i32
  %i.fh = shl nuw nsw i32 %i.fd, 16
  %i.fi = shl nuw nsw i32 %i.fg, 8
  %i.fj = or disjoint i32 %i.fi, %i.fh            ; 2 uses
  %i.fk = load i8, ptr %i.fa, align 1, !tbaa !15
  %i.fl = zext i8 %i.fk to i32
  %i.fm = or disjoint i32 %i.fj, %i.fl            ; 3 uses
  %i.fn = lshr exact i32 %i.fj, 8
  %.neg262 = mul i32 %i.fm, 65531
  %i.fo = add i32 %.neg262, %i.fn
  %i.fp = and i32 %i.fo, 65535
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fq
  store ptr %i.fb, ptr %i.fr, align 8, !tbaa !18
  %i.fs = shl nuw i32 %i.fm, 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !15
  %i.fv = zext i8 %i.fu to i32
  %i.fw = or disjoint i32 %i.fs, %i.fv            ; 2 uses
  %.neg263 = mul i32 %i.fw, 65531
  %i.fx = add i32 %.neg263, %i.fm
  %i.fy = and i32 %i.fx, 65535
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fz
  store ptr %i.fe, ptr %i.ga, align 8, !tbaa !18
  br label %.thread

bb.ad:                                            ; preds = %bb.e, %bb.d, %bb.c
  %.not238 = icmp ult ptr %.0206304, %i.d
  br i1 %.not238, label %bb.ae, label %.thread286, !prof !21

bb.ae:                                            ; preds = %bb.ad
  %i.gb = add nsw i32 %.0199306, 1                ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0213303, i64 1 ; 2 uses
  %i.gd = load i8, ptr %.0213303, align 1, !tbaa !15
  %i.ge = getelementptr inbounds nuw i8, ptr %.0206304, i64 1
  store i8 %i.gd, ptr %.0206304, align 1, !tbaa !15
  %i.gf = icmp eq i32 %i.gb, 32
  br i1 %i.gf, label %bb.af, label %.thread, !prof !23

bb.af:                                            ; preds = %bb.ae
  %i.gg = trunc nuw nsw i32 %.0199306 to i8
  %i.gh = getelementptr inbounds i8, ptr %.0206304, i64 -32
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !15
  %i.gi = getelementptr inbounds nuw i8, ptr %.0206304, i64 2
  br label %.thread

.thread:                                          ; preds = %bb.ac, %bb.af, %bb.ae
  %.3216 = phi ptr [ %i.fa, %bb.ac ], [ %i.gc, %bb.ae ], [ %i.gc, %bb.af ] ; 3 uses
  %.4210 = phi ptr [ %i.ex, %bb.ac ], [ %i.ge, %bb.ae ], [ %i.gi, %bb.af ] ; 2 uses
  %.3205 = phi i32 [ %i.fw, %bb.ac ], [ %i.v, %bb.ae ], [ %i.v, %bb.af ]
  %.3 = phi i32 [ 0, %bb.ac ], [ %i.gb, %bb.ae ], [ 0, %bb.af ] ; 2 uses
  %i.gj = icmp ult ptr %.3216, %i.h
  br i1 %i.gj, label %bb.c, label %.thread.thread297.loopexit

.thread.thread297.loopexit:                       ; preds = %bb.ab, %.thread
  %.4217.ph = phi ptr [ %.3216, %.thread ], [ %i.fa, %bb.ab ] ; 2 uses
  %.5211.ph = phi ptr [ %.4210, %.thread ], [ %i.ex, %bb.ab ]
  %.4.ph = phi i32 [ %.3, %.thread ], [ 0, %bb.ab ]
  %.pre = ptrtoaddr ptr %.4217.ph to i64
  br label %.thread.thread297

.thread.thread297:                                ; preds = %.thread.thread297.loopexit, %bb.b
  %.4217319.pre-phi = phi i64 [ %.pre, %.thread.thread297.loopexit ], [ %i.a, %bb.b ]
  %.4217 = phi ptr [ %.4217.ph, %.thread.thread297.loopexit ], [ %0, %bb.b ] ; 5 uses
  %.5211 = phi ptr [ %.5211.ph, %.thread.thread297.loopexit ], [ %i.g, %bb.b ] ; 7 uses
  %.4 = phi i32 [ %.4.ph, %.thread.thread297.loopexit ], [ 0, %bb.b ] ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.5211, i64 3
  %i.gl = icmp ugt ptr %i.gk, %i.d
  br i1 %i.gl, label %.thread286, label %.preheader

.preheader:                                       ; preds = %.thread.thread297
  %i.gm = icmp ult ptr %.4217, %i.c
  br i1 %i.gm, label %.lr.ph316.preheader, label %._crit_edge

.lr.ph316.preheader:                              ; preds = %.preheader
  %i.gn = add i64 %1, %i.a
  %i.go = sub i64 %i.gn, %.4217319.pre-phi        ; 3 uses
  %scevgep = getelementptr i8, ptr %.4217, i64 %i.go
  %xtraiter = and i64 %i.go, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph316.prol.loopexit, label %.lr.ph316.prol

.lr.ph316.prol:                                   ; preds = %.lr.ph316.preheader
  %i.gp = add nsw i32 %.4, 1                      ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.4217, i64 1 ; 2 uses
  %i.gr = load i8, ptr %.4217, align 1, !tbaa !15
  %i.gs = getelementptr inbounds nuw i8, ptr %.5211, i64 1 ; 2 uses
  store i8 %i.gr, ptr %.5211, align 1, !tbaa !15
  %i.gt = icmp eq i32 %i.gp, 32
  br i1 %i.gt, label %bb.ag, label %.lr.ph316.prol.loopexit, !prof !23

bb.ag:                                            ; preds = %.lr.ph316.prol
  %i.gu = trunc nuw nsw i32 %.4 to i8
  %i.gv = getelementptr inbounds i8, ptr %.5211, i64 -32
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !15
  %i.gw = getelementptr inbounds nuw i8, ptr %.5211, i64 2 ; 2 uses
  br label %.lr.ph316.prol.loopexit

.lr.ph316.prol.loopexit:                          ; preds = %.lr.ph316.prol, %bb.ag, %.lr.ph316.preheader
  %.7.lcssa.unr = phi ptr [ poison, %.lr.ph316.preheader ], [ %i.gw, %bb.ag ], [ %i.gs, %.lr.ph316.prol ]
  %.6.lcssa.unr = phi i32 [ poison, %.lr.ph316.preheader ], [ 0, %bb.ag ], [ %i.gp, %.lr.ph316.prol ]
  %.5315.unr = phi i32 [ %.4, %.lr.ph316.preheader ], [ 0, %bb.ag ], [ %i.gp, %.lr.ph316.prol ]
  %.6212314.unr = phi ptr [ %.5211, %.lr.ph316.preheader ], [ %i.gw, %bb.ag ], [ %i.gs, %.lr.ph316.prol ]
  %.5218313.unr = phi ptr [ %.4217, %.lr.ph316.preheader ], [ %i.gq, %bb.ag ], [ %i.gq, %.lr.ph316.prol ]
  %i.gx = icmp eq i64 %i.go, 1
  br i1 %i.gx, label %._crit_edge, label %.lr.ph316

.lr.ph316:                                        ; preds = %.lr.ph316.prol.loopexit, %bb.aj
  %.5315 = phi i32 [ %.6.1, %bb.aj ], [ %.5315.unr, %.lr.ph316.prol.loopexit ] ; 2 uses
  %.6212314 = phi ptr [ %.7.1, %bb.aj ], [ %.6212314.unr, %.lr.ph316.prol.loopexit ] ; 4 uses
  %.5218313 = phi ptr [ %i.hh, %bb.aj ], [ %.5218313.unr, %.lr.ph316.prol.loopexit ] ; 3 uses
  %i.gy = add nsw i32 %.5315, 1                   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.5218313, i64 1
  %i.ha = load i8, ptr %.5218313, align 1, !tbaa !15
  %i.hb = getelementptr inbounds nuw i8, ptr %.6212314, i64 1
  store i8 %i.ha, ptr %.6212314, align 1, !tbaa !15
  %i.hc = icmp eq i32 %i.gy, 32
  br i1 %i.hc, label %bb.ah, label %.lr.ph316.1, !prof !23

bb.ah:                                            ; preds = %.lr.ph316
  %i.hd = trunc nuw nsw i32 %.5315 to i8
  %i.he = getelementptr inbounds i8, ptr %.6212314, i64 -32
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !15
  %i.hf = getelementptr inbounds nuw i8, ptr %.6212314, i64 2
  br label %.lr.ph316.1

.lr.ph316.1:                                      ; preds = %bb.ah, %.lr.ph316
  %.7 = phi ptr [ %i.hf, %bb.ah ], [ %i.hb, %.lr.ph316 ] ; 4 uses
  %.6 = phi i32 [ 0, %bb.ah ], [ %i.gy, %.lr.ph316 ] ; 2 uses
  %i.hg = add nsw i32 %.6, 1                      ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.5218313, i64 2 ; 2 uses
  %i.hi = load i8, ptr %i.gz, align 1, !tbaa !15
  %i.hj = getelementptr inbounds nuw i8, ptr %.7, i64 1
  store i8 %i.hi, ptr %.7, align 1, !tbaa !15
  %i.hk = icmp eq i32 %i.hg, 32
  br i1 %i.hk, label %bb.ai, label %bb.aj, !prof !23

bb.ai:                                            ; preds = %.lr.ph316.1
  %i.hl = trunc nuw nsw i32 %.6 to i8
  %i.hm = getelementptr inbounds i8, ptr %.7, i64 -32
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !15
  %i.hn = getelementptr inbounds nuw i8, ptr %.7, i64 2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph316.1
  %.7.1 = phi ptr [ %i.hn, %bb.ai ], [ %i.hj, %.lr.ph316.1 ] ; 2 uses
  %.6.1 = phi i32 [ 0, %bb.ai ], [ %i.hg, %.lr.ph316.1 ] ; 2 uses
  %exitcond.not.1 = icmp eq ptr %i.hh, %scevgep
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph316, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph316.prol.loopexit, %bb.aj, %.preheader
  %.6212.lcssa = phi ptr [ %.5211, %.preheader ], [ %.7.lcssa.unr, %.lr.ph316.prol.loopexit ], [ %.7.1, %bb.aj ] ; 2 uses
  %.5.lcssa = phi i32 [ %.4, %.preheader ], [ %.6.lcssa.unr, %.lr.ph316.prol.loopexit ], [ %.6.1, %bb.aj ] ; 3 uses
  %i.ho = trunc i32 %.5.lcssa to i8
  %i.hp = add i8 %i.ho, -1
  %i.hq = xor i32 %.5.lcssa, -1
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds i8, ptr %.6212.lcssa, i64 %i.hr
  store i8 %i.hp, ptr %i.hs, align 1, !tbaa !15
  %.not264 = icmp eq i32 %.5.lcssa, 0
  %.neg265 = sext i1 %.not264 to i64
  %i.ht = getelementptr inbounds i8, ptr %.6212.lcssa, i64 %.neg265
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = ptrtoint ptr %2 to i64
  %i.hw = sub i64 %i.hu, %i.hv
  br label %.thread286

.thread286:                                       ; preds = %bb.g, %bb.ad, %.thread.thread297, %bb.a, %._crit_edge
  %.4223 = phi i64 [ 0, %.thread.thread297 ], [ 0, %bb.a ], [ %i.hw, %._crit_edge ], [ 0, %bb.ad ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  ret i64 %.4223
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = distinct !{!13, !22}
!14 = distinct !{!14, !22}
!15 = !{!10, !10, i64 0}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"short", !10, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
