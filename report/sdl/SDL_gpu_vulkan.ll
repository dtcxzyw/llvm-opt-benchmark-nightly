Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_gpu_vulkan?download=true
inline.NumInlined: 321
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 36
begin_hunk_0_@VULKAN_INTERNAL_CleanCommandBuffer:bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.du, i32 noundef -1) #13 ; 0 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %i.dw = load i32, ptr %i.cy, align 8
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp slt i64 %indvars.iv.next165, %i.dx
  br i1 %i.dy, label %bb.l, label %._crit_edge136, !llvm.loop !243

._crit_edge140:                                   ; preds = %bb.m, %._crit_edge136
  store i32 0, ptr %i.dn, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 2664 ; 3 uses
  %i.ea = load i32, ptr %i.dz, align 8
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph143, label %._crit_edge144

.lr.ph143:                                        ; preds = %._crit_edge140
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 2656
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph139, %bb.m
  %indvars.iv167 = phi i64 [ 0, %.lr.ph139 ], [ %indvars.iv.next168, %bb.m ] ; 2 uses
  %i.ed = load ptr, ptr %i.dq, align 8
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv167
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 72
  %i.eh = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.eg, i32 noundef -1) #13 ; 0 uses
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.ei = load i32, ptr %i.dn, align 8
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp slt i64 %indvars.iv.next168, %i.ej
  br i1 %i.ek, label %bb.m, label %._crit_edge140, !llvm.loop !244

._crit_edge144:                                   ; preds = %bb.n, %._crit_edge140
  store i32 0, ptr %i.dz, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 2680 ; 3 uses
  %i.em = load i32, ptr %i.el, align 8
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph147, label %._crit_edge148

.lr.ph147:                                        ; preds = %._crit_edge144
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 2672
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph143, %bb.n
  %indvars.iv170 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next171, %bb.n ] ; 2 uses
  %i.ep = load ptr, ptr %i.ec, align 8
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv170
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.et = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.es, i32 noundef -1) #13 ; 0 uses
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %i.eu = load i32, ptr %i.dz, align 8
  %i.ev = sext i32 %i.eu to i64
  %i.ew = icmp slt i64 %indvars.iv.next171, %i.ev
  br i1 %i.ew, label %bb.n, label %._crit_edge144, !llvm.loop !245

._crit_edge148:                                   ; preds = %bb.o, %._crit_edge144
  store i32 0, ptr %i.el, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 304
  store i32 0, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 320
  store i32 0, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i32 0, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 2713
  store i8 0, ptr %i.fa, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 2714
  %i.fc = load i8, ptr %i.fb, align 2, !range !23, !noundef !24
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.p, label %bb.q

bb.o:                                             ; preds = %.lr.ph147, %bb.o
  %indvars.iv173 = phi i64 [ 0, %.lr.ph147 ], [ %indvars.iv.next174, %bb.o ] ; 2 uses
  %i.fe = load ptr, ptr %i.eo, align 8
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv173
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.fh, i32 noundef -1) #13 ; 0 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.fj = load i32, ptr %i.el, align 8
  %i.fk = sext i32 %i.fj to i64
  %i.fl = icmp slt i64 %indvars.iv.next174, %i.fk
  br i1 %i.fl, label %bb.o, label %._crit_edge148, !llvm.loop !246

bb.p:                                             ; preds = %._crit_edge148
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 2336
  store i8 0, ptr %i.fm, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge148
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.fo) #13
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 5 uses
  %i.fq = load ptr, ptr %i.fp, align 8            ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 28
  %i.fs = load i32, ptr %i.fr, align 4            ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 24 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8
  %i.fv = icmp eq i32 %i.fs, %i.fu
  br i1 %i.fv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fw = add i32 %i.fs, 1
  store i32 %i.fw, ptr %i.ft, align 8
  %i.fx = load ptr, ptr %i.fp, align 8            ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.gb = load i32, ptr %i.ga, align 8
  %i.gc = zext i32 %i.gb to i64
  %i.gd = shl nuw nsw i64 %i.gc, 3
  %i.ge = tail call ptr @SDL_realloc_REAL(ptr noundef %i.fz, i64 noundef %i.gd) #17
  %i.gf = load ptr, ptr %i.fp, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store ptr %i.ge, ptr %i.gg, align 8
  %.pre = load ptr, ptr %i.fp, align 8            ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 28
  %.pre179 = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gh = phi i32 [ %.pre179, %bb.r ], [ %i.fs, %bb.q ]
  %i.gi = phi ptr [ %.pre, %bb.r ], [ %i.fq, %bb.q ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = zext i32 %i.gh to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gl
  store ptr %1, ptr %i.gm, align 8
  %i.gn = load ptr, ptr %i.fp, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 28 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = add i32 %i.gp, 1
  store i32 %i.gq, ptr %i.go, align 4
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8            ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 2112 ; 4 uses
  %i.gu = load i32, ptr %i.gt, align 8            ; 2 uses
  %i.gv = add i32 %i.gu, 1
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 2116 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4            ; 2 uses
  %.not.i104 = icmp ult i32 %i.gv, %i.gx
  br i1 %.not.i104, label %._crit_edge19.i, label %bb.t

._crit_edge19.i:                                  ; preds = %bb.s
  %.phi.trans.insert.i106 = getelementptr inbounds nuw i8, ptr %0, i64 2104
  %.pre.i107 = load ptr, ptr %.phi.trans.insert.i106, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gy = shl i32 %i.gx, 1                        ; 2 uses
  store i32 %i.gy, ptr %i.gw, align 4
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 2104 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = zext i32 %i.gy to i64
  %i.hc = shl nuw nsw i64 %i.hb, 3
  %i.hd = tail call ptr @SDL_realloc_REAL(ptr noundef %i.ha, i64 noundef %i.hc) #17 ; 2 uses
  store ptr %i.hd, ptr %i.gz, align 8
  %.pre20.i = load i32, ptr %i.gt, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge19.i
  %i.he = phi i32 [ %i.gu, %._crit_edge19.i ], [ %.pre20.i, %bb.t ]
  %i.hf = phi ptr [ %.pre.i107, %._crit_edge19.i ], [ %i.hd, %bb.t ]
  %i.hg = zext i32 %i.he to i64
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hg
  store ptr %i.gs, ptr %i.hh, align 8
  %i.hi = load i32, ptr %i.gt, align 8
  %i.hj = add i32 %i.hi, 1
  store i32 %i.hj, ptr %i.gt, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8
  %.not17.i = icmp eq i32 %i.hl, 0
  br i1 %.not17.i, label %VULKAN_INTERNAL_ReturnDescriptorSetCacheToPool.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.u ] ; 2 uses
  %i.hm = load ptr, ptr %i.gs, align 8
  %i.hn = getelementptr inbounds nuw [32 x i8], ptr %i.hm, i64 %indvars.iv.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 28
  store i32 0, ptr %i.ho, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hp = load i32, ptr %i.hk, align 8
  %i.hq = zext i32 %i.hp to i64
  %i.hr = icmp samesign ult i64 %indvars.iv.next.i, %i.hq
  br i1 %i.hr, label %.lr.ph.i, label %VULKAN_INTERNAL_ReturnDescriptorSetCacheToPool.exit, !llvm.loop !247

VULKAN_INTERNAL_ReturnDescriptorSetCacheToPool.exit: ; preds = %.lr.ph.i, %bb.u
  store ptr null, ptr %i.gr, align 8
  %i.hs = load ptr, ptr %i.fn, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.hs) #13
  br i1 %2, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %VULKAN_INTERNAL_ReturnDescriptorSetCacheToPool.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 3 uses
  %i.hu = load i32, ptr %i.ht, align 8            ; 2 uses
  %.not = icmp eq i32 %i.hu, 0
  br i1 %.not, label %.loopexit, label %.lr.ph150

.lr.ph150:                                        ; preds = %.preheader
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 2000
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph150, %bb.x
  %i.hw = phi i32 [ %i.hu, %.lr.ph150 ], [ %i.ig, %bb.x ] ; 2 uses
  %indvars.iv176 = phi i64 [ 0, %.lr.ph150 ], [ %indvars.iv.next177, %bb.x ] ; 2 uses
  %3 = load ptr, ptr %i.hv, align 8               ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv176 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = icmp eq ptr %i.hy, %1
  br i1 %i.hz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ia = add i32 %i.hw, -1
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ib
  %i.id = load ptr, ptr %i.ic, align 8
  store ptr %i.id, ptr %i.hx, align 8
  %i.ie = load i32, ptr %i.ht, align 8
  %i.if = add i32 %i.ie, -1                       ; 2 uses
  store i32 %i.if, ptr %i.ht, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ig = phi i32 [ %i.hw, %bb.v ], [ %i.if, %bb.w ] ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %i.ih = zext i32 %i.ig to i64
  %i.ii = icmp samesign ult i64 %indvars.iv.next177, %i.ih
  br i1 %i.ii, label %bb.v, label %.loopexit, !llvm.loop !248

.loopexit:                                        ; preds = %bb.x, %.preheader, %VULKAN_INTERNAL_ReturnDescriptorSetCacheToPool.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @VULKAN_INTERNAL_PerformPendingDestroys(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %.097105 = add i32 %i.d, -1                     ; 2 uses
  %i.e = icmp sgt i32 %.097105, -1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2128 ; 3 uses
  %i.g = zext nneg i32 %.097105 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2152 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8
  %.096107 = add i32 %i.i, -1                     ; 2 uses
  %i.j = icmp sgt i32 %.096107, -1
  br i1 %i.j, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2144 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.n = zext nneg i32 %.096107 to i64
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 100
  %i.s = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.r) #13
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.f, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8
  tail call fastcc void @VULKAN_INTERNAL_DestroyTexture(ptr noundef nonnull %0, ptr noundef %i.w)
  %i.x = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.y = load i32, ptr %i.c, align 8
  %i.z = add i32 %i.y, -1
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = load i32, ptr %i.c, align 8
  %i.af = add i32 %i.ae, -1
  store i32 %i.af, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ag = icmp sgt i64 %indvars.iv, 0
  br i1 %i.ag, label %bb.b, label %._crit_edge, !llvm.loop !249

._crit_edge111:                                   ; preds = %bb.g, %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2184 ; 4 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %.095112 = add i32 %i.ai, -1                    ; 2 uses
  %i.aj = icmp sgt i32 %.095112, -1
  br i1 %i.aj, label %.lr.ph115, label %._crit_edge116

.lr.ph115:                                        ; preds = %._crit_edge111
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 1392
  %i.am = getelementptr i8, ptr %0, i64 3000
  %i.an = zext nneg i32 %.095112 to i64
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph110, %bb.g
  %indvars.iv138 = phi i64 [ %i.n, %.lr.ph110 ], [ %indvars.iv.next139, %bb.g ] ; 5 uses
  %i.ao = load ptr, ptr %i.k, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv138
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.ar) #13
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %i.k, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv138
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.ax = load ptr, ptr %i.l, align 8
  %i.ay = load ptr, ptr %i.m, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ax(ptr noundef %i.ay, ptr noundef %i.ba, ptr noundef null) #13, !inline_history !0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call fastcc void @VULKAN_INTERNAL_RemoveMemoryUsedRegion(ptr noundef nonnull %0, ptr noundef %i.bc)
  tail call void @SDL_free_REAL(ptr noundef %i.aw) #13
  %i.bd = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.be = load i32, ptr %i.h, align 8
  %i.bf = add i32 %i.be, -1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv138
  store ptr %i.bi, ptr %i.bj, align 8
  %i.bk = load i32, ptr %i.h, align 8
  %i.bl = add i32 %i.bk, -1
  store i32 %i.bl, ptr %i.h, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, -1
  %i.bm = icmp sgt i64 %indvars.iv138, 0
  br i1 %i.bm, label %bb.e, label %._crit_edge111, !llvm.loop !250

._crit_edge116:                                   ; preds = %bb.j, %._crit_edge111
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2200 ; 4 uses
  %i.bo = load i32, ptr %i.bn, align 8
  %.094117 = add i32 %i.bo, -1                    ; 2 uses
  %i.bp = icmp sgt i32 %.094117, -1
  br i1 %i.bp, label %.lr.ph120, label %._crit_edge121

.lr.ph120:                                        ; preds = %._crit_edge116
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 2192 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3000
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %i.bu = zext nneg i32 %.094117 to i64
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph115, %bb.j
  %indvars.iv141 = phi i64 [ %i.an, %.lr.ph115 ], [ %indvars.iv.next142, %bb.j ] ; 5 uses
  %i.bv = load ptr, ptr %i.ak, align 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv141
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.bz = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.by) #13
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = load ptr, ptr %i.ak, align 8
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv141
  %i.cd = load ptr, ptr %i.cc, align 8            ; 4 uses
  %.val = load ptr, ptr %i.al, align 8
  %.val98 = load ptr, ptr %i.am, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %.val98(ptr noundef %.val, ptr noundef %i.cf, ptr noundef null) #13, !inline_history !251
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 36
  %i.cj = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.ci, i32 noundef -1) #13 ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 36
  %i.cn = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.cm, i32 noundef -1) #13 ; 0 uses
  tail call void @SDL_free_REAL(ptr noundef %i.cd) #13
  %i.co = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.cp = load i32, ptr %i.ah, align 8
  %i.cq = add i32 %i.cp, -1
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv141
  store ptr %i.ct, ptr %i.cu, align 8
  %i.cv = load i32, ptr %i.ah, align 8
  %i.cw = add i32 %i.cv, -1
  store i32 %i.cw, ptr %i.ah, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, -1
  %i.cx = icmp sgt i64 %indvars.iv141, 0
  br i1 %i.cx, label %bb.h, label %._crit_edge116, !llvm.loop !252

._crit_edge121:                                   ; preds = %bb.p, %._crit_edge116
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 2216 ; 4 uses
  %i.cz = load i32, ptr %i.cy, align 8
  %.093122 = add i32 %i.cz, -1                    ; 2 uses
  %i.da = icmp sgt i32 %.093122, -1
  br i1 %i.da, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %._crit_edge121
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 2208 ; 3 uses
  %i.dc = getelementptr i8, ptr %0, i64 1392
  %i.dd = getelementptr i8, ptr %0, i64 3048
end_hunk_0
