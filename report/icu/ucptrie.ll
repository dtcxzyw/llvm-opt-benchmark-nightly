Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucptrie?download=true
inline.NumInlined: 16
inline.NumDeleted: 3
begin_hunk_0_@ucptrie_getRange_78:bb.a
  %i.q = load i32, ptr %i.b, align 4, !tbaa !25
  %i.r = icmp eq i32 %i.q, %3
  %..i = select i1 %i.r, i32 %i.p, i32 %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  %.1.i = phi i32 [ 55295, %bb.f ], [ %i.h, %bb.c ], [ %..i, %bb.h ], [ %i.h, %bb.e ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %ucptrie_internalGetRange_78.exit

ucptrie_internalGetRange_78.exit:                 ; preds = %bb.b, %bb.i
  %.2.i = phi i32 [ %i.d, %bb.b ], [ %.1.i, %bb.i ]
  ret i32 %.2.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN12_GLOBAL__N_18getRangeEPKviPFjS1_jES1_Pj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %1, 1114111
  br i1 %i.a, label %.thread313, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.c = load i8, ptr %i.b, align 1, !tbaa !28    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29
  %.not = icmp slt i32 %1, %i.e
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not272 = icmp eq ptr %4, null
  br i1 %.not272, label %.thread313, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30
  %i.h = add nsw i32 %i.g, -2                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0101.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !23 ; 3 uses
  switch i8 %i.c, label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %.sroa.0101.0.copyload, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !24
  %i.m = zext i16 %i.l to i32
  br label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit

bb.f:                                             ; preds = %bb.d
  %i.n = sext i32 %i.h to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %.sroa.0101.0.copyload, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25
  br label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit

bb.g:                                             ; preds = %bb.d
  %i.q = sext i32 %i.h to i64
  %i.r = getelementptr inbounds i8, ptr %.sroa.0101.0.copyload, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !23
  %i.t = zext i8 %i.s to i32
  br label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit

_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.t, %bb.g ], [ %i.m, %bb.e ], [ %i.p, %bb.f ], [ -1, %bb.d ] ; 2 uses
  %.not273 = icmp eq ptr %2, null
  br i1 %.not273, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit
  %i.u = tail call noundef i32 %2(ptr noundef %3, i32 noundef %.0.i)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit
  %.0166 = phi i32 [ %i.u, %bb.h ], [ %.0.i, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit ]
  store i32 %.0166, ptr %4, align 4, !tbaa !25
  br label %.thread313

bb.j:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26   ; 2 uses
  %.not259 = icmp eq ptr %2, null                 ; 5 uses
  br i1 %.not259, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = tail call noundef i32 %2(ptr noundef %3, i32 noundef %i.w)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0239 = phi i32 [ %i.x, %bb.k ], [ %i.w, %bb.j ] ; 11 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 38
  %.not260 = icmp eq ptr %4, null                 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %.thread322, %bb.l
  %.0235 = phi i32 [ -1, %bb.l ], [ %.3238331, %.thread322 ] ; 3 uses
  %.0228 = phi i32 [ -1, %bb.l ], [ %.6234332, %.thread322 ] ; 2 uses
  %.0217 = phi i32 [ %1, %bb.l ], [ %.10227333, %.thread322 ] ; 11 uses
  %.0203 = phi i32 [ undef, %bb.l ], [ %.14334, %.thread322 ] ; 3 uses
  %.0190 = phi i32 [ %.0239, %bb.l ], [ %.12202335, %.thread322 ] ; 3 uses
  %.0177 = phi i8 [ 0, %bb.l ], [ %.12189336, %.thread322 ] ; 3 uses
  %i.ad = icmp slt i32 %.0217, 65536
  %.pre = load i8, ptr %i.z, align 2, !tbaa !27   ; 2 uses
  br i1 %i.ad, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ae = icmp eq i8 %.pre, 0                     ; 2 uses
  %i.af = icmp slt i32 %.0217, 4096
  %or.cond = or i1 %i.af, %i.ae
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ag = ashr i32 %.0217, 6
  %i.ah = select i1 %i.ae, i64 1024, i64 64
  br label %bb.y

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ai = lshr i32 %.0217, 14
  %i.aj = icmp eq i8 %.pre, 0
  %.0168.v = select i1 %i.aj, i32 1020, i32 64
  %.0168 = add nuw nsw i32 %.0168.v, %i.ai
  %i.ak = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.al = zext nneg i32 %.0168 to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !24
  %i.ao = zext i16 %i.an to i32
  %i.ap = lshr i32 %.0217, 9
  %i.aq = and i32 %i.ap, 31
  %i.ar = add nuw nsw i32 %i.aq, %i.ao
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !24 ; 2 uses
  %i.av = zext i16 %i.au to i32                   ; 4 uses
  %i.aw = icmp eq i32 %.0235, %i.av
  %i.ax = sub nsw i32 %.0217, %1
  %i.ay = icmp sgt i32 %i.ax, 511
  %or.cond275 = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond275, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.az = add nuw nsw i32 %.0217, 512
  br label %.thread322

bb.r:                                             ; preds = %bb.p
  %i.ba = load i16, ptr %i.aa, align 2, !tbaa !32
  %i.bb = icmp eq i16 %i.au, %i.ba
  br i1 %i.bb, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bc = trunc nuw i8 %.0177 to i1
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not261 = icmp eq i32 %.0239, %.0190
  br i1 %.not261, label %bb.w, label %bb.be

bb.u:                                             ; preds = %bb.s
  %i.bd = load i32, ptr %i.v, align 4, !tbaa !26  ; 2 uses
  br i1 %.not260, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %.0239, ptr %4, align 4, !tbaa !25
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.1204 = phi i32 [ %.0203, %bb.t ], [ %i.bd, %bb.v ], [ %i.bd, %bb.u ]
  %i.be = load i32, ptr %i.ab, align 8, !tbaa !33
  %i.bf = and i32 %.0217, -512
  %i.bg = add nuw nsw i32 %i.bf, 512
  br label %.thread322

bb.x:                                             ; preds = %bb.r
  %i.bh = lshr i32 %.0217, 4
  %i.bi = and i32 %i.bh, 31
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.o
  %.2237 = phi i32 [ %.0235, %bb.o ], [ %i.av, %bb.x ]
  %.0176 = phi i32 [ 0, %bb.o ], [ %i.av, %bb.x ] ; 3 uses
  %.1174 = phi i32 [ %i.ag, %bb.o ], [ %i.bi, %bb.x ]
  %.1172 = phi i64 [ %i.ah, %bb.o ], [ 32, %bb.x ]
  %.1170 = phi i32 [ 64, %bb.o ], [ 16, %bb.x ]   ; 5 uses
  %i.bj = icmp samesign ult i32 %.0176, 32768
  %i.bk = and i32 %.0176, 32767
  %i.bl = add nsw i32 %.1170, -1                  ; 8 uses
  %i.bm = sub nsw i32 0, %.1170
  %i.bn = sext i32 %.1174 to i64
  %i.bo = zext nneg i32 %.0176 to i64
  %invariant.gep = getelementptr [2 x i8], ptr %i.y, i64 %i.bo
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %bb.y
  %indvars.iv467 = phi i64 [ %indvars.iv.next468, %.loopexit ], [ %i.bn, %bb.y ] ; 3 uses
  %.3231 = phi i32 [ %.5233, %.loopexit ], [ %.0228, %bb.y ] ; 2 uses
  %.3220 = phi i32 [ %.9226, %.loopexit ], [ %.0217, %bb.y ] ; 13 uses
  %.4207 = phi i32 [ %.13216, %.loopexit ], [ %.0203, %bb.y ] ; 4 uses
  %.4194 = phi i32 [ %.11201, %.loopexit ], [ %.0190, %bb.y ] ; 6 uses
  %.4181 = phi i8 [ %.11188, %.loopexit ], [ %.0177, %bb.y ] ; 3 uses
  br i1 %i.bj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv467
  %i.bp = load i16, ptr %gep, align 2, !tbaa !24
  %i.bq = zext i16 %i.bp to i32
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.br = trunc nsw i64 %indvars.iv467 to i32     ; 3 uses
  %i.bs = and i32 %i.br, -8
  %i.bt = add nsw i32 %i.bs, %i.bk
  %i.bu = ashr i32 %i.br, 3
  %i.bv = add nsw i32 %i.bt, %i.bu                ; 2 uses
  %i.bw = and i32 %i.br, 7                        ; 2 uses
  %i.bx = sext i32 %i.bv to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !24
  %i.ca = zext i16 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.bw, 1
  %i.cc = add nuw nsw i32 %i.cb, 2
  %i.cd = shl nuw i32 %i.ca, %i.cc
  %i.ce = and i32 %i.cd, 196608
  %i.cf = add nuw nsw i32 %i.bw, 1
  %i.cg = add i32 %i.cf, %i.bv
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !24
  %i.ck = zext i16 %i.cj to i32
  %i.cl = or disjoint i32 %i.ce, %i.ck
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0167 = phi i32 [ %i.bq, %bb.aa ], [ %i.cl, %bb.ab ] ; 11 uses
  %i.cm = icmp ne i32 %.0167, %.3231
  %i.cn = sub nsw i32 %.3220, %1
  %.not262 = icmp slt i32 %i.cn, %.1170
  %or.cond276 = select i1 %i.cm, i1 true, i1 %.not262
  br i1 %or.cond276, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = add nsw i32 %.3220, %.1170
  br label %.loopexit

bb.ae:                                            ; preds = %bb.ac
  %i.cp = load i32, ptr %i.ab, align 8, !tbaa !33
  %i.cq = icmp eq i32 %.0167, %i.cp
  br i1 %i.cq, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.cr = trunc nuw i8 %.4181 to i1
  br i1 %i.cr, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %.not270 = icmp eq i32 %.0239, %.4194
  br i1 %.not270, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cs = add nsw i32 %.3220, -1
  br label %.thread313

bb.ai:                                            ; preds = %bb.af
  %i.ct = load i32, ptr %i.v, align 4, !tbaa !26  ; 2 uses
  br i1 %.not260, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 %.0239, ptr %4, align 4, !tbaa !25
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ag
  %.5208 = phi i32 [ %.4207, %bb.ag ], [ %i.ct, %bb.aj ], [ %i.ct, %bb.ai ]
  %i.cu = add nsw i32 %.3220, %.1170
  %i.cv = and i32 %i.cu, %i.bm
  br label %.loopexit

bb.al:                                            ; preds = %bb.ae
  %i.cw = and i32 %.3220, %i.bl
  %i.cx = add nuw nsw i32 %.0167, %i.cw           ; 7 uses
  %.sroa.07.0.copyload = load ptr, ptr %i.ac, align 8, !tbaa !23 ; 3 uses
  switch i8 %i.c, label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit279 [
    i8 0, label %bb.am
    i8 1, label %bb.an
    i8 2, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.al
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.07.0.copyload, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !24
  %i.db = zext i16 %i.da to i32
  br label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit279

bb.an:                                            ; preds = %bb.al
  %i.dc = zext nneg i32 %i.cx to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.07.0.copyload, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !25
  br label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit279

bb.ao:                                            ; preds = %bb.al
  %i.df = zext nneg i32 %i.cx to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !23
  %i.di = zext i8 %i.dh to i32
  br label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit279

_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit279: ; preds = %bb.al, %bb.am, %bb.an, %bb.ao
  %.0.i278 = phi i32 [ %i.di, %bb.ao ], [ %i.db, %bb.am ], [ %i.de, %bb.an ], [ -1, %bb.al ] ; 10 uses
  %i.dj = trunc nuw i8 %.4181 to i1
  br i1 %i.dj, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit279
  %.not264 = icmp eq i32 %.0.i278, %.4207
  br i1 %.not264, label %bb.ax, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not259, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dk = load i32, ptr %i.v, align 4, !tbaa !26
  %i.dl = icmp eq i32 %.0.i278, %i.dk
  br i1 %i.dl, label %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dm = tail call noundef i32 %2(ptr noundef %3, i32 noundef %.0.i278), !inline_history !34
  br label %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit

_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit: ; preds = %bb.ar, %bb.as
  %.0.i280 = phi i32 [ %.0239, %bb.ar ], [ %i.dm, %bb.as ]
  %.not265 = icmp eq i32 %.0.i280, %.4194
  br i1 %.not265, label %.thread, label %bb.at

bb.at:                                            ; preds = %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit, %bb.aq
  %i.dn = add nsw i32 %.3220, -1
  br label %.thread313

bb.au:                                            ; preds = %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit279
  %i.do = load i32, ptr %i.v, align 4, !tbaa !26
  %i.dp = icmp eq i32 %.0.i278, %i.do             ; 2 uses
  %brmerge = or i1 %.not259, %i.dp
  %.0239.mux = select i1 %i.dp, i32 %.0239, i32 %.0.i278
  br i1 %brmerge, label %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit283, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dq = tail call noundef i32 %2(ptr noundef %3, i32 noundef %.0.i278), !inline_history !34
  br label %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit283

_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit283: ; preds = %bb.au, %bb.av
  %.0.i282 = phi i32 [ %.0239.mux, %bb.au ], [ %i.dq, %bb.av ] ; 3 uses
  br i1 %.not260, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit283
  store i32 %.0.i282, ptr %4, align 4, !tbaa !25
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit283, %bb.aw, %bb.ap
  %.6209 = phi i32 [ %.0.i278, %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit283 ], [ %.4207, %bb.ap ], [ %.0.i278, %bb.aw ] ; 12 uses
  %.6196 = phi i32 [ %.0.i282, %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit283 ], [ %.4194, %bb.ap ], [ %.0.i282, %bb.aw ] ; 6 uses
  %i.dr = add nsw i32 %.3220, 1                   ; 7 uses
  %i.ds = and i32 %i.dr, %i.bl
  %.not266360 = icmp eq i32 %i.ds, 0
  br i1 %.not266360, label %.loopexit, label %.lr.ph

.thread:                                          ; preds = %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit
  %i.dt = add nsw i32 %.3220, 1                   ; 3 uses
  %i.du = and i32 %i.dt, %i.bl
  %.not266360476 = icmp eq i32 %i.du, 0
  br i1 %.not266360476, label %.loopexit, label %.lr.ph.split.preheader

.lr.ph:                                           ; preds = %bb.ax
  br i1 %.not259, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.thread, %.lr.ph
  %.6209477482 = phi i32 [ %.6209, %.lr.ph ], [ %.0.i278, %.thread ]
  %.6196478481 = phi i32 [ %.6196, %.lr.ph ], [ %.4194, %.thread ] ; 2 uses
  %i.dv = phi i32 [ %i.dr, %.lr.ph ], [ %i.dt, %.thread ]
  %i.dw = zext nneg i32 %i.cx to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.sroa.06.0.copyload.us = load ptr, ptr %i.ac, align 8, !tbaa !23 ; 6 uses
  switch i8 %i.c, label %.lr.ph.split.us.split [
    i8 0, label %.lr.ph.split.us.split.us
    i8 1, label %.lr.ph.split.us.split.us371
    i8 2, label %.lr.ph.split.us.split.us384
  ]

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.dx = add nuw nsw i32 %i.cx, 1
  %i.dy = zext nneg i32 %i.dx to i64              ; 2 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.06.0.copyload.us, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !24
  %i.eb = zext i16 %i.ea to i32
  %.not267.us.us408 = icmp eq i32 %.6209, %i.eb
  br i1 %.not267.us.us408, label %.lr.ph409, label %.thread313

_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us: ; preds = %.lr.ph409
  %indvars.iv.next465 = add nuw nsw i64 %indvars.iv464, 1 ; 2 uses
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %.sroa.06.0.copyload.us, i64 %indvars.iv.next465
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !24
  %i.ee = zext i16 %i.ed to i32
  %.not267.us.us = icmp eq i32 %.6209, %i.ee
  br i1 %.not267.us.us, label %.lr.ph409, label %.thread313, !llvm.loop !35

.lr.ph409:                                        ; preds = %.lr.ph.split.us.split.us, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us
  %indvars.iv464 = phi i64 [ %indvars.iv.next465, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us ], [ %i.dy, %.lr.ph.split.us.split.us ]
  %i.ef = phi i32 [ %i.eg, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us ], [ %i.dr, %.lr.ph.split.us.split.us ] ; 2 uses
  %i.eg = add nsw i32 %i.ef, 1                    ; 3 uses
  %i.eh = and i32 %i.eg, %i.bl
  %.not266.us.us = icmp eq i32 %i.eh, 0
  br i1 %.not266.us.us, label %.loopexit, label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us, !llvm.loop !35

.lr.ph.split.us.split.us371:                      ; preds = %.lr.ph.split.us
  %i.ei = add nuw nsw i32 %i.cx, 1
  %i.ej = zext nneg i32 %i.ei to i64              ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.copyload.us, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !25
  %.not267.us.us376412 = icmp eq i32 %i.el, %.6209
  br i1 %.not267.us.us376412, label %.lr.ph413, label %.thread313

_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us374: ; preds = %.lr.ph413
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.copyload.us, i64 %indvars.iv.next462
  %i.en = load i32, ptr %i.em, align 4, !tbaa !25
  %.not267.us.us376 = icmp eq i32 %i.en, %.6209
  br i1 %.not267.us.us376, label %.lr.ph413, label %.thread313, !llvm.loop !35

.lr.ph413:                                        ; preds = %.lr.ph.split.us.split.us371, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us374
  %indvars.iv461 = phi i64 [ %indvars.iv.next462, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us374 ], [ %i.ej, %.lr.ph.split.us.split.us371 ]
  %i.eo = phi i32 [ %i.ep, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us374 ], [ %i.dr, %.lr.ph.split.us.split.us371 ] ; 2 uses
  %i.ep = add nsw i32 %i.eo, 1                    ; 3 uses
  %i.eq = and i32 %i.ep, %i.bl
  %.not266.us.us377 = icmp eq i32 %i.eq, 0
  br i1 %.not266.us.us377, label %.loopexit, label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us374, !llvm.loop !35

.lr.ph.split.us.split.us384:                      ; preds = %.lr.ph.split.us
  %i.er = add nuw nsw i32 %i.cx, 1
  %i.es = zext nneg i32 %i.er to i64              ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload.us, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !23
  %i.ev = zext i8 %i.eu to i32
  %.not267.us.us389416 = icmp eq i32 %.6209, %i.ev
  br i1 %.not267.us.us389416, label %.lr.ph417, label %.thread313

_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us387: ; preds = %.lr.ph417
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload.us, i64 %indvars.iv.next459
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !23
  %i.ey = zext i8 %i.ex to i32
  %.not267.us.us389 = icmp eq i32 %.6209, %i.ey
  br i1 %.not267.us.us389, label %.lr.ph417, label %.thread313, !llvm.loop !35

.lr.ph417:                                        ; preds = %.lr.ph.split.us.split.us384, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us387
  %indvars.iv458 = phi i64 [ %indvars.iv.next459, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us387 ], [ %i.es, %.lr.ph.split.us.split.us384 ]
  %i.ez = phi i32 [ %i.fa, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us387 ], [ %i.dr, %.lr.ph.split.us.split.us384 ] ; 2 uses
  %i.fa = add nsw i32 %i.ez, 1                    ; 3 uses
  %i.fb = and i32 %i.fa, %i.bl
  %.not266.us.us390 = icmp eq i32 %i.fb, 0
  br i1 %.not266.us.us390, label %.loopexit, label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us387, !llvm.loop !35

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %.not267.us = icmp eq i32 %.6209, -1
  br i1 %.not267.us, label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us401, label %.thread313

_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us401: ; preds = %.lr.ph.split.us.split, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us401
  %i.fc = phi i32 [ %i.fd, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us401 ], [ %i.dr, %.lr.ph.split.us.split ]
  %i.fd = add nsw i32 %i.fc, 1                    ; 3 uses
  %i.fe = and i32 %i.fd, %i.bl
  %.not266.us.us400 = icmp eq i32 %i.fe, 0
  br i1 %.not266.us.us400, label %.loopexit, label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us401, !llvm.loop !35

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.bd
  %indvars.iv = phi i64 [ %i.dw, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.bd ]
  %5 = phi i32 [ %i.dv, %.lr.ph.split.preheader ], [ %i.fq, %bb.bd ] ; 2 uses
  %.7210362.a = phi i32 [ %.6209477482, %.lr.ph.split.preheader ], [ %.8211, %bb.bd ] ; 2 uses
  %.4221361 = phi i32 [ %.3220, %.lr.ph.split.preheader ], [ %5, %bb.bd ]
  %.sroa.06.0.copyload = load ptr, ptr %i.ac, align 8, !tbaa !23 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  switch i8 %i.c, label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285 [
    i8 0, label %bb.ay
    i8 1, label %bb.az
    i8 2, label %bb.ba
  ]

bb.ay:                                            ; preds = %.lr.ph.split
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.sroa.06.0.copyload, i64 %indvars.iv.next
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !24
  %i.fh = zext i16 %i.fg to i32
  br label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285

bb.az:                                            ; preds = %.lr.ph.split
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.copyload, i64 %indvars.iv.next
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !25
  br label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285

bb.ba:                                            ; preds = %.lr.ph.split
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload, i64 %indvars.iv.next
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !23
  %i.fm = zext i8 %i.fl to i32
  br label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285

_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285: ; preds = %.lr.ph.split, %bb.ay, %bb.az, %bb.ba
  %.0.i284 = phi i32 [ %i.fm, %bb.ba ], [ %i.fh, %bb.ay ], [ %i.fj, %bb.az ], [ -1, %.lr.ph.split ] ; 4 uses
  %.not267 = icmp eq i32 %.0.i284, %.7210362.a
  br i1 %.not267, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285
  %i.fn = load i32, ptr %i.v, align 4, !tbaa !26
  %i.fo = icmp eq i32 %.0.i284, %i.fn
  br i1 %i.fo, label %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit288, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fp = tail call noundef i32 %2(ptr noundef %3, i32 noundef %.0.i284), !inline_history !34
  br label %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit288

_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit288: ; preds = %bb.bb, %bb.bc
  %.0.i287 = phi i32 [ %.0239, %bb.bb ], [ %i.fp, %bb.bc ]
  %.not268 = icmp eq i32 %.0.i287, %.6196478481
  br i1 %.not268, label %bb.bd, label %.thread313

bb.bd:                                            ; preds = %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit288, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285
  %.8211 = phi i32 [ %.7210362.a, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285 ], [ %.0.i284, %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit288 ] ; 2 uses
  %i.fq = add nsw i32 %5, 1                       ; 3 uses
  %i.fr = and i32 %i.fq, %i.bl
  %.not266 = icmp eq i32 %i.fr, 0
  br i1 %.not266, label %.loopexit, label %.lr.ph.split, !llvm.loop !35

.loopexit:                                        ; preds = %bb.bd, %.lr.ph417, %.lr.ph413, %.lr.ph409, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us401, %.thread, %bb.ax, %bb.ad, %bb.ak
  %.5233 = phi i32 [ %.3231, %bb.ad ], [ %.0167, %bb.ak ], [ %.0167, %.lr.ph413 ], [ %.0167, %bb.ax ], [ %.0167, %.lr.ph417 ], [ %.0167, %.thread ], [ %.0167, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us401 ], [ %.0167, %.lr.ph409 ], [ %.0167, %bb.bd ] ; 2 uses
  %.9226 = phi i32 [ %i.co, %bb.ad ], [ %i.cv, %bb.ak ], [ %i.ep, %.lr.ph413 ], [ %i.dr, %bb.ax ], [ %i.fa, %.lr.ph417 ], [ %i.dt, %.thread ], [ %i.fd, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us401 ], [ %i.eg, %.lr.ph409 ], [ %i.fq, %bb.bd ] ; 2 uses
  %.13216 = phi i32 [ %.4207, %bb.ad ], [ %.5208, %bb.ak ], [ %.6209, %.lr.ph413 ], [ %.6209, %bb.ax ], [ %.6209, %.lr.ph417 ], [ %.0.i278, %.thread ], [ -1, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us401 ], [ %.6209, %.lr.ph409 ], [ %.8211, %bb.bd ] ; 2 uses
  %.11201 = phi i32 [ %.4194, %bb.ad ], [ %.0239, %bb.ak ], [ %.6196, %.lr.ph413 ], [ %.6196, %bb.ax ], [ %.6196, %.lr.ph417 ], [ %.4194, %.thread ], [ %.6196, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us401 ], [ %.6196, %.lr.ph409 ], [ %.6196478481, %bb.bd ] ; 2 uses
  %.11188 = phi i8 [ %.4181, %bb.ad ], [ 1, %bb.ak ], [ 1, %.lr.ph413 ], [ 1, %bb.ax ], [ 1, %.lr.ph417 ], [ 1, %.thread ], [ 1, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us401 ], [ 1, %.lr.ph409 ], [ 1, %bb.bd ] ; 2 uses
  %indvars.iv.next468 = add nsw i64 %indvars.iv467, 1 ; 2 uses
  %i.fs = icmp slt i64 %indvars.iv.next468, %.1172
  br i1 %i.fs, label %bb.z, label %.thread322, !llvm.loop !36

bb.be:                                            ; preds = %bb.t
  %i.ft = add nsw i32 %.0217, -1
  br label %.thread313

.thread322:                                       ; preds = %.loopexit, %bb.q, %bb.w
  %.12189336 = phi i8 [ 1, %bb.w ], [ %.0177, %bb.q ], [ %.11188, %.loopexit ]
  %.12202335 = phi i32 [ %.0239, %bb.w ], [ %.0190, %bb.q ], [ %.11201, %.loopexit ] ; 2 uses
  %.14334 = phi i32 [ %.1204, %bb.w ], [ %.0203, %bb.q ], [ %.13216, %.loopexit ]
  %.10227333 = phi i32 [ %i.bg, %bb.w ], [ %i.az, %bb.q ], [ %.9226, %.loopexit ] ; 3 uses
  %.6234332 = phi i32 [ %i.be, %bb.w ], [ %.0228, %bb.q ], [ %.5233, %.loopexit ]
  %.3238331 = phi i32 [ %i.av, %bb.w ], [ %.0235, %bb.q ], [ %.2237, %.loopexit ]
  %i.fu = load i32, ptr %i.d, align 8, !tbaa !29
  %i.fv = icmp slt i32 %.10227333, %i.fu
  br i1 %i.fv, label %bb.m, label %bb.bf, !llvm.loop !37

bb.bf:                                            ; preds = %.thread322
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !30
  %i.fy = add nsw i32 %i.fx, -2                   ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.ac, align 8, !tbaa !23 ; 3 uses
  switch i8 %i.c, label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit290 [
    i8 0, label %bb.bg
    i8 1, label %bb.bh
    i8 2, label %bb.bi
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !24
  %i.gc = zext i16 %i.gb to i32
  br label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit290

bb.bh:                                            ; preds = %bb.bf
  %i.gd = sext i32 %i.fy to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !25
  br label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit290

bb.bi:                                            ; preds = %bb.bf
  %i.gg = sext i32 %i.fy to i64
  %i.gh = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !23
  %i.gj = zext i8 %i.gi to i32
  br label %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit290

_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit290: ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi
  %.0.i289 = phi i32 [ %i.gj, %bb.bi ], [ %i.gc, %bb.bg ], [ %i.gf, %bb.bh ], [ -1, %bb.bf ] ; 3 uses
  %i.gk = load i32, ptr %i.v, align 4, !tbaa !26
  %i.gl = icmp eq i32 %.0.i289, %i.gk             ; 2 uses
  %brmerge348 = or i1 %.not259, %i.gl
  %.0239.mux349 = select i1 %i.gl, i32 %.0239, i32 %.0.i289
  br i1 %brmerge348, label %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit293, label %bb.bj

bb.bj:                                            ; preds = %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit290
  %i.gm = tail call noundef i32 %2(ptr noundef %3, i32 noundef %.0.i289), !inline_history !34
  br label %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit293

_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit293: ; preds = %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit290, %bb.bj
  %.0.i292 = phi i32 [ %.0239.mux349, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit290 ], [ %i.gm, %bb.bj ]
  %.not271 = icmp eq i32 %.0.i292, %.12202335
  %i.gn = add nsw i32 %.10227333, -1
  %.10 = select i1 %.not271, i32 1114111, i32 %i.gn
  br label %.thread313

.thread313:                                       ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us384, %.lr.ph.split.us.split, %.lr.ph.split.us.split.us371, %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit288, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us387, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us374, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us, %bb.ah, %bb.at, %bb.be, %bb.i, %bb.c, %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit293, %bb.a
  %.13 = phi i32 [ -1, %bb.a ], [ 1114111, %bb.c ], [ 1114111, %bb.i ], [ %i.ft, %bb.be ], [ %.10, %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit293 ], [ %i.dn, %bb.at ], [ %i.cs, %bb.ah ], [ %i.ef, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us ], [ %.4221361, %_ZN12_GLOBAL__N_116maybeFilterValueEjjjPFjPKvjES1_.exit288 ], [ %i.ez, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us387 ], [ %i.eo, %_ZN12_GLOBAL__N_18getValueE11UCPTrieData17UCPTrieValueWidthi.exit285.us.us374 ], [ %.3220, %.lr.ph.split.us.split.us371 ], [ %.3220, %.lr.ph.split.us.split ], [ %.3220, %.lr.ph.split.us.split.us384 ], [ %.3220, %.lr.ph.split.us.split.us ]
  ret i32 %.13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @ucptrie_toBinary_78(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !9
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.d = load i8, ptr %i.c, align 2, !tbaa !27    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.f = load i8, ptr %i.e, align 1, !tbaa !28    ; 4 uses
  %or.cond = icmp ugt i8 %i.d, 1
  %i.g = icmp ugt i8 %i.f, 2
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.g
  %i.h = icmp slt i32 %2, 0
  %or.cond7 = or i1 %i.h, %or.cond5
  br i1 %or.cond7, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ne ptr %1, null
  %i.j = ptrtoint ptr %1 to i64
  %i.k = and i64 %i.j, 3
  %.not69 = icmp eq i64 %i.k, 0
  %or.cond71 = and i1 %i.i, %.not69
  br i1 %or.cond71, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  store i32 1, ptr %3, align 4, !tbaa !9
  br label %bb.o

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %i.n = shl nsw i32 %i.m, 1                      ; 2 uses
  %i.o = add nsw i32 %i.n, 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !30   ; 5 uses
  switch i8 %i.f, label %default.unreachable75 [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = shl nsw i32 %i.q, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.s = shl nsw i32 %i.q, 2
  br label %bb.i

default.unreachable75:                            ; preds = %bb.k, %bb.f
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %.pn = phi i32 [ %i.s, %bb.h ], [ %i.r, %bb.g ], [ %i.q, %bb.f ]
  %.0 = add nsw i32 %i.o, %.pn                    ; 5 uses
  %i.t = icmp slt i32 %2, %.0
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 15, ptr %3, align 4, !tbaa !9
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  store i32 1416784179, ptr %1, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.v = lshr i32 %i.q, 4
  %i.w = and i32 %i.v, 61440
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !33   ; 2 uses
  %i.z = lshr i32 %i.y, 8
  %i.aa = and i32 %i.z, 3840
  %i.ab = shl nuw nsw i8 %i.d, 6
  %i.ac = or disjoint i8 %i.f, %i.ab
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.w, %i.ad
  %i.af = or disjoint i32 %i.ae, %i.aa
  %i.ag = trunc nuw i32 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.ag, ptr %i.ah, align 4, !tbaa !13
  %i.ai = trunc i32 %i.m to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !14
  %i.ak = trunc i32 %i.q to i16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.ak, ptr %i.al, align 4, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.an = load i16, ptr %i.am, align 2, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !16
  %i.ap = trunc i32 %i.y to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.ap, ptr %i.aq, align 4, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !29
  %i.at = lshr i32 %i.as, 9
  %i.au = trunc i32 %i.at to i16
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.au, ptr %i.av, align 2, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !22
  %i.ay = sext i32 %i.n to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aw, ptr align 2 %i.ax, i64 %i.ay, i1 false)
  %i.az = load i32, ptr %i.l, align 8, !tbaa !39
  %i.ba = shl nsw i32 %i.az, 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.aw, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !23 ; 3 uses
  %i.bf = load i32, ptr %i.u, align 4, !tbaa !30  ; 3 uses
  switch i8 %i.f, label %default.unreachable75 [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.bg = shl nsw i32 %i.bf, 1
  %i.bh = sext i32 %i.bg to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr align 2 %i.be, i64 %i.bh, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bi = shl nsw i32 %i.bf, 2
  %i.bj = sext i32 %i.bi to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr align 4 %i.be, i64 %i.bj, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bk = sext i32 %i.bf to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr align 1 %i.be, i64 %i.bk, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.l, %bb.m, %bb.n, %bb.j, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ %.0, %bb.l ], [ %.0, %bb.m ], [ %.0, %bb.n ], [ %.0, %bb.j ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @ucpmap_get_78(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @ucptrie_get_78(ptr noundef %0, i32 noundef %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define i32 @ucpmap_getRange_78(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5, ptr nofree noundef captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_18getRangeEPKviPFjS1_jES1_Pj(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %4, ptr noundef %5, ptr noundef %6), !inline_history !31
  br label %ucptrie_getRange_78.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.e = icmp eq ptr %6, null
  %spec.store.select.i.i = select i1 %i.e, ptr %i.a, ptr %6 ; 3 uses
  %i.f = icmp eq i32 %2, 2
  %i.g = select i1 %i.f, i32 57343, i32 56319     ; 6 uses
  %i.h = call fastcc noundef i32 @_ZN12_GLOBAL__N_18getRangeEPKviPFjS1_jES1_Pj(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %4, ptr noundef %5, ptr noundef nonnull %spec.store.select.i.i), !inline_history !31 ; 5 uses
  %i.i = icmp slt i32 %i.h, 55295
  %i.j = icmp sgt i32 %1, %i.g
  %or.cond.i.i = or i1 %i.j, %i.i
  br i1 %or.cond.i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %spec.store.select.i.i, align 4, !tbaa !25
  %i.l = icmp eq i32 %i.k, %3
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp samesign ult i32 %i.h, %i.g
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.m = icmp slt i32 %1, 55296
  br i1 %i.m, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %3, ptr %spec.store.select.i.i, align 4, !tbaa !25
  %i.n = icmp samesign ugt i32 %i.h, %i.g
  br i1 %i.n, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.o = add nuw nsw i32 %i.g, 1
  %i.p = call fastcc noundef i32 @_ZN12_GLOBAL__N_18getRangeEPKviPFjS1_jES1_Pj(ptr noundef readonly %0, i32 noundef %i.o, ptr noundef readonly %4, ptr noundef %5, ptr noundef nonnull %i.b), !inline_history !31
end_hunk_0
