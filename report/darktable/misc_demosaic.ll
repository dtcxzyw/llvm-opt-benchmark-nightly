Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/misc_demosaic?download=true
inline.NumInlined: 44
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6LibRaw15pre_interpolateEv:bb.a
  %.pre111 = load i16, ptr %i.dw, align 4, !tbaa !77
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %._crit_edge86.loopexit, %.preheader
  %i.fk = phi i16 [ %.pre111, %._crit_edge86.loopexit ], [ %i.ek, %.preheader ] ; 2 uses
  %i.fl = phi i16 [ %i.fh, %._crit_edge86.loopexit ], [ 0, %.preheader ]
  %i.fm = add nuw nsw i32 %.25387, 1              ; 2 uses
  %i.fn = zext i16 %i.fk to i32
  %i.fo = icmp samesign ult i32 %i.fm, %i.fn
  br i1 %i.fo, label %.preheader, label %._crit_edge88, !llvm.loop !88

._crit_edge88:                                    ; preds = %._crit_edge86, %bb.n
  %i.fp = load ptr, ptr %i.j, align 8, !tbaa !80
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.fp)
  store ptr %i.eh, ptr %i.j, align 8, !tbaa !80
  store i16 0, ptr %i.h, align 4, !tbaa !91
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.loopexit69, %._crit_edge88, %bb.f, %bb.d
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !79 ; 5 uses
  %i.ft = icmp ugt i32 %i.fs, 1000
  br i1 %i.ft, label %bb.p, label %bb.v

bb.p:                                             ; preds = %.loopexit
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !83
  %i.fw = icmp eq i32 %i.fv, 3
  br i1 %i.fw, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 5380
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !95 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 5376
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !92 ; 2 uses
  %i.gb = xor i32 %i.ga, %i.fy
  store i32 %i.gb, ptr %i.g, align 8, !tbaa !96
  %i.gc = or i32 %i.ga, %i.fy
  %.not64 = icmp eq i32 %i.gc, 0
  br i1 %.not64, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 4, ptr %i.fu, align 4, !tbaa !83
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.gd = lshr i32 %i.fs, 5
  %i.ge = and i32 %i.gd, 1                        ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 4, !tbaa !77 ; 2 uses
  %i.gh = zext i16 %i.gg to i32
  %i.gi = icmp samesign ult i32 %i.ge, %i.gh
  br i1 %i.gi, label %.lr.ph95, label %._crit_edge96

.lr.ph95:                                         ; preds = %bb.s
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %.pre112 = load i16, ptr %i.gj, align 2, !tbaa !78
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph95, %._crit_edge92
  %i.gk = phi i16 [ %i.gg, %.lr.ph95 ], [ %i.hg, %._crit_edge92 ]
  %i.gl = phi i16 [ %.pre112, %.lr.ph95 ], [ %i.hh, %._crit_edge92 ] ; 2 uses
  %.35493 = phi i32 [ %i.ge, %.lr.ph95 ], [ %i.hi, %._crit_edge92 ] ; 3 uses
  %i.gm = shl nuw nsw i32 %.35493, 2
  %i.gn = and i32 %i.gm, 28
  %i.go = or disjoint i32 %i.gn, 2
  %i.gp = lshr i32 %i.fs, %i.go
  %i.gq = and i32 %i.gp, 1                        ; 2 uses
  %i.gr = zext i16 %i.gl to i32                   ; 2 uses
  %i.gs = icmp samesign ult i32 %i.gq, %i.gr
  br i1 %i.gs, label %.lr.ph91, label %._crit_edge92

.lr.ph91:                                         ; preds = %bb.t
  %i.gt = load ptr, ptr %i.fq, align 8, !tbaa !80
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph91, %bb.u
  %i.gu = phi i32 [ %i.gr, %.lr.ph91 ], [ %i.he, %bb.u ]
  %.689 = phi i32 [ %i.gq, %.lr.ph91 ], [ %i.hc, %bb.u ] ; 2 uses
  %i.gv = mul nuw nsw i32 %i.gu, %.35493
  %i.gw = add nuw nsw i32 %i.gv, %.689
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 6
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !81
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !81
  %i.hc = add nuw nsw i32 %.689, 2                ; 2 uses
  %i.hd = load i16, ptr %i.gj, align 2, !tbaa !78 ; 2 uses
  %i.he = zext i16 %i.hd to i32                   ; 2 uses
  %i.hf = icmp samesign ult i32 %i.hc, %i.he
  br i1 %i.hf, label %bb.u, label %._crit_edge92.loopexit, !llvm.loop !89

._crit_edge92.loopexit:                           ; preds = %bb.u
  %.pre113 = load i16, ptr %i.gf, align 4, !tbaa !77
  br label %._crit_edge92

._crit_edge92:                                    ; preds = %._crit_edge92.loopexit, %bb.t
  %i.hg = phi i16 [ %.pre113, %._crit_edge92.loopexit ], [ %i.gk, %bb.t ] ; 2 uses
  %i.hh = phi i16 [ %i.hd, %._crit_edge92.loopexit ], [ %i.gl, %bb.t ]
  %i.hi = add nuw nsw i32 %.35493, 2              ; 2 uses
  %i.hj = zext i16 %i.hg to i32
  %i.hk = icmp samesign ult i32 %i.hi, %i.hj
  br i1 %i.hk, label %bb.t, label %._crit_edge96, !llvm.loop !90

._crit_edge96:                                    ; preds = %._crit_edge92, %bb.s
  %i.hl = shl i32 %i.fs, 1
  %i.hm = and i32 %i.hl, -1431655766
  %i.hn = xor i32 %i.hm, -1
  %i.ho = and i32 %i.fs, %i.hn
  store i32 %i.ho, ptr %i.fr, align 8, !tbaa !79
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %._crit_edge96, %bb.p, %.loopexit
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 5376
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !92
  %.not65 = icmp eq i32 %i.hq, 0
  br i1 %.not65, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.fr, align 8, !tbaa !79
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.hr = load ptr, ptr %i.a, align 8, !tbaa !73  ; 2 uses
  %.not66 = icmp eq ptr %i.hr, null
  br i1 %.not66, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !74
  %i.hu = tail call noundef i32 %i.hr(ptr noundef %i.ht, i32 noundef 1024, i32 noundef 1, i32 noundef 2)
  %.not67 = icmp eq i32 %i.hu, 0
  br i1 %.not67, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hv = tail call ptr @__cxa_allocate_exception(i64 4) #12 ; 2 uses
  store i32 6, ptr %i.hv, align 16, !tbaa !76
  tail call void @__cxa_throw(ptr nonnull %i.hv, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #13
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.x
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw18border_interpolateEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 11 uses
  %i.d = load i16, ptr %i.c, align 4, !tbaa !77   ; 2 uses
  %.not59 = icmp eq i16 %i.d, 0
  br i1 %.not59, label %._crit_edge58, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 540
  %.pre = load i16, ptr %i.e, align 2, !tbaa !78  ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge56
  %i.g = phi i16 [ %i.d, %.preheader.lr.ph ], [ %i.jz, %._crit_edge56 ]
  %i.h = phi i16 [ %.pre, %.preheader.lr.ph ], [ %i.ka, %._crit_edge56 ] ; 2 uses
  %i.i = phi i16 [ %.pre, %.preheader.lr.ph ], [ %i.kb, %._crit_edge56 ] ; 2 uses
  %.04357 = phi i32 [ 0, %.preheader.lr.ph ], [ %.pre-phi92, %._crit_edge56 ] ; 18 uses
  %.not60 = icmp eq i16 %i.i, 0
  br i1 %.not60, label %.preheader.._crit_edge56_crit_edge, label %.lr.ph55

.preheader.._crit_edge56_crit_edge:               ; preds = %.preheader
  %.pre91 = add nuw nsw i32 %.04357, 1
  br label %._crit_edge56

.lr.ph55:                                         ; preds = %.preheader
  %i.j = zext i16 %i.i to i32
  %.not = icmp ult i32 %.04357, %1
  %i.k = add nsw i32 %.04357, -1                  ; 9 uses
  %i.l = add nuw nsw i32 %.04357, 1               ; 10 uses
  br label %._crit_edge90

._crit_edge90:                                    ; preds = %.lr.ph55, %._crit_edge
  %i.m = phi i16 [ %i.h, %.lr.ph55 ], [ %i.jw, %._crit_edge ] ; 2 uses
  %i.n = phi i32 [ %i.j, %.lr.ph55 ], [ %i.jx, %._crit_edge ]
  %.04254 = phi i32 [ 0, %.lr.ph55 ], [ %i.bl, %._crit_edge ] ; 2 uses
  %i.o = icmp ne i32 %.04254, %1
  %or.cond = or i1 %.not, %i.o
  %.pre65 = load i16, ptr %i.c, align 4, !tbaa !77
  %.pre93 = zext i16 %.pre65 to i32               ; 3 uses
  %i.p = sub nsw i32 %.pre93, %1
  %i.q = icmp ult i32 %.04357, %i.p
  %i.r = sub nuw nsw i32 %i.n, %1
  %spec.select = select i1 %i.q, i32 %i.r, i32 %1
  %.1 = select i1 %or.cond, i32 %.04254, i32 %spec.select ; 15 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.s = add nsw i32 %.1, -1                      ; 9 uses
  %2 = icmp ult i32 %i.k, %.pre93
  %3 = zext i16 %i.m to i32
  %i.t = icmp ult i32 %i.s, %3
  %or.cond120 = select i1 %2, i1 %i.t, i1 false
  br i1 %or.cond120, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge90
  %i.u = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.k, i32 noundef %i.s) ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.w = load i16, ptr %i.e, align 2, !tbaa !78   ; 2 uses
  %i.x = zext i16 %i.w to i32
  %i.y = mul nuw i32 %i.k, %i.x
  %i.z = add nuw i32 %i.y, %i.s
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.aa
  %i.ac = zext i32 %i.u to i64                    ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !81
  %i.af = zext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !84
  %i.ai = add i32 %i.ah, %i.af
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !84
  %i.aj = add nuw i32 %i.u, 4
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !84
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !84
  %.pre66 = load i16, ptr %i.c, align 4, !tbaa !77
  %.pre75 = zext i16 %.pre66 to i32
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge90, %bb.b
  %.pre-phi = phi i32 [ %.pre93, %._crit_edge90 ], [ %.pre75, %bb.b ] ; 2 uses
  %i.ao = phi i16 [ %i.m, %._crit_edge90 ], [ %i.w, %bb.b ] ; 2 uses
  %4 = icmp ult i32 %i.k, %.pre-phi
  %5 = zext i16 %i.ao to i32
  %i.ap = icmp ult i32 %.1, %5
  %or.cond122 = select i1 %4, i1 %i.ap, i1 false
  br i1 %or.cond122, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.k, i32 noundef %.1) ; 2 uses
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.as = load i16, ptr %i.e, align 2, !tbaa !78  ; 2 uses
  %i.at = zext i16 %i.as to i32
  %i.au = mul nuw i32 %i.k, %i.at
  %i.av = add nuw i32 %i.au, %.1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aw
  %i.ay = zext i32 %i.aq to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !81
  %i.bb = zext i16 %i.ba to i32
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ay ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !84
  %i.be = add i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !84
  %i.bf = add nuw i32 %i.aq, 4
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !84
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !84
  %.pre67 = load i16, ptr %i.c, align 4, !tbaa !77
  %.pre76 = zext i16 %.pre67 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi77 = phi i32 [ %.pre76, %bb.d ], [ %.pre-phi, %bb.c ] ; 2 uses
  %i.bk = phi i16 [ %i.as, %bb.d ], [ %i.ao, %bb.c ] ; 2 uses
  %i.bl = add nuw nsw i32 %.1, 1                  ; 11 uses
  %i.bm = icmp ult i32 %i.k, %.pre-phi77
  %i.bn = zext i16 %i.bk to i32
  %i.bo = icmp ult i32 %i.bl, %i.bn
  %or.cond124 = select i1 %i.bm, i1 %i.bo, i1 false
  br i1 %or.cond124, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bp = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.k, i32 noundef %i.bl) ; 2 uses
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.br = load i16, ptr %i.e, align 2, !tbaa !78  ; 2 uses
  %i.bs = zext i16 %i.br to i32
  %i.bt = mul nuw i32 %i.k, %i.bs
  %i.bu = add nuw i32 %i.bt, %i.bl
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bv
  %i.bx = zext i32 %i.bp to i64                   ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !81
  %i.ca = zext i16 %i.bz to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bx ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !84
  %i.cd = add i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !84
  %i.ce = add nuw i32 %i.bp, 4
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !84
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !84
  %.pre68 = load i16, ptr %i.c, align 4, !tbaa !77
  %.pre78 = zext i16 %.pre68 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi79 = phi i32 [ %.pre78, %bb.f ], [ %.pre-phi77, %bb.e ] ; 2 uses
  %6 = phi i16 [ %i.br, %bb.f ], [ %i.bk, %bb.e ] ; 2 uses
  %i.cj = icmp samesign ult i32 %.04357, %.pre-phi79
  %i.ck = zext i16 %6 to i32
  %i.cl = icmp ult i32 %i.s, %i.ck
  %or.cond126 = select i1 %i.cj, i1 %i.cl, i1 false
  br i1 %or.cond126, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cm = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.04357, i32 noundef %i.s) ; 2 uses
  %i.cn = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.co = load i16, ptr %i.e, align 2, !tbaa !78  ; 2 uses
  %i.cp = zext i16 %i.co to i32
  %i.cq = mul nuw i32 %.04357, %i.cp
  %i.cr = add nuw i32 %i.cq, %i.s
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cs
  %i.cu = zext i32 %i.cm to i64                   ; 2 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !81
  %i.cx = zext i16 %i.cw to i32
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cu ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !84
  %i.da = add i32 %i.cz, %i.cx
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !84
  %i.db = add nuw i32 %i.cm, 4
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dc ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !84
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !84
  %.pre69 = load i16, ptr %i.c, align 4, !tbaa !77
  %.pre80 = zext i16 %.pre69 to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi81 = phi i32 [ %.pre80, %bb.h ], [ %.pre-phi79, %bb.g ] ; 2 uses
  %i.dg = phi i16 [ %i.co, %bb.h ], [ %6, %bb.g ] ; 2 uses
  %i.dh = icmp samesign ult i32 %.04357, %.pre-phi81
  %i.di = zext i16 %i.dg to i32
  %i.dj = icmp ult i32 %.1, %i.di
  %or.cond128 = select i1 %i.dh, i1 %i.dj, i1 false
  br i1 %or.cond128, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dk = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.04357, i32 noundef %.1) ; 2 uses
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.dm = load i16, ptr %i.e, align 2, !tbaa !78  ; 2 uses
  %i.dn = zext i16 %i.dm to i32
  %i.do = mul nuw i32 %.04357, %i.dn
  %i.dp = add nuw i32 %i.do, %.1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dq
  %i.ds = zext i32 %i.dk to i64                   ; 2 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !81
  %i.dv = zext i16 %i.du to i32
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ds ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !84
  %i.dy = add i32 %i.dx, %i.dv
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !84
  %i.dz = add nuw i32 %i.dk, 4
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !84
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !84
  %.pre70 = load i16, ptr %i.c, align 4, !tbaa !77
  %.pre82 = zext i16 %.pre70 to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi83 = phi i32 [ %.pre82, %bb.j ], [ %.pre-phi81, %bb.i ] ; 2 uses
  %i.ee = phi i16 [ %i.dm, %bb.j ], [ %i.dg, %bb.i ] ; 2 uses
  %i.ef = icmp samesign ult i32 %.04357, %.pre-phi83
  %i.eg = zext i16 %i.ee to i32
  %i.eh = icmp ult i32 %i.bl, %i.eg
  %or.cond130 = select i1 %i.ef, i1 %i.eh, i1 false
  br i1 %or.cond130, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ei = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.04357, i32 noundef %i.bl) ; 2 uses
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.ek = load i16, ptr %i.e, align 2, !tbaa !78  ; 2 uses
  %i.el = zext i16 %i.ek to i32
  %i.em = mul nuw i32 %.04357, %i.el
  %i.en = add nuw i32 %i.em, %i.bl
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eo
  %i.eq = zext i32 %i.ei to i64                   ; 2 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2, !tbaa !81
  %i.et = zext i16 %i.es to i32
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eq ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !84
  %i.ew = add i32 %i.ev, %i.et
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !84
  %i.ex = add nuw i32 %i.ei, 4
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !84
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !84
  %.pre71 = load i16, ptr %i.c, align 4, !tbaa !77
  %.pre84 = zext i16 %.pre71 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi85 = phi i32 [ %.pre84, %bb.l ], [ %.pre-phi83, %bb.k ]
  %i.fc = phi i16 [ %i.ek, %bb.l ], [ %i.ee, %bb.k ] ; 2 uses
  %i.fd = icmp samesign ult i32 %i.l, %.pre-phi85
  br i1 %i.fd, label %bb.n, label %.thread114

bb.n:                                             ; preds = %bb.m
  %i.fe = zext i16 %i.fc to i32
  %i.ff = icmp ult i32 %i.s, %i.fe
  br i1 %i.ff, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.fg = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.l, i32 noundef %i.s) ; 2 uses
  %i.fh = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.fi = load i16, ptr %i.e, align 2, !tbaa !78  ; 2 uses
  %i.fj = zext i16 %i.fi to i32
  %i.fk = mul nuw i32 %i.l, %i.fj
  %i.fl = add nuw i32 %i.fk, %i.s
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fm
  %i.fo = zext i32 %i.fg to i64                   ; 2 uses
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !81
  %i.fr = zext i16 %i.fq to i32
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fo ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !84
  %i.fu = add i32 %i.ft, %i.fr
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !84
  %i.fv = add nuw i32 %i.fg, 4
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !84
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !84
  %.pre72 = load i16, ptr %i.c, align 4, !tbaa !77
  %.pre86 = zext i16 %.pre72 to i32
  %i.ga = icmp samesign ult i32 %i.l, %.pre86
  br i1 %i.ga, label %.thread, label %.thread114

.thread:                                          ; preds = %bb.n, %bb.o
  %i.gb = phi i16 [ %i.fi, %bb.o ], [ %i.fc, %bb.n ] ; 2 uses
  %i.gc = zext i16 %i.gb to i32
  %i.gd = icmp ult i32 %.1, %i.gc
  br i1 %i.gd, label %bb.p, label %.thread116

bb.p:                                             ; preds = %.thread
  %i.ge = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.l, i32 noundef %.1) ; 2 uses
  %i.gf = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.gg = load i16, ptr %i.e, align 2, !tbaa !78  ; 2 uses
  %i.gh = zext i16 %i.gg to i32
  %i.gi = mul nuw i32 %i.l, %i.gh
  %i.gj = add nuw i32 %i.gi, %.1
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gk
  %i.gm = zext i32 %i.ge to i64                   ; 2 uses
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !81
  %i.gp = zext i16 %i.go to i32
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gm ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !84
  %i.gs = add i32 %i.gr, %i.gp
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !84
  %i.gt = add nuw i32 %i.ge, 4
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gu ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !84
  %i.gx = add i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !84
  %.pre73 = load i16, ptr %i.c, align 4, !tbaa !77
  %.pre88 = zext i16 %.pre73 to i32
  %i.gy = icmp samesign ult i32 %i.l, %.pre88
  br i1 %i.gy, label %.thread116, label %.thread114

.thread116:                                       ; preds = %.thread, %bb.p
  %i.gz = phi i16 [ %i.gg, %bb.p ], [ %i.gb, %.thread ]
  %i.ha = zext i16 %i.gz to i32
  %i.hb = icmp ult i32 %i.bl, %i.ha
  br i1 %i.hb, label %bb.q, label %.thread114

bb.q:                                             ; preds = %.thread116
  %i.hc = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.l, i32 noundef %i.bl) ; 2 uses
  %i.hd = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.he = load i16, ptr %i.e, align 2, !tbaa !78
  %i.hf = zext i16 %i.he to i32
  %i.hg = mul nuw i32 %i.l, %i.hf
  %i.hh = add nuw i32 %i.hg, %i.bl
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hi
  %i.hk = zext i32 %i.hc to i64                   ; 2 uses
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.hj, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !81
  %i.hn = zext i16 %i.hm to i32
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hk ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !84
  %i.hq = add i32 %i.hp, %i.hn
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !84
  %i.hr = add nuw i32 %i.hc, 4
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hs ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !84
  %i.hv = add i32 %i.hu, 1
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !84
  br label %.thread114

.thread114:                                       ; preds = %bb.m, %bb.o, %bb.q, %.thread116, %bb.p
  %i.hw = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.04357, i32 noundef %.1)
  %i.hx = load i32, ptr %i.f, align 4, !tbaa !83  ; 4 uses
  %.not61 = icmp eq i32 %i.hx, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread114
  %i.hy = zext i32 %i.hw to i64                   ; 3 uses
  %wide.trip.count = zext i32 %i.hx to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.hz = icmp eq i32 %i.hx, 1
  br i1 %i.hz, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.v, %.lr.ph.preheader.new
  %indvars.iv62 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next63.1, %bb.v ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.v ]
  %.not48 = icmp eq i64 %indvars.iv62, %i.hy
  br i1 %.not48, label %.lr.ph.1, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.ia = add nuw i64 %indvars.iv62, 4
  %i.ib = and i64 %i.ia, 4294967294
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !84 ; 2 uses
  %.not49 = icmp eq i32 %i.id, 0
  br i1 %.not49, label %.lr.ph.1, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv62
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !84
  %i.ig = udiv i32 %i.if, %i.id
  %i.ih = trunc i32 %i.ig to i16
  %i.ii = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.ij = load i16, ptr %i.e, align 2, !tbaa !78
  %i.ik = zext i16 %i.ij to i32
  %i.il = mul nuw i32 %.04357, %i.ik
  %i.im = add i32 %i.il, %.1
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.in
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %indvars.iv62
  store i16 %i.ih, ptr %i.ip, align 2, !tbaa !81
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.r, %bb.s
  %indvars.iv.next63 = or disjoint i64 %indvars.iv62, 1 ; 3 uses
  %.not48.1 = icmp eq i64 %indvars.iv.next63, %i.hy
  br i1 %.not48.1, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph.1
  %i.iq = add nuw i64 %indvars.iv62, 5
  %i.ir = and i64 %i.iq, 4294967295
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !84 ; 2 uses
  %.not49.1 = icmp eq i32 %i.it, 0
  br i1 %.not49.1, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next63
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !84
  %i.iw = udiv i32 %i.iv, %i.it
  %i.ix = trunc i32 %i.iw to i16
  %i.iy = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.iz = load i16, ptr %i.e, align 2, !tbaa !78
  %i.ja = zext i16 %i.iz to i32
  %i.jb = mul nuw i32 %.04357, %i.ja
  %i.jc = add i32 %i.jb, %.1
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.jd
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.je, i64 %indvars.iv.next63
  store i16 %i.ix, ptr %i.jf, align 2, !tbaa !81
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.lr.ph.1
  %indvars.iv.next63.1 = add nuw nsw i64 %indvars.iv62, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !97

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv62.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next63.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod131 = trunc i32 %i.hx to i1
  tail call void @llvm.assume(i1 %lcmp.mod131)
  %.not48.epil = icmp eq i64 %indvars.iv62.epil.init, %i.hy
  br i1 %.not48.epil, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %.lr.ph.epil.preheader
  %i.jg = add nuw i64 %indvars.iv62.epil.init, 4
  %i.jh = and i64 %i.jg, 4294967295
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jh
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !84 ; 2 uses
  %.not49.epil = icmp eq i32 %i.jj, 0
  br i1 %.not49.epil, label %._crit_edge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv62.epil.init
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !84
  %i.jm = udiv i32 %i.jl, %i.jj
  %i.jn = trunc i32 %i.jm to i16
  %i.jo = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.jp = load i16, ptr %i.e, align 2, !tbaa !78
  %i.jq = zext i16 %i.jp to i32
  %i.jr = mul nuw i32 %.04357, %i.jq
  %i.js = add i32 %i.jr, %.1
  %i.jt = zext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.jt
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.ju, i64 %indvars.iv62.epil.init
  store i16 %i.jn, ptr %i.jv, align 2, !tbaa !81
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.x, %bb.w, %.lr.ph.epil.preheader, %.thread114
  %i.jw = load i16, ptr %i.e, align 2, !tbaa !78  ; 4 uses
  %i.jx = zext i16 %i.jw to i32                   ; 2 uses
  %i.jy = icmp ult i32 %i.bl, %i.jx
  br i1 %i.jy, label %._crit_edge90, label %._crit_edge56.loopexit, !llvm.loop !98

._crit_edge56.loopexit:                           ; preds = %._crit_edge
  %.pre74 = load i16, ptr %i.c, align 4, !tbaa !77
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %.preheader.._crit_edge56_crit_edge, %._crit_edge56.loopexit
  %.pre-phi92 = phi i32 [ %.pre91, %.preheader.._crit_edge56_crit_edge ], [ %i.l, %._crit_edge56.loopexit ] ; 2 uses
  %i.jz = phi i16 [ %i.g, %.preheader.._crit_edge56_crit_edge ], [ %.pre74, %._crit_edge56.loopexit ] ; 2 uses
  %i.ka = phi i16 [ %i.h, %.preheader.._crit_edge56_crit_edge ], [ %i.jw, %._crit_edge56.loopexit ]
  %i.kb = phi i16 [ 0, %.preheader.._crit_edge56_crit_edge ], [ %i.jw, %._crit_edge56.loopexit ]
  %i.kc = zext i16 %i.jz to i32
  %i.kd = icmp samesign ult i32 %.pre-phi92, %i.kc
  br i1 %i.kd, label %.preheader, label %._crit_edge58, !llvm.loop !99

._crit_edge58:                                    ; preds = %._crit_edge56, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw20lin_interpolate_loopEPii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !77   ; 3 uses
  %i.d = icmp ugt i16 %i.c, 2
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge43

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.i = load i32, ptr %i.h, align 4
  %.fr44 = freeze i32 %i.i
  %i.j = add i32 %.fr44, -1                       ; 5 uses
  %.not2933 = icmp eq i32 %i.j, 0
  %i.k = load i16, ptr %i.f, align 2, !tbaa !78   ; 4 uses
  br i1 %.not2933, label %.preheader.lr.ph.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.l = zext i32 %i.j to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.j, 8
  %n.vec = and i64 %i.l, 4294967288               ; 4 uses
  %i.m = trunc nuw i64 %n.vec to i32
  %i.n = sub i32 %i.j, %i.m
  %i.o = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %i.l
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.p = icmp ugt i16 %i.k, 2
  br i1 %i.p, label %.preheader.us.preheader, label %._crit_edge43

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us
  %i.q = zext i16 %i.k to i64
  %i.r = add nuw nsw i64 %i.q, 4294967295
  %i.s = zext i16 %i.c to i32
  %i.t = zext i16 %i.k to i64                     ; 2 uses
  %wide.trip.count = and i64 %i.r, 4294967295
  %i.u = add nsw i32 %i.s, -2
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge40.split.us.us
  %indvars.iv49 = phi i64 [ %i.t, %.preheader.us.preheader ], [ %indvars.iv.next50, %._crit_edge40.split.us.us ] ; 2 uses
  %.02741.us = phi i32 [ 1, %.preheader.us.preheader ], [ %i.dh, %._crit_edge40.split.us.us ] ; 3 uses
  %i.v = srem i32 %.02741.us, %2
  %i.w = shl i32 %i.v, 9
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv49
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.us.us, %.preheader.us
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %._crit_edge.us.us ], [ 1, %.preheader.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv46 ; 5 uses
  %i.z = trunc nuw nsw i64 %indvars.iv46 to i32
  %i.aa = srem i32 %i.z, %2
  %i.ab = shl i32 %i.aa, 5
  %i.ac = add i32 %i.ab, %i.w
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ad ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84 ; 5 uses
  %.not30.us.us = icmp eq i32 %i.af, 0
  br i1 %.not30.us.us, label %._crit_edge.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %xtraiter70 = and i32 %i.af, 3                  ; 2 uses
  %lcmp.mod71.not = icmp eq i32 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol

.lr.ph.us.us.prol:                                ; preds = %.lr.ph.us.us.preheader, %.lr.ph.us.us.prol
  %.032.us.us.prol = phi i32 [ %i.ah, %.lr.ph.us.us.prol ], [ %i.af, %.lr.ph.us.us.preheader ]
  %.02431.us.us.prol = phi ptr [ %i.aw, %.lr.ph.us.us.prol ], [ %i.ag, %.lr.ph.us.us.preheader ] ; 4 uses
  %prol.iter72 = phi i32 [ %prol.iter72.next, %.lr.ph.us.us.prol ], [ 0, %.lr.ph.us.us.preheader ]
  %i.ah = add nsw i32 %.032.us.us.prol, -1        ; 2 uses
  %i.ai = load i32, ptr %.02431.us.us.prol, align 4, !tbaa !84
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !81
  %i.am = zext i16 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %.02431.us.us.prol, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !84
  %i.ap = shl i32 %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.02431.us.us.prol, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !84
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !84
  %i.av = add nsw i32 %i.au, %i.ap
  store i32 %i.av, ptr %i.at, align 4, !tbaa !84
  %i.aw = getelementptr inbounds nuw i8, ptr %.02431.us.us.prol, i64 12 ; 2 uses
  %prol.iter72.next = add i32 %prol.iter72, 1     ; 2 uses
  %prol.iter72.cmp.not = icmp eq i32 %prol.iter72.next, %xtraiter70
  br i1 %prol.iter72.cmp.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol, !llvm.loop !100

.lr.ph.us.us.prol.loopexit:                       ; preds = %.lr.ph.us.us.prol, %.lr.ph.us.us.preheader
  %.032.us.us.unr = phi i32 [ %i.af, %.lr.ph.us.us.preheader ], [ %i.ah, %.lr.ph.us.us.prol ]
  %.02431.us.us.unr = phi ptr [ %i.ag, %.lr.ph.us.us.preheader ], [ %i.aw, %.lr.ph.us.us.prol ]
  %i.ax = icmp ult i32 %i.af, 4
  br i1 %i.ax, label %._crit_edge.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us
  %.032.us.us = phi i32 [ %i.cr, %.lr.ph.us.us ], [ %.032.us.us.unr, %.lr.ph.us.us.prol.loopexit ]
  %.02431.us.us = phi ptr [ %i.dg, %.lr.ph.us.us ], [ %.02431.us.us.unr, %.lr.ph.us.us.prol.loopexit ] ; 13 uses
  %i.ay = load i32, ptr %.02431.us.us, align 4, !tbaa !84
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !81
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %.02431.us.us, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !84
  %i.bf = shl i32 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.02431.us.us, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !84
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !84
  %i.bl = add nsw i32 %i.bk, %i.bf
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !84
  %i.bm = getelementptr inbounds nuw i8, ptr %.02431.us.us, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !84
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !81
  %i.br = zext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %.02431.us.us, i64 16
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !84
  %i.bu = shl i32 %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.02431.us.us, i64 20
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !84
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !84
  %i.ca = add nsw i32 %i.bz, %i.bu
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !84
  %i.cb = getelementptr inbounds nuw i8, ptr %.02431.us.us, i64 24
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !84
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !81
  %i.cg = zext i16 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %.02431.us.us, i64 28
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !84
  %i.cj = shl i32 %i.cg, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.02431.us.us, i64 32
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !84
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !84
  %i.cp = add nsw i32 %i.co, %i.cj
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !84
  %i.cq = getelementptr inbounds nuw i8, ptr %.02431.us.us, i64 36
  %i.cr = add nsw i32 %.032.us.us, -4             ; 2 uses
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !84
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !81
  %i.cw = zext i16 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %.02431.us.us, i64 40
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !84
  %i.cz = shl i32 %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %.02431.us.us, i64 44
  %i.db = load i32, ptr %i.da, align 4, !tbaa !84
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dc ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !84
  %i.df = add nsw i32 %i.de, %i.cz
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !84
  %i.dg = getelementptr inbounds nuw i8, ptr %.02431.us.us, i64 48
  %.not.us.us.3 = icmp eq i32 %i.cr, 0
  br i1 %.not.us.us.3, label %._crit_edge.us.us, label %.lr.ph.us.us, !llvm.loop !101

._crit_edge.us.us:                                ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
end_hunk_0
