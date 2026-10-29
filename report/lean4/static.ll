Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/static?download=true
inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 40
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZL12chacha_blockP15mi_random_cxt_s:.preheader21
  %i.f = insertelement <4 x i32> poison, i32 %i.dy, i64 0
  %i.g = insertelement <4 x i32> %i.f, i32 %i.ea, i64 1
  %i.h = insertelement <4 x i32> %i.g, i32 %i.eg, i64 2
  %i.i = insertelement <4 x i32> %i.h, i32 %i.es, i64 3
  %i.j = add <4 x i32> %i.e, %i.i
  store <4 x i32> %i.j, ptr %i.d, align 4, !tbaa !97
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.l = load <4 x i32>, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !97
  %i.m = insertelement <4 x i32> poison, i32 %i.el, i64 0
  %i.n = insertelement <4 x i32> %i.m, i32 %i.ep, i64 1
  %i.o = insertelement <4 x i32> %i.n, i32 %i.ef, i64 2
  %i.p = insertelement <4 x i32> %i.o, i32 %i.ed, i64 3
  %i.q = add <4 x i32> %i.l, %i.p
  store <4 x i32> %i.q, ptr %i.k, align 4, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.s = load i32, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !97
  %i.t = load <4 x i32>, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !97
  %i.u = insertelement <4 x i32> poison, i32 %i.eq, i64 0
  %i.v = insertelement <4 x i32> %i.u, i32 %i.ej, i64 1
  %i.w = insertelement <4 x i32> %i.v, i32 %i.en, i64 2
  %i.x = insertelement <4 x i32> %i.w, i32 %i.em, i64 3
  %i.y = add <4 x i32> %i.t, %i.x
  store <4 x i32> %i.y, ptr %i.r, align 4, !tbaa !97
  %i.z = load i32, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !97 ; 2 uses
  %i.aa = add i32 %i.z, %i.ec
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !97
  %i.ac = load i32, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !97 ; 2 uses
  %i.ad = add i32 %i.ac, %i.ei
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !97
  %i.af = load i32, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !97
  %i.ag = add i32 %i.af, %i.df
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !97
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 16, ptr %i.ai, align 4, !tbaa !129
  %i.aj = add i32 %i.s, 1                         ; 2 uses
  store i32 %i.aj, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !97
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.b, label %bb.d

bb.a:                                             ; preds = %.preheader21, %bb.a
  %.01953 = phi i64 [ 0, %.preheader21 ], [ %i.et, %bb.a ] ; 2 uses
  %i.al = phi i32 [ %.sroa.15.0.copyload, %.preheader21 ], [ %i.es, %bb.a ] ; 2 uses
  %i.am = phi i32 [ %.sroa.0.0.copyload, %.preheader21 ], [ %i.dd, %bb.a ]
  %i.an = phi i32 [ %.sroa.39.0.copyload, %.preheader21 ], [ %i.em, %bb.a ]
  %i.ao = phi i32 [ %.sroa.27.0.copyload, %.preheader21 ], [ %i.ed, %bb.a ]
  %i.ap = phi i32 [ %.sroa.18.0.copyload, %.preheader21 ], [ %i.el, %bb.a ] ; 2 uses
  %i.aq = phi i32 [ %.sroa.6.0.copyload, %.preheader21 ], [ %i.dy, %bb.a ]
  %i.ar = phi i32 [ %.sroa.42.0.copyload, %.preheader21 ], [ %i.ec, %bb.a ]
  %i.as = phi i32 [ %.sroa.30.0.copyload, %.preheader21 ], [ %i.eq, %bb.a ]
  %i.at = phi i32 [ %.sroa.21.0.copyload, %.preheader21 ], [ %i.ep, %bb.a ] ; 2 uses
  %i.au = phi i32 [ %.sroa.9.0.copyload, %.preheader21 ], [ %i.ea, %bb.a ]
  %i.av = phi i32 [ %.sroa.45.0.copyload, %.preheader21 ], [ %i.ei, %bb.a ]
  %i.aw = phi i32 [ %.sroa.33.0.copyload, %.preheader21 ], [ %i.ej, %bb.a ]
  %i.ax = phi i32 [ %.sroa.24.0.copyload, %.preheader21 ], [ %i.ef, %bb.a ] ; 2 uses
  %i.ay = phi i32 [ %.sroa.12.0.copyload, %.preheader21 ], [ %i.eg, %bb.a ]
  %i.az = phi i32 [ %.sroa.48.0.copyload, %.preheader21 ], [ %i.df, %bb.a ]
  %i.ba = phi i32 [ %.sroa.36.0.copyload, %.preheader21 ], [ %i.en, %bb.a ]
  %i.bb = add i32 %i.am, %i.al                    ; 2 uses
  %i.bc = xor i32 %i.an, %i.bb                    ; 2 uses
  %i.bd = tail call noundef i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 16) ; 2 uses
  %i.be = add i32 %i.bd, %i.ao                    ; 2 uses
  %i.bf = xor i32 %i.be, %i.al                    ; 2 uses
  %i.bg = tail call noundef i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 12) ; 2 uses
  %i.bh = add i32 %i.bg, %i.bb                    ; 2 uses
  %i.bi = xor i32 %i.bh, %i.bd                    ; 2 uses
  %i.bj = tail call noundef i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 8) ; 2 uses
  %i.bk = add i32 %i.bj, %i.be                    ; 2 uses
  %i.bl = xor i32 %i.bk, %i.bg                    ; 2 uses
  %i.bm = tail call noundef i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 7) ; 2 uses
  %i.bn = add i32 %i.aq, %i.ap                    ; 2 uses
  %i.bo = xor i32 %i.ar, %i.bn                    ; 2 uses
  %i.bp = tail call noundef i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bo, i32 16) ; 2 uses
  %i.bq = add i32 %i.bp, %i.as                    ; 2 uses
  %i.br = xor i32 %i.bq, %i.ap                    ; 2 uses
  %i.bs = tail call noundef i32 @llvm.fshl.i32(i32 %i.br, i32 %i.br, i32 12) ; 2 uses
  %i.bt = add i32 %i.bs, %i.bn                    ; 2 uses
  %i.bu = xor i32 %i.bt, %i.bp                    ; 2 uses
  %i.bv = tail call noundef i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 8) ; 2 uses
  %i.bw = add i32 %i.bv, %i.bq                    ; 2 uses
  %i.bx = xor i32 %i.bw, %i.bs                    ; 2 uses
  %i.by = tail call noundef i32 @llvm.fshl.i32(i32 %i.bx, i32 %i.bx, i32 7) ; 2 uses
  %i.bz = add i32 %i.au, %i.at                    ; 2 uses
  %i.ca = xor i32 %i.av, %i.bz                    ; 2 uses
  %i.cb = tail call noundef i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 16) ; 2 uses
  %i.cc = add i32 %i.cb, %i.aw                    ; 2 uses
  %i.cd = xor i32 %i.cc, %i.at                    ; 2 uses
  %i.ce = tail call noundef i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 12) ; 2 uses
  %i.cf = add i32 %i.ce, %i.bz                    ; 2 uses
  %i.cg = xor i32 %i.cf, %i.cb                    ; 2 uses
  %i.ch = tail call noundef i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 8) ; 2 uses
  %i.ci = add i32 %i.ch, %i.cc                    ; 2 uses
  %i.cj = xor i32 %i.ci, %i.ce                    ; 2 uses
  %i.ck = tail call noundef i32 @llvm.fshl.i32(i32 %i.cj, i32 %i.cj, i32 7) ; 2 uses
  %i.cl = add i32 %i.ay, %i.ax                    ; 2 uses
  %i.cm = xor i32 %i.az, %i.cl                    ; 2 uses
  %i.cn = tail call noundef i32 @llvm.fshl.i32(i32 %i.cm, i32 %i.cm, i32 16) ; 2 uses
  %i.co = add i32 %i.cn, %i.ba                    ; 2 uses
  %i.cp = xor i32 %i.co, %i.ax                    ; 2 uses
  %i.cq = tail call noundef i32 @llvm.fshl.i32(i32 %i.cp, i32 %i.cp, i32 12) ; 2 uses
  %i.cr = add i32 %i.cq, %i.cl                    ; 2 uses
  %i.cs = xor i32 %i.cr, %i.cn                    ; 2 uses
  %i.ct = tail call noundef i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.cs, i32 8) ; 2 uses
  %i.cu = add i32 %i.ct, %i.co                    ; 2 uses
  %i.cv = xor i32 %i.cu, %i.cq                    ; 2 uses
  %i.cw = tail call noundef i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 7) ; 2 uses
  %i.cx = add i32 %i.by, %i.bh                    ; 2 uses
  %i.cy = xor i32 %i.ct, %i.cx                    ; 2 uses
  %i.cz = tail call noundef i32 @llvm.fshl.i32(i32 %i.cy, i32 %i.cy, i32 16) ; 2 uses
  %i.da = add i32 %i.cz, %i.ci                    ; 2 uses
  %i.db = xor i32 %i.da, %i.by                    ; 2 uses
  %i.dc = tail call noundef i32 @llvm.fshl.i32(i32 %i.db, i32 %i.db, i32 12) ; 2 uses
  %i.dd = add i32 %i.dc, %i.cx                    ; 3 uses
  %i.de = xor i32 %i.dd, %i.cz                    ; 2 uses
  %i.df = tail call noundef i32 @llvm.fshl.i32(i32 %i.de, i32 %i.de, i32 8) ; 3 uses
  %i.dg = add i32 %i.ck, %i.bt                    ; 2 uses
  %i.dh = xor i32 %i.dg, %i.bj                    ; 2 uses
  %i.di = tail call noundef i32 @llvm.fshl.i32(i32 %i.dh, i32 %i.dh, i32 16) ; 2 uses
  %i.dj = add i32 %i.cu, %i.di                    ; 2 uses
  %i.dk = xor i32 %i.dj, %i.ck                    ; 2 uses
  %i.dl = tail call noundef i32 @llvm.fshl.i32(i32 %i.dk, i32 %i.dk, i32 12) ; 2 uses
  %i.dm = add i32 %i.cw, %i.cf                    ; 2 uses
  %i.dn = xor i32 %i.dm, %i.bv                    ; 2 uses
  %i.do = tail call noundef i32 @llvm.fshl.i32(i32 %i.dn, i32 %i.dn, i32 16) ; 2 uses
  %i.dp = add i32 %i.do, %i.bk                    ; 2 uses
  %i.dq = xor i32 %i.dp, %i.cw                    ; 2 uses
  %i.dr = tail call noundef i32 @llvm.fshl.i32(i32 %i.dq, i32 %i.dq, i32 12) ; 2 uses
  %i.ds = add i32 %i.cr, %i.bm                    ; 2 uses
  %i.dt = xor i32 %i.ds, %i.ch                    ; 2 uses
  %i.du = tail call noundef i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 16) ; 2 uses
  %i.dv = add i32 %i.du, %i.bw                    ; 2 uses
  %i.dw = xor i32 %i.dv, %i.bm                    ; 2 uses
  %i.dx = tail call noundef i32 @llvm.fshl.i32(i32 %i.dw, i32 %i.dw, i32 12) ; 2 uses
  %i.dy = add i32 %i.dl, %i.dg                    ; 3 uses
  %i.dz = xor i32 %i.dy, %i.di                    ; 2 uses
  %i.ea = add i32 %i.dr, %i.dm                    ; 3 uses
  %i.eb = xor i32 %i.ea, %i.do                    ; 2 uses
  %i.ec = tail call noundef i32 @llvm.fshl.i32(i32 %i.eb, i32 %i.eb, i32 8) ; 3 uses
  %i.ed = add i32 %i.ec, %i.dp                    ; 3 uses
  %i.ee = xor i32 %i.ed, %i.dr                    ; 2 uses
  %i.ef = tail call noundef i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 7) ; 2 uses
  %i.eg = add i32 %i.dx, %i.ds                    ; 3 uses
  %i.eh = xor i32 %i.eg, %i.du                    ; 2 uses
  %i.ei = tail call noundef i32 @llvm.fshl.i32(i32 %i.eh, i32 %i.eh, i32 8) ; 3 uses
  %i.ej = add i32 %i.df, %i.da                    ; 3 uses
  %i.ek = xor i32 %i.ej, %i.dc                    ; 2 uses
  %i.el = tail call noundef i32 @llvm.fshl.i32(i32 %i.ek, i32 %i.ek, i32 7) ; 2 uses
  %i.em = tail call noundef i32 @llvm.fshl.i32(i32 %i.dz, i32 %i.dz, i32 8) ; 3 uses
  %i.en = add i32 %i.em, %i.dj                    ; 3 uses
  %i.eo = xor i32 %i.en, %i.dl                    ; 2 uses
  %i.ep = tail call noundef i32 @llvm.fshl.i32(i32 %i.eo, i32 %i.eo, i32 7) ; 2 uses
  %i.eq = add i32 %i.ei, %i.dv                    ; 3 uses
  %i.er = xor i32 %i.eq, %i.dx                    ; 2 uses
  %i.es = tail call noundef i32 @llvm.fshl.i32(i32 %i.er, i32 %i.er, i32 7) ; 2 uses
  %i.et = add nuw nsw i64 %.01953, 2
  %i.eu = icmp samesign ult i64 %.01953, 18
  br i1 %i.eu, label %bb.a, label %.preheader, !llvm.loop !394

bb.b:                                             ; preds = %.preheader
  %i.ev = add i32 %i.z, 1                         ; 2 uses
  store i32 %i.ev, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !97
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ex = add i32 %i.ac, 1
  store i32 %i.ex, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !97
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL16mi_segment_purgeP12mi_segment_sPhm(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.mi_commit_mask_s, align 16  ; 11 uses
  %4 = alloca %struct.mi_commit_mask_s, align 16  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.d = load i8, ptr %i.c, align 1, !tbaa !219, !range !113, !noundef !114
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store ptr null, ptr %i.a, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i64 0, ptr %i.b, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  call fastcc void @_ZL22mi_segment_commit_maskP12mi_segment_sbPhmPS1_PmP16mi_commit_mask_s(ptr noundef nonnull %0, i1 noundef zeroext true, ptr noundef %1, i64 noundef %2, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %3)
  %i.f = load <2 x i64>, ptr %3, align 16         ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load <2 x i64>, ptr %i.g, align 16       ; 6 uses
  %i.i = shufflevector <2 x i64> %i.f, <2 x i64> %i.h, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i64> %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = load <2 x i64>, ptr %i.j, align 16
  %.fr4 = freeze <2 x i64> %i.k                   ; 5 uses
  %i.l = extractelement <2 x i64> %.fr4, i64 0    ; 2 uses
  %5 = extractelement <2 x i64> %.fr4, i64 1      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.n = load i64, ptr %i.m, align 16             ; 5 uses
  %.not.6.i = icmp eq i64 %i.n, 0
  %i.o = icmp ne <4 x i64> %.fr, zeroinitializer
  %i.p = bitcast <4 x i1> %i.o to i4
  %i.q = icmp eq i4 %i.p, 0
  %6 = or i64 %5, %i.l
  %7 = icmp eq i64 %6, 0
  %8 = and i1 %i.q, %7
  %op.rdx2 = select i1 %8, i1 %.not.6.i, i1 false
  br i1 %op.rdx2, label %bb.c, label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !98
  %.not.7.i = icmp eq i64 %i.s, 0
  br label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit

_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit: ; preds = %bb.b, %bb.c
  %.not.lcssa.i = phi i1 [ false, %bb.b ], [ %.not.7.i, %bb.c ]
  %i.t = load i64, ptr %i.b, align 8              ; 5 uses
  %i.u = icmp eq i64 %i.t, 0
  %or.cond = select i1 %.not.lcssa.i, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.o, label %bb.d

bb.d:                                             ; preds = %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !98
  %i.x = extractelement <2 x i64> %i.f, i64 0
  %i.y = and i64 %i.w, %i.x
  %.not.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.not.i, label %bb.e, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !98
  %i.ab = extractelement <2 x i64> %i.f, i64 1
  %i.ac = and i64 %i.ab, %i.aa
  %.not.1.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.1.not.i, label %bb.f, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !98
  %i.af = extractelement <2 x i64> %i.h, i64 0
  %i.ag = and i64 %i.af, %i.ae
  %.not.2.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.2.not.i, label %bb.g, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !98
  %i.aj = extractelement <2 x i64> %i.h, i64 1
  %i.ak = and i64 %i.aj, %i.ai
  %.not.3.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.3.not.i, label %bb.h, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.am = load i64, ptr %i.al, align 8, !tbaa !98
  %i.an = and i64 %i.l, %i.am
  %.not.4.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.4.not.i, label %bb.i, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !98
  %i.aq = and i64 %5, %i.ap
  %.not.5.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.5.not.i, label %bb.j, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !98
  %i.at = and i64 %i.n, %i.as
  %.not.6.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.6.not.i, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread

_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit: ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.av = load i64, ptr %i.au, align 8, !tbaa !98
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !98 ; 2 uses
  %i.ay = and i64 %i.ax, %i.av
  %.not.7.not.i.not = icmp eq i64 %i.ay, 0
  br i1 %.not.7.not.i.not, label %bb.n, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread

_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread: ; preds = %bb.j, %bb.g, %bb.i, %bb.f, %bb.e, %bb.d, %bb.h, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.ba = tail call noundef zeroext i1 @_Z15_mi_os_purge_exPvmbm(ptr noundef %i.az, i64 noundef %i.t, i1 noundef zeroext true, i64 noundef %i.t)
  br i1 %i.ba, label %bb.k, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread._crit_edge

_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread._crit_edge: ; preds = %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !98
  br label %bb.n

bb.k:                                             ; preds = %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %i.bb = load <2 x i64>, ptr %i.v, align 8, !tbaa !98
  %i.bc = and <2 x i64> %i.bb, %i.f
  store <2 x i64> %i.bc, ptr %4, align 16, !tbaa !98
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !tbaa !98
  %i.bg = and <2 x i64> %i.h, %i.bf
  store <2 x i64> %i.bg, ptr %i.be, align 16, !tbaa !98
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !tbaa !98
  %i.bk = and <2 x i64> %.fr4, %i.bj
  store <2 x i64> %i.bk, ptr %i.bi, align 16, !tbaa !98
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !98
  %i.bn = and i64 %i.n, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.bn, ptr %i.bo, align 16, !tbaa !98
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !98
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !98 ; 3 uses
  %i.bt = and i64 %i.bs, %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !98
  %i.bv = call noundef i64 @_Z30_mi_commit_mask_committed_sizePK16mi_commit_mask_sm(ptr noundef nonnull %4, i64 noundef 33554432) ; 2 uses
  %i.bw = sub i64 %i.t, %i.bv                     ; 4 uses
  %i.bx = icmp eq i64 %i.t, %i.bv
  br i1 %i.bx, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 72), i64 %i.bw monotonic, align 8
  %i.bz = add nsw i64 %i.by, %i.bw                ; 3 uses
  %i.ca = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64) monotonic, align 64 ; 2 uses
  %.old3.i.i.i = icmp slt i64 %i.ca, %i.bz
  br i1 %.old3.i.i.i, label %.preheader.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.l, %.preheader.i.i.i
  %.0.i.i.i = phi i64 [ %i.cd, %.preheader.i.i.i ], [ %i.ca, %bb.l ]
  %i.cb = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64), i64 %.0.i.i.i, i64 %i.bz release monotonic, align 8 ; 2 uses
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  %i.cd = extractvalue { i64, i1 } %i.cb, 0       ; 2 uses
  %i.ce = icmp sge i64 %i.cd, %i.bz
  %or.cond.not.i.i.i = select i1 %i.cc, i1 true, i1 %i.ce
  br i1 %or.cond.not.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, label %.preheader.i.i.i, !llvm.loop !8

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i:       ; preds = %.preheader.i.i.i, %bb.l
  %i.cf = icmp sgt i64 %i.bw, 0
  br i1 %i.cf, label %bb.m, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.m:                                             ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i
  %i.cg = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 56), i64 %i.bw monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

_Z17_mi_stat_increaseP15mi_stat_count_sm.exit:    ; preds = %bb.k, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, %bb.m
  %i.ch = xor <2 x i64> %i.f, splat (i64 -1)
  %i.ci = load <2 x i64>, ptr %i.v, align 8, !tbaa !98
  %i.cj = and <2 x i64> %i.ci, %i.ch
  store <2 x i64> %i.cj, ptr %i.v, align 8, !tbaa !98
  %i.ck = xor <2 x i64> %i.h, splat (i64 -1)
  %i.cl = load <2 x i64>, ptr %i.bd, align 8, !tbaa !98
  %i.cm = and <2 x i64> %i.cl, %i.ck
  store <2 x i64> %i.cm, ptr %i.bd, align 8, !tbaa !98
  %i.cn = xor <2 x i64> %.fr4, splat (i64 -1)
  %i.co = load <2 x i64>, ptr %i.bh, align 8, !tbaa !98
  %i.cp = and <2 x i64> %i.co, %i.cn
  store <2 x i64> %i.cp, ptr %i.bh, align 8, !tbaa !98
  %i.cq = insertelement <2 x i64> poison, i64 %i.n, i64 0
  %i.cr = insertelement <2 x i64> %i.cq, i64 %i.bs, i64 1
  %i.cs = xor <2 x i64> %i.cr, splat (i64 -1)
  %i.ct = load <2 x i64>, ptr %i.bl, align 8, !tbaa !98
  %i.cu = and <2 x i64> %i.ct, %i.cs
  store <2 x i64> %i.cu, ptr %i.bl, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %bb.n

bb.n:                                             ; preds = %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread._crit_edge, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit
  %i.cv = phi i64 [ %.pre, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread._crit_edge ], [ %i.bs, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit ], [ %i.ax, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cx = xor <2 x i64> %i.f, splat (i64 -1)
  %i.cy = load <2 x i64>, ptr %i.cw, align 8, !tbaa !98
  %i.cz = and <2 x i64> %i.cy, %i.cx
  store <2 x i64> %i.cz, ptr %i.cw, align 8, !tbaa !98
  %i.da = xor <2 x i64> %i.h, splat (i64 -1)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dc = load <2 x i64>, ptr %i.db, align 8, !tbaa !98
  %i.dd = and <2 x i64> %i.dc, %i.da
  store <2 x i64> %i.dd, ptr %i.db, align 8, !tbaa !98
  %i.de = xor <2 x i64> %.fr4, splat (i64 -1)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dg = load <2 x i64>, ptr %i.df, align 8, !tbaa !98
  %i.dh = and <2 x i64> %i.dg, %i.de
  store <2 x i64> %i.dh, ptr %i.df, align 8, !tbaa !98
  %i.di = insertelement <2 x i64> poison, i64 %i.n, i64 0
  %i.dj = insertelement <2 x i64> %i.di, i64 %i.cv, i64 1
  %i.dk = xor <2 x i64> %i.dj, splat (i64 -1)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dm = load <2 x i64>, ptr %i.dl, align 8, !tbaa !98
  %i.dn = and <2 x i64> %i.dm, %i.dk
  store <2 x i64> %i.dn, ptr %i.dl, align 8, !tbaa !98
  br label %bb.o

bb.o:                                             ; preds = %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL22mi_segment_commit_maskP12mi_segment_sbPhmPS1_PmP16mi_commit_mask_s(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %6) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false), !tbaa !98
  %i.a = add i64 %3, -33554433
  %or.cond = icmp ult i64 %i.a, -33554432
  br i1 %or.cond, label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.c = load i32, ptr %i.b, align 8, !tbaa !225
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 248
  %.val59 = load i64, ptr %i.e, align 8, !tbaa !229
  %i.f = shl i64 %.val59, 16                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %.not = icmp ult ptr %2, %i.g
  br i1 %.not, label %bb.d, label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 256
  %.val = load i64, ptr %i.h, align 8, !tbaa !247
  %i.i = shl i64 %.val, 16                        ; 2 uses
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = add i64 %i.l, 65535
  %i.n = add nuw nsw i64 %3, 65535
  %.049.in = select i1 %1, i64 %i.m, i64 %i.l
  %.0.in.v = select i1 %1, i64 %3, i64 %i.n
  %.0.in = add i64 %i.l, %.0.in.v
  %.0 = and i64 %.0.in, -65536
  %.049 = and i64 %.049.in, -65536                ; 2 uses
  %.not56.not = icmp ult i64 %i.l, %i.i
  %i.o = tail call i64 @llvm.umax.i64(i64 %.049, i64 %i.i)
  %.150 = select i1 %.not56.not, i64 %.049, i64 %i.o ; 6 uses
  %.1 = tail call i64 @llvm.umin.i64(i64 %.0, i64 %i.f) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.150
  store ptr %i.p, ptr %4, align 8, !tbaa !99
  %i.q = tail call i64 @llvm.usub.sat.i64(i64 %.1, i64 %.150) ; 3 uses
  store i64 %i.q, ptr %5, align 8, !tbaa !98
  %.not57 = icmp ugt i64 %.1, %.150
  br i1 %.not57, label %bb.e, label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit

bb.e:                                             ; preds = %bb.d
  %i.r = lshr exact i64 %.150, 16                 ; 3 uses
  %i.s = lshr exact i64 %i.q, 16                  ; 5 uses
  %i.t = add nuw nsw i64 %i.s, %i.r
  %i.u = icmp samesign ugt i64 %i.t, 512
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z19_mi_warning_messagePKcz(ptr noundef nonnull @.str.179, i64 noundef %i.r, i64 noundef %i.s, i64 noundef %.150, i64 noundef %.1, ptr noundef %2, i64 noundef %3, i64 noundef %i.q)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  switch i64 %i.s, label %.lr.ph.i [
    i64 512, label %bb.h
    i64 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 -1, i64 64, i1 false), !tbaa !98
  br label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false), !tbaa !98
  br label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit

.lr.ph.i:                                         ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false), !tbaa !98
  %i.v = lshr i64 %.150, 22                       ; 2 uses
  %i.w = and i64 %i.r, 63                         ; 2 uses
  %i.x = sub nuw nsw i64 64, %i.w
  %i.y = tail call i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.s, i64 %i.x) ; 3 uses
  %i.z = icmp samesign ugt i64 %i.y, 63
  %notmask.peel.i = shl nsw i64 -1, %i.y
  %i.aa = xor i64 %notmask.peel.i, -1
  %i.ab = shl i64 %i.aa, %i.w
  %i.ac = select i1 %i.z, i64 -1, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.v
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !98
  %i.ae = sub nuw nsw i64 %i.s, %i.y              ; 2 uses
  %.not.peel.i = icmp eq i64 %i.ae, 0
  br i1 %.not.peel.i, label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %.lr.ph.i, %.peel.next.i
  %.02127.in.i = phi i64 [ %.02127.i, %.peel.next.i ], [ %i.v, %.lr.ph.i ]
  %.02226.i = phi i64 [ %i.ak, %.peel.next.i ], [ %i.ae, %.lr.ph.i ] ; 3 uses
  %.02127.i = add i64 %.02127.in.i, 1             ; 2 uses
  %i.af = tail call i64 @llvm.umin.i64(i64 %.02226.i, i64 64) ; 2 uses
  %i.ag = icmp ugt i64 %.02226.i, 63
  %notmask.i = shl nsw i64 -1, %i.af
  %i.ah = xor i64 %notmask.i, -1
  %i.ai = select i1 %i.ag, i64 -1, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.02127.i
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !98
  %i.ak = sub nuw nsw i64 %.02226.i, %i.af        ; 2 uses
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit, label %.peel.next.i, !llvm.loop !41

_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit: ; preds = %.peel.next.i, %.lr.ph.i, %bb.i, %bb.h, %bb.c, %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL29mi_segment_span_free_coalesceP9mi_page_sP17mi_segments_tld_s(ptr noundef %0, ptr nofree noundef captures(address) %1) unnamed_addr #6 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, -1                         ; 2 uses
  %i.c = and i64 %i.b, -33554432
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %i.f = load i32, ptr %i.e, align 8, !tbaa !225
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !62
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.b, 33554432
  %i.j = select i1 %i.i, ptr null, ptr %i.d       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %i.l = load atomic i64, ptr %i.k seq_cst, align 8
  %i.m = icmp eq i64 %i.l, 0                      ; 2 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !140
  %i.o = zext i32 %i.n to i64                     ; 4 uses
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.o ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 288 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %i.s = load i64, ptr %i.r, align 16, !tbaa !139
  %i.t = getelementptr inbounds nuw [96 x i8], ptr %i.q, i64 %i.s
  %i.u = icmp ult ptr %i.p, %i.t
  br i1 %i.u, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !62
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.p, align 8, !tbaa !140  ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 3 uses
  %i.aa = add nuw nsw i64 %i.z, %i.o              ; 2 uses
  br i1 %i.m, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp ult i32 %i.y, 9
  br i1 %i.ab, label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = add nsw i64 %i.z, -1                    ; 2 uses
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true) ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = sub nuw nsw i64 61, %i.ad
  %i.ag = lshr i64 %i.ac, %i.af
  %i.ah = and i64 %i.ag, 3
  %i.ai = or disjoint i64 %i.ah, %i.ae
  %i.aj = xor i64 %i.ai, 252
  %i.ak = add nsw i64 %i.aj, -4
  br label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i

_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i: ; preds = %bb.g, %bb.f
  %.1.i.i.i.i = phi i64 [ %i.z, %bb.f ], [ %i.ak, %bb.g ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.1.i.i.i.i ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !216 ; 3 uses
  %.not.i.i = icmp eq ptr %i.an, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 72 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !192 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZL29mi_segment_span_free_coalesceP9mi_page_sP17mi_segments_tld_s:bb.a
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 true) ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 2
  %i.bq = sub nuw nsw i64 61, %i.bo
  %i.br = lshr i64 %i.bn, %i.bq
  %i.bs = and i64 %i.br, 3
  %i.bt = or disjoint i64 %i.bs, %i.bp
  %i.bu = xor i64 %i.bt, 252
  %i.bv = add nsw i64 %i.bu, -4
  br label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i41

_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i41: ; preds = %bb.q, %bb.p
  %.1.i.i.i.i42 = phi i64 [ %i.bl, %bb.p ], [ %i.bv, %bb.q ]
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.1.i.i.i.i42 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !216 ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.by, null
  %.phi.trans.insert.i44 = getelementptr inbounds nuw i8, ptr %i.bc, i64 72 ; 2 uses
  %.pre.i45 = load ptr, ptr %.phi.trans.insert.i44, align 8, !tbaa !192 ; 4 uses
  br i1 %.not.i.i43, label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit._crit_edge.i46, label %bb.r

bb.r:                                             ; preds = %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i41
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  store ptr %.pre.i45, ptr %i.bz, align 8, !tbaa !192
  br label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit._crit_edge.i46

_ZL17mi_span_queue_formP17mi_segments_tld_s.exit._crit_edge.i46: ; preds = %bb.r, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i41
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !227
  %i.cb = icmp eq ptr %i.bc, %i.ca
  br i1 %i.cb, label %bb.s, label %._crit_edge.i.i47

bb.s:                                             ; preds = %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit._crit_edge.i46
  store ptr %.pre.i45, ptr %i.bw, align 8, !tbaa !227
  br label %._crit_edge.i.i47

._crit_edge.i.i47:                                ; preds = %bb.s, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit._crit_edge.i46
  %.not19.i.i48 = icmp eq ptr %.pre.i45, null
  br i1 %.not19.i.i48, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i47
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 80
  store ptr %i.by, ptr %i.cc, align 8, !tbaa !216
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i47
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !228
  %i.cf = icmp eq ptr %i.bc, %i.ce
  br i1 %i.cf, label %bb.v, label %_ZL33mi_segment_span_remove_from_queueP9mi_page_sP17mi_segments_tld_s.exit49

bb.v:                                             ; preds = %bb.u
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !216
  store ptr %i.cg, ptr %i.cd, align 8, !tbaa !228
  br label %_ZL33mi_segment_span_remove_from_queueP9mi_page_sP17mi_segments_tld_s.exit49

_ZL33mi_segment_span_remove_from_queueP9mi_page_sP17mi_segments_tld_s.exit49: ; preds = %bb.u, %bb.v
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i44, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.bd, align 8, !tbaa !62
  br label %bb.w

bb.w:                                             ; preds = %bb.n, %_ZL33mi_segment_span_remove_from_queueP9mi_page_sP17mi_segments_tld_s.exit49, %bb.o, %bb.m
  %.137 = phi ptr [ %0, %bb.m ], [ %0, %bb.n ], [ %i.bc, %_ZL33mi_segment_span_remove_from_queueP9mi_page_sP17mi_segments_tld_s.exit49 ], [ %i.bc, %bb.o ] ; 2 uses
  %.2 = phi i64 [ %.0, %bb.m ], [ %.0, %bb.n ], [ %i.bi, %_ZL33mi_segment_span_remove_from_queueP9mi_page_sP17mi_segments_tld_s.exit49 ], [ %i.bi, %bb.o ]
  %i.ch = ptrtoint ptr %.137 to i64               ; 2 uses
  %i.ci = add i64 %i.ch, -1                       ; 2 uses
  %i.cj = and i64 %i.ci, -33554432
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = icmp slt i64 %i.ci, 33554432
  %i.cm = select i1 %i.cl, ptr null, ptr %i.ck
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 288
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.ch, %i.co
  %i.cq = sdiv exact i64 %i.cp, 96
  tail call fastcc void @_ZL20mi_segment_span_freeP12mi_segment_smmbP17mi_segments_tld_s(ptr noundef nonnull %i.d, i64 noundef %i.cq, i64 noundef %.2, i1 noundef zeroext true, ptr noundef %1)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.b
  %.035 = phi ptr [ %0, %bb.b ], [ %.137, %bb.w ]
  ret ptr %.035
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL20mi_segment_span_freeP12mi_segment_smmbP17mi_segments_tld_s(ptr noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr nofree noundef captures(address) %4) unnamed_addr #6 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %struct.mi_commit_mask_s, align 16  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load i32, ptr %i.c, align 8, !tbaa !225
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = load atomic i64, ptr %i.f monotonic, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i64 %2, 9
  br i1 %i.i, label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add i64 %2, -1                           ; 2 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true) ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = sub nuw nsw i64 61, %i.k
  %i.n = lshr i64 %i.j, %i.m
  %i.o = and i64 %i.n, 3
  %i.p = or disjoint i64 %i.o, %i.l
  %i.q = xor i64 %i.p, 252
  %i.r = add nsw i64 %i.q, -4
  br label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit

_ZL17mi_span_queue_formP17mi_segments_tld_s.exit: ; preds = %bb.c, %bb.d
  %.1.i.i.i = phi i64 [ %2, %bb.c ], [ %i.r, %bb.d ]
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %.1.i.i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit
  %i.t = phi ptr [ %i.s, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit ], [ null, %bb.b ], [ null, %bb.a ] ; 4 uses
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %2, i64 1) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.v = getelementptr inbounds nuw [96 x i8], ptr %i.u, i64 %1 ; 10 uses
  %i.w = trunc i64 %spec.store.select to i32      ; 2 uses
  store i32 %i.w, ptr %i.v, align 8, !tbaa !140
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 0, ptr %i.x, align 4, !tbaa !67
  %i.y = icmp ugt i64 %2, 1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [96 x i8], ptr %i.v, i64 %spec.store.select
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -96 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !139
  %i.ad = getelementptr inbounds nuw [96 x i8], ptr %i.u, i64 %i.ac ; 2 uses
  %i.ae = icmp ugt ptr %i.aa, %i.ad
  %spec.select = select i1 %i.ae, ptr %i.ad, ptr %i.aa ; 3 uses
  store i32 0, ptr %spec.select, align 8, !tbaa !140
  %i.af = mul i32 %i.w, 96
  %i.ag = add i32 %i.af, -96
  %i.ah = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !67
  %i.ai = getelementptr inbounds nuw i8, ptr %spec.select, i64 40
  store i64 0, ptr %i.ai, align 8, !tbaa !62
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %3, label %bb.h, label %_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ak = add i64 %i.aj, -1                       ; 2 uses
  %i.al = and i64 %i.ak, -33554432
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = icmp slt i64 %i.ak, 33554432
  %i.ao = select i1 %i.an, ptr null, ptr %i.am    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 288
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aj, %i.aq
  %i.as = sdiv exact i64 %i.ar, 96
  %i.at = shl i64 %i.as, 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.at ; 2 uses
  %i.av = shl i64 %spec.store.select, 16          ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !219, !range !113, !noundef !114
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.i, label %_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit

bb.i:                                             ; preds = %bb.h
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !135
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.j, label %mi_option_get.exit.i, !prof !61

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480)), !inline_history !138
  br label %mi_option_get.exit.i

mi_option_get.exit.i:                             ; preds = %bb.j, %bb.i
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480), align 16, !tbaa !137
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %mi_option_get.exit.i
  tail call fastcc void @_ZL16mi_segment_purgeP12mi_segment_sPhm(ptr noundef nonnull %0, ptr noundef %i.au, i64 noundef %i.av)
  br label %_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit

bb.l:                                             ; preds = %mi_option_get.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i64 0, ptr %i.b, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  call fastcc void @_ZL22mi_segment_commit_maskP12mi_segment_sbPhmPS1_PmP16mi_commit_mask_s(ptr noundef nonnull %0, i1 noundef zeroext true, ptr noundef %i.au, i64 noundef %i.av, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %6)
  %i.bd = load <2 x i64>, ptr %6, align 16        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bf = load <2 x i64>, ptr %i.be, align 16     ; 2 uses
  %i.bg = shufflevector <2 x i64> %i.bd, <2 x i64> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i64> %i.bg
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bi = load <2 x i64>, ptr %i.bh, align 16
  %.fr39 = freeze <2 x i64> %i.bi                 ; 3 uses
  %i.bj = extractelement <2 x i64> %.fr39, i64 0
  %7 = extractelement <2 x i64> %.fr39, i64 1
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bl = load i64, ptr %i.bk, align 16           ; 2 uses
  %.not.6.i.i = icmp eq i64 %i.bl, 0
  %i.bm = icmp ne <4 x i64> %.fr, zeroinitializer
  %i.bn = bitcast <4 x i1> %i.bm to i4
  %i.bo = icmp eq i4 %i.bn, 0
  %8 = or i64 %7, %i.bj
  %9 = icmp eq i64 %8, 0
  %10 = and i1 %i.bo, %9
  %op.rdx37 = select i1 %10, i1 %.not.6.i.i, i1 false
  br i1 %op.rdx37, label %bb.m, label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !98
  %.not.7.i.i = icmp eq i64 %i.bq, 0
  br label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i

_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i: ; preds = %bb.m, %bb.l
  %.not.lcssa.i.i = phi i1 [ false, %bb.l ], [ %.not.7.i.i, %bb.m ]
  %i.br = load i64, ptr %i.b, align 8
  %i.bs = icmp eq i64 %i.br, 0
  %or.cond.i = select i1 %.not.lcssa.i.i, i1 true, i1 %i.bs
  br i1 %or.cond.i, label %bb.y, label %bb.n

bb.n:                                             ; preds = %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !98
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ca = load <2 x i64>, ptr %i.bt, align 8, !tbaa !98
  %i.cb = and <2 x i64> %i.ca, %i.bd
  %i.cc = load <2 x i64>, ptr %i.bz, align 8, !tbaa !98
  %i.cd = or <2 x i64> %i.cc, %i.cb
  store <2 x i64> %i.cd, ptr %i.bz, align 8, !tbaa !98
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cf = load <2 x i64>, ptr %i.bu, align 8, !tbaa !98
  %i.cg = and <2 x i64> %i.cf, %i.bf
  %i.ch = load <2 x i64>, ptr %i.ce, align 8, !tbaa !98
  %i.ci = or <2 x i64> %i.ch, %i.cg
  store <2 x i64> %i.ci, ptr %i.ce, align 8, !tbaa !98
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ck = load <2 x i64>, ptr %i.bv, align 8, !tbaa !98
  %i.cl = and <2 x i64> %i.ck, %.fr39
  %i.cm = load <2 x i64>, ptr %i.cj, align 8, !tbaa !98
  %i.cn = or <2 x i64> %i.cm, %i.cl
  store <2 x i64> %i.cn, ptr %i.cj, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cp = load <2 x i64>, ptr %i.bw, align 8, !tbaa !98
  %i.cq = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %i.cr = insertelement <2 x i64> %i.cq, i64 %i.by, i64 1
  %i.cs = and <2 x i64> %i.cp, %i.cr
  %i.ct = load <2 x i64>, ptr %i.co, align 8, !tbaa !98
  %i.cu = or <2 x i64> %i.ct, %i.cs
  store <2 x i64> %i.cu, ptr %i.co, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %i.cv = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #50 ; 0 uses
  %i.cw = load i64, ptr %5, align 8, !tbaa !169
  %i.cx = mul nsw i64 %i.cw, 1000
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !170
  %i.da = sdiv i64 %i.cz, 1000000
  %i.db = add nsw i64 %i.da, %i.cx                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !220 ; 4 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.df = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !135
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.p, label %mi_option_get.exit22.i, !prof !61

bb.p:                                             ; preds = %bb.o
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480)), !inline_history !138
  br label %mi_option_get.exit22.i

mi_option_get.exit22.i:                           ; preds = %bb.p, %bb.o
  %i.dh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480), align 16, !tbaa !137
  %i.di = add nsw i64 %i.dh, %i.db
  store i64 %i.di, ptr %i.dc, align 8, !tbaa !220
  br label %bb.y

bb.q:                                             ; preds = %bb.n
  %.not.i = icmp sgt i64 %i.dd, %i.db
  %i.dj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 808), align 8, !tbaa !135
  %i.dk = icmp eq i32 %i.dj, 0                    ; 2 uses
  br i1 %.not.i, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.dk, label %bb.s, label %mi_option_get.exit23.i, !prof !61

bb.s:                                             ; preds = %bb.r
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 800)), !inline_history !138
  br label %mi_option_get.exit23.i

mi_option_get.exit23.i:                           ; preds = %bb.s, %bb.r
  %i.dl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 800), align 16, !tbaa !137 ; 2 uses
  %i.dm = add nsw i64 %i.dl, %i.dd
  %.not21.i = icmp sgt i64 %i.dm, %i.db
  br i1 %.not21.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %mi_option_get.exit23.i
  call fastcc void @_ZL20mi_segment_try_purgeP12mi_segment_sb(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %bb.y

bb.u:                                             ; preds = %mi_option_get.exit23.i
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 808), align 8, !tbaa !135
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.v, label %mi_option_get.exit24.i, !prof !61

bb.v:                                             ; preds = %bb.u
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 800)), !inline_history !138
  %.pre.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 800), align 16, !tbaa !137
  br label %mi_option_get.exit24.i

mi_option_get.exit24.i:                           ; preds = %bb.v, %bb.u
  %i.dp = phi i64 [ %i.dl, %bb.u ], [ %.pre.i, %bb.v ]
  %i.dq = add nsw i64 %i.dp, %i.db
  store i64 %i.dq, ptr %i.dc, align 8, !tbaa !220
  br label %bb.y

bb.w:                                             ; preds = %bb.q
  br i1 %i.dk, label %bb.x, label %mi_option_get.exit25.i, !prof !61

bb.x:                                             ; preds = %bb.w
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 800)), !inline_history !138
  %.pre38.i = load i64, ptr %i.dc, align 8, !tbaa !220
  br label %mi_option_get.exit25.i

mi_option_get.exit25.i:                           ; preds = %bb.x, %bb.w
  %i.dr = phi i64 [ %i.dd, %bb.w ], [ %.pre38.i, %bb.x ]
  %i.ds = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 800), align 16, !tbaa !137
  %i.dt = add nsw i64 %i.ds, %i.dr
  store i64 %i.dt, ptr %i.dc, align 8, !tbaa !220
  br label %bb.y

bb.y:                                             ; preds = %mi_option_get.exit25.i, %mi_option_get.exit24.i, %bb.t, %mi_option_get.exit22.i, %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit

_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit: ; preds = %bb.y, %bb.k, %bb.h, %bb.g
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %_ZL18mi_span_queue_pushP15mi_span_queue_sP9mi_page_s.exit, label %bb.z

bb.z:                                             ; preds = %_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store ptr null, ptr %i.du, align 8, !tbaa !216
  %i.dv = load ptr, ptr %i.t, align 8, !tbaa !227 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !192
  store ptr %i.v, ptr %i.t, align 8, !tbaa !227
  %.not.i31 = icmp eq ptr %i.dv, null
  br i1 %.not.i31, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 80
  store ptr %i.v, ptr %i.dx, align 8, !tbaa !216
  br label %_ZL18mi_span_queue_pushP15mi_span_queue_sP9mi_page_s.exit

bb.ab:                                            ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.dy, align 8, !tbaa !228
  br label %_ZL18mi_span_queue_pushP15mi_span_queue_sP9mi_page_s.exit

_ZL18mi_span_queue_pushP15mi_span_queue_sP9mi_page_s.exit: ; preds = %_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit, %bb.ab, %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 0, ptr %i.dz, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal fastcc void @_ZL22mi_segments_track_sizelP17mi_segments_tld_s(i64 noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i64 %0, -1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 912
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !195  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 376 ; 5 uses
  %i.e = icmp uge ptr %i.d, @_mi_stats_main
  %i.f = icmp ult ptr %i.d, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 4184)
  %i.g = select i1 %i.e, i1 %i.f, i1 false        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 392 ; 6 uses
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 384 ; 2 uses
  %i.k = add nsw i64 %i.i, 1
  %i.l = load atomic i64, ptr %i.j monotonic, align 8 ; 2 uses
  %.old3.i.i.i.not = icmp sgt i64 %i.l, %i.i
  br i1 %.old3.i.i.i.not, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c, %.preheader.i.i.i
  %.0.i.i.i = phi i64 [ %i.o, %.preheader.i.i.i ], [ %i.l, %bb.c ]
  %i.m = cmpxchg weak ptr %i.j, i64 %.0.i.i.i, i64 %i.k release monotonic, align 8 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  %i.o = extractvalue { i64, i1 } %i.m, 0         ; 2 uses
  %i.p = icmp sgt i64 %i.o, %i.i
  %or.cond.not.i.i.i = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond.not.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, label %.preheader.i.i.i, !llvm.loop !8

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i:       ; preds = %.preheader.i.i.i, %bb.c
  %i.q = atomicrmw add ptr %i.d, i64 1 monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.h, align 8, !tbaa !165  ; 2 uses
  %i.s = add nsw i64 %i.r, 1                      ; 2 uses
  store i64 %i.s, ptr %i.h, align 8, !tbaa !165
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 384 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !166
  %.not = icmp slt i64 %i.r, %i.u
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.s, ptr %i.t, align 8, !tbaa !166
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = load i64, ptr %i.d, align 8, !tbaa !167
  %i.w = add nsw i64 %i.v, 1
  store i64 %i.w, ptr %i.d, align 8, !tbaa !167
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.g:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.h, label %bb.i, !prof !61

bb.h:                                             ; preds = %bb.g
  %i.x = atomicrmw add ptr %i.h, i64 -1 monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 384 ; 2 uses
  %i.z = add nsw i64 %i.x, -1                     ; 3 uses
  %i.aa = load atomic i64, ptr %i.y monotonic, align 8 ; 2 uses
  %.old3.i.i.i15 = icmp slt i64 %i.aa, %i.z
  br i1 %.old3.i.i.i15, label %.preheader.i.i.i17, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

.preheader.i.i.i17:                               ; preds = %bb.h, %.preheader.i.i.i17
  %.0.i.i.i18 = phi i64 [ %i.ad, %.preheader.i.i.i17 ], [ %i.aa, %bb.h ]
  %i.ab = cmpxchg weak ptr %i.y, i64 %.0.i.i.i18, i64 %i.z release monotonic, align 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZL16mi_segment_allocmmiP17mi_segments_tld_sPP9mi_page_s:bb.a
  %i.ft = or disjoint i64 %i.fs, %i.fp
  %i.fu = xor i64 %i.ft, 252
  %i.fv = add nsw i64 %i.fu, -4
  br label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i

_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i: ; preds = %bb.aj, %bb.ai
  %.1.i.i.i.i = phi i64 [ %i.fj, %bb.ai ], [ %i.fv, %bb.aj ]
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.1.i.i.i.i
  br label %bb.ak

bb.ak:                                            ; preds = %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i, %bb.ah
  %i.fx = phi ptr [ %i.fw, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i ], [ null, %bb.ah ] ; 4 uses
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %i.fj, i64 1) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aw, i64 288 ; 2 uses
  %i.fz = getelementptr inbounds nuw [96 x i8], ptr %i.fy, i64 %.053 ; 9 uses
  %i.ga = trunc i64 %spec.store.select.i to i32   ; 2 uses
  store i32 %i.ga, ptr %i.fz, align 8, !tbaa !140
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store i32 0, ptr %i.gb, align 4, !tbaa !67
  %i.gc = icmp ugt i64 %i.fj, 1
  br i1 %i.gc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gd = getelementptr inbounds nuw [96 x i8], ptr %i.fz, i64 %spec.store.select.i
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 -96 ; 2 uses
  %i.gf = getelementptr inbounds nuw [96 x i8], ptr %i.fy, i64 %i.fi ; 2 uses
  %i.gg = icmp ugt ptr %i.ge, %i.gf
  %spec.select.i = select i1 %i.gg, ptr %i.gf, ptr %i.ge ; 3 uses
  store i32 0, ptr %spec.select.i, align 8, !tbaa !140
  %i.gh = mul i32 %i.ga, 96
  %i.gi = add i32 %i.gh, -96
  %i.gj = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 4
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !67
  %i.gk = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 40
  store i64 0, ptr %i.gk, align 8, !tbaa !62
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.not.i43 = icmp eq ptr %i.fx, null
  br i1 %.not.i43, label %_ZL20mi_segment_span_freeP12mi_segment_smmbP17mi_segments_tld_s.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fz, i64 80
  store ptr null, ptr %i.gl, align 8, !tbaa !216
  %i.gm = load ptr, ptr %i.fx, align 8, !tbaa !227 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fz, i64 72
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !192
  store ptr %i.fz, ptr %i.fx, align 8, !tbaa !227
  %.not.i31.i = icmp eq ptr %i.gm, null
  br i1 %.not.i31.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 80
  store ptr %i.fz, ptr %i.go, align 8, !tbaa !216
  br label %_ZL20mi_segment_span_freeP12mi_segment_smmbP17mi_segments_tld_s.exit

bb.ap:                                            ; preds = %bb.an
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %i.fz, ptr %i.gp, align 8, !tbaa !228
  br label %_ZL20mi_segment_span_freeP12mi_segment_smmbP17mi_segments_tld_s.exit

_ZL20mi_segment_span_freeP12mi_segment_smmbP17mi_segments_tld_s.exit: ; preds = %bb.am, %bb.ao, %bb.ap
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  store i64 0, ptr %i.gq, align 8, !tbaa !62
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ag
  %i.gr = sub nsw i64 %.0, %.053
  %i.gs = tail call fastcc noundef ptr @_ZL24mi_segment_span_allocateP12mi_segment_smm(ptr noundef nonnull %i.aw, i64 noundef %.053, i64 noundef %i.gr)
  store ptr %i.gs, ptr %4, align 8, !tbaa !77
  br label %bb.ar

bb.ar:                                            ; preds = %_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit, %_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit.thread, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit, %bb.aq, %_ZL20mi_segment_span_freeP12mi_segment_smmbP17mi_segments_tld_s.exit
  %.1 = phi ptr [ null, %_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit ], [ null, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit ], [ %i.aw, %bb.aq ], [ %i.aw, %_ZL20mi_segment_span_freeP12mi_segment_smmbP17mi_segments_tld_s.exit ], [ null, %_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit.thread ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL24mi_segment_span_allocateP12mi_segment_smm(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %struct.mi_commit_mask_s, align 16  ; 11 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %5 = alloca %struct.mi_commit_mask_s, align 8   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %1 ; 10 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = shl i64 %1, 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = shl i64 %2, 16                           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !98
  %.not.i.i = icmp eq i64 %i.k, -1
  br i1 %.not.i.i, label %bb.b, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !98
  %.not.1.i.i = icmp eq i64 %i.m, -1
  br i1 %.not.1.i.i, label %bb.c, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = load i64, ptr %i.n, align 8, !tbaa !98
  %.not.2.i.i = icmp eq i64 %i.o, -1
  br i1 %.not.2.i.i, label %bb.d, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load i64, ptr %i.p, align 8, !tbaa !98
  %.not.3.i.i = icmp eq i64 %i.q, -1
  br i1 %.not.3.i.i, label %bb.e, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load i64, ptr %i.r, align 8, !tbaa !98
  %.not.4.i.i = icmp eq i64 %i.s, -1
  br i1 %.not.4.i.i, label %bb.f, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.u = load i64, ptr %i.t, align 8, !tbaa !98
  %.not.5.i.i = icmp eq i64 %i.u, -1
  br i1 %.not.5.i.i, label %bb.g, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.w = load i64, ptr %i.v, align 8, !tbaa !98
  %.not.6.i.i = icmp eq i64 %i.w, -1
  br i1 %.not.6.i.i, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.i, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.i: ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.y = load i64, ptr %i.x, align 8, !tbaa !98
  %.not.7.i.i = icmp eq i64 %i.y, -1
  br i1 %.not.7.i.i, label %bb.h, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

bb.h:                                             ; preds = %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !98
  %.not.i5.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i5.i, label %bb.i, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !98
  %.not.1.i7.i = icmp eq i64 %i.ac, 0
  br i1 %.not.1.i7.i, label %bb.j, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !98
  %.not.2.i8.i = icmp eq i64 %i.ae, 0
  br i1 %.not.2.i8.i, label %bb.k, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !98
  %.not.3.i9.i = icmp eq i64 %i.ag, 0
  br i1 %.not.3.i9.i, label %bb.l, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !98
  %.not.4.i10.i = icmp eq i64 %i.ai, 0
  br i1 %.not.4.i10.i, label %bb.m, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !98
  %.not.5.i11.i = icmp eq i64 %i.ak, 0
  br i1 %.not.5.i11.i, label %bb.n, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = load i64, ptr %i.al, align 8, !tbaa !98
  %.not.6.i12.i = icmp eq i64 %i.am, 0
  br i1 %.not.6.i12.i, label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i: ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !98
  %.not.7.i13.i = icmp eq i64 %i.ao, 0
  br i1 %.not.7.i13.i, label %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i: ; preds = %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store ptr null, ptr %i.a, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i64 0, ptr %i.b, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  call fastcc void @_ZL22mi_segment_commit_maskP12mi_segment_sbPhmPS1_PmP16mi_commit_mask_s(ptr noundef nonnull %0, i1 noundef zeroext false, ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %4)
  %i.ap = load <2 x i64>, ptr %4, align 16        ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = load <2 x i64>, ptr %i.aq, align 16     ; 4 uses
  %i.as = shufflevector <2 x i64> %i.ap, <2 x i64> %i.ar, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i64> %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.au = load <2 x i64>, ptr %i.at, align 16
  %.fr71 = freeze <2 x i64> %i.au                 ; 4 uses
  %i.av = extractelement <2 x i64> %.fr71, i64 0  ; 5 uses
  %6 = extractelement <2 x i64> %.fr71, i64 1     ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ax = load i64, ptr %i.aw, align 16           ; 7 uses
  %.not.6.i.i.i = icmp eq i64 %i.ax, 0
  %i.ay = icmp ne <4 x i64> %.fr, zeroinitializer
  %i.az = bitcast <4 x i1> %i.ay to i4
  %i.ba = icmp eq i4 %i.az, 0
  %7 = or i64 %6, %i.av
  %8 = icmp eq i64 %7, 0
  %9 = and i1 %i.ba, %8
  %op.rdx69 = select i1 %9, i1 %.not.6.i.i.i, i1 false
  br i1 %op.rdx69, label %bb.o, label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i.i

bb.o:                                             ; preds = %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !98
  %.not.7.i.i.i = icmp eq i64 %i.bc, 0
  br label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i.i

_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i.i: ; preds = %bb.o, %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i
  %.not.lcssa.i.i.i = phi i1 [ false, %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i ], [ %.not.7.i.i.i, %bb.o ]
  %i.bd = load i64, ptr %i.b, align 8             ; 3 uses
  %i.be = icmp eq i64 %i.bd, 0
  %or.cond.i.i = select i1 %.not.lcssa.i.i.i, i1 true, i1 %i.be
  br i1 %or.cond.i.i, label %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread57, label %bb.p

bb.p:                                             ; preds = %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i.i
  %i.bf = load i64, ptr %i.j, align 8, !tbaa !98
  %i.bg = extractelement <2 x i64> %i.ap, i64 0   ; 4 uses
  %i.bh = and i64 %i.bf, %i.bg                    ; 2 uses
  %.not.i12.i.i = icmp eq i64 %i.bh, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !98
  %i.bk = extractelement <2 x i64> %i.ap, i64 1   ; 4 uses
  %i.bl = and i64 %i.bj, %i.bk                    ; 2 uses
  %.not.1.i14.i.i = icmp eq i64 %i.bl, %i.bk
  %or.cond58.i.i = select i1 %.not.i12.i.i, i1 %.not.1.i14.i.i, i1 false
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !98
  %i.bo = extractelement <2 x i64> %i.ar, i64 0   ; 4 uses
  %i.bp = and i64 %i.bn, %i.bo                    ; 2 uses
  %.not.2.i15.i.i = icmp eq i64 %i.bp, %i.bo
  %or.cond.i = select i1 %or.cond58.i.i, i1 %.not.2.i15.i.i, i1 false
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !98
  %i.bs = extractelement <2 x i64> %i.ar, i64 1   ; 4 uses
  %i.bt = and i64 %i.br, %i.bs                    ; 2 uses
  %.not.3.i16.i.i = icmp eq i64 %i.bt, %i.bs
  %or.cond = select i1 %or.cond.i, i1 %.not.3.i16.i.i, i1 false
  br i1 %or.cond, label %bb.q, label %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !98
  %i.bw = and i64 %i.bv, %i.av
  %.not.4.i17.i.i = icmp eq i64 %i.bw, %i.av
  br i1 %.not.4.i17.i.i, label %bb.r, label %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !98
  %i.bz = and i64 %i.by, %6
  %.not.5.i18.i.i = icmp eq i64 %i.bz, %6
  br i1 %.not.5.i18.i.i, label %bb.s, label %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !98
  %i.cc = and i64 %i.cb, %i.ax
  %.not.6.i19.i.i = icmp eq i64 %i.cc, %i.ax
  br i1 %.not.6.i19.i.i, label %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.i.i, label %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.thread.i.i

_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.i.i: ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !98
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !98 ; 3 uses
  %i.ch = and i64 %i.cg, %i.ce
  %.not.7.i20.i.i = icmp eq i64 %i.ch, %i.cg
  br i1 %.not.7.i20.i.i, label %bb.w, label %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.thread.i.i

_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.thread.i.i: ; preds = %bb.p, %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.i.i, %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 %i.bh, ptr %5, align 8, !tbaa !98
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bl, ptr %i.ci, align 8, !tbaa !98
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.bp, ptr %i.cj, align 8, !tbaa !98
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.bt, ptr %i.ck, align 8, !tbaa !98
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cn = load <2 x i64>, ptr %i.cl, align 8, !tbaa !98
  %i.co = and <2 x i64> %i.cn, %.fr71
  store <2 x i64> %i.co, ptr %i.cm, align 8, !tbaa !98
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !98
  %i.cr = and i64 %i.cq, %i.ax
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !98
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !98
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !98 ; 3 uses
  %i.cx = and i64 %i.cw, %i.cu
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !98
  %i.cz = call noundef i64 @_Z30_mi_commit_mask_committed_sizePK16mi_commit_mask_sm(ptr noundef nonnull %5, i64 noundef 33554432) ; 5 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.thread.i.i
  %i.db = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 72), i64 %i.cz monotonic, align 8
  %i.dc = sub nsw i64 %i.db, %i.cz                ; 3 uses
  %i.dd = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64) monotonic, align 64 ; 2 uses
  %.old3.i.i.i.i.i = icmp slt i64 %i.dd, %i.dc
  br i1 %.old3.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.t, %.preheader.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %i.dg, %.preheader.i.i.i.i.i ], [ %i.dd, %bb.t ]
  %i.de = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64), i64 %.0.i.i.i.i.i, i64 %i.dc release monotonic, align 8 ; 2 uses
  %i.df = extractvalue { i64, i1 } %i.de, 1
  %i.dg = extractvalue { i64, i1 } %i.de, 0       ; 2 uses
  %i.dh = icmp sge i64 %i.dg, %i.dc
  %or.cond.not.i.i.i.i.i = select i1 %i.df, i1 true, i1 %i.dh
  br i1 %or.cond.not.i.i.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !8

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i:   ; preds = %.preheader.i.i.i.i.i, %bb.t
  %i.di = icmp slt i64 %i.cz, 0
  br i1 %i.di, label %bb.u, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i

bb.u:                                             ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i
  %i.dj = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 56), i64 %i.cz monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i

_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i: ; preds = %bb.u, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i, %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.thread.i.i
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.dl = call noundef zeroext i1 @_Z16_mi_os_commit_exPvmPbm(ptr noundef %i.dk, i64 noundef %i.bd, ptr noundef nonnull %i.c, i64 noundef %i.bd)
  br i1 %i.dl, label %bb.v, label %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit

bb.v:                                             ; preds = %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i
  %i.dm = load <2 x i64>, ptr %i.j, align 8, !tbaa !98
  %i.dn = or <2 x i64> %i.dm, %i.ap
  store <2 x i64> %i.dn, ptr %i.j, align 8, !tbaa !98
  %i.do = load <2 x i64>, ptr %i.bm, align 8, !tbaa !98
  %i.dp = or <2 x i64> %i.do, %i.ar
  store <2 x i64> %i.dp, ptr %i.bm, align 8, !tbaa !98
  %i.dq = load <2 x i64>, ptr %i.cl, align 8, !tbaa !98
  %i.dr = or <2 x i64> %i.dq, %.fr71
  store <2 x i64> %i.dr, ptr %i.cl, align 8, !tbaa !98
  %i.ds = load i64, ptr %i.cp, align 8, !tbaa !98
  %i.dt = or i64 %i.ds, %i.ax
  store i64 %i.dt, ptr %i.cp, align 8, !tbaa !98
  %i.du = load i64, ptr %i.ct, align 8, !tbaa !98
  %i.dv = or i64 %i.du, %i.cw
  store i64 %i.dv, ptr %i.ct, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.i.i
  %i.dw = phi i64 [ %i.cw, %bb.v ], [ %i.cg, %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.i.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !98 ; 2 uses
  %i.dz = and i64 %i.dy, %i.bg
  %.not.not.i.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not.not.i.i.i, label %bb.x, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.x:                                             ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !98 ; 2 uses
  %i.ec = and i64 %i.eb, %i.bk
  %.not.1.not.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.1.not.i.i.i, label %bb.y, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.y:                                             ; preds = %bb.x
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !98 ; 2 uses
  %i.ef = and i64 %i.ee, %i.bo
  %.not.2.not.i.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.2.not.i.i.i, label %bb.z, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.z:                                             ; preds = %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !98 ; 2 uses
  %i.ei = and i64 %i.eh, %i.bs
  %.not.3.not.i.i.i = icmp eq i64 %i.ei, 0
  br i1 %.not.3.not.i.i.i, label %bb.aa, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !98 ; 2 uses
  %i.el = and i64 %i.ek, %i.av
  %.not.4.not.i.i.i = icmp eq i64 %i.el, 0
  br i1 %.not.4.not.i.i.i, label %bb.ab, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.en = load i64, ptr %i.em, align 8, !tbaa !98 ; 2 uses
  %i.eo = and i64 %i.en, %6
  %.not.5.not.i.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not.5.not.i.i.i, label %bb.ac, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !98 ; 2 uses
  %i.er = and i64 %i.eq, %i.ax
  %.not.6.not.i.i.i = icmp eq i64 %i.er, 0
  br i1 %.not.6.not.i.i.i, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i

_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i: ; preds = %bb.ac
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.et = load i64, ptr %i.es, align 8, !tbaa !98 ; 2 uses
  %i.eu = and i64 %i.et, %i.dw
  %.not.7.not.i.not.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not.7.not.i.not.i.i, label %bb.ae, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i

_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i: ; preds = %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %i.ev = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #50 ; 0 uses
  %i.ew = load i64, ptr %3, align 8, !tbaa !169
  %i.ex = mul nsw i64 %i.ew, 1000
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !170
  %i.fa = sdiv i64 %i.ez, 1000000
  %i.fb = add nsw i64 %i.fa, %i.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  %i.fc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !135
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.ad, label %mi_option_get.exit.i.i, !prof !61

bb.ad:                                            ; preds = %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480)), !inline_history !138
  br label %mi_option_get.exit.i.i

mi_option_get.exit.i.i:                           ; preds = %bb.ad, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i
  %i.fe = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480), align 16, !tbaa !137
  %i.ff = add nsw i64 %i.fb, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !220
  %.pre36.i.i = load i64, ptr %i.dx, align 8, !tbaa !98
  %.phi.trans.insert37.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre38.i.i = load i64, ptr %.phi.trans.insert37.i.i, align 8, !tbaa !98
  %.phi.trans.insert39.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre40.i.i = load i64, ptr %.phi.trans.insert39.i.i, align 8, !tbaa !98
  %.phi.trans.insert41.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre42.i.i = load i64, ptr %.phi.trans.insert41.i.i, align 8, !tbaa !98
  %.phi.trans.insert43.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre44.i.i = load i64, ptr %.phi.trans.insert43.i.i, align 8, !tbaa !98
  %.phi.trans.insert45.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre46.i.i = load i64, ptr %.phi.trans.insert45.i.i, align 8, !tbaa !98
  %.phi.trans.insert47.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre48.i.i = load i64, ptr %.phi.trans.insert47.i.i, align 8, !tbaa !98
  %.phi.trans.insert49.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre50.i.i = load i64, ptr %.phi.trans.insert49.i.i, align 8, !tbaa !98
  br label %bb.ae

bb.ae:                                            ; preds = %mi_option_get.exit.i.i, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i
  %i.fh = phi i64 [ %.pre50.i.i, %mi_option_get.exit.i.i ], [ %i.et, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fi = phi i64 [ %.pre48.i.i, %mi_option_get.exit.i.i ], [ %i.eq, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fj = phi i64 [ %.pre46.i.i, %mi_option_get.exit.i.i ], [ %i.en, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fk = phi i64 [ %.pre44.i.i, %mi_option_get.exit.i.i ], [ %i.ek, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fl = phi i64 [ %.pre42.i.i, %mi_option_get.exit.i.i ], [ %i.eh, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fm = phi i64 [ %.pre40.i.i, %mi_option_get.exit.i.i ], [ %i.ee, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fn = phi i64 [ %.pre38.i.i, %mi_option_get.exit.i.i ], [ %i.eb, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fo = phi i64 [ %.pre36.i.i, %mi_option_get.exit.i.i ], [ %i.dy, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fp = xor i64 %i.bg, -1
  %i.fq = and i64 %i.fo, %i.fp
  store i64 %i.fq, ptr %i.dx, align 8, !tbaa !98
  %i.fr = xor i64 %i.bk, -1
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ft = and i64 %i.fn, %i.fr
  store i64 %i.ft, ptr %i.fs, align 8, !tbaa !98
  %i.fu = xor i64 %i.bo, -1
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fw = and i64 %i.fm, %i.fu
  store i64 %i.fw, ptr %i.fv, align 8, !tbaa !98
  %i.fx = xor i64 %i.bs, -1
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fz = and i64 %i.fl, %i.fx
  store i64 %i.fz, ptr %i.fy, align 8, !tbaa !98
  %i.ga = xor i64 %i.av, -1
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gc = and i64 %i.fk, %i.ga
  store i64 %i.gc, ptr %i.gb, align 8, !tbaa !98
  %i.gd = xor i64 %6, -1
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gf = and i64 %i.fj, %i.gd
  store i64 %i.gf, ptr %i.ge, align 8, !tbaa !98
  %i.gg = xor i64 %i.ax, -1
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gi = and i64 %i.fi, %i.gg
  store i64 %i.gi, ptr %i.gh, align 8, !tbaa !98
  %i.gj = xor i64 %i.dw, -1
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gl = and i64 %i.fh, %i.gj
  store i64 %i.gl, ptr %i.gk, align 8, !tbaa !98
  br label %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread57

_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread57: ; preds = %bb.ae, %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread

_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit: ; preds = %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.ah

_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread: ; preds = %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i, %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread57
  %i.gm = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.gm, align 4, !tbaa !67
  %i.gn = trunc i64 %2 to i32
  store i32 %i.gn, ptr %i.e, align 8, !tbaa !140
  %i.go = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.i, ptr %i.go, align 8, !tbaa !62
  %i.gp = add i64 %2, -1
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.gp, i64 255) ; 2 uses
  %i.gq = add i64 %spec.store.select, %1
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !139 ; 3 uses
  %.not = icmp ult i64 %i.gq, %i.gs
  %i.gt = xor i64 %1, -1
  %i.gu = add i64 %i.gs, %i.gt
  %.049 = select i1 %.not, i64 %spec.store.select, i64 %i.gu ; 2 uses
  %.not5559 = icmp eq i64 %.049, 0
  br i1 %.not5559, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread
  %i.gv = add i64 %.049, 1                        ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.gv, i64 2)
  %i.gw = add i64 %umax, -1                       ; 2 uses
  %xtraiter = and i64 %i.gw, 3                    ; 3 uses
  %i.gx = icmp ult i64 %i.gv, 5
  br i1 %i.gx, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.gw, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.04761.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ib, %._crit_edge.loopexit.unr-lcssa ]
  %.pn60.epil.init = phi ptr [ %i.e, %.lr.ph.preheader ], [ %.048.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.04761.epil = phi i64 [ %i.hc, %.lr.ph.epil ], [ %.04761.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.pn60.epil = phi ptr [ %.048.epil, %.lr.ph.epil ], [ %.pn60.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %.048.epil = getelementptr inbounds nuw i8, ptr %.pn60.epil, i64 96 ; 2 uses
  %i.gy = trunc i64 %.04761.epil to i32
  %i.gz = mul i32 %i.gy, 96
  %i.ha = getelementptr inbounds nuw i8, ptr %.pn60.epil, i64 100
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !67
  store i32 0, ptr %.048.epil, align 8, !tbaa !140
  %i.hb = getelementptr inbounds nuw i8, ptr %.pn60.epil, i64 136
  store i64 1, ptr %i.hb, align 8, !tbaa !62
  %i.hc = add nuw i64 %.04761.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !399

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread
  %i.hd = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %2
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -96 ; 2 uses
  %i.hf = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %i.gs ; 2 uses
  %i.hg = icmp ugt ptr %i.he, %i.hf
  %spec.select = select i1 %i.hg, ptr %i.hf, ptr %i.he ; 5 uses
  %i.hh = icmp ugt ptr %spec.select, %i.e
  br i1 %i.hh, label %bb.af, label %bb.ag

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.04761 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.ib, %.lr.ph ] ; 5 uses
  %.pn60 = phi ptr [ %i.e, %.lr.ph.preheader.new ], [ %.048.3, %.lr.ph ] ; 12 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %.048 = getelementptr inbounds nuw i8, ptr %.pn60, i64 96
  %i.hi = trunc i64 %.04761 to i32
  %i.hj = mul i32 %i.hi, 96
  %i.hk = getelementptr inbounds nuw i8, ptr %.pn60, i64 100
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !67
  store i32 0, ptr %.048, align 8, !tbaa !140
  %i.hl = getelementptr inbounds nuw i8, ptr %.pn60, i64 136
  store i64 1, ptr %i.hl, align 8, !tbaa !62
  %.048.1 = getelementptr inbounds nuw i8, ptr %.pn60, i64 192
  %i.hm = trunc i64 %.04761 to i32
  %i.hn = mul i32 %i.hm, 96
  %i.ho = add i32 %i.hn, 96
  %i.hp = getelementptr inbounds nuw i8, ptr %.pn60, i64 196
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !67
  store i32 0, ptr %.048.1, align 8, !tbaa !140
  %i.hq = getelementptr inbounds nuw i8, ptr %.pn60, i64 232
  store i64 1, ptr %i.hq, align 8, !tbaa !62
  %.048.2 = getelementptr inbounds nuw i8, ptr %.pn60, i64 288
  %i.hr = trunc i64 %.04761 to i32
  %i.hs = mul i32 %i.hr, 96
  %i.ht = add i32 %i.hs, 192
  %i.hu = getelementptr inbounds nuw i8, ptr %.pn60, i64 292
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !67
  store i32 0, ptr %.048.2, align 8, !tbaa !140
  %i.hv = getelementptr inbounds nuw i8, ptr %.pn60, i64 328
  store i64 1, ptr %i.hv, align 8, !tbaa !62
  %.048.3 = getelementptr inbounds nuw i8, ptr %.pn60, i64 384 ; 3 uses
  %i.hw = trunc i64 %.04761 to i32
  %i.hx = mul i32 %i.hw, 96
  %i.hy = add i32 %i.hx, 288
  %i.hz = getelementptr inbounds nuw i8, ptr %.pn60, i64 388
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !67
  store i32 0, ptr %.048.3, align 8, !tbaa !140
  %i.ia = getelementptr inbounds nuw i8, ptr %.pn60, i64 424
  store i64 1, ptr %i.ia, align 8, !tbaa !62
  %i.ib = add nuw i64 %.04761, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !400

bb.af:                                            ; preds = %._crit_edge
  %i.ic = ptrtoint ptr %spec.select to i64
  %i.id = sub i64 %i.ic, %i.f
  %i.ie = trunc i64 %i.id to i32
  %i.if = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !67
  store i32 0, ptr %spec.select, align 8, !tbaa !140
  %i.ig = getelementptr inbounds nuw i8, ptr %spec.select, i64 40
  store i64 1, ptr %i.ig, align 8, !tbaa !62
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge
  %i.ih = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !225
  %i.il = icmp eq i32 %i.ik, 1
  %i.im = select i1 %i.il, i8 4, i8 0
  %i.in = and i8 %i.ii, -6
  %i.io = or disjoint i8 %i.in, 1
  %i.ip = or disjoint i8 %i.im, %i.io
  store i8 %i.ip, ptr %i.ih, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !193
  %i.is = add i64 %i.ir, 1
  store i64 %i.is, ptr %i.iq, align 8, !tbaa !193
  br label %bb.ah

bb.ah:                                            ; preds = %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit, %bb.ag
  %.050 = phi ptr [ %i.e, %bb.ag ], [ null, %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit ]
  ret ptr %.050
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL15mi_buffered_outPKcPv(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !69      ; 2 uses
  %.not22 = icmp eq i8 %i.c, 0
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.h = phi i8 [ %i.c, %.lr.ph ], [ %i.av, %bb.k ] ; 2 uses
  %.023 = phi ptr [ %0, %.lr.ph ], [ %i.au, %bb.k ]
  %i.i = load i64, ptr %i.d, align 8, !tbaa !403  ; 3 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !237
  %.not18 = icmp ult i64 %i.i, %i.j
  br i1 %.not18, label %_ZL17mi_buffered_flushP10buffered_s.exit, label %bb.c

end_hunk_2
