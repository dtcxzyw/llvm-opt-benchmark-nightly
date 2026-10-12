Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/demosaicing?download=true
inline.NumInlined: 241
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK2cv18Bayer2Gray_InvokerIhNS_24SIMDBayerInterpolator_8uEEclERKNS_5RangeE:bb.a
  %i.fr = mul nsw i32 %i.fq, %i.fp
  %i.fs = add i32 %i.ew, 32768
  %i.ft = add i32 %i.fs, %i.fm
  %i.fu = add i32 %i.ft, %i.fr
  %i.fv = lshr i32 %i.fu, 16
  %i.fw = trunc i32 %i.fv to i8
  store i8 %i.fw, ptr %.1.lcssa, align 1, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.fx = load i8, ptr %.0115159, align 1, !tbaa !18
  %i.fy = getelementptr inbounds i8, ptr %.0115159, i64 -1
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !18
  %i.fz = load i32, ptr %i.af, align 4, !tbaa !134
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr i8, ptr %.0115159, i64 %i.ga ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 -1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !18
  store i8 %i.gd, ptr %i.gb, align 1, !tbaa !18
  %i.ge = zext i1 %.not118 to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.2150 = phi i32 [ %.1149155, %bb.c ], [ %.1146156, %bb.i ]
  %.2147 = phi i32 [ %.1146156, %bb.c ], [ %.1149155, %bb.i ]
  %.2 = phi i32 [ %.1114160, %bb.c ], [ %i.ge, %bb.i ]
  %i.gf = add nsw i32 %.0112161, 1                ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %.0116157, i64 %i.ai
  %i.gh = getelementptr inbounds i8, ptr %.0115159, i64 %i.am
  %i.gi = load i32, ptr %i.b, align 4, !tbaa !27
  %i.gj = icmp slt i32 %i.gf, %i.gi
  br i1 %i.gj, label %bb.b, label %._crit_edge164, !llvm.loop !132
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv18Bayer2Gray_InvokerItNS_26SIMDBayerStubInterpolator_ItEEED2Ev(ptr noundef nonnull align 8 dead_on_return(444) dereferenceable(444) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv18Bayer2Gray_InvokerItNS_26SIMDBayerStubInterpolator_ItEEEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #16
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv18Bayer2Gray_InvokerItNS_26SIMDBayerStubInterpolator_ItEEED0Ev(ptr noundef nonnull align 8 dereferenceable(444) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv18Bayer2Gray_InvokerItNS_26SIMDBayerStubInterpolator_ItEEEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #16, !inline_history !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #16, !inline_history !46
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(444) %0) #16, !inline_history !46
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 448) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv18Bayer2Gray_InvokerItNS_26SIMDBayerStubInterpolator_ItEEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(444) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !26     ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !27   ; 5 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph162, label %._crit_edge163

.lr.ph162:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = shl i64 %i.i, 32                         ; 2 uses
  %sext = add i64 %i.j, 4294967296
  %i.k = ashr exact i64 %sext, 31
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 %i.k
  %i.m = trunc i64 %i.i to i32
  %i.n = mul nsw i32 %i.a, %i.m
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [2 x i8], ptr %i.l, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load i64, ptr %i.q, align 8, !tbaa !37
  %i.s = lshr i64 %i.r, 1                         ; 2 uses
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.v = load i32, ptr %i.u, align 4, !tbaa !148  ; 2 uses
  %i.w = sext i32 %i.v to i64                     ; 9 uses
  %i.x = icmp slt i32 %i.v, 1
  %i.y = shl i32 %i.t, 1
  %i.z = sext i32 %i.y to i64                     ; 5 uses
  %sext119 = shl i64 %i.s, 32                     ; 4 uses
  %i.aa = ashr exact i64 %sext119, 31             ; 9 uses
  %sext120 = add i64 %sext119, 8589934592
  %i.ab = ashr exact i64 %sext120, 31             ; 6 uses
  %sext121 = add i64 %sext119, 4294967296
  %i.ac = ashr exact i64 %sext121, 31             ; 6 uses
  %sext129 = add i64 %sext119, 12884901888
  %i.ad = ashr exact i64 %sext129, 31             ; 4 uses
  %i.ae = ashr exact i64 %i.j, 31                 ; 6 uses
  br i1 %i.x, label %.lr.ph162.split.us.preheader, label %.lr.ph162.split.preheader

.lr.ph162.split.us.preheader:                     ; preds = %.lr.ph162
  %i.af = sub i32 %i.c, %i.a
  %xtraiter = and i32 %i.af, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph162.split.us.prol.loopexit, label %.lr.ph162.split.us.prol

.lr.ph162.split.us.prol:                          ; preds = %.lr.ph162.split.us.preheader, %.lr.ph162.split.us.prol
  %.0112160.us.prol = phi i32 [ %i.ai, %.lr.ph162.split.us.prol ], [ %i.a, %.lr.ph162.split.us.preheader ]
  %.0115158.us.prol = phi ptr [ %i.aj, %.lr.ph162.split.us.prol ], [ %i.p, %.lr.ph162.split.us.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph162.split.us.prol ], [ 0, %.lr.ph162.split.us.preheader ]
  %i.ag = getelementptr inbounds [2 x i8], ptr %.0115158.us.prol, i64 %i.w
  store i16 0, ptr %i.ag, align 2, !tbaa !48
  %i.ah = getelementptr inbounds i8, ptr %.0115158.us.prol, i64 -2
  store i16 0, ptr %i.ah, align 2, !tbaa !48
  %i.ai = add nsw i32 %.0112160.us.prol, 1        ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.0115158.us.prol, i64 %i.ae ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph162.split.us.prol.loopexit, label %.lr.ph162.split.us.prol, !llvm.loop !135

.lr.ph162.split.us.prol.loopexit:                 ; preds = %.lr.ph162.split.us.prol, %.lr.ph162.split.us.preheader
  %.0112160.us.unr = phi i32 [ %i.a, %.lr.ph162.split.us.preheader ], [ %i.ai, %.lr.ph162.split.us.prol ]
  %.0115158.us.unr = phi ptr [ %i.p, %.lr.ph162.split.us.preheader ], [ %i.aj, %.lr.ph162.split.us.prol ]
  %i.ak = sub i32 %i.a, %i.c
  %i.al = icmp ugt i32 %i.ak, -4
  br i1 %i.al, label %._crit_edge163, label %.lr.ph162.split.us

.lr.ph162.split.preheader:                        ; preds = %.lr.ph162
  %i.am = and i32 %i.a, 1
  %.not = icmp eq i32 %i.am, 0                    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !44 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !45 ; 2 uses
  %.0148 = select i1 %.not, i32 %i.ao, i32 %i.aq
  %.0145 = select i1 %.not, i32 %i.aq, i32 %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !43 ; 2 uses
  %.not117 = icmp eq i32 %i.as, 0
  %i.at = zext i1 %.not117 to i32
  %.0113 = select i1 %.not, i32 %i.as, i32 %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !36 ; 2 uses
  %i.aw = ptrtoaddr ptr %i.av to i64              ; 2 uses
  %i.ax = mul i32 %i.a, %i.t
  %i.ay = sext i32 %i.ax to i64                   ; 3 uses
  %i.az = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.ay
  %i.ba = icmp eq i32 %.0113, 0
  %i.bb = add nsw i64 %i.w, %i.ay
  %i.bc = shl nsw i64 %i.bb, 1
  %i.bd = add i64 %i.bc, %i.aw
  %i.be = add i64 %i.bd, -3
  %i.bf = shl nsw i64 %i.z, 1                     ; 2 uses
  %i.bg = add nsw i64 %i.w, %i.ay
  %i.bh = shl nsw i64 %i.bg, 1
  %i.bi = add i64 %i.bh, %i.aw
  %i.bj = add i64 %i.bi, -3
  br label %.lr.ph162.split

.lr.ph162.split.us:                               ; preds = %.lr.ph162.split.us.prol.loopexit, %.lr.ph162.split.us
  %.0112160.us = phi i32 [ %i.bv, %.lr.ph162.split.us ], [ %.0112160.us.unr, %.lr.ph162.split.us.prol.loopexit ]
  %.0115158.us = phi ptr [ %i.bw, %.lr.ph162.split.us ], [ %.0115158.us.unr, %.lr.ph162.split.us.prol.loopexit ] ; 3 uses
  %i.bk = getelementptr inbounds [2 x i8], ptr %.0115158.us, i64 %i.w
  store i16 0, ptr %i.bk, align 2, !tbaa !48
  %i.bl = getelementptr inbounds i8, ptr %.0115158.us, i64 -2
  store i16 0, ptr %i.bl, align 2, !tbaa !48
  %i.bm = getelementptr inbounds i8, ptr %.0115158.us, i64 %i.ae ; 3 uses
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.w
  store i16 0, ptr %i.bn, align 2, !tbaa !48
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -2
  store i16 0, ptr %i.bo, align 2, !tbaa !48
  %i.bp = getelementptr inbounds i8, ptr %i.bm, i64 %i.ae ; 3 uses
  %i.bq = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.w
  store i16 0, ptr %i.bq, align 2, !tbaa !48
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -2
  store i16 0, ptr %i.br, align 2, !tbaa !48
  %i.bs = getelementptr inbounds i8, ptr %i.bp, i64 %i.ae ; 3 uses
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.w
  store i16 0, ptr %i.bt, align 2, !tbaa !48
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -2
  store i16 0, ptr %i.bu, align 2, !tbaa !48
  %i.bv = add nsw i32 %.0112160.us, 4             ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 %i.ae
  %exitcond166.not.3 = icmp eq i32 %i.bv, %i.c
  br i1 %exitcond166.not.3, label %._crit_edge163, label %.lr.ph162.split.us, !llvm.loop !136

._crit_edge163:                                   ; preds = %bb.e, %.lr.ph162.split.us.prol.loopexit, %.lr.ph162.split.us, %bb.a
  ret void

.lr.ph162.split:                                  ; preds = %.lr.ph162.split.preheader, %bb.e
  %indvar = phi i64 [ 0, %.lr.ph162.split.preheader ], [ %indvar.next, %bb.e ] ; 3 uses
  %.0112160 = phi i32 [ %i.a, %.lr.ph162.split.preheader ], [ %i.la, %bb.e ]
  %.1114159 = phi i1 [ %i.ba, %.lr.ph162.split.preheader ], [ %i.ld, %bb.e ] ; 2 uses
  %.0115158 = phi ptr [ %i.p, %.lr.ph162.split.preheader ], [ %i.lc, %bb.e ] ; 7 uses
  %.0116157 = phi ptr [ %i.az, %.lr.ph162.split.preheader ], [ %i.lb, %bb.e ] ; 8 uses
  %.1146156 = phi i32 [ %.0145, %.lr.ph162.split.preheader ], [ %.1149155, %bb.e ] ; 6 uses
  %.1149155 = phi i32 [ %.0148, %.lr.ph162.split.preheader ], [ %.1146156, %bb.e ] ; 6 uses
  %2 = mul i64 %i.aa, %indvar
  %3 = add i64 %i.bj, %2
  %i.bx = mul i64 %i.aa, %indvar
  %i.by = add i64 %i.be, %i.bx
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.0116157, i64 %i.w ; 2 uses
  br i1 %.1114159, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph162.split
  %i.ca = getelementptr inbounds nuw i8, ptr %.0116157, i64 2 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !48
  %i.cc = zext i16 %i.cb to i32
  %i.cd = getelementptr [2 x i8], ptr %.0116157, i64 %i.z
  %i.ce = getelementptr i8, ptr %i.cd, i64 2
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !48
  %i.cg = zext i16 %i.cf to i32
  %i.ch = add nuw nsw i32 %i.cg, %i.cc
  %i.ci = mul nsw i32 %i.ch, %.1146156
  %i.cj = getelementptr inbounds i8, ptr %.0116157, i64 %i.aa
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !48
  %i.cl = zext i16 %i.ck to i32
  %i.cm = getelementptr inbounds i8, ptr %.0116157, i64 %i.ab
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !48
  %i.co = zext i16 %i.cn to i32
  %i.cp = add nuw nsw i32 %i.co, %i.cl
  %i.cq = mul nsw i32 %i.cp, %.1149155
  %i.cr = getelementptr inbounds i8, ptr %.0116157, i64 %i.ac
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !48
  %i.ct = zext i16 %i.cs to i32
  %i.cu = mul nuw nsw i32 %i.ct, 19234
  %i.cv = add i32 %i.ci, 16384
  %i.cw = add i32 %i.cv, %i.cq
  %i.cx = add i32 %i.cw, %i.cu
  %i.cy = lshr i32 %i.cx, 15
  %i.cz = trunc i32 %i.cy to i16
  store i16 %i.cz, ptr %.0115158, align 2, !tbaa !48
  %i.da = getelementptr inbounds nuw i8, ptr %.0115158, i64 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph162.split
  %.0110 = phi ptr [ %i.ca, %bb.b ], [ %.0116157, %.lr.ph162.split ] ; 19 uses
  %.0 = phi ptr [ %i.da, %bb.b ], [ %.0115158, %.lr.ph162.split ] ; 12 uses
  %.0110176 = ptrtoaddr ptr %.0110 to i64         ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %.not122151 = icmp ugt ptr %.0110, %i.db
  br i1 %.not122151, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.dc = shl nsw i32 %.1149155, 2                ; 2 uses
  %i.dd = add i64 %.0110176, 4
  %i.de = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.dd)
  %i.df = xor i64 %.0110176, -1
  %i.dg = add i64 %i.de, %i.df                    ; 2 uses
  %i.dh = lshr i64 %i.dg, 2
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dg, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr i8, ptr %.0, i64 4
  %i.dj = add i64 %.0110176, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.by, i64 %i.dj)
  %i.dk = xor i64 %.0110176, -1
  %i.dl = add i64 %umax, %i.dk
  %i.dm = and i64 %i.dl, -4                       ; 7 uses
  %scevgep177 = getelementptr i8, ptr %scevgep, i64 %i.dm ; 6 uses
  %scevgep178 = getelementptr i8, ptr %.0110, i64 %i.ad
  %i.dn = getelementptr i8, ptr %.0110, i64 %i.ad
  %scevgep179 = getelementptr i8, ptr %i.dn, i64 2
  %scevgep180 = getelementptr i8, ptr %scevgep179, i64 %i.dm
  %scevgep181 = getelementptr i8, ptr %.0110, i64 %i.ac
  %i.do = getelementptr i8, ptr %.0110, i64 %i.ac
  %scevgep182 = getelementptr i8, ptr %i.do, i64 2
  %scevgep183 = getelementptr i8, ptr %scevgep182, i64 %i.dm
  %scevgep184 = getelementptr i8, ptr %.0110, i64 %i.bf
  %i.dp = getelementptr i8, ptr %.0110, i64 %i.bf
  %scevgep185 = getelementptr i8, ptr %i.dp, i64 6
  %scevgep186 = getelementptr i8, ptr %scevgep185, i64 %i.dm
  %scevgep187 = getelementptr i8, ptr %.0110, i64 %i.ab
  %i.dq = getelementptr i8, ptr %.0110, i64 %i.ab
  %scevgep188 = getelementptr i8, ptr %i.dq, i64 2
  %scevgep189 = getelementptr i8, ptr %scevgep188, i64 %i.dm
  %scevgep190 = getelementptr i8, ptr %.0110, i64 %i.aa
  %i.dr = getelementptr i8, ptr %.0110, i64 %i.aa
  %scevgep191 = getelementptr i8, ptr %i.dr, i64 2
  %scevgep192 = getelementptr i8, ptr %scevgep191, i64 %i.dm
  %scevgep193 = getelementptr i8, ptr %.0110, i64 6
  %scevgep194 = getelementptr i8, ptr %scevgep193, i64 %i.dm
  %bound0 = icmp ult ptr %.0, %scevgep180
  %bound1 = icmp ult ptr %scevgep178, %scevgep177
  %found.conflict = and i1 %bound0, %bound1
  %bound0195 = icmp ult ptr %.0, %scevgep183
  %bound1196 = icmp ult ptr %scevgep181, %scevgep177
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx = or i1 %found.conflict, %found.conflict197
  %bound0198 = icmp ult ptr %.0, %scevgep186
  %bound1199 = icmp ult ptr %scevgep184, %scevgep177
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %conflict.rdx, %found.conflict200
  %bound0202 = icmp ult ptr %.0, %scevgep189
  %bound1203 = icmp ult ptr %scevgep187, %scevgep177
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx205 = or i1 %conflict.rdx201, %found.conflict204
  %bound0206 = icmp ult ptr %.0, %scevgep192
  %bound1207 = icmp ult ptr %scevgep190, %scevgep177
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx209 = or i1 %conflict.rdx205, %found.conflict208
  %bound0210 = icmp ult ptr %.0, %scevgep194
  %bound1211 = icmp ult ptr %.0110, %scevgep177
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx213 = or i1 %conflict.rdx209, %found.conflict212
  br i1 %conflict.rdx213, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ds = and i64 %i.di, 3                        ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  %i.du = select i1 %i.dt, i64 4, i64 %i.ds
  %n.vec = sub nsw i64 %i.di, %i.du               ; 2 uses
  %i.dv = shl i64 %n.vec, 2                       ; 2 uses
  %i.dw = getelementptr i8, ptr %.0, i64 %i.dv
  %i.dx = getelementptr i8, ptr %.0110, i64 %i.dv
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert214 = insertelement <4 x i32> poison, i32 %.1146156, i64 0
  %broadcast.splat215 = shufflevector <4 x i32> %broadcast.splatinsert214, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert216 = insertelement <4 x i32> poison, i32 %.1149155, i64 0
  %broadcast.splat217 = shufflevector <4 x i32> %broadcast.splatinsert216, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dy = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0, i64 %i.dy
  %next.gep218 = getelementptr i8, ptr %.0110, i64 %i.dy ; 8 uses
  %wide.vec = load <8 x i16>, ptr %next.gep218, align 2, !tbaa !48, !alias.scope !150
  %i.dz = freeze <8 x i16> %wide.vec
  %i.ea = bitcast <8 x i16> %i.dz to <4 x i32>
  %i.eb = and <4 x i32> %i.ea, splat (i32 65535)
  %i.ec = getelementptr inbounds nuw i8, ptr %next.gep218, i64 4
  %wide.vec219 = load <8 x i16>, ptr %i.ec, align 2, !tbaa !48, !alias.scope !150
  %i.ed = freeze <8 x i16> %wide.vec219
  %i.ee = bitcast <8 x i16> %i.ed to <4 x i32>
  %i.ef = and <4 x i32> %i.ee, splat (i32 65535)
  %i.eg = add nuw nsw <4 x i32> %i.ef, %i.eb
  %i.eh = getelementptr inbounds [2 x i8], ptr %next.gep218, i64 %i.z ; 3 uses
  %wide.vec221 = load <8 x i16>, ptr %i.eh, align 2, !tbaa !48, !alias.scope !151
  %i.ei = freeze <8 x i16> %wide.vec221
  %i.ej = bitcast <8 x i16> %i.ei to <4 x i32>
  %i.ek = and <4 x i32> %i.ej, splat (i32 65535)
  %i.el = add nuw nsw <4 x i32> %i.eg, %i.ek
  %i.em = getelementptr i8, ptr %i.eh, i64 4
  %wide.vec223 = load <8 x i16>, ptr %i.em, align 2, !tbaa !48, !alias.scope !151
  %i.en = freeze <8 x i16> %wide.vec223
  %i.eo = bitcast <8 x i16> %i.en to <4 x i32>
  %i.ep = and <4 x i32> %i.eo, splat (i32 65535)
  %i.eq = add nuw nsw <4 x i32> %i.el, %i.ep
  %i.er = mul nsw <4 x i32> %i.eq, %broadcast.splat215
  %i.es = getelementptr inbounds nuw i8, ptr %next.gep218, i64 2
  %wide.vec225 = load <8 x i16>, ptr %i.es, align 2, !tbaa !48, !alias.scope !150
  %i.et = freeze <8 x i16> %wide.vec225           ; 2 uses
  %i.eu = bitcast <8 x i16> %i.et to <4 x i32>
  %i.ev = bitcast <8 x i16> %i.et to <4 x i32>
  %i.ew = and <4 x i32> %i.ev, splat (i32 65535)
  %i.ex = lshr <4 x i32> %i.eu, splat (i32 16)
  %i.ey = getelementptr inbounds i8, ptr %next.gep218, i64 %i.aa
  %wide.vec228 = load <8 x i16>, ptr %i.ey, align 2, !tbaa !48, !alias.scope !152
  %i.ez = freeze <8 x i16> %wide.vec228
  %i.fa = bitcast <8 x i16> %i.ez to <4 x i32>
  %i.fb = and <4 x i32> %i.fa, splat (i32 65535)
  %i.fc = add nuw nsw <4 x i32> %i.fb, %i.ew
  %i.fd = getelementptr inbounds i8, ptr %next.gep218, i64 %i.ab ; 2 uses
  %wide.vec230 = load <8 x i16>, ptr %i.fd, align 2, !tbaa !48, !alias.scope !153
  %i.fe = freeze <8 x i16> %wide.vec230
  %i.ff = bitcast <8 x i16> %i.fe to <4 x i32>
  %i.fg = and <4 x i32> %i.ff, splat (i32 65535)
  %i.fh = add nuw nsw <4 x i32> %i.fc, %i.fg
  %i.fi = getelementptr i8, ptr %i.eh, i64 2
  %wide.vec232 = load <8 x i16>, ptr %i.fi, align 2, !tbaa !48, !alias.scope !151
  %i.fj = freeze <8 x i16> %wide.vec232           ; 2 uses
  %i.fk = bitcast <8 x i16> %i.fj to <4 x i32>
  %i.fl = bitcast <8 x i16> %i.fj to <4 x i32>
  %i.fm = and <4 x i32> %i.fl, splat (i32 65535)
  %i.fn = lshr <4 x i32> %i.fk, splat (i32 16)
  %i.fo = add nuw nsw <4 x i32> %i.fh, %i.fm
  %i.fp = mul nuw <4 x i32> %i.fo, splat (i32 9617)
  %i.fq = getelementptr inbounds i8, ptr %next.gep218, i64 %i.ac ; 2 uses
  %wide.vec235 = load <8 x i16>, ptr %i.fq, align 2, !tbaa !48, !alias.scope !154
  %i.fr = freeze <8 x i16> %wide.vec235
  %i.fs = bitcast <8 x i16> %i.fr to <4 x i32>
  %i.ft = and <4 x i32> %i.fs, splat (i32 65535)
  %i.fu = mul nsw <4 x i32> %broadcast.splat, %i.ft
  %i.fv = add <4 x i32> %i.er, splat (i32 32768)
  %i.fw = add <4 x i32> %i.fv, %i.fp
  %i.fx = add <4 x i32> %i.fw, %i.fu
  %i.fy = lshr <4 x i32> %i.fx, splat (i32 16)
  %i.fz = add nuw nsw <4 x i32> %i.fn, %i.ex
  %i.ga = mul nsw <4 x i32> %i.fz, %broadcast.splat215
  %wide.vec237 = load <8 x i16>, ptr %i.fq, align 2, !tbaa !48, !alias.scope !154
  %i.gb = freeze <8 x i16> %wide.vec237
  %i.gc = bitcast <8 x i16> %i.gb to <4 x i32>
  %i.gd = and <4 x i32> %i.gc, splat (i32 65535)
  %i.ge = getelementptr inbounds i8, ptr %next.gep218, i64 %i.ad
  %wide.vec239 = load <8 x i16>, ptr %i.ge, align 2, !tbaa !48, !alias.scope !155
  %i.gf = freeze <8 x i16> %wide.vec239
  %i.gg = bitcast <8 x i16> %i.gf to <4 x i32>
  %i.gh = and <4 x i32> %i.gg, splat (i32 65535)
  %i.gi = add nuw nsw <4 x i32> %i.gh, %i.gd
  %i.gj = mul nsw <4 x i32> %i.gi, %broadcast.splat217
  %wide.vec241 = load <8 x i16>, ptr %i.fd, align 2, !tbaa !48, !alias.scope !153
  %i.gk = freeze <8 x i16> %wide.vec241
  %i.gl = bitcast <8 x i16> %i.gk to <4 x i32>
  %i.gm = and <4 x i32> %i.gl, splat (i32 65535)
  %i.gn = mul nuw nsw <4 x i32> %i.gm, splat (i32 19234)
  %i.go = add <4 x i32> %i.ga, splat (i32 16384)
  %i.gp = add <4 x i32> %i.go, %i.gj
  %i.gq = add <4 x i32> %i.gp, %i.gn
  %i.gr = lshr <4 x i32> %i.gq, splat (i32 15)
  %i.gs = shufflevector <4 x i32> %i.fy, <4 x i32> %i.gr, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc <8 x i32> %i.gs to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !48, !alias.scope !156, !noalias !157
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gt = icmp eq i64 %index.next, %n.vec
  br i1 %i.gt, label %scalar.ph.preheader, label %vector.body, !llvm.loop !145

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %.1153.ph = phi ptr [ %.0, %vector.memcheck ], [ %.0, %.lr.ph ], [ %i.dw, %vector.body ]
  %.1111152.ph = phi ptr [ %.0110, %vector.memcheck ], [ %.0110, %.lr.ph ], [ %i.dx, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1153 = phi ptr [ %i.je, %scalar.ph ], [ %.1153.ph, %scalar.ph.preheader ] ; 3 uses
  %.1111152 = phi ptr [ %i.gw, %scalar.ph ], [ %.1111152.ph, %scalar.ph.preheader ] ; 8 uses
  %i.gu = load i16, ptr %.1111152, align 2, !tbaa !48
  %i.gv = zext i16 %i.gu to i32
  %i.gw = getelementptr inbounds nuw i8, ptr %.1111152, i64 4 ; 5 uses
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !48
  %i.gy = zext i16 %i.gx to i32
  %i.gz = add nuw nsw i32 %i.gy, %i.gv
  %i.ha = getelementptr inbounds [2 x i8], ptr %.1111152, i64 %i.z ; 3 uses
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !48
  %i.hc = zext i16 %i.hb to i32
  %i.hd = add nuw nsw i32 %i.gz, %i.hc
  %i.he = getelementptr i8, ptr %i.ha, i64 4      ; 2 uses
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !48
  %i.hg = zext i16 %i.hf to i32
  %i.hh = add nuw nsw i32 %i.hd, %i.hg
  %i.hi = mul nsw i32 %i.hh, %.1146156
  %i.hj = getelementptr inbounds nuw i8, ptr %.1111152, i64 2
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !48
end_hunk_0
