inline.NumInlined: 31
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@process:bb.a
  %i.on = fmul reassoc nsz arcp contract afn float %i.om, %i.ok
  %i.oo = fadd reassoc nsz arcp contract afn float %i.on, %i.nk
  br label %hsl2rgb.exit.i

bb.bg:                                            ; preds = %hue2rgb.exit36.i.i48
  %i.op = fcmp reassoc nsz arcp contract afn olt float %i.ok, 3.000000e+00
  br i1 %i.op, label %hsl2rgb.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.oq = fcmp reassoc nsz arcp contract afn olt float %i.ok, 4.000000e+00
  %i.or = fsub reassoc nsz arcp contract afn float %i.ng, %i.nk
  %i.os = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.ok
  %i.ot = fmul reassoc nsz arcp contract afn float %i.or, %i.os
  %i.ou = fadd reassoc nsz arcp contract afn float %i.ot, %i.nk
  %i.ov = select reassoc nsz arcp contract afn i1 %i.oq, float %i.ou, float %i.nk
  br label %hsl2rgb.exit.i

hsl2rgb.exit.i:                                   ; preds = %bb.bh, %bb.bg, %bb.bf, %rgb2hsl.exit.i42, %bb.ah
  %.sroa.029.1.i = phi nsz float [ %i.kr, %bb.ah ], [ %i.mv, %rgb2hsl.exit.i42 ], [ %.0.i.i.i47, %bb.bh ], [ %.0.i.i.i47, %bb.bg ], [ %.0.i.i.i47, %bb.bf ] ; 3 uses
  %.sroa.1033.1.i = phi nsz float [ %i.kt, %bb.ah ], [ %i.mv, %rgb2hsl.exit.i42 ], [ %.0.i35.i.i49, %bb.bh ], [ %.0.i35.i.i49, %bb.bg ], [ %.0.i35.i.i49, %bb.bf ] ; 3 uses
  %.sroa.18.1.i = phi nsz float [ %i.ke, %bb.ah ], [ %i.mv, %rgb2hsl.exit.i42 ], [ %i.ov, %bb.bh ], [ %i.ng, %bb.bg ], [ %i.oo, %bb.bf ] ; 3 uses
  %i.ow = getelementptr [4 x i8], ptr %3, i64 %.05310.i ; 3 uses
  %i.ox = fmul reassoc nsz arcp contract afn float %.sroa.029.1.i, %i.jh
  %i.oy = fmul reassoc nsz arcp contract afn float %.sroa.1033.1.i, %i.jj
  %i.oz = fadd reassoc nsz arcp contract afn float %i.oy, %i.ox
  %i.pa = fmul reassoc nsz arcp contract afn float %.sroa.18.1.i, %i.jl
  %i.pb = fadd reassoc nsz arcp contract afn float %i.oz, %i.pa
  %i.pc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pb, float 0.000000e+00)
  store float %i.pc, ptr %i.ow, align 4, !tbaa !11, !alias.scope !59, !noalias !56
  %i.pd = fmul reassoc nsz arcp contract afn float %.sroa.029.1.i, %i.jn
  %i.pe = fmul reassoc nsz arcp contract afn float %.sroa.1033.1.i, %i.jp
  %i.pf = fadd reassoc nsz arcp contract afn float %i.pe, %i.pd
  %i.pg = fmul reassoc nsz arcp contract afn float %.sroa.18.1.i, %i.jr
  %i.ph = fadd reassoc nsz arcp contract afn float %i.pf, %i.pg
  %i.pi = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ph, float 0.000000e+00)
  %i.pj = getelementptr i8, ptr %i.ow, i64 4
  store float %i.pi, ptr %i.pj, align 4, !tbaa !11, !alias.scope !59, !noalias !56
  %i.pk = fmul reassoc nsz arcp contract afn float %.sroa.029.1.i, %i.jt
  %i.pl = fmul reassoc nsz arcp contract afn float %.sroa.1033.1.i, %i.jv
  %i.pm = fadd reassoc nsz arcp contract afn float %i.pl, %i.pk
  %i.pn = fmul reassoc nsz arcp contract afn float %.sroa.18.1.i, %i.jx
  %i.po = fadd reassoc nsz arcp contract afn float %i.pm, %i.pn
  %i.pp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.po, float 0.000000e+00)
  %i.pq = getelementptr i8, ptr %i.ow, i64 8
  store float %i.pp, ptr %i.pq, align 4, !tbaa !11, !alias.scope !59, !noalias !56
  %i.pr = add i64 %.05310.i, %i.iz                ; 2 uses
  %i.ps = icmp ult i64 %i.pr, %i.jd
  br i1 %i.ps, label %bb.ah, label %process_rgb.exit

process_rgb.exit:                                 ; preds = %hsl2rgb.exit.i, %.loopexit.i, %bb.d, %.preheader.i, %bb.ag, %bb.e, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !62
  store i32 -999, ptr %i.a, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  tail call void @free(ptr noundef %i.b) #21
  store ptr null, ptr %i.a, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !16  ; 26 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load float, ptr %1, align 4, !tbaa !11
  store float %i.e, ptr %i.b, align 4, !tbaa !11
  %i.f = load float, ptr %i.c, align 4, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store float %i.f, ptr %i.g, align 4, !tbaa !11
  %i.h = load float, ptr %i.d, align 4, !tbaa !11 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.h, ptr %i.i, align 4, !tbaa !11
  %i.j = load float, ptr %1, align 4, !tbaa !11
  %i.k = fcmp reassoc nsz arcp contract afn une float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load float, ptr %i.c, align 4, !tbaa !11
  %i.m = fcmp reassoc nsz arcp contract afn une float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = fcmp reassoc nsz arcp contract afn une float %i.h, 0.000000e+00
  %i.o = zext i1 %i.n to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ %i.o, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %i.r, ptr %i.s, align 4, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %i.u, ptr %i.v, align 4, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.x = load float, ptr %i.w, align 4, !tbaa !11 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %i.x, ptr %i.y, align 4, !tbaa !11
  %i.z = load float, ptr %i.q, align 4, !tbaa !11
  %i.aa = fcmp reassoc nsz arcp contract afn une float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load float, ptr %i.t, align 4, !tbaa !11
  %i.ac = fcmp reassoc nsz arcp contract afn une float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = fcmp reassoc nsz arcp contract afn une float %i.x, 0.000000e+00
  %i.ae = zext i1 %i.ad to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.af = phi i32 [ 1, %bb.e ], [ 1, %bb.d ], [ %i.ae, %bb.f ]
  %i.ag = or i32 %i.af, %i.p
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store float %i.ai, ptr %i.aj, align 4, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store float %i.al, ptr %i.am, align 4, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load float, ptr %i.an, align 4, !tbaa !11 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store float %i.ao, ptr %i.ap, align 4, !tbaa !11
  %i.aq = load float, ptr %i.ah, align 4, !tbaa !11
  %i.ar = fcmp reassoc nsz arcp contract afn une float %i.aq, 0.000000e+00
  br i1 %i.ar, label %.preheader80, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load float, ptr %i.ak, align 4, !tbaa !11
  %i.at = fcmp reassoc nsz arcp contract afn une float %i.as, 0.000000e+00
  br i1 %i.at, label %.preheader80, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = fcmp reassoc nsz arcp contract afn une float %i.ao, 0.000000e+00
  %i.av = zext i1 %i.au to i32
  br label %.preheader80

.preheader80:                                     ; preds = %bb.i, %bb.h, %bb.g
  %i.aw = phi i32 [ 1, %bb.h ], [ 1, %bb.g ], [ %i.av, %bb.i ]
  %i.ax = getelementptr i8, ptr %i.b, i64 36      ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !11 ; 2 uses
  store float %i.az, ptr %i.ax, align 4, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !11 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.b, i64 40      ; 2 uses
  store float %i.bb, ptr %i.bc, align 4, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.be = load float, ptr %i.bd, align 4, !tbaa !11 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.b, i64 44      ; 2 uses
  store float %i.be, ptr %i.bf, align 4, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !11 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.b, i64 48
  store float %i.bh, ptr %i.bi, align 4, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !11 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.b, i64 52
  store float %i.bk, ptr %i.bl, align 4, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !11 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.b, i64 56
  store float %i.bn, ptr %i.bo, align 4, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !11 ; 2 uses
  %i.br = getelementptr i8, ptr %i.b, i64 60
  store float %i.bq, ptr %i.br, align 4, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !11 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.b, i64 64
  store float %i.bt, ptr %i.bu, align 4, !tbaa !11
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !11 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.b, i64 68
  store float %i.bw, ptr %i.bx, align 4, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = load float, ptr %i.by, align 4, !tbaa !11 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !11 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !11 ; 4 uses
  %4 = or i32 %i.aw, %i.ag
  %i.ce = fcmp reassoc nsz arcp contract afn une float %i.bz, 0.000000e+00
  %i.cf = fcmp reassoc nsz arcp contract afn une float %i.cb, 0.000000e+00
  %or.cond = select i1 %i.ce, i1 true, i1 %i.cf
  %i.cg = fcmp reassoc nsz arcp contract afn une float %i.cd, 0.000000e+00
  %or.cond78 = select i1 %or.cond, i1 true, i1 %i.cg ; 2 uses
  br i1 %or.cond78, label %.thread, label %bb.j

.thread:                                          ; preds = %.preheader80
  %i.ch = fmul reassoc nsz arcp contract afn float %i.az, %i.bz
  %i.ci = fmul reassoc nsz arcp contract afn float %i.bh, %i.cb
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, %i.ch
  %i.ck = fmul reassoc nsz arcp contract afn float %i.bq, %i.cd
  %i.cl = fadd reassoc nsz arcp contract afn float %i.cj, %i.ck ; 3 uses
  %i.cm = fmul reassoc nsz arcp contract afn float %i.bb, %i.bz
  %i.cn = fmul reassoc nsz arcp contract afn float %i.bk, %i.cb
  %i.co = fadd reassoc nsz arcp contract afn float %i.cn, %i.cm
  %i.cp = fmul reassoc nsz arcp contract afn float %i.bt, %i.cd
  %i.cq = fadd reassoc nsz arcp contract afn float %i.co, %i.cp ; 3 uses
  %i.cr = fmul reassoc nsz arcp contract afn float %i.be, %i.bz
  %i.cs = fmul reassoc nsz arcp contract afn float %i.bn, %i.cb
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cs, %i.cr
  %i.cu = fmul reassoc nsz arcp contract afn float %i.bw, %i.cd
  %i.cv = fadd reassoc nsz arcp contract afn float %i.ct, %i.cu ; 3 uses
  store float %i.cl, ptr %i.ax, align 4, !tbaa !11
  store float %i.cq, ptr %i.bc, align 4, !tbaa !11
  store float %i.cv, ptr %i.bf, align 4, !tbaa !11
  %scevgep.1 = getelementptr i8, ptr %i.b, i64 48
  store float %i.cl, ptr %scevgep.1, align 4, !tbaa !11
  %.sroa.6.0.scevgep.1.sroa_idx = getelementptr i8, ptr %i.b, i64 52
  store float %i.cq, ptr %.sroa.6.0.scevgep.1.sroa_idx, align 4, !tbaa !11
  %.sroa.7.0.scevgep.1.sroa_idx = getelementptr i8, ptr %i.b, i64 56
  store float %i.cv, ptr %.sroa.7.0.scevgep.1.sroa_idx, align 4, !tbaa !11
  %scevgep.2 = getelementptr i8, ptr %i.b, i64 60
  store float %i.cl, ptr %scevgep.2, align 4, !tbaa !11
  %.sroa.6.0.scevgep.2.sroa_idx = getelementptr i8, ptr %i.b, i64 64
  store float %i.cq, ptr %.sroa.6.0.scevgep.2.sroa_idx, align 4, !tbaa !11
  %.sroa.7.0.scevgep.2.sroa_idx = getelementptr i8, ptr %i.b, i64 68
  store float %i.cv, ptr %.sroa.7.0.scevgep.2.sroa_idx, align 4, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %.preheader80, %.thread
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !70
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 2, ptr %i.cz, align 4, !tbaa !33
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %.not = icmp eq i32 %4, 0
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 3, ptr %i.da, align 4, !tbaa !33
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  br i1 %or.cond78, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.da, align 4, !tbaa !33
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %i.da, align 4, !tbaa !33
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p, %bb.o, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(76) ptr @calloc(i64 noundef 1, i64 noundef 76) #23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !16
  tail call void @free(ptr noundef %i.b) #21
  store ptr null, ptr %i.a, align 16, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !72  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %i.f) #21 ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.k = zext nneg i32 %i.g to i64                ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.j, float noundef %i.m) #21
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.k
  %i.r = load float, ptr %i.q, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.o, float noundef %i.r) #21
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !89
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.k
  %i.w = load float, ptr %i.v, align 4, !tbaa !11
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.t, float noundef %i.w) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @dt_bauhaus_combobox_get(ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @init(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_default_init(ptr noundef %0) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !90  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store i32 1, ptr %i.c, align 4, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !11
  ret void
}

declare void @dt_iop_default_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [5 x ptr], align 8                ; 3 uses
  %i.b = tail call ptr @dt_alloc_aligned(i64 noundef 40) #21 ; 7 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.b, ptr %i.c, align 16, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !90  ; 3 uses
  %i.f = tail call ptr @dt_bauhaus_combobox_new(ptr noundef %0) #21 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 11 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !84
  %i.h = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.f, ptr noundef null, ptr noundef nonnull @.str.7) #21 ; 0 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.j = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #21
  tail call void @dt_bauhaus_combobox_add(ptr noundef %i.i, ptr noundef %i.j) #21
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.l = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #21
  tail call void @dt_bauhaus_combobox_add(ptr noundef %i.k, ptr noundef %i.l) #21
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.n = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #21
  tail call void @dt_bauhaus_combobox_add(ptr noundef %i.m, ptr noundef %i.n) #21
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.p = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #21
  tail call void @dt_bauhaus_combobox_add(ptr noundef %i.o, ptr noundef %i.p) #21
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.r = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #21
  tail call void @dt_bauhaus_combobox_add(ptr noundef %i.q, ptr noundef %i.r) #21
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.t = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #21
  tail call void @dt_bauhaus_combobox_add(ptr noundef %i.s, ptr noundef %i.t) #21
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.v = tail call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.14, i64 noundef 13) #21
  tail call void @dt_bauhaus_combobox_add(ptr noundef %i.u, ptr noundef %i.v) #21
end_hunk_0
