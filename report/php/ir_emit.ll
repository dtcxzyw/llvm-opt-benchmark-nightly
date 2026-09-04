Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir_emit?download=true
inline.NumInlined: 520
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@dasm_encode:bb.a

.lr.ph273.preheader:                              ; preds = %bb.z
  %.0300 = ptrtoaddr ptr %.0 to i64
  %i.cu = xor i64 %.0300, -1
  %i.cv = add i64 %i.cu, %.3191.lcssa299
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0, ptr nonnull align 1 %i.cs, i64 %i.cv, i1 false), !tbaa !22
  br label %._crit_edge274

._crit_edge274:                                   ; preds = %.lr.ph273.preheader, %bb.z
  %.not218 = icmp eq ptr %.0164, null
  %i.cw = getelementptr inbounds i8, ptr %.0164, i64 -1
  %spec.select228 = select i1 %.not218, ptr null, ptr %i.cw
  %i.cx = getelementptr inbounds i8, ptr %.3191.lcssa, i64 -1
  %i.cy = and i32 %i.ar, 7
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %._crit_edge274
  %.7195 = phi ptr [ %.3191.lcssa, %bb.w ], [ %i.cx, %._crit_edge274 ] ; 2 uses
  %.8 = phi ptr [ %.0164, %bb.w ], [ %spec.select228, %._crit_edge274 ] ; 2 uses
  %.2162 = phi i32 [ %i.ar, %bb.w ], [ %i.cy, %._crit_edge274 ] ; 2 uses
  %i.cz = icmp ugt i8 %i.bt, -65
  br i1 %i.cz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.da = shl i32 %.2162, 4
  br label %bb.ag

bb.ac:                                            ; preds = %.thread237, %bb.aa
  %.2162244 = phi i32 [ %i.cj, %.thread237 ], [ %.2162, %bb.aa ] ; 3 uses
  %.8243 = phi ptr [ %.0164, %.thread237 ], [ %.8, %bb.aa ] ; 3 uses
  %.7195241 = phi ptr [ %.3191.lcssa, %.thread237 ], [ %.7195, %bb.aa ] ; 5 uses
  %i.db = icmp ugt i8 %i.bt, 63
  br i1 %i.db, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dc = shl i32 %.2162244, 3
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.dd = icmp eq i32 %.2162244, 4
  %i.de = icmp samesign ult i8 %i.bt, 32
  %or.cond3 = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond3, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.df = getelementptr inbounds i8, ptr %.7195241, i64 -1 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !22
  %i.dh = xor i8 %i.dg, 4
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !22
  %i.di = getelementptr inbounds nuw i8, ptr %.7195241, i64 1
  store i8 32, ptr %.7195241, align 1, !tbaa !22
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.af, %bb.ae, %bb.ab
  %.8242 = phi ptr [ %.8, %bb.ab ], [ %.8243, %bb.ad ], [ %.8243, %bb.af ], [ %.8243, %bb.ae ]
  %.8196 = phi ptr [ %.7195, %bb.ab ], [ %.7195241, %bb.ad ], [ %i.di, %bb.af ], [ %.7195241, %bb.ae ] ; 2 uses
  %.3163 = phi i32 [ %i.da, %bb.ab ], [ %i.dc, %bb.ad ], [ 4, %bb.af ], [ %.2162244, %bb.ae ]
  %i.dj = getelementptr inbounds i8, ptr %.8196, i64 -1 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !22
  %i.dl = trunc i32 %.3163 to i8
  %i.dm = xor i8 %i.dk, %i.dl
  store i8 %i.dm, ptr %i.dj, align 1, !tbaa !22
  br label %.loopexit

bb.ah:                                            ; preds = %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %.0159.in.in.lcssa, i64 2 ; 2 uses
  %i.do = icmp sgt i32 %i.ar, -1
  br i1 %i.do, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dp = getelementptr inbounds nuw i8, ptr %.1181, i64 8
  %i.dq = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.dr = sub nsw i32 -10, %i.ar
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !68
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = trunc i64 %i.dv to i32
  br label %bb.aj

bb.aj:                                            ; preds = %.thread249, %bb.h, %bb.ai
  %.4184 = phi ptr [ %i.eb, %.thread249 ], [ %i.dp, %bb.ai ], [ %i.aq, %bb.h ]
  %.4175 = phi ptr [ %.5176, %.thread249 ], [ %i.dn, %bb.ai ], [ %.1172.lcssa, %bb.h ]
  %.4 = phi i32 [ %i.el, %.thread249 ], [ %i.dw, %bb.ai ], [ %i.ar, %bb.h ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.3191.lcssa, i64 4
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = sub i32 %.4, %i.dz
  br label %bb.p

bb.ak:                                            ; preds = %bb.h, %bb.ah
  %.5176 = phi ptr [ %i.dn, %bb.ah ], [ %.1172.lcssa, %bb.h ] ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.1181, i64 8 ; 4 uses
  %i.ec = ashr i32 %i.ar, 24
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [40 x i8], ptr %i.e, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !61
  %i.eg = sext i32 %i.ar to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !63 ; 2 uses
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %.thread249, label %bb.al

.thread249:                                       ; preds = %bb.ak
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !63
  br label %bb.aj

bb.al:                                            ; preds = %bb.ak
  %i.em = load i32, ptr %i.aq, align 4, !tbaa !63 ; 2 uses
  %i.en = ptrtoint ptr %.3191.lcssa to i64
  %.neg213 = sub i64 %i.h, %i.en
  %.neg214 = trunc i64 %.neg213 to i32
  %.neg215 = add i32 %.neg214, -4
  %.neg = add i32 %.neg215, %i.ei
  %i.eo = add i32 %.neg, %i.em                    ; 3 uses
  switch i32 %i.em, label %bb.an [
    i32 0, label %bb.p
    i32 4, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  %i.ep = getelementptr inbounds i8, ptr %.3191.lcssa, i64 -1 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !22
  %i.er = add i8 %i.eq, -16
  %i.es = getelementptr inbounds i8, ptr %.3191.lcssa, i64 -2
  store i8 %i.er, ptr %i.es, align 1, !tbaa !22
  br label %.thread245

bb.an:                                            ; preds = %bb.al
  %i.et = getelementptr inbounds i8, ptr %.3191.lcssa, i64 -1
  store i8 -21, ptr %i.et, align 1, !tbaa !22
  br label %.thread245

bb.ao:                                            ; preds = %bb.h
  %i.eu = getelementptr inbounds nuw i8, ptr %.0159.in.in.lcssa, i64 2 ; 2 uses
  %i.ev = icmp slt i32 %i.ar, 0
  br i1 %i.ev, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ew = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.ex = sub nsw i32 -10, %i.ar
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ey
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !68
  %i.fb = ptrtoint ptr %i.fa to i64
  store i64 %i.fb, ptr %.3191.lcssa, align 1, !tbaa !184
  %i.fc = getelementptr inbounds nuw i8, ptr %.3191.lcssa, i64 8
  br label %.loopexit

bb.aq:                                            ; preds = %bb.ao, %bb.h
  %.6177 = phi ptr [ %i.eu, %bb.ao ], [ %.1172.lcssa, %bb.h ]
  %i.fd = ashr i32 %i.ar, 24
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [40 x i8], ptr %i.e, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !61
  %i.fh = sext i32 %i.ar to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !63 ; 2 uses
  %i.fk = icmp slt i32 %i.fj, 0
  br i1 %i.fk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !63
  %i.fn = sext i32 %i.fm to i64
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.fo = zext nneg i32 %i.fj to i64
  %i.fp = add nsw i64 %i.fo, %i.h
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fq = phi i64 [ %i.fn, %bb.ar ], [ %i.fp, %bb.as ]
  store i64 %i.fq, ptr %.3191.lcssa, align 1, !tbaa !184
  %i.fr = getelementptr inbounds nuw i8, ptr %.3191.lcssa, i64 8
  br label %.loopexit

bb.au:                                            ; preds = %bb.h
  %i.fs = getelementptr inbounds nuw i8, ptr %.0159.in.in.lcssa, i64 2 ; 3 uses
  %i.ft = load i8, ptr %.1172.lcssa, align 1, !tbaa !22 ; 2 uses
  %i.fu = zext i8 %i.ft to i64
  %i.fv = icmp ugt i8 %i.ft, 9
  br i1 %i.fv, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %bb.au
  %i.fw = load i8, ptr %i.fs, align 1, !tbaa !22
  %i.fx = icmp eq i8 %i.fw, -14
  br i1 %i.fx, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fy = load i32, ptr %i.aq, align 4, !tbaa !63
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.fz = phi i32 [ %i.fy, %bb.aw ], [ %i.ar, %bb.av ]
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds i8, ptr %1, i64 %i.ga
  %i.gc = load ptr, ptr %i.g, align 8, !tbaa !55
  %2 = add nuw nsw i64 %i.fu, 4294967286
  %3 = and i64 %2, 4294967295
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %3
  store ptr %i.gb, ptr %4, align 8, !tbaa !68
  br label %.loopexit

bb.ay:                                            ; preds = %bb.h
  %i.gd = getelementptr inbounds nuw i8, ptr %.0159.in.in.lcssa, i64 2 ; 2 uses
  %.not212265 = icmp eq i32 %i.ar, 0
  br i1 %.not212265, label %.loopexit, label %.lr.ph269.preheader

.lr.ph269.preheader:                              ; preds = %bb.ay
  %i.ge = load i8, ptr %.1172.lcssa, align 1, !tbaa !22
  %i.gf = zext i32 %i.ar to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.3191.lcssa, i8 %i.ge, i64 %i.gf, i1 false), !tbaa !22
  %scevgep = getelementptr i8, ptr %.3191.lcssa, i64 1
  %i.gg = add i32 %i.ar, -1
  %i.gh = zext i32 %i.gg to i64
  %scevgep298 = getelementptr i8, ptr %scevgep, i64 %i.gh
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph278, %.lr.ph269.preheader, %bb.ay, %bb.e, %.thread235, %bb.h, %.thread245, %bb.p, %bb.r, %bb.ag, %bb.ap, %bb.at, %bb.ax, %bb.au, %bb.d, %bb.g
  %.14 = phi ptr [ %i.ap, %bb.g ], [ %.3191.lcssa, %bb.d ], [ %.3191.lcssa, %bb.ay ], [ %scevgep298, %.lr.ph269.preheader ], [ %.3191.lcssa, %bb.h ], [ %i.bh, %.thread245 ], [ %.3191.lcssa, %.thread235 ], [ %i.bn, %bb.p ], [ %i.br, %bb.r ], [ %.8196, %bb.ag ], [ %i.fc, %bb.ap ], [ %i.fr, %bb.at ], [ %.3191.lcssa, %bb.au ], [ %.3191.lcssa, %bb.ax ], [ %.3191.lcssa, %bb.e ], [ %i.ai, %.lr.ph278 ]
  %.6186 = phi ptr [ %.1181, %bb.g ], [ %.1181, %bb.d ], [ %i.aq, %bb.ay ], [ %i.aq, %.lr.ph269.preheader ], [ %i.aq, %bb.h ], [ %.2182, %.thread245 ], [ %i.aq, %.thread235 ], [ %.3183, %bb.p ], [ %i.aq, %bb.r ], [ %i.aq, %bb.ag ], [ %i.aq, %bb.ap ], [ %i.aq, %bb.at ], [ %i.aq, %bb.au ], [ %i.aq, %bb.ax ], [ %i.ab, %bb.e ], [ %i.ab, %.lr.ph278 ]
  %.8179 = phi ptr [ %i.an, %bb.g ], [ %.1172.lcssa, %bb.d ], [ %i.gd, %bb.ay ], [ %i.gd, %.lr.ph269.preheader ], [ %.1172.lcssa, %bb.h ], [ %.2173, %.thread245 ], [ %.1172.lcssa, %.thread235 ], [ %.3174, %bb.p ], [ %.1172.lcssa, %bb.r ], [ %i.bs, %bb.ag ], [ %i.eu, %bb.ap ], [ %.6177, %bb.at ], [ %i.fs, %bb.au ], [ %i.fs, %bb.ax ], [ %i.ac, %bb.e ], [ %i.ac, %.lr.ph278 ]
  %.10 = phi ptr [ %.0164, %bb.g ], [ %.3191.lcssa, %bb.d ], [ %.0164, %bb.ay ], [ %.0164, %.lr.ph269.preheader ], [ %.0164, %bb.h ], [ %.3167, %.thread245 ], [ %spec.select229, %.thread235 ], [ %.5169, %bb.p ], [ %.6170, %bb.r ], [ %.8242, %bb.ag ], [ %.0164, %bb.ap ], [ %.0164, %bb.at ], [ %.0164, %bb.au ], [ %.0164, %bb.ax ], [ %.0164, %bb.e ], [ %.0164, %.lr.ph278 ]
  br label %bb.c, !llvm.loop !178

._crit_edge285.loopexit:                          ; preds = %.loopexit254
  %.pre302 = load i32, ptr %i.b, align 8, !tbaa !50
  br label %._crit_edge285

._crit_edge285:                                   ; preds = %._crit_edge285.loopexit, %bb.b
  %i.gi = phi i32 [ %i.i, %bb.b ], [ %.pre302, %._crit_edge285.loopexit ] ; 2 uses
  %.1189.lcssa = phi ptr [ %.0188287, %bb.b ], [ %.3191.lcssa, %._crit_edge285.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv.next, %i.gj
  br i1 %i.gk, label %bb.b, label %._crit_edge291, !llvm.loop !181

._crit_edge291:                                   ; preds = %._crit_edge285, %bb.a
  %.0188.lcssa = phi ptr [ %1, %bb.a ], [ %.1189.lcssa, %._crit_edge285 ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !65
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 %i.gm
  %.not = icmp eq ptr %i.gn, %.0188.lcssa
  %. = select i1 %.not, i32 0, i32 33554432
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @dasm_getpclabel(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !57
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.b
  %i.j = load i32, ptr %i.i, align 4, !tbaa !63   ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.m = sub nsw i32 0, %i.j                      ; 2 uses
  %i.n = lshr i32 %i.m, 24
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61
  %i.r = zext nneg i32 %i.m to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !63
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c, %bb.d
  %.1 = phi i32 [ -2, %bb.d ], [ -1, %bb.c ], [ %i.t, %.thread ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden ptr @ir_reg_name(i8 noundef signext %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp sgt i8 %0, 31
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i8 %0 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @_ir_reg_name, i64 %i.b
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %1, 0
  %i.e = icmp slt i8 %0, 16
  %i.f = select i1 %i.e, i32 6, i32 12
  %.0 = select i1 %i.d, i32 %i.f, i32 %1          ; 2 uses
  %i.g = icmp ugt i32 %.0, 11
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = zext nneg i32 %.0 to i64
  %i.i = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !22
  switch i8 %i.j, label %bb.h [
    i8 8, label %bb.e
    i8 4, label %bb.f
    i8 2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = sext i8 %0 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr @_ir_reg_name, i64 %i.k
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.m = sext i8 %0 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr @_ir_reg_name32, i64 %i.m
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.o = sext i8 %0 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr @_ir_reg_name16, i64 %i.o
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.q = sext i8 %0 to i64
  %i.r = getelementptr inbounds [8 x i8], ptr @_ir_reg_name8, i64 %i.q
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.b
  %.012.in = phi ptr [ %i.c, %bb.b ], [ %i.l, %bb.e ], [ %i.n, %bb.f ], [ %i.p, %bb.g ], [ %i.r, %bb.h ]
  %.012 = load ptr, ptr %.012.in, align 8, !tbaa !69
  ret ptr %.012
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 10754) i32 @ir_get_target_constraints(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly initializes((0, 1), (2, 3)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 6 uses
  %i.c = sext i32 %1 to i64                       ; 29 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !63   ; 4 uses
  store i8 -1, ptr %2, align 1, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 7 uses
  store i8 0, ptr %i.f, align 1, !tbaa !73
  %trunc = trunc i32 %i.e to i8
  switch i8 %trunc, label %bb.du [
    i8 -96, label %bb.b
    i8 -97, label %bb.cr
    i8 -93, label %bb.i
    i8 124, label %bb.j
    i8 125, label %.sink.split
    i8 126, label %bb.k
    i8 -75, label %bb.l
    i8 122, label %bb.q
    i8 127, label %bb.q
    i8 123, label %bb.aa
    i8 -94, label %bb.ae
    i8 60, label %bb.ag
    i8 -83, label %bb.ah
    i8 -84, label %bb.ah
    i8 -82, label %bb.ao
    i8 -64, label %bb.ap
    i8 -60, label %bb.at
    i8 -63, label %bb.az
    i8 -61, label %bb.bb
    i8 -62, label %bb.bb
    i8 -74, label %bb.bb
    i8 -73, label %bb.bb
    i8 -72, label %bb.bb
    i8 -71, label %bb.bb
    i8 -70, label %bb.bb
    i8 -69, label %bb.bb
    i8 -68, label %bb.bb
    i8 -67, label %bb.bb
    i8 -66, label %bb.bb
    i8 -89, label %bb.bb
    i8 -59, label %bb.bd
    i8 112, label %bb.bh
    i8 66, label %bb.bk
    i8 74, label %bb.bl
    i8 75, label %bb.bs
    i8 -95, label %bb.bz
    i8 -92, label %bb.ca
    i8 -109, label %bb.ca
    i8 -108, label %bb.ca
    i8 -107, label %bb.ca
    i8 -106, label %bb.ca
    i8 -99, label %bb.ca
    i8 -98, label %bb.ca
end_hunk_0
begin_hunk_1_@ir_match_insn:bb.a
  ret i32 %.23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @ir_get_spill_slot_offset(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !63
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !80
  %i.o = and i32 %i.n, 2048
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.q = load i32, ptr %i.p, align 8, !tbaa !99
  %i.r = sub nsw i32 %i.l, %i.q
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.t = load i32, ptr %i.s, align 4, !tbaa !110
  %i.u = add nsw i32 %i.t, %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi i32 [ %i.r, %bb.b ], [ %i.u, %bb.c ]
  ret i32 %i.v
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @ir_may_fuse_imm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !22    ; 2 uses
  %i.c = icmp eq i8 %i.b, 6
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 8, !tbaa !22
  switch i8 %i.d, label %bb.g [
    i8 72, label %ir_may_fuse_addr.exit
    i8 73, label %bb.c
    i8 71, label %bb.c
    i8 70, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.e = getelementptr i8, ptr %1, i64 8
  %.val.i = load i32, ptr %i.e, align 8, !tbaa !22
  %i.f = tail call ptr @ir_get_str(ptr noundef %0, i32 noundef %.val.i) #23 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89   ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !91   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr %i.j(ptr noundef nonnull %i.h, ptr noundef %i.f, i32 noundef 2) #23, !inline_history !9
  br label %ir_sym_addr.exit.i

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.l = tail call ptr @dlsym(ptr noundef null, ptr noundef %i.f) #23
  br label %ir_sym_addr.exit.i

ir_sym_addr.exit.i:                               ; preds = %bb.f, %bb.e
  %i.m = phi ptr [ %i.k, %bb.e ], [ %i.l, %bb.f ] ; 3 uses
  %.not.i = icmp ne ptr %i.m, null
  %i.n = icmp slt ptr %i.m, inttoptr (i64 2147483648 to ptr)
  %i.o = icmp sgt ptr %i.m, inttoptr (i64 -2147483649 to ptr)
  %i.p = and i1 %i.n, %i.o
  %.0.i = and i1 %.not.i, %i.p
  br label %ir_may_fuse_addr.exit

bb.g:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !22
  %i.s = add i64 %i.r, 2147483648
  %spec.select.i = icmp ult i64 %i.s, 4294967296
  br label %ir_may_fuse_addr.exit

bb.h:                                             ; preds = %bb.a
  %i.t = zext i8 %i.b to i64
  %i.u = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !22
  %i.w = icmp ult i8 %i.v, 5
  br i1 %i.w, label %ir_may_fuse_addr.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !22
  %i.z = add i64 %i.y, 2147483648
  %spec.select = icmp ult i64 %i.z, 4294967296
  br label %ir_may_fuse_addr.exit

ir_may_fuse_addr.exit:                            ; preds = %bb.g, %ir_sym_addr.exit.i, %bb.b, %bb.i, %bb.h
  %.0 = phi i1 [ %spec.select, %bb.i ], [ true, %bb.h ], [ %spec.select.i, %bb.g ], [ %.0.i, %ir_sym_addr.exit.i ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @ir_may_fuse_addr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !22
  switch i8 %i.a, label %bb.f [
    i8 72, label %bb.g
    i8 73, label %bb.b
    i8 71, label %bb.b
    i8 70, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val = load i32, ptr %i.b, align 8, !tbaa !22
  %i.c = tail call ptr @ir_get_str(ptr noundef %0, i32 noundef %.val) #23 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !89   ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !91   ; 2 uses
  %.not10.i = icmp eq ptr %i.g, null
  br i1 %.not10.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr %i.g(ptr noundef nonnull %i.e, ptr noundef %i.c, i32 noundef 2) #23, !inline_history !310
  br label %ir_sym_addr.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.i = tail call ptr @dlsym(ptr noundef null, ptr noundef %i.c) #23
  br label %ir_sym_addr.exit

ir_sym_addr.exit:                                 ; preds = %bb.d, %bb.e
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ] ; 3 uses
  %.not = icmp ne ptr %i.j, null
  %i.k = icmp slt ptr %i.j, inttoptr (i64 2147483648 to ptr)
  %i.l = icmp sgt ptr %i.j, inttoptr (i64 -2147483649 to ptr)
  %i.m = and i1 %i.k, %i.l
  %.0 = and i1 %.not, %i.m
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !22
  %i.p = add i64 %i.o, 2147483648
  %spec.select = icmp ult i64 %i.p, 4294967296
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %ir_sym_addr.exit
  %.1 = phi i1 [ %spec.select, %bb.f ], [ %.0, %ir_sym_addr.exit ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @ir_call_used_stack(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !22   ; 2 uses
  %.not83 = icmp ult i16 %i.b, 3
  br i1 %.not83, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = zext i16 %i.b to i64
  %i.d = load ptr, ptr %0, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 3, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.05288 = phi i32 [ 0, %.lr.ph ], [ %.4, %bb.l ] ; 4 uses
  %.05387 = phi i32 [ 0, %.lr.ph ], [ %.6, %bb.l ] ; 5 uses
  %.05886 = phi i32 [ 0, %.lr.ph ], [ %.260, %bb.l ] ; 4 uses
  %.06185 = phi i32 [ 0, %.lr.ph ], [ %.263, %bb.l ] ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !63
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !22    ; 3 uses
  %i.m = icmp ult i8 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %4 = zext nneg i8 %i.l to i64
  %i.n = load i8, ptr %i.j, align 8, !tbaa !22
  %i.o = icmp eq i8 %i.n, 66
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !22   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !22
  %i.t = load i8, ptr %2, align 8
  %i.u = and i8 %i.t, 2
  %.not73 = icmp eq i8 %i.u, 0
  %i.v = tail call i32 @llvm.smax.i32(i32 %i.s, i32 8) ; 4 uses
  br i1 %.not73, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.w = add i32 %.05288, -1
  %i.x = add i32 %i.w, %i.q
  %i.y = add i32 %i.x, %i.v
  %i.z = sub nsw i32 0, %i.v
  %i.aa = and i32 %i.y, %i.z
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = add i32 %.05387, -1
  %i.ac = add i32 %i.ab, %i.v
  %i.ad = sub nsw i32 0, %i.v
  %i.ae = and i32 %i.ac, %i.ad
  %i.af = add i32 %i.q, 7
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = and i32 %i.ag, -8
  br label %bb.l

bb.f:                                             ; preds = %.thread, %bb.c
  %.165 = phi i64 [ 6, %.thread ], [ %4, %bb.c ]
  %.2 = phi i32 [ %i.aa, %.thread ], [ %.05288, %bb.c ]
  %i.ai = load i8, ptr %i.f, align 2, !tbaa !92
  %i.aj = zext i8 %i.ai to i32
  %.not74 = icmp slt i32 %.06185, %i.aj
  br i1 %.not74, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %.165
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !22
  %narrow82 = tail call i8 @llvm.umax.i8(i8 %i.al, i8 8)
  %spec.select = zext i8 %narrow82 to i32
  %i.am = add i32 %.05387, %spec.select
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.356 = phi i32 [ %i.am, %bb.g ], [ %.05387, %bb.f ]
  %i.an = add nsw i32 %.06185, 1
  %i.ao = load i8, ptr %2, align 8
  %i.ap = lshr i8 %i.ao, 3
  %i.aq = and i8 %i.ap, 1
  %i.ar = zext nneg i8 %i.aq to i32
  %spec.select76 = add nsw i32 %.05886, %i.ar
  br label %bb.l

bb.i:                                             ; preds = %bb.b
  %i.as = load i8, ptr %i.e, align 1, !tbaa !94
  %i.at = zext i8 %i.as to i32
  %.not71 = icmp slt i32 %.05886, %i.at
  br i1 %.not71, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %5 = zext i8 %i.l to i64
  %i.au = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %5
  %i.av = load i8, ptr %i.au, align 1, !tbaa !22
  %narrow = tail call i8 @llvm.umax.i8(i8 %i.av, i8 8)
  %spec.select77 = zext i8 %narrow to i32
  %i.aw = add i32 %.05387, %spec.select77
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.457 = phi i32 [ %i.aw, %bb.j ], [ %.05387, %bb.i ]
  %i.ax = add nsw i32 %.05886, 1
  %i.ay = load i8, ptr %2, align 8
  %i.az = lshr i8 %i.ay, 3
  %i.ba = and i8 %i.az, 1
  %i.bb = zext nneg i8 %i.ba to i32
  %spec.select78 = add nsw i32 %.06185, %i.bb
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.k, %bb.h
  %.263 = phi i32 [ %.06185, %bb.e ], [ %i.an, %bb.h ], [ %spec.select78, %bb.k ]
  %.260 = phi i32 [ %.05886, %bb.e ], [ %spec.select76, %bb.h ], [ %i.ax, %bb.k ]
  %.6 = phi i32 [ %i.ah, %bb.e ], [ %.356, %bb.h ], [ %.457, %bb.k ] ; 2 uses
  %.4 = phi i32 [ %.05288, %bb.e ], [ %.2, %bb.h ], [ %.05288, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %i.c
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !311

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.bc = add nsw i32 %.4, 15
  %i.bd = and i32 %i.bc, -16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.053.lcssa = phi i32 [ 0, %bb.a ], [ %.6, %._crit_edge.loopexit ]
  %.052.lcssa = phi i32 [ 0, %bb.a ], [ %i.bd, %._crit_edge.loopexit ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !123
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add i32 %.052.lcssa, %.053.lcssa
  %i.bi = add i32 %i.bh, %i.bg
  store i32 %.052.lcssa, ptr %3, align 4, !tbaa !63
  ret i32 %i.bi
}

declare i32 @ir_allocate_spill_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ir_gen_dessa_moves(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @ir_fix_dessa_tmps(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.c = ptrtoint ptr %4 to i64
  %i.d = getelementptr inbounds [52 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !132  ; 2 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i8 %1, 12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !125
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k ; 3 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.l, align 1, !tbaa !22
  %i.n = icmp eq i8 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.l, align 1, !tbaa !22
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !22
  %i.q = icmp eq i8 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  store i8 16, ptr %i.o, align 1, !tbaa !22
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = icmp ult i8 %1, 12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !125
  %i.u = sext i32 %i.f to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u ; 3 uses
  br i1 %i.r, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22
  %i.x = icmp eq i8 %i.w, -1
  br i1 %i.x, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.v, align 1, !tbaa !22
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !22
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 16, ptr %i.y, align 1, !tbaa !22
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.k, %bb.l, %bb.i, %bb.j, %bb.d, %bb.c, %bb.f, %bb.e
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ir_emit_store(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 256) %1, i32 noundef %2, i8 noundef signext %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115
  %i.h = sext i32 %i.e to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !117  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !22   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !121
  %i.o = and i16 %i.n, 64
  %.not.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.q = load i32, ptr %i.p, align 4, !tbaa !138
  %i.r = zext i32 %i.l to i64
  %i.s = and i32 %i.q, 255
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 32
  %i.v = or disjoint i64 %i.u, %i.r
  br label %ir_ref_spill_slot.exit

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !80
  %i.y = and i32 %i.x, 2048
  %.not14.i.i = icmp eq i32 %i.y, 0
  br i1 %.not14.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !99
  %i.ab = sub nsw i32 %i.l, %i.aa
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !110
  %i.ae = add nsw i32 %i.ad, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = phi i64 [ 21474836480, %bb.d ], [ 17179869184, %bb.e ]
  %i.ag = phi i32 [ %i.ab, %bb.d ], [ %i.ae, %bb.e ]
  %i.ah = zext i32 %i.ag to i64
  %i.ai = or disjoint i64 %i.af, %i.ah
  br label %ir_ref_spill_slot.exit

ir_ref_spill_slot.exit:                           ; preds = %bb.b, %bb.f
  %.0.in.i.i = phi i64 [ %i.v, %bb.b ], [ %i.ai, %bb.f ]
  %.0.i.i = or disjoint i64 %.0.in.i.i, 561850441793536 ; 2 uses
  %i.aj = icmp samesign ult i32 %1, 12
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %ir_ref_spill_slot.exit
  %i.ak = getelementptr i8, ptr %0, i64 280
  %.val.i = load ptr, ptr %i.ak, align 8, !tbaa !22
  tail call fastcc void @ir_emit_store_mem_int(ptr %.val.i, i32 noundef %1, i64 noundef %.0.i.i, i8 noundef signext %3)
  br label %ir_emit_store_mem.exit

bb.h:                                             ; preds = %ir_ref_spill_slot.exit
  tail call fastcc void @ir_emit_store_mem_fp(ptr noundef nonnull readonly %0, i32 noundef %1, i64 noundef %.0.i.i, i8 noundef signext %3)
  br label %ir_emit_store_mem.exit

ir_emit_store_mem.exit:                           ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ir_emit_load_mem_int(ptr nofree readonly captures(none) %.280.val, i32 noundef range(i32 0, 256) %0, i8 noundef signext %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
end_hunk_1
