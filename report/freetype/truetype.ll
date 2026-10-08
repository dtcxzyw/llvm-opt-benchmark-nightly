Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/truetype?download=true
inline.NumInlined: 310
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@TT_RunIns:bb.a
    i8 123, label %bb.rs
    i8 124, label %bb.sb
    i8 125, label %bb.sc
    i8 126, label %Ins_SPVTL.exitthread-pre-split
    i8 127, label %Ins_SPVTL.exitthread-pre-split
    i8 -128, label %bb.sd
    i8 -127, label %bb.sl
    i8 -126, label %bb.sp
    i8 -125, label %bb.st
    i8 -124, label %bb.st
    i8 -123, label %bb.tc
    i8 -122, label %bb.tv
    i8 -121, label %bb.tv
    i8 -120, label %bb.ui
    i8 -119, label %bb.uw
    i8 -118, label %bb.vm
    i8 -117, label %bb.vn
    i8 -116, label %bb.vp
    i8 -115, label %bb.vr
    i8 -114, label %bb.vt
    i8 -113, label %bb.wd
    i8 -112, label %bb.wd
    i8 -111, label %bb.wm
    i8 -110, label %bb.wq
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %.tr.i = zext nneg i8 %i.dy to i16
  %i.ex = shl i16 %.tr.i, 14
  %i.ey = and i16 %i.ex, 16384                    ; 5 uses
  %i.ez = xor i16 %i.ey, 16384                    ; 4 uses
  %i.fa = icmp samesign ult i8 %i.dy, 4
  br i1 %i.fa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i16 %i.ey, ptr %i.am, align 8, !tbaa !242
  store i16 %i.ez, ptr %i.ao, align 2, !tbaa !243
  store i16 %i.ey, ptr %i.ah, align 4, !tbaa !244
  store i16 %i.ez, ptr %i.aj, align 2, !tbaa !245
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.fb = and i8 %i.dy, 2
  %i.fc = icmp eq i8 %i.fb, 0
  br i1 %i.fc, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %i.fd = load <2 x i16>, ptr %i.ap, align 4, !tbaa !128
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  store i16 %i.ey, ptr %i.ap, align 4, !tbaa !246
  store i16 %i.ez, ptr %i.aq, align 2, !tbaa !247
  %i.fe = insertelement <2 x i16> poison, i16 %i.ey, i64 0
  %i.ff = insertelement <2 x i16> %i.fe, i16 %i.ez, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.fg = phi <2 x i16> [ %i.fd, %._crit_edge.i ], [ %i.ff, %bb.j ] ; 3 uses
  %i.fh = load i16, ptr %i.am, align 8, !tbaa !242 ; 2 uses
  %i.fi = sext i16 %i.fh to i64
  %i.fj = extractelement <2 x i16> %i.fg, i64 0   ; 2 uses
  %i.fk = sext i16 %i.fj to i64                   ; 2 uses
  %i.fl = mul nsw i64 %i.fi, %i.fk
  %i.fm = load i16, ptr %i.ao, align 2, !tbaa !243 ; 2 uses
  %i.fn = sext i16 %i.fm to i64
  %i.fo = extractelement <2 x i16> %i.fg, i64 1   ; 2 uses
  %i.fp = sext i16 %i.fo to i64                   ; 2 uses
  %i.fq = mul nsw i64 %i.fn, %i.fp
  %i.fr = add nsw i64 %i.fl, 8192
  %i.fs = add nsw i64 %i.fr, %i.fq
  %i.ft = ashr i64 %i.fs, 14                      ; 4 uses
  %i.fu = icmp sgt i64 %i.ft, 16381
  br i1 %i.fu, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fv = add nsw i64 %i.ft, 1023
  %or.cond.i.i = icmp ult i64 %i.fv, 2047
  br i1 %or.cond.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %.critedge.i.i

bb.n:                                             ; preds = %bb.l
  %i.fw = shl nsw i64 %i.fk, 16
  %i.fx = sdiv i64 %i.fw, %i.ft
  store i64 %i.fx, ptr %i.ar, align 8, !tbaa !248
  %i.fy = shl nsw i64 %i.fp, 16
  %i.fz = sdiv i64 %i.fy, %i.ft
  store i64 %i.fz, ptr %i.as, align 8, !tbaa !249
  br label %.critedge.i.i

bb.o:                                             ; preds = %bb.k
  %i.ga = sext <2 x i16> %i.fg to <2 x i32>
  %i.gb = shl nsw <2 x i32> %i.ga, splat (i32 2)
  %i.gc = sext <2 x i32> %i.gb to <2 x i64>
  store <2 x i64> %i.gc, ptr %i.ar, align 8, !tbaa !185
  %i.gd = icmp eq i16 %i.fj, 16384
  br i1 %i.gd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ge = icmp eq i16 %i.fo, 16384
  br i1 %i.ge, label %bb.q, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.p, %bb.n, %bb.m
  br label %bb.q

bb.q:                                             ; preds = %.critedge.i.i, %bb.p, %bb.o
  %Direct_Move_Y.sink.i.i = phi ptr [ @Direct_Move_X, %bb.o ], [ @Direct_Move, %.critedge.i.i ], [ @Direct_Move_Y, %bb.p ]
  %Direct_Move_Orig_Y.sink.i.i = phi ptr [ @Direct_Move_Orig_X, %bb.o ], [ @Direct_Move_Orig, %.critedge.i.i ], [ @Direct_Move_Orig_Y, %bb.p ]
  store ptr %Direct_Move_Y.sink.i.i, ptr %i.at, align 8, !tbaa !250
  store ptr %Direct_Move_Orig_Y.sink.i.i, ptr %i.au, align 8, !tbaa !251
  %i.gf = icmp eq i16 %i.fh, 16384
  %i.gg = icmp eq i16 %i.fm, 16384
  %Project_y.Project = select i1 %i.gg, ptr @Project_y, ptr @Project
  %Project.sink = select i1 %i.gf, ptr @Project_x, ptr %Project_y.Project
  store ptr %Project.sink, ptr %i.av, align 8, !tbaa !252
  %i.gh = load i16, ptr %i.ah, align 4, !tbaa !244
  %i.gi = icmp eq i16 %i.gh, 16384
  br i1 %i.gi, label %Ins_SxyTCA.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gj = load i16, ptr %i.aj, align 2, !tbaa !245
  %i.gk = icmp eq i16 %i.gj, 16384
  %Project_y.Dual_Project = select i1 %i.gk, ptr @Project_y, ptr @Dual_Project
  br label %Ins_SxyTCA.exit

Ins_SxyTCA.exit:                                  ; preds = %bb.r, %bb.q
  %Project_x.sink = phi ptr [ @Project_x, %bb.q ], [ %Project_y.Dual_Project, %bb.r ]
  store ptr %Project_x.sink, ptr %i.aw, align 8, !tbaa !253
  store i64 0, ptr %i.ax, align 8, !tbaa !254
  br label %Ins_SPVTL.exitthread-pre-split

bb.s:                                             ; preds = %bb.f, %bb.f
  %.val = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.gl = getelementptr i8, ptr %i.ew, i64 8
  %.val295 = load i64, ptr %i.gl, align 8, !tbaa !185 ; 2 uses
  %i.gm = trunc i64 %.val295 to i16
  %i.gn = load i16, ptr %i.ae, align 8, !tbaa !617
  %.not.i.i = icmp ugt i16 %i.gn, %i.gm
  br i1 %.not.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.go = trunc i64 %.val to i16
  %i.gp = load i16, ptr %i.ad, align 8, !tbaa !255
  %.not30.i.i = icmp ugt i16 %i.gp, %i.go
  br i1 %.not30.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.gq = load i8, ptr %i.i, align 2, !tbaa !163
  %.not32.i.i = icmp eq i8 %i.gq, 0
  br i1 %.not32.i.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.v:                                             ; preds = %bb.t
  %i.gr = load ptr, ptr %i.ak, align 8, !tbaa !256
  %i.gs = and i64 %.val, 65535
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.gs ; 2 uses
  %i.gu = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.gv = and i64 %.val295, 65535
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %i.gv ; 2 uses
  %i.gx = load i64, ptr %i.gt, align 8, !tbaa !230 ; 2 uses
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !230 ; 2 uses
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !257 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !257 ; 2 uses
  %i.he = sub i64 %i.hb, %i.hd                    ; 2 uses
  %i.hf = icmp eq i64 %i.gx, %i.gy
  %i.hg = icmp eq i64 %i.hb, %i.hd
  %or.cond.i.i336 = select i1 %i.hf, i1 %i.hg, i1 false ; 2 uses
  %spec.select.i.i = select i1 %or.cond.i.i336, i64 16384, i64 %i.gz ; 2 uses
  %i.hh = and i8 %i.dy, 1
  %.not3134.i.i = icmp eq i8 %i.hh, 0
  %.not31.i.i = or i1 %.not3134.i.i, %or.cond.i.i336 ; 2 uses
  %i.hi = sub i64 0, %i.he
  %.1.i.i = select i1 %.not31.i.i, i64 %spec.select.i.i, i64 %i.hi ; 2 uses
  %.025.i.i = select i1 %.not31.i.i, i64 %i.he, i64 %spec.select.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.hj = or i64 %.025.i.i, %.1.i.i
  %or.cond.i.i.i = icmp eq i64 %i.hj, 0
  br i1 %or.cond.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i64 %.1.i.i, ptr %7, align 8, !tbaa !230
  store i64 %.025.i.i, ptr %i.dr, align 8, !tbaa !257
  %i.hk = call i32 @FT_Vector_NormLen(ptr noundef nonnull %7) #21 ; 0 uses
  %i.hl = load i64, ptr %7, align 8, !tbaa !230
  %i.hm = sdiv i64 %i.hl, 4
  %i.hn = trunc i64 %i.hm to i16
  store i16 %i.hn, ptr %i.am, align 8, !tbaa !619
  %i.ho = load i64, ptr %i.dr, align 8, !tbaa !257
  %i.hp = sdiv i64 %i.ho, 4
  %i.hq = trunc i64 %i.hp to i16
  store i16 %i.hq, ptr %i.ao, align 2, !tbaa !620
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.hr = load i32, ptr %i.am, align 8            ; 3 uses
  store i32 %i.hr, ptr %i.ah, align 4, !tbaa !128
  %i.hs = trunc i32 %i.hr to i16                  ; 2 uses
  %i.ht = sext i16 %i.hs to i64
  %8 = lshr i32 %i.hr, 16                         ; 2 uses
  %9 = zext nneg i32 %8 to i64
  %sext.i = shl nuw i64 %9, 48
  %10 = ashr exact i64 %sext.i, 48
  %i.hu = load <2 x i16>, ptr %i.ap, align 4, !tbaa !128 ; 3 uses
  %i.hv = extractelement <2 x i16> %i.hu, i64 0   ; 2 uses
  %i.hw = sext i16 %i.hv to i64                   ; 2 uses
  %i.hx = mul nsw i64 %i.hw, %i.ht
  %i.hy = extractelement <2 x i16> %i.hu, i64 1   ; 2 uses
  %i.hz = sext i16 %i.hy to i64                   ; 2 uses
  %i.ia = mul nsw i64 %10, %i.hz
  %i.ib = add nsw i64 %i.hx, 8192
  %i.ic = add nsw i64 %i.ib, %i.ia
  %i.id = ashr i64 %i.ic, 14                      ; 4 uses
  %i.ie = icmp sgt i64 %i.id, 16381
  br i1 %i.ie, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.if = add nsw i64 %i.id, 1023
  %or.cond.i7.i = icmp ult i64 %i.if, 2047
  br i1 %or.cond.i7.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %.critedge.i.i337

bb.aa:                                            ; preds = %bb.y
  %i.ig = shl nsw i64 %i.hw, 16
  %i.ih = sdiv i64 %i.ig, %i.id
  store i64 %i.ih, ptr %i.ar, align 8, !tbaa !248
  %i.ii = shl nsw i64 %i.hz, 16
  %i.ij = sdiv i64 %i.ii, %i.id
  store i64 %i.ij, ptr %i.as, align 8, !tbaa !249
  br label %.critedge.i.i337

bb.ab:                                            ; preds = %bb.x
  %i.ik = sext <2 x i16> %i.hu to <2 x i32>
  %i.il = shl nsw <2 x i32> %i.ik, splat (i32 2)
  %i.im = sext <2 x i32> %i.il to <2 x i64>
  store <2 x i64> %i.im, ptr %i.ar, align 8, !tbaa !185
  %i.in = icmp eq i16 %i.hv, 16384
  br i1 %i.in, label %Compute_Funcs.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.io = icmp eq i16 %i.hy, 16384
  br i1 %i.io, label %Compute_Funcs.exit.i, label %.critedge.i.i337

.critedge.i.i337:                                 ; preds = %bb.ac, %bb.aa, %bb.z
  br label %Compute_Funcs.exit.i

Compute_Funcs.exit.i:                             ; preds = %.critedge.i.i337, %bb.ac, %bb.ab
  %Direct_Move_Y.sink.i.i338 = phi ptr [ @Direct_Move_X, %bb.ab ], [ @Direct_Move, %.critedge.i.i337 ], [ @Direct_Move_Y, %bb.ac ]
  %Direct_Move_Orig_Y.sink.i.i339 = phi ptr [ @Direct_Move_Orig_X, %bb.ab ], [ @Direct_Move_Orig, %.critedge.i.i337 ], [ @Direct_Move_Orig_Y, %bb.ac ]
  store ptr %Direct_Move_Y.sink.i.i338, ptr %i.at, align 8, !tbaa !250
  store ptr %Direct_Move_Orig_Y.sink.i.i339, ptr %i.au, align 8, !tbaa !251
  %i.ip = icmp eq i16 %i.hs, 16384                ; 2 uses
  %i.iq = icmp eq i32 %8, 16384                   ; 2 uses
  %Project_y.Project1245 = select i1 %i.iq, ptr @Project_y, ptr @Project
  %Project_y.Dual_Project1246 = select i1 %i.iq, ptr @Project_y, ptr @Dual_Project
  %Project.sink1236.a = select i1 %i.ip, ptr @Project_x, ptr %Project_y.Project1245
  %Project_x.sink.i = select i1 %i.ip, ptr @Project_x, ptr %Project_y.Dual_Project1246
  store ptr %Project.sink1236.a, ptr %i.av, align 8, !tbaa !252
  store ptr %Project_x.sink.i, ptr %i.aw, align 8, !tbaa !253
  store i64 0, ptr %i.ax, align 8, !tbaa !254
  br label %Ins_SPVTL.exitthread-pre-split

bb.ad:                                            ; preds = %bb.f, %bb.f
  %.val296 = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.ir = getelementptr i8, ptr %i.ew, i64 8
  %.val297 = load i64, ptr %i.ir, align 8, !tbaa !185 ; 2 uses
  %i.is = trunc i64 %.val297 to i16
  %i.it = load i16, ptr %i.ae, align 8, !tbaa !617
  %.not.i.i340 = icmp ugt i16 %i.it, %i.is
  br i1 %.not.i.i340, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.iu = trunc i64 %.val296 to i16
  %i.iv = load i16, ptr %i.ad, align 8, !tbaa !255
  %.not30.i.i342 = icmp ugt i16 %i.iv, %i.iu
  br i1 %.not30.i.i342, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.iw = load i8, ptr %i.i, align 2, !tbaa !163
  %.not32.i.i341 = icmp eq i8 %i.iw, 0
  br i1 %.not32.i.i341, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.ag:                                            ; preds = %bb.ae
  %i.ix = load ptr, ptr %i.ak, align 8, !tbaa !256
  %i.iy = and i64 %.val296, 65535
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.ix, i64 %i.iy ; 2 uses
  %i.ja = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.jb = and i64 %.val297, 65535
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.ja, i64 %i.jb ; 2 uses
  %i.jd = load i64, ptr %i.iz, align 8, !tbaa !230 ; 2 uses
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !230 ; 2 uses
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !257 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !257 ; 2 uses
  %i.jk = sub i64 %i.jh, %i.jj                    ; 2 uses
  %i.jl = icmp eq i64 %i.jd, %i.je
  %i.jm = icmp eq i64 %i.jh, %i.jj
  %or.cond.i.i343 = select i1 %i.jl, i1 %i.jm, i1 false ; 2 uses
  %spec.select.i.i344 = select i1 %or.cond.i.i343, i64 16384, i64 %i.jf ; 2 uses
  %i.jn = and i8 %i.dy, 1
  %.not3134.i.i345 = icmp eq i8 %i.jn, 0
  %.not31.i.i346 = or i1 %.not3134.i.i345, %or.cond.i.i343 ; 2 uses
  %i.jo = sub i64 0, %i.jk
  %.1.i.i347 = select i1 %.not31.i.i346, i64 %spec.select.i.i344, i64 %i.jo ; 2 uses
  %.025.i.i348 = select i1 %.not31.i.i346, i64 %i.jk, i64 %spec.select.i.i344 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.jp = or i64 %.025.i.i348, %.1.i.i347
  %or.cond.i.i.i349 = icmp eq i64 %i.jp, 0
  br i1 %or.cond.i.i.i349, label %._crit_edge.i354, label %bb.ah

._crit_edge.i354:                                 ; preds = %bb.ag
  %.pre.i355 = load i16, ptr %i.ap, align 4, !tbaa !246
  %.pre2.i = load i16, ptr %i.aq, align 2, !tbaa !247
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i64 %.1.i.i347, ptr %6, align 8, !tbaa !230
  store i64 %.025.i.i348, ptr %i.dq, align 8, !tbaa !257
  %i.jq = call i32 @FT_Vector_NormLen(ptr noundef nonnull %6) #21 ; 0 uses
  %i.jr = load i64, ptr %6, align 8, !tbaa !230
  %i.js = sdiv i64 %i.jr, 4
  %i.jt = trunc i64 %i.js to i16                  ; 2 uses
  store i16 %i.jt, ptr %i.ap, align 4, !tbaa !619
  %i.ju = load i64, ptr %i.dq, align 8, !tbaa !257
  %i.jv = sdiv i64 %i.ju, 4
  %i.jw = trunc i64 %i.jv to i16                  ; 2 uses
  store i16 %i.jw, ptr %i.aq, align 2, !tbaa !620
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge.i354
  %i.jx = phi i16 [ %.pre2.i, %._crit_edge.i354 ], [ %i.jw, %bb.ah ] ; 3 uses
  %i.jy = phi i16 [ %.pre.i355, %._crit_edge.i354 ], [ %i.jt, %bb.ah ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.jz = load i16, ptr %i.am, align 8, !tbaa !242 ; 2 uses
  %i.ka = sext i16 %i.jz to i64
  %i.kb = sext i16 %i.jy to i64                   ; 2 uses
  %i.kc = mul nsw i64 %i.ka, %i.kb
  %i.kd = load i16, ptr %i.ao, align 2, !tbaa !243 ; 2 uses
  %i.ke = sext i16 %i.kd to i64
  %i.kf = sext i16 %i.jx to i64                   ; 2 uses
  %i.kg = mul nsw i64 %i.ke, %i.kf
  %i.kh = add nsw i64 %i.kc, 8192
  %i.ki = add nsw i64 %i.kh, %i.kg
  %i.kj = ashr i64 %i.ki, 14                      ; 4 uses
  %i.kk = icmp sgt i64 %i.kj, 16381
  br i1 %i.kk, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kl = add nsw i64 %i.kj, 1023
  %or.cond.i5.i = icmp ult i64 %i.kl, 2047
  br i1 %or.cond.i5.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %.critedge.i.i350

bb.al:                                            ; preds = %bb.aj
  %i.km = shl nsw i64 %i.kb, 16
  %i.kn = sdiv i64 %i.km, %i.kj
  store i64 %i.kn, ptr %i.ar, align 8, !tbaa !248
  %i.ko = shl nsw i64 %i.kf, 16
  %i.kp = sdiv i64 %i.ko, %i.kj
  store i64 %i.kp, ptr %i.as, align 8, !tbaa !249
  br label %.critedge.i.i350

bb.am:                                            ; preds = %bb.ai
  %i.kq = sext i16 %i.jy to i32
  %i.kr = shl nsw i32 %i.kq, 2
  %i.ks = sext i32 %i.kr to i64
  store i64 %i.ks, ptr %i.ar, align 8, !tbaa !248
  %i.kt = sext i16 %i.jx to i32
  %i.ku = shl nsw i32 %i.kt, 2
  %i.kv = sext i32 %i.ku to i64
  store i64 %i.kv, ptr %i.as, align 8, !tbaa !249
  %i.kw = icmp eq i16 %i.jy, 16384
  br i1 %i.kw, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kx = icmp eq i16 %i.jx, 16384
  br i1 %i.kx, label %bb.ao, label %.critedge.i.i350

.critedge.i.i350:                                 ; preds = %bb.an, %bb.al, %bb.ak
  br label %bb.ao

bb.ao:                                            ; preds = %.critedge.i.i350, %bb.an, %bb.am
  %Direct_Move_Y.sink.i.i351 = phi ptr [ @Direct_Move_X, %bb.am ], [ @Direct_Move, %.critedge.i.i350 ], [ @Direct_Move_Y, %bb.an ]
  %Direct_Move_Orig_Y.sink.i.i352 = phi ptr [ @Direct_Move_Orig_X, %bb.am ], [ @Direct_Move_Orig, %.critedge.i.i350 ], [ @Direct_Move_Orig_Y, %bb.an ]
  store ptr %Direct_Move_Y.sink.i.i351, ptr %i.at, align 8, !tbaa !250
  store ptr %Direct_Move_Orig_Y.sink.i.i352, ptr %i.au, align 8, !tbaa !251
  %i.ky = icmp eq i16 %i.jz, 16384
  %i.kz = icmp eq i16 %i.kd, 16384
  %Project_y.Project1247 = select i1 %i.kz, ptr @Project_y, ptr @Project
  %Project.sink1237 = select i1 %i.ky, ptr @Project_x, ptr %Project_y.Project1247
  store ptr %Project.sink1237, ptr %i.av, align 8, !tbaa !252
  %i.la = load i16, ptr %i.ah, align 4, !tbaa !244
  %i.lb = icmp eq i16 %i.la, 16384
  br i1 %i.lb, label %Compute_Funcs.exit.i353, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lc = load i16, ptr %i.aj, align 2, !tbaa !245
  %i.ld = icmp eq i16 %i.lc, 16384
  %Project_y.Dual_Project1248 = select i1 %i.ld, ptr @Project_y, ptr @Dual_Project
  br label %Compute_Funcs.exit.i353

Compute_Funcs.exit.i353:                          ; preds = %bb.ap, %bb.ao
  %Dual_Project.sink = phi ptr [ @Project_x, %bb.ao ], [ %Project_y.Dual_Project1248, %bb.ap ]
  store ptr %Dual_Project.sink, ptr %i.aw, align 8, !tbaa !253
  store i64 0, ptr %i.ax, align 8, !tbaa !254
  br label %Ins_SPVTL.exitthread-pre-split

bb.aq:                                            ; preds = %bb.f
  %.val298 = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.le = getelementptr i8, ptr %i.ew, i64 8
  %.val299 = load i64, ptr %i.le, align 8, !tbaa !185
  %sext.i356 = shl i64 %.val299, 48
  %i.lf = ashr exact i64 %sext.i356, 48           ; 2 uses
  %sext7.i = shl i64 %.val298, 48
  %i.lg = ashr exact i64 %sext7.i, 48             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.lh = or i64 %i.lf, %i.lg
  %or.cond.i.i357 = icmp eq i64 %i.lh, 0
  br i1 %or.cond.i.i357, label %Normalize.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i64 %i.lg, ptr %5, align 8, !tbaa !230
  store i64 %i.lf, ptr %i.dp, align 8, !tbaa !257
  %i.li = call i32 @FT_Vector_NormLen(ptr noundef nonnull %5) #21 ; 0 uses
  %i.lj = load i64, ptr %5, align 8, !tbaa !230
  %i.lk = sdiv i64 %i.lj, 4
  %i.ll = trunc i64 %i.lk to i16
  store i16 %i.ll, ptr %i.am, align 8, !tbaa !619
  %i.lm = load i64, ptr %i.dp, align 8, !tbaa !257
  %i.ln = sdiv i64 %i.lm, 4
  %i.lo = trunc i64 %i.ln to i16
  store i16 %i.lo, ptr %i.ao, align 2, !tbaa !620
  br label %Normalize.exit.i

Normalize.exit.i:                                 ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.lp = load i32, ptr %i.am, align 8            ; 3 uses
  store i32 %i.lp, ptr %i.ah, align 4, !tbaa !128
  %i.lq = trunc i32 %i.lp to i16                  ; 2 uses
  %i.lr = sext i16 %i.lq to i64
  %11 = lshr i32 %i.lp, 16                        ; 2 uses
  %12 = zext nneg i32 %11 to i64
  %sext1.i = shl nuw i64 %12, 48
  %13 = ashr exact i64 %sext1.i, 48
  %i.ls = load <2 x i16>, ptr %i.ap, align 4, !tbaa !128 ; 3 uses
  %i.lt = extractelement <2 x i16> %i.ls, i64 0   ; 2 uses
  %i.lu = sext i16 %i.lt to i64                   ; 2 uses
  %i.lv = mul nsw i64 %i.lu, %i.lr
  %i.lw = extractelement <2 x i16> %i.ls, i64 1   ; 2 uses
  %i.lx = sext i16 %i.lw to i64                   ; 2 uses
  %i.ly = mul nsw i64 %13, %i.lx
  %i.lz = add nsw i64 %i.lv, 8192
  %i.ma = add nsw i64 %i.lz, %i.ly
  %i.mb = ashr i64 %i.ma, 14                      ; 4 uses
  %i.mc = icmp sgt i64 %i.mb, 16381
  br i1 %i.mc, label %bb.av, label %bb.as

bb.as:                                            ; preds = %Normalize.exit.i
  %i.md = add nsw i64 %i.mb, 1023
  %or.cond.i8.i = icmp ult i64 %i.md, 2047
  br i1 %or.cond.i8.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %.critedge.i.i358

bb.au:                                            ; preds = %bb.as
  %i.me = shl nsw i64 %i.lu, 16
  %i.mf = sdiv i64 %i.me, %i.mb
  store i64 %i.mf, ptr %i.ar, align 8, !tbaa !248
  %i.mg = shl nsw i64 %i.lx, 16
  %i.mh = sdiv i64 %i.mg, %i.mb
  store i64 %i.mh, ptr %i.as, align 8, !tbaa !249
  br label %.critedge.i.i358

bb.av:                                            ; preds = %Normalize.exit.i
  %i.mi = sext <2 x i16> %i.ls to <2 x i32>
  %i.mj = shl nsw <2 x i32> %i.mi, splat (i32 2)
  %i.mk = sext <2 x i32> %i.mj to <2 x i64>
  store <2 x i64> %i.mk, ptr %i.ar, align 8, !tbaa !185
  %i.ml = icmp eq i16 %i.lt, 16384
  br i1 %i.ml, label %Ins_SPVFS.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mm = icmp eq i16 %i.lw, 16384
  br i1 %i.mm, label %Ins_SPVFS.exit, label %.critedge.i.i358

.critedge.i.i358:                                 ; preds = %bb.aw, %bb.au, %bb.at
  br label %Ins_SPVFS.exit

Ins_SPVFS.exit:                                   ; preds = %.critedge.i.i358, %bb.aw, %bb.av
  %Direct_Move_Y.sink.i.i359 = phi ptr [ @Direct_Move_X, %bb.av ], [ @Direct_Move, %.critedge.i.i358 ], [ @Direct_Move_Y, %bb.aw ]
  %Direct_Move_Orig_Y.sink.i.i360 = phi ptr [ @Direct_Move_Orig_X, %bb.av ], [ @Direct_Move_Orig, %.critedge.i.i358 ], [ @Direct_Move_Orig_Y, %bb.aw ]
  store ptr %Direct_Move_Y.sink.i.i359, ptr %i.at, align 8, !tbaa !250
  store ptr %Direct_Move_Orig_Y.sink.i.i360, ptr %i.au, align 8, !tbaa !251
  %i.mn = icmp eq i16 %i.lq, 16384                ; 2 uses
  %i.mo = icmp eq i32 %11, 16384                  ; 2 uses
  %Project_y.Project1249 = select i1 %i.mo, ptr @Project_y, ptr @Project
  %Project_y.Dual_Project1250 = select i1 %i.mo, ptr @Project_y, ptr @Dual_Project
  %Project_x.sink1238 = select i1 %i.mn, ptr @Project_x, ptr %Project_y.Project1249
  %Project_x.sink.i362 = select i1 %i.mn, ptr @Project_x, ptr %Project_y.Dual_Project1250
  store ptr %Project_x.sink1238, ptr %i.av, align 8, !tbaa !252
  store ptr %Project_x.sink.i362, ptr %i.aw, align 8, !tbaa !253
  store i64 0, ptr %i.ax, align 8, !tbaa !254
  br label %Ins_SPVTL.exitthread-pre-split

bb.ax:                                            ; preds = %bb.f
  %.val300 = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.mp = getelementptr i8, ptr %i.ew, i64 8
  %.val301 = load i64, ptr %i.mp, align 8, !tbaa !185
  %sext.i363 = shl i64 %.val301, 48
  %i.mq = ashr exact i64 %sext.i363, 48           ; 2 uses
  %sext5.i = shl i64 %.val300, 48
  %i.mr = ashr exact i64 %sext5.i, 48             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ms = or i64 %i.mq, %i.mr
  %or.cond.i.i364 = icmp eq i64 %i.ms, 0
  br i1 %or.cond.i.i364, label %.Normalize.exit_crit_edge.i, label %bb.ay

.Normalize.exit_crit_edge.i:                      ; preds = %bb.ax
  %.pre.i370 = load i16, ptr %i.ap, align 4, !tbaa !246
  %.pre1.i = load i16, ptr %i.aq, align 2, !tbaa !247
  br label %Normalize.exit.i365

bb.ay:                                            ; preds = %bb.ax
  store i64 %i.mr, ptr %4, align 8, !tbaa !230
  store i64 %i.mq, ptr %i.do, align 8, !tbaa !257
  %i.mt = call i32 @FT_Vector_NormLen(ptr noundef nonnull %4) #21 ; 0 uses
  %i.mu = load i64, ptr %4, align 8, !tbaa !230
  %i.mv = sdiv i64 %i.mu, 4
  %i.mw = trunc i64 %i.mv to i16                  ; 2 uses
  store i16 %i.mw, ptr %i.ap, align 4, !tbaa !619
  %i.mx = load i64, ptr %i.do, align 8, !tbaa !257
  %i.my = sdiv i64 %i.mx, 4
  %i.mz = trunc i64 %i.my to i16                  ; 2 uses
  store i16 %i.mz, ptr %i.aq, align 2, !tbaa !620
  br label %Normalize.exit.i365

Normalize.exit.i365:                              ; preds = %bb.ay, %.Normalize.exit_crit_edge.i
  %i.na = phi i16 [ %.pre1.i, %.Normalize.exit_crit_edge.i ], [ %i.mz, %bb.ay ] ; 3 uses
  %i.nb = phi i16 [ %.pre.i370, %.Normalize.exit_crit_edge.i ], [ %i.mw, %bb.ay ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.nc = load i16, ptr %i.am, align 8, !tbaa !242 ; 2 uses
  %i.nd = sext i16 %i.nc to i64
  %i.ne = sext i16 %i.nb to i64                   ; 2 uses
  %i.nf = mul nsw i64 %i.nd, %i.ne
  %i.ng = load i16, ptr %i.ao, align 2, !tbaa !243 ; 2 uses
  %i.nh = sext i16 %i.ng to i64
  %i.ni = sext i16 %i.na to i64                   ; 2 uses
  %i.nj = mul nsw i64 %i.nh, %i.ni
  %i.nk = add nsw i64 %i.nf, 8192
  %i.nl = add nsw i64 %i.nk, %i.nj
  %i.nm = ashr i64 %i.nl, 14                      ; 4 uses
  %i.nn = icmp sgt i64 %i.nm, 16381
  br i1 %i.nn, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %Normalize.exit.i365
  %i.no = add nsw i64 %i.nm, 1023
  %or.cond.i6.i = icmp ult i64 %i.no, 2047
  br i1 %or.cond.i6.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %.critedge.i.i366

bb.bb:                                            ; preds = %bb.az
  %i.np = shl nsw i64 %i.ne, 16
  %i.nq = sdiv i64 %i.np, %i.nm
  store i64 %i.nq, ptr %i.ar, align 8, !tbaa !248
  %i.nr = shl nsw i64 %i.ni, 16
  %i.ns = sdiv i64 %i.nr, %i.nm
  store i64 %i.ns, ptr %i.as, align 8, !tbaa !249
  br label %.critedge.i.i366

bb.bc:                                            ; preds = %Normalize.exit.i365
  %i.nt = sext i16 %i.nb to i32
  %i.nu = shl nsw i32 %i.nt, 2
  %i.nv = sext i32 %i.nu to i64
  store i64 %i.nv, ptr %i.ar, align 8, !tbaa !248
  %i.nw = sext i16 %i.na to i32
  %i.nx = shl nsw i32 %i.nw, 2
  %i.ny = sext i32 %i.nx to i64
  store i64 %i.ny, ptr %i.as, align 8, !tbaa !249
  %i.nz = icmp eq i16 %i.nb, 16384
  br i1 %i.nz, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.oa = icmp eq i16 %i.na, 16384
  br i1 %i.oa, label %bb.be, label %.critedge.i.i366

.critedge.i.i366:                                 ; preds = %bb.bd, %bb.bb, %bb.ba
  br label %bb.be

bb.be:                                            ; preds = %.critedge.i.i366, %bb.bd, %bb.bc
  %Direct_Move_Y.sink.i.i367 = phi ptr [ @Direct_Move_X, %bb.bc ], [ @Direct_Move, %.critedge.i.i366 ], [ @Direct_Move_Y, %bb.bd ]
  %Direct_Move_Orig_Y.sink.i.i368 = phi ptr [ @Direct_Move_Orig_X, %bb.bc ], [ @Direct_Move_Orig, %.critedge.i.i366 ], [ @Direct_Move_Orig_Y, %bb.bd ]
  store ptr %Direct_Move_Y.sink.i.i367, ptr %i.at, align 8, !tbaa !250
  store ptr %Direct_Move_Orig_Y.sink.i.i368, ptr %i.au, align 8, !tbaa !251
  %i.ob = icmp eq i16 %i.nc, 16384
  %i.oc = icmp eq i16 %i.ng, 16384
  %Project_y.Project1251 = select i1 %i.oc, ptr @Project_y, ptr @Project
  %Project.sink1239 = select i1 %i.ob, ptr @Project_x, ptr %Project_y.Project1251
  store ptr %Project.sink1239, ptr %i.av, align 8, !tbaa !252
  %i.od = load i16, ptr %i.ah, align 4, !tbaa !244
  %i.oe = icmp eq i16 %i.od, 16384
  br i1 %i.oe, label %Ins_SFVFS.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.of = load i16, ptr %i.aj, align 2, !tbaa !245
  %i.og = icmp eq i16 %i.of, 16384
  %Project_y.Dual_Project1252.a = select i1 %i.og, ptr @Project_y, ptr @Dual_Project
  br label %Ins_SFVFS.exit

Ins_SFVFS.exit:                                   ; preds = %bb.bf, %bb.be
  %Project_x.sink1240 = phi ptr [ @Project_x, %bb.be ], [ %Project_y.Dual_Project1252.a, %bb.bf ]
  store ptr %Project_x.sink1240, ptr %i.aw, align 8, !tbaa !253
  store i64 0, ptr %i.ax, align 8, !tbaa !254
  br label %Ins_SPVTL.exitthread-pre-split

bb.bg:                                            ; preds = %bb.f
  %i.oh = load <2 x i16>, ptr %i.am, align 8, !tbaa !128
  %i.oi = sext <2 x i16> %i.oh to <2 x i64>
  store <2 x i64> %i.oi, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.bh:                                            ; preds = %bb.f
  %i.oj = load <2 x i16>, ptr %i.ap, align 4, !tbaa !128
  %i.ok = sext <2 x i16> %i.oj to <2 x i64>
  store <2 x i64> %i.ok, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.bi:                                            ; preds = %bb.f
  %i.ol = load i32, ptr %i.am, align 8            ; 5 uses
  store i32 %i.ol, ptr %i.ap, align 4, !tbaa !128
  %i.om = trunc i32 %i.ol to i16                  ; 3 uses
  %i.on = sext i16 %i.om to i64                   ; 3 uses
  %i.oo = mul nsw i64 %i.on, %i.on
  %i.op = lshr i32 %i.ol, 16                      ; 3 uses
  %14 = zext nneg i32 %i.op to i64
  %sext4.i = shl nuw i64 %14, 48                  ; 2 uses
  %15 = ashr exact i64 %sext4.i, 48               ; 2 uses
  %i.oq = mul nsw i64 %15, %15
  %i.or = add nuw nsw i64 %i.oo, 8192
  %i.os = add nuw nsw i64 %i.or, %i.oq            ; 3 uses
  %i.ot = lshr i64 %i.os, 14                      ; 2 uses
  %i.ou = icmp samesign ugt i64 %i.os, 268402687
  br i1 %i.ou, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %or.cond.i.i372 = icmp samesign ult i64 %i.os, 16777216
  br i1 %or.cond.i.i372, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bj
  %i.ov = shl nsw i64 %i.on, 16
  %i.ow = sdiv i64 %i.ov, %i.ot
  store i64 %i.ow, ptr %i.ar, align 8, !tbaa !248
  %16 = ashr exact i64 %sext4.i, 32
  %i.ox = sdiv i64 %16, %i.ot
  store i64 %i.ox, ptr %i.as, align 8, !tbaa !249
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bi
  %sext.i374 = shl i32 %i.ol, 16
  %i.oy = insertelement <2 x i32> poison, i32 %sext.i374, i64 0
  %i.oz = insertelement <2 x i32> %i.oy, i32 %i.ol, i64 1
  %i.pa = ashr <2 x i32> %i.oz, splat (i32 14)
  %i.pb = and <2 x i32> %i.pa, <i32 -1, i32 -4>
  %i.pc = sext <2 x i32> %i.pb to <2 x i64>
  store <2 x i64> %i.pc, ptr %i.ar, align 8, !tbaa !185
  %i.pd = icmp eq i16 %i.om, 16384
  br i1 %i.pd, label %.sink.split, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pe = icmp eq i32 %i.op, 16384
  br i1 %i.pe, label %.sink.split, label %.thread10.i

.thread10.i:                                      ; preds = %bb.bn
  store <2 x ptr> <ptr @Direct_Move, ptr @Direct_Move_Orig>, ptr %i.at, align 8, !tbaa !154
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bl, %bb.bk
  store <2 x ptr> <ptr @Direct_Move, ptr @Direct_Move_Orig>, ptr %i.at, align 8, !tbaa !154
  %i.pf = icmp eq i16 %i.om, 16384
  br i1 %i.pf, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.thread10.i
  %i.pg = icmp eq i32 %i.op, 16384
  %spec.select = select i1 %i.pg, ptr @Project_y, ptr @Project
  br label %bb.bq

.sink.split:                                      ; preds = %bb.bn, %bb.bm
  %Direct_Move_Y.sink = phi ptr [ @Direct_Move_X, %bb.bm ], [ @Direct_Move_Y, %bb.bn ]
  %Direct_Move_Orig_Y.sink = phi ptr [ @Direct_Move_Orig_X, %bb.bm ], [ @Direct_Move_Orig_Y, %bb.bn ]
  %Project.sink1241.ph = phi ptr [ @Project_x, %bb.bm ], [ @Project_y, %bb.bn ]
  store ptr %Direct_Move_Y.sink, ptr %i.at, align 8, !tbaa !250
  store ptr %Direct_Move_Orig_Y.sink, ptr %i.au, align 8, !tbaa !251
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.sink.split, %bb.bo
  %Project.sink1241 = phi ptr [ %Project.sink1241.ph, %.sink.split ], [ %spec.select, %bb.bp ], [ @Project_x, %bb.bo ]
  store ptr %Project.sink1241, ptr %i.av, align 8, !tbaa !252
  %i.ph = load i16, ptr %i.ah, align 4, !tbaa !244
  %i.pi = icmp eq i16 %i.ph, 16384
  br i1 %i.pi, label %Ins_SFVTPV.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pj = load i16, ptr %i.aj, align 2, !tbaa !245
  %i.pk = icmp eq i16 %i.pj, 16384
  %Project_y.Dual_Project1253 = select i1 %i.pk, ptr @Project_y, ptr @Dual_Project
  br label %Ins_SFVTPV.exit

Ins_SFVTPV.exit:                                  ; preds = %bb.br, %bb.bq
  %Project_x.sink1242 = phi ptr [ @Project_x, %bb.bq ], [ %Project_y.Dual_Project1253, %bb.br ]
  store ptr %Project_x.sink1242, ptr %i.aw, align 8, !tbaa !253
  store i64 0, ptr %i.ax, align 8, !tbaa !254
  br label %Ins_SPVTL.exitthread-pre-split

bb.bs:                                            ; preds = %bb.f
  %i.pl = load i64, ptr %i.ew, align 8, !tbaa !185 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !185 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !185 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !185 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !185 ; 2 uses
  %i.pu = trunc i64 %i.pr to i32
  %i.pv = and i32 %i.pu, 65535
  %i.pw = load i16, ptr %i.bu, align 8, !tbaa !258
  %i.px = zext i16 %i.pw to i32                   ; 2 uses
  %.not.i = icmp samesign ult i32 %i.pv, %i.px
  %i.py = trunc i64 %i.pt to i32
  %i.pz = and i32 %i.py, 65535
  %.not95.i = icmp samesign ult i32 %i.pz, %i.px
  %or.cond.i = select i1 %.not.i, i1 %.not95.i, i1 false
  br i1 %or.cond.i, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.qa = trunc i64 %i.pn to i32
  %i.qb = and i32 %i.qa, 65535
  %i.qc = load i16, ptr %i.ad, align 8, !tbaa !255
  %i.qd = zext i16 %i.qc to i32                   ; 2 uses
  %.not96.i = icmp samesign ult i32 %i.qb, %i.qd
  %i.qe = trunc i64 %i.pp to i32
  %i.qf = and i32 %i.qe, 65535
  %.not97.i = icmp samesign ult i32 %i.qf, %i.qd
  %or.cond102.i = select i1 %.not96.i, i1 %.not97.i, i1 false
  br i1 %or.cond102.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.qg = trunc i64 %i.pl to i32
  %i.qh = and i32 %i.qg, 65535
  %i.qi = load i16, ptr %i.ae, align 8, !tbaa !617
  %i.qj = zext i16 %i.qi to i32
  %.not98.i = icmp samesign ult i32 %i.qh, %i.qj
  br i1 %.not98.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.qk = load i8, ptr %i.i, align 2, !tbaa !163
  %.not99.i = icmp eq i8 %i.qk, 0
  br i1 %.not99.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.bw:                                            ; preds = %bb.bu
  %i.ql = load ptr, ptr %i.bv, align 8, !tbaa !259 ; 2 uses
  %i.qm = and i64 %i.pt, 65535                    ; 2 uses
  %i.qn = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %i.qm ; 2 uses
  %i.qo = load i64, ptr %i.qn, align 8, !tbaa !230
  %i.qp = and i64 %i.pr, 65535                    ; 2 uses
  %i.qq = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %i.qp ; 2 uses
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !230 ; 2 uses
  %i.qs = sub i64 %i.qo, %i.qr                    ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !257
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !257 ; 2 uses
  %i.qx = sub i64 %i.qu, %i.qw                    ; 2 uses
  %i.qy = load ptr, ptr %i.ak, align 8, !tbaa !256 ; 2 uses
  %i.qz = and i64 %i.pp, 65535                    ; 2 uses
  %i.ra = getelementptr inbounds nuw [16 x i8], ptr %i.qy, i64 %i.qz ; 2 uses
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !230
  %i.rc = and i64 %i.pn, 65535                    ; 3 uses
  %i.rd = getelementptr inbounds nuw [16 x i8], ptr %i.qy, i64 %i.rc ; 2 uses
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !230 ; 2 uses
  %i.rf = sub i64 %i.rb, %i.re                    ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !257
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !257 ; 2 uses
  %i.rk = sub i64 %i.rh, %i.rj                    ; 3 uses
  %i.rl = sub i64 0, %i.qx                        ; 2 uses
  %i.rm = call i64 @FT_MulDiv(i64 noundef %i.rf, i64 noundef %i.rl, i64 noundef 64) #21
  %i.rn = call i64 @FT_MulDiv(i64 noundef %i.rk, i64 noundef %i.qs, i64 noundef 64) #21
  %i.ro = add i64 %i.rn, %i.rm                    ; 3 uses
  %i.rp = call i64 @FT_MulDiv(i64 noundef %i.rf, i64 noundef %i.qs, i64 noundef 64) #21
  %i.rq = call i64 @FT_MulDiv(i64 noundef %i.rk, i64 noundef %i.qx, i64 noundef 64) #21
  %i.rr = add i64 %i.rq, %i.rp
  %i.rs = call i64 @llvm.abs.i64(i64 %i.ro, i1 true)
  %i.rt = mul i64 %i.rs, 19
  %i.ru = call i64 @llvm.abs.i64(i64 %i.rr, i1 true)
  %i.rv = icmp sgt i64 %i.rt, %i.ru
  br i1 %i.rv, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.rw = sub i64 %i.qw, %i.rj
  %i.rx = sub i64 %i.qr, %i.re
  %i.ry = call i64 @FT_MulDiv(i64 noundef %i.rx, i64 noundef %i.rl, i64 noundef 64) #21
  %i.rz = call i64 @FT_MulDiv(i64 noundef %i.rw, i64 noundef %i.qs, i64 noundef 64) #21
  %i.sa = add i64 %i.rz, %i.ry                    ; 2 uses
  %i.sb = call i64 @FT_MulDiv(i64 noundef %i.sa, i64 noundef %i.rf, i64 noundef %i.ro) #21
  %i.sc = call i64 @FT_MulDiv(i64 noundef %i.sa, i64 noundef %i.rk, i64 noundef %i.ro) #21
  %i.sd = load ptr, ptr %i.ak, align 8, !tbaa !256
  %i.se = getelementptr inbounds nuw [16 x i8], ptr %i.sd, i64 %i.rc ; 2 uses
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !230
  %i.sg = add i64 %i.sf, %i.sb
  %i.sh = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.si = and i64 %i.pl, 65535                    ; 2 uses
  %i.sj = getelementptr inbounds nuw [16 x i8], ptr %i.sh, i64 %i.si ; 2 uses
  store i64 %i.sg, ptr %i.sj, align 8, !tbaa !230
  %i.sk = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !257
  %i.sm = add i64 %i.sl, %i.sc
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.sn = load ptr, ptr %i.ak, align 8, !tbaa !256 ; 2 uses
  %i.so = getelementptr inbounds nuw [16 x i8], ptr %i.sn, i64 %i.rc
  %i.sp = getelementptr inbounds nuw [16 x i8], ptr %i.sn, i64 %i.qz
  %i.sq = load ptr, ptr %i.bv, align 8, !tbaa !259 ; 2 uses
  %i.sr = getelementptr inbounds nuw [16 x i8], ptr %i.sq, i64 %i.qp
  %i.ss = getelementptr inbounds nuw [16 x i8], ptr %i.sq, i64 %i.qm
  %i.st = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.su = and i64 %i.pl, 65535                    ; 2 uses
  %i.sv = getelementptr inbounds nuw [16 x i8], ptr %i.st, i64 %i.su ; 2 uses
  %i.sw = load <2 x i64>, ptr %i.so, align 8, !tbaa !185
  %i.sx = load <2 x i64>, ptr %i.sp, align 8, !tbaa !185
  %i.sy = load <2 x i64>, ptr %i.sr, align 8, !tbaa !185
  %i.sz = load <2 x i64>, ptr %i.ss, align 8, !tbaa !185
  %i.ta = add <2 x i64> %i.sx, %i.sw
  %i.tb = add <2 x i64> %i.ta, %i.sy
  %i.tc = add <2 x i64> %i.tb, %i.sz
  %i.td = sdiv <2 x i64> %i.tc, splat (i64 4)     ; 2 uses
  %i.te = extractelement <2 x i64> %i.td, i64 0
  store i64 %i.te, ptr %i.sv, align 8, !tbaa !230
  %i.tf = extractelement <2 x i64> %i.td, i64 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sink104.i = phi ptr [ %i.sv, %bb.by ], [ %i.sj, %bb.bx ]
  %.sink.i = phi i64 [ %i.tf, %bb.by ], [ %i.sm, %bb.bx ]
  %.pre-phi.i = phi i64 [ %i.su, %bb.by ], [ %i.si, %bb.bx ]
  %i.tg = getelementptr inbounds nuw i8, ptr %.sink104.i, i64 8
  store i64 %.sink.i, ptr %i.tg, align 8, !tbaa !257
  %i.th = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 %.pre-phi.i ; 2 uses
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !186
  %i.tk = or i8 %i.tj, 24
  store i8 %i.tk, ptr %i.ti, align 1, !tbaa !186
end_hunk_0
