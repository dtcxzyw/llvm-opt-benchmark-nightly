Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sp_int?download=true
inline.NumInlined: 293
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_sp_exptmod_mont_ex:bb.a
  br i1 %i.ag, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp ult i64 %i.ad, %i.af
  br i1 %i.ah, label %_sp_cmp_abs.exit, label %bb.d, !llvm.loop !1

.loopexit:                                        ; preds = %bb.e, %bb.d, %.preheader.i, %bb.b
  %i.ai = icmp ult i16 %i.x, 129
  br i1 %i.ai, label %sp_mod.exit, label %.thread103

sp_mod.exit:                                      ; preds = %.loopexit
  %i.aj = call i32 @sp_div(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %3, ptr noundef null, ptr noundef nonnull %i.e) ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %.thread103

bb.g:                                             ; preds = %sp_mod.exit
  %i.al = load i16, ptr %i.e, align 16, !tbaa !40
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !36
  br label %.thread103.sink.split

_sp_cmp_abs.exit:                                 ; preds = %bb.f, %bb.c
  %i.ao = icmp eq i16 %i.x, 0
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_sp_cmp_abs.exit
  store i64 0, ptr %i.q, align 8, !tbaa !36
  br label %_sp_copy.exit

bb.j:                                             ; preds = %_sp_cmp_abs.exit
  %i.ap = zext nneg i16 %i.x to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = shl nuw nsw i64 %i.ap, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %i.aq, i64 %i.ar, i1 false)
  br label %_sp_copy.exit

_sp_copy.exit:                                    ; preds = %bb.i, %bb.j
  store i16 %i.x, ptr %i.e, align 16, !tbaa !40
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %_sp_copy.exit
  %i.as = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.as, align 8, !tbaa !36 ; 2 uses
  %i.at = mul i64 %.val, 3
  %i.au = xor i64 %i.at, 2                        ; 2 uses
  %i.av = mul i64 %i.au, %.val                    ; 2 uses
  %i.aw = sub i64 1, %i.av                        ; 2 uses
  %i.ax = sub i64 2, %i.av
  %i.ay = mul i64 %i.ax, %i.au
  %i.az = mul i64 %i.aw, %i.aw                    ; 3 uses
  %i.ba = add i64 %i.az, 1
  %i.bb = mul i64 %i.ay, %i.ba
  %i.bc = mul i64 %i.az, %i.az                    ; 3 uses
  %i.bd = add i64 %i.bc, 1
  %i.be = mul i64 %i.bb, %i.bd
  %i.bf = mul i64 %i.bc, %i.bc
  %.neg.i = xor i64 %i.bf, -1
  %.neg19.i = mul i64 %i.be, %.neg.i              ; 3 uses
  %i.bg = call i32 @sp_mont_norm(ptr noundef nonnull %i.l, ptr noundef nonnull %3) ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.k, label %.thread103

bb.k:                                             ; preds = %.critedge
  %i.bi = call i32 @sp_mul(ptr noundef nonnull %i.e, ptr noundef nonnull %i.l, ptr noundef nonnull %i.e) ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.l, label %.thread103

bb.l:                                             ; preds = %bb.k
  %i.bk = load i16, ptr %i.e, align 16, !tbaa !40
  %i.bl = zext i16 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bl, 1
  %i.bn = call fastcc i32 @_sp_div(ptr noundef nonnull %i.e, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %i.e, i32 noundef %i.bm) ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.m, label %.thread103

bb.m:                                             ; preds = %bb.l
  %i.bp = load i16, ptr %i.e, align 16, !tbaa !40 ; 3 uses
  %i.bq = icmp eq i16 %i.bp, 0
  br i1 %i.bq, label %_sp_copy.exit79.thread, label %_sp_copy.exit79

_sp_copy.exit79.thread:                           ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.br, align 8, !tbaa !36
  store i16 0, ptr %i.l, align 16, !tbaa !40
  br label %bb.n

_sp_copy.exit79:                                  ; preds = %bb.m
  %i.bs = zext i16 %i.bp to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bv = shl nuw nsw i64 %i.bs, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr nonnull readonly align 8 %i.bu, i64 %i.bv, i1 false)
  %.pr = load i16, ptr %i.e, align 16, !tbaa !40  ; 3 uses
  store i16 %i.bp, ptr %i.l, align 16, !tbaa !40
  %i.bw = icmp eq i16 %.pr, 0
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_sp_copy.exit79.thread, %_sp_copy.exit79
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.bx, align 8, !tbaa !36
  br label %.thread100

bb.o:                                             ; preds = %_sp_copy.exit79
  %i.by = zext i16 %.pr to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cb = shl nuw nsw i64 %i.by, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr nonnull readonly align 8 %i.ca, i64 %i.cb, i1 false)
  br label %.thread100

.thread100:                                       ; preds = %bb.o, %bb.n
  %i.cc = phi i16 [ %.pr, %bb.o ], [ 0, %bb.n ]
  store i16 %i.cc, ptr %i.n, align 16, !tbaa !40
  %i.cd = icmp sgt i32 %2, 0
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread100
  %i.ce = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.cf = ptrtoint ptr %i.l to i64                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.ad
  %.067112.in = phi i32 [ %2, %.lr.ph ], [ %.067112, %bb.ad ] ; 2 uses
  %.0111 = phi i32 [ 0, %.lr.ph ], [ %i.ds, %bb.ad ] ; 4 uses
  %.067112 = add nsw i32 %.067112.in, -1          ; 3 uses
  %i.ci = xor i32 %.0111, 1
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr @sp_off_on_addr, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !36
  %i.cm = and i64 %i.cl, %i.ce
  %i.cn = zext nneg i32 %.0111 to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr @sp_off_on_addr, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !36
  %i.cq = and i64 %i.cp, %i.cf
  %i.cr = add i64 %i.cq, %i.cm
  %i.cs = inttoptr i64 %i.cr to ptr               ; 6 uses
  %i.ct = load i16, ptr %i.cs, align 8, !tbaa !40 ; 2 uses
  %i.cu = icmp eq i16 %i.ct, 0
  br i1 %i.cu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i64 0, ptr %i.cg, align 8, !tbaa !36
  br label %_sp_copy.exit83

bb.r:                                             ; preds = %bb.p
  %i.cv = zext i16 %i.ct to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cx = shl nuw nsw i64 %i.cv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cg, ptr nonnull readonly align 8 %i.cw, i64 %i.cx, i1 false)
  %.pre.i82 = load i16, ptr %i.cs, align 8, !tbaa !40
  br label %_sp_copy.exit83

_sp_copy.exit83:                                  ; preds = %bb.q, %bb.r
  %i.cy = phi i16 [ %.pre.i82, %bb.r ], [ 0, %bb.q ]
  store i16 %i.cy, ptr %i.p, align 8, !tbaa !40
  %i.cz = call i32 @sp_sqr(ptr noundef nonnull %i.p, ptr noundef nonnull %i.p) ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0                    ; 2 uses
  br i1 %i.da, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_sp_copy.exit83
  call fastcc void @_sp_mont_red(ptr noundef nonnull %i.p, ptr noundef nonnull %3, i64 noundef %.neg19.i, i32 noundef 0)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_sp_copy.exit83
  %i.db = load i16, ptr %i.p, align 8, !tbaa !40  ; 2 uses
  %i.dc = icmp eq i16 %i.db, 0
  br i1 %i.dc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 0, ptr %i.dd, align 8, !tbaa !36
  br label %_sp_copy.exit85

bb.v:                                             ; preds = %bb.t
  %i.de = zext i16 %i.db to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dg = shl nuw nsw i64 %i.de, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.df, ptr nonnull readonly align 8 %i.cg, i64 %i.dg, i1 false)
  %.pre.i84 = load i16, ptr %i.p, align 8, !tbaa !40
  br label %_sp_copy.exit85

_sp_copy.exit85:                                  ; preds = %bb.u, %bb.v
  %i.dh = phi i16 [ %.pre.i84, %bb.v ], [ 0, %bb.u ]
  store i16 %i.dh, ptr %i.cs, align 8, !tbaa !40
  br i1 %i.da, label %bb.w, label %.thread103

bb.w:                                             ; preds = %_sp_copy.exit85
  %i.di = lshr i32 %.067112, 6
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !36
  %i.dm = and i32 %.067112, 63
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = lshr i64 %i.dl, %i.dn
  %i.dp = trunc i64 %i.do to i32
  %i.dq = and i32 %i.dp, 1                        ; 2 uses
  %i.dr = and i32 %i.dq, %.0111                   ; 2 uses
  %i.ds = or i32 %i.dq, %.0111
  %i.dt = xor i32 %i.dr, 1
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr @sp_off_on_addr, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !36
  %i.dx = and i64 %i.dw, %i.ce
  %i.dy = zext nneg i32 %i.dr to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr @sp_off_on_addr, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !36
  %i.eb = and i64 %i.ea, %i.cf
  %i.ec = add i64 %i.eb, %i.dx
  %i.ed = inttoptr i64 %i.ec to ptr               ; 6 uses
  %i.ee = load i16, ptr %i.ed, align 8, !tbaa !40 ; 2 uses
  %i.ef = icmp eq i16 %i.ee, 0
  br i1 %i.ef, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 0, ptr %i.cg, align 8, !tbaa !36
  br label %_sp_copy.exit87

bb.y:                                             ; preds = %bb.w
  %i.eg = zext i16 %i.ee to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ei = shl nuw nsw i64 %i.eg, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cg, ptr nonnull readonly align 8 %i.eh, i64 %i.ei, i1 false)
  %.pre.i86 = load i16, ptr %i.ed, align 8, !tbaa !40
  br label %_sp_copy.exit87

_sp_copy.exit87:                                  ; preds = %bb.x, %bb.y
  %i.ej = phi i16 [ %.pre.i86, %bb.y ], [ 0, %bb.x ]
  store i16 %i.ej, ptr %i.p, align 8, !tbaa !40
  %i.ek = call i32 @sp_mul(ptr noundef nonnull %i.p, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p) ; 3 uses
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_sp_copy.exit87
  call fastcc void @_sp_mont_red(ptr noundef nonnull %i.p, ptr noundef nonnull %3, i64 noundef %.neg19.i, i32 noundef 0)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_sp_copy.exit87
  %i.em = load i16, ptr %i.p, align 8, !tbaa !40  ; 2 uses
  %i.en = icmp eq i16 %i.em, 0
  br i1 %i.en, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 0, ptr %i.eo, align 8, !tbaa !36
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ep = zext i16 %i.em to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.er = shl nuw nsw i64 %i.ep, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr nonnull readonly align 8 %i.cg, i64 %i.er, i1 false)
  %.pre.i88 = load i16, ptr %i.p, align 8, !tbaa !40
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.es = phi i16 [ %.pre.i88, %bb.ac ], [ 0, %bb.ab ]
  store i16 %i.es, ptr %i.ed, align 8, !tbaa !40
  %i.et = icmp eq i32 %i.ek, 0                    ; 2 uses
  %i.eu = icmp samesign ugt i32 %.067112.in, 1
  %i.ev = select i1 %i.et, i1 %i.eu, i1 false
  br i1 %i.ev, label %bb.p, label %._crit_edge, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.ad, %.thread100
  %.4.lcssa = phi i32 [ 0, %.thread100 ], [ %i.ek, %bb.ad ]
  %.lcssa = phi i1 [ true, %.thread100 ], [ %i.et, %bb.ad ]
  br i1 %.lcssa, label %bb.ae, label %.thread103

bb.ae:                                            ; preds = %._crit_edge
  call fastcc void @_sp_mont_red(ptr noundef nonnull %i.l, ptr noundef nonnull %3, i64 noundef %.neg19.i, i32 noundef 0)
  %i.ew = load i16, ptr %i.l, align 16, !tbaa !40 ; 4 uses
  %i.ex = icmp eq i16 %i.ew, 0
  br i1 %i.ex, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ey, align 8, !tbaa !36
  br label %.thread103.sink.split

bb.ag:                                            ; preds = %bb.ae
  %i.ez = zext i16 %i.ew to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.fc = shl nuw nsw i64 %i.ez, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fa, ptr nonnull readonly align 8 %i.fb, i64 %i.fc, i1 false)
  br label %.thread103.sink.split

.thread103.sink.split:                            ; preds = %bb.ag, %bb.af, %bb.h
  %.sink = phi i16 [ 0, %bb.h ], [ %i.ew, %bb.af ], [ %i.ew, %bb.ag ]
  store i16 %.sink, ptr %4, align 8, !tbaa !46
  br label %.thread103

.thread103:                                       ; preds = %_sp_copy.exit85, %.thread103.sink.split, %.critedge, %bb.k, %bb.l, %bb.a, %.loopexit, %sp_mod.exit, %._crit_edge
  %.9106 = phi i32 [ %i.bi, %bb.k ], [ -98, %bb.a ], [ %.4.lcssa, %._crit_edge ], [ -98, %.loopexit ], [ %i.aj, %sp_mod.exit ], [ 0, %.thread103.sink.split ], [ %i.bn, %bb.l ], [ %i.bg, %.critedge ], [ %i.cz, %_sp_copy.exit85 ]
  ret i32 %.9106
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc range(i32 -98, 1) i32 @_sp_exptmod_ex(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = load i16, ptr %3, align 8, !tbaa !40     ; 5 uses
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = mul nuw nsw i64 %i.b, 6
  %i.d = add nuw nsw i64 %i.c, 6
  %i.e = alloca i64, i64 %i.d, align 16           ; 10 uses
  %i.f = icmp ult i16 %i.a, 65
  br i1 %i.f, label %bb.b, label %.critedge.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw nsw i16 %i.a, 1
  %i.h = or disjoint i16 %i.g, 1                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.j = shl nuw nsw i64 %i.b, 4                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 23 uses
  store volatile i16 0, ptr %i.e, align 16, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store volatile i64 0, ptr %i.o, align 8, !tbaa !36
  store volatile i16 %i.h, ptr %i.i, align 2, !tbaa !37
  store volatile i16 0, ptr %i.l, align 16, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store volatile i64 0, ptr %i.p, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  store volatile i16 %i.h, ptr %i.q, align 2, !tbaa !37
  store volatile i16 0, ptr %i.n, align 16, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store volatile i64 0, ptr %i.r, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  store volatile i16 %i.h, ptr %i.s, align 2, !tbaa !37
  %i.t = load i16, ptr %0, align 8, !tbaa !40     ; 8 uses
  %i.u = icmp ugt i16 %i.t, %i.a
  br i1 %i.u, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i16 %i.t, %i.a
  br i1 %i.v, label %_sp_cmp_abs.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %.not = icmp eq i16 %i.t, 0
  br i1 %.not, label %.loopexit, label %.lr.ph152

.lr.ph152:                                        ; preds = %.preheader.i
  %i.w = zext nneg i16 %i.t to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.f
  %indvars.iv.next.i151 = add nsw i64 %indvars.iv.i150, -1
  %i.x = icmp sgt i64 %indvars.iv.i150, 1
  br i1 %i.x, label %bb.e, label %.loopexit, !llvm.loop !1

bb.e:                                             ; preds = %.lr.ph152, %bb.d
  %indvars.iv.i150 = phi i64 [ %i.w, %.lr.ph152 ], [ %indvars.iv.next.i151, %bb.d ] ; 4 uses
  %i.y = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i150
  %i.z = load i64, ptr %i.y, align 8, !tbaa !36   ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i150
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %i.ac = icmp ugt i64 %i.z, %i.ab
  br i1 %i.ac, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp ult i64 %i.z, %i.ab
  br i1 %i.ad, label %_sp_cmp_abs.exit, label %bb.d, !llvm.loop !1

.loopexit:                                        ; preds = %bb.e, %bb.d, %.preheader.i, %bb.b
  %i.ae = icmp ult i16 %i.t, 129
  br i1 %i.ae, label %sp_mod.exit, label %.critedge.thread.thread

sp_mod.exit:                                      ; preds = %.loopexit
  %i.af = call i32 @sp_div(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %3, ptr noundef null, ptr noundef nonnull %i.e) ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %.critedge.thread.thread

bb.g:                                             ; preds = %sp_mod.exit
  %i.ah = load i16, ptr %i.e, align 16, !tbaa !40
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !36
  br label %.critedge.thread.thread.sink.split

_sp_cmp_abs.exit:                                 ; preds = %bb.f, %bb.c
  %i.ak = icmp eq i16 %i.t, 0
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_sp_cmp_abs.exit
  store i64 0, ptr %i.o, align 8, !tbaa !36
  br label %_sp_copy.exit

bb.j:                                             ; preds = %_sp_cmp_abs.exit
  %i.al = zext nneg i16 %i.t to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = shl nuw nsw i64 %i.al, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull readonly align 8 %i.am, i64 %i.an, i1 false)
  br label %_sp_copy.exit

_sp_copy.exit:                                    ; preds = %bb.i, %bb.j
  store i16 %i.t, ptr %i.e, align 16, !tbaa !40
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %_sp_copy.exit
  %i.ao = load i16, ptr %i.e, align 16, !tbaa !40 ; 4 uses
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.aq, align 8, !tbaa !36
  br label %_sp_copy.exit67

bb.l:                                             ; preds = %.critedge
  %i.ar = zext i16 %i.ao to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.au = shl nuw nsw i64 %i.ar, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr nonnull readonly align 8 %i.at, i64 %i.au, i1 false)
  br label %_sp_copy.exit67

_sp_copy.exit67:                                  ; preds = %bb.k, %bb.l
  store i16 %i.ao, ptr %i.l, align 16, !tbaa !40
  %i.av = icmp sgt i32 %2, 0
  br i1 %i.av, label %.lr.ph, label %.critedge.thread.thread139

.lr.ph:                                           ; preds = %_sp_copy.exit67
  %i.aw = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.ax = ptrtoint ptr %i.l to i64                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 6 uses
  %.not.i = icmp eq ptr %i.n, %3                  ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.aa
  %.0104.in = phi i32 [ %2, %.lr.ph ], [ %.0104, %bb.aa ] ; 2 uses
  %.060103 = phi i32 [ 0, %.lr.ph ], [ %i.cw, %bb.aa ] ; 4 uses
  %.0104 = add nsw i32 %.0104.in, -1              ; 3 uses
  %i.bb = xor i32 %.060103, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @sp_off_on_addr, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !36
  %i.bf = and i64 %i.be, %i.aw
  %i.bg = zext nneg i32 %.060103 to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @sp_off_on_addr, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !36
  %i.bj = and i64 %i.bi, %i.ax
  %i.bk = add i64 %i.bj, %i.bf
  %i.bl = inttoptr i64 %i.bk to ptr               ; 6 uses
  %i.bm = load i16, ptr %i.bl, align 8, !tbaa !40 ; 2 uses
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = zext i16 %i.bm to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bq = shl nuw nsw i64 %i.bo, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull readonly align 8 %i.bp, i64 %i.bq, i1 false)
  %.pre.i68 = load i16, ptr %i.bl, align 8, !tbaa !40 ; 4 uses
  store i16 %.pre.i68, ptr %i.n, align 16, !tbaa !40
  br i1 %.not.i, label %.thread.i.thread, label %bb.o

.thread:                                          ; preds = %bb.m
  store i64 0, ptr %i.ay, align 8, !tbaa !36
  store i16 0, ptr %i.n, align 16, !tbaa !40
  br i1 %.not.i, label %.thread.i.thread.thread, label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n
  %i.br = phi i16 [ 0, %.thread ], [ %.pre.i68, %bb.n ]
  %i.bs = zext i16 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = load i16, ptr %i.az, align 2, !tbaa !39
  %i.bv = zext i16 %i.bu to i32
  %i.bw = icmp samesign ugt i32 %i.bt, %i.bv
  br i1 %i.bw, label %sp_sqrmod.exit, label %.thread.i

.thread.i.thread:                                 ; preds = %bb.n
  %i.bx = icmp ugt i16 %.pre.i68, 64
  br i1 %i.bx, label %sp_sqrmod.exit.thread, label %.thread.i.thread.thread

.thread.i:                                        ; preds = %bb.o
  %i.by = call i32 @sp_sqr(ptr noundef nonnull readonly %i.n, ptr noundef nonnull %i.n) ; 2 uses
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.p, label %sp_sqrmod.exit

bb.p:                                             ; preds = %.thread.i
  %i.ca = load i16, ptr %i.n, align 16, !tbaa !40 ; 2 uses
  %i.cb = icmp ult i16 %i.ca, 129
  br i1 %i.cb, label %bb.q, label %sp_sqrmod.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.cc = call i32 @sp_div(ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %3, ptr noundef null, ptr noundef nonnull %i.n)
  br label %sp_sqrmod.exit

.thread.i.thread.thread:                          ; preds = %.thread, %.thread.i.thread
  %i.cd = call fastcc i32 @_sp_sqrmod(ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %3, ptr noundef nonnull %i.n)
  br label %sp_sqrmod.exit

sp_sqrmod.exit:                                   ; preds = %bb.o, %.thread.i, %bb.q, %.thread.i.thread.thread
  %.3.i.ph.ph = phi i32 [ %i.by, %.thread.i ], [ %i.cd, %.thread.i.thread.thread ], [ %i.cc, %bb.q ], [ -98, %bb.o ] ; 2 uses
  %.pr.pr = load i16, ptr %i.n, align 16, !tbaa !40 ; 2 uses
  %i.ce = icmp eq i16 %.pr.pr, 0
  br i1 %i.ce, label %bb.r, label %sp_sqrmod.exit.thread

bb.r:                                             ; preds = %sp_sqrmod.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 0, ptr %i.cf, align 8, !tbaa !36
  br label %_sp_copy.exit72

sp_sqrmod.exit.thread:                            ; preds = %.thread.i.thread, %bb.p, %sp_sqrmod.exit
  %.3.i90 = phi i32 [ %.3.i.ph.ph, %sp_sqrmod.exit ], [ -98, %bb.p ], [ -98, %.thread.i.thread ]
  %i.cg = phi i16 [ %.pr.pr, %sp_sqrmod.exit ], [ %i.ca, %bb.p ], [ %.pre.i68, %.thread.i.thread ]
  %i.ch = zext i16 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.cj = shl nuw nsw i64 %i.ch, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ay, i64 %i.cj, i1 false)
  %.pre.i71 = load i16, ptr %i.n, align 16, !tbaa !40
  br label %_sp_copy.exit72

_sp_copy.exit72:                                  ; preds = %bb.r, %sp_sqrmod.exit.thread
  %.3.i89 = phi i32 [ %.3.i90, %sp_sqrmod.exit.thread ], [ %.3.i.ph.ph, %bb.r ] ; 2 uses
  %i.ck = phi i16 [ %.pre.i71, %sp_sqrmod.exit.thread ], [ 0, %bb.r ]
  store i16 %i.ck, ptr %i.bl, align 8, !tbaa !40
  %i.cl = icmp eq i32 %.3.i89, 0
  br i1 %i.cl, label %bb.s, label %.critedge.thread.thread

bb.s:                                             ; preds = %_sp_copy.exit72
  %i.cm = lshr i32 %.0104, 6
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !36
  %i.cq = and i32 %.0104, 63
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = lshr i64 %i.cp, %i.cr
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = and i32 %i.ct, 1                        ; 2 uses
  %i.cv = and i32 %i.cu, %.060103                 ; 2 uses
  %i.cw = or i32 %i.cu, %.060103
  %i.cx = xor i32 %i.cv, 1
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr @sp_off_on_addr, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !36
  %i.db = and i64 %i.da, %i.aw
  %i.dc = zext nneg i32 %i.cv to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr @sp_off_on_addr, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !36
  %i.df = and i64 %i.de, %i.ax
  %i.dg = add i64 %i.df, %i.db
  %i.dh = inttoptr i64 %i.dg to ptr               ; 6 uses
  %i.di = load i16, ptr %i.dh, align 8, !tbaa !40 ; 2 uses
  %i.dj = icmp eq i16 %i.di, 0
  br i1 %i.dj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %i.ay, align 8, !tbaa !36
  br label %_sp_copy.exit74

bb.u:                                             ; preds = %bb.s
  %i.dk = zext i16 %i.di to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dm = shl nuw nsw i64 %i.dk, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull readonly align 8 %i.dl, i64 %i.dm, i1 false)
  %.pre.i73 = load i16, ptr %i.dh, align 8, !tbaa !40
  br label %_sp_copy.exit74

_sp_copy.exit74:                                  ; preds = %bb.t, %bb.u
  %i.dn = phi i16 [ %.pre.i73, %bb.u ], [ 0, %bb.t ]
  store i16 %i.dn, ptr %i.n, align 16, !tbaa !40
  br i1 %.not.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %_sp_copy.exit74
  %i.do = call i32 @sp_mul(ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.w, label %_sp_mulmod.exit

bb.w:                                             ; preds = %bb.v
  %i.dq = load i16, ptr %i.n, align 16, !tbaa !40 ; 2 uses
  %i.dr = icmp ult i16 %i.dq, 129
  br i1 %i.dr, label %bb.x, label %_sp_mulmod.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.ds = call i32 @sp_div(ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %3, ptr noundef null, ptr noundef nonnull %i.n)
  br label %_sp_mulmod.exit

bb.y:                                             ; preds = %_sp_copy.exit74
  %i.dt = call fastcc i32 @_sp_mulmod_tmp(ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %3, ptr noundef nonnull %i.n)
  br label %_sp_mulmod.exit

_sp_mulmod.exit:                                  ; preds = %bb.v, %bb.x, %bb.y
  %.0.i.ph = phi i32 [ %i.ds, %bb.x ], [ %i.do, %bb.v ], [ %i.dt, %bb.y ] ; 2 uses
  %.pr91 = load i16, ptr %i.n, align 16, !tbaa !40 ; 2 uses
  %i.du = icmp eq i16 %.pr91, 0
  br i1 %i.du, label %bb.z, label %_sp_mulmod.exit.thread

bb.z:                                             ; preds = %_sp_mulmod.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 0, ptr %i.dv, align 8, !tbaa !36
  br label %bb.aa

_sp_mulmod.exit.thread:                           ; preds = %bb.w, %_sp_mulmod.exit
  %.0.i94 = phi i32 [ %.0.i.ph, %_sp_mulmod.exit ], [ -98, %bb.w ]
  %i.dw = phi i16 [ %.pr91, %_sp_mulmod.exit ], [ %i.dq, %bb.w ]
  %i.dx = zext i16 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dz = shl nuw nsw i64 %i.dx, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dy, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ay, i64 %i.dz, i1 false)
  %.pre.i76 = load i16, ptr %i.n, align 16, !tbaa !40
  br label %bb.aa

bb.aa:                                            ; preds = %_sp_mulmod.exit.thread, %bb.z
  %.0.i93 = phi i32 [ %.0.i94, %_sp_mulmod.exit.thread ], [ %.0.i.ph, %bb.z ] ; 3 uses
  %i.ea = phi i16 [ %.pre.i76, %_sp_mulmod.exit.thread ], [ 0, %bb.z ]
  store i16 %i.ea, ptr %i.dh, align 8, !tbaa !40
  %i.eb = icmp eq i32 %.0.i93, 0
  %i.ec = icmp samesign ugt i32 %.0104.in, 1
  %i.ed = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %i.ed, label %bb.m, label %.critedge.thread, !llvm.loop !142

.critedge.thread:                                 ; preds = %bb.aa
  %i.ee = icmp eq i32 %.0.i93, 0
  br i1 %i.ee, label %.critedge.thread.thread139thread-pre-split, label %.critedge.thread.thread

.critedge.thread.thread139thread-pre-split:       ; preds = %.critedge.thread
  %.pr = load i16, ptr %i.l, align 16, !tbaa !40
  br label %.critedge.thread.thread139

.critedge.thread.thread139:                       ; preds = %.critedge.thread.thread139thread-pre-split, %_sp_copy.exit67
  %i.ef = phi i16 [ %.pr, %.critedge.thread.thread139thread-pre-split ], [ %i.ao, %_sp_copy.exit67 ] ; 4 uses
  %i.eg = icmp eq i16 %i.ef, 0
  br i1 %i.eg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.critedge.thread.thread139
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.eh, align 8, !tbaa !36
  br label %.critedge.thread.thread.sink.split

bb.ac:                                            ; preds = %.critedge.thread.thread139
  %i.ei = zext i16 %i.ef to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.el = shl nuw nsw i64 %i.ei, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr nonnull readonly align 8 %i.ek, i64 %i.el, i1 false)
  br label %.critedge.thread.thread.sink.split

.critedge.thread.thread.sink.split:               ; preds = %bb.ac, %bb.ab, %bb.h
  %.sink = phi i16 [ 0, %bb.h ], [ %i.ef, %bb.ab ], [ %i.ef, %bb.ac ]
  store i16 %.sink, ptr %4, align 8, !tbaa !46
  br label %.critedge.thread.thread

.critedge.thread.thread:                          ; preds = %_sp_copy.exit72, %.critedge.thread.thread.sink.split, %bb.a, %.loopexit, %sp_mod.exit, %.critedge.thread
  %.4100 = phi i32 [ -98, %bb.a ], [ %.0.i93, %.critedge.thread ], [ -98, %.loopexit ], [ %i.af, %sp_mod.exit ], [ 0, %.critedge.thread.thread.sink.split ], [ %.3.i89, %_sp_copy.exit72 ]
  ret i32 %.4100
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define range(i32 -98, 1) i32 @sp_exptmod(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef captures(address) %3) local_unnamed_addr #13 {
bb.a:
  %i.a = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.b = insertelement <4 x ptr> %i.a, ptr %1, i64 1
  %i.c = insertelement <4 x ptr> %i.b, ptr %2, i64 2
  %i.d = insertelement <4 x ptr> %i.c, ptr %3, i64 3
  %i.e = icmp eq <4 x ptr> %i.d, splat (ptr null)
  %i.f = bitcast <4 x i1> %i.e to i4
  %i.g = icmp eq i4 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i16, ptr %1, align 8, !tbaa !40
  %i.i = zext i16 %i.h to i32
  %i.j = tail call i32 @sp_exptmod_ex(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.i, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ %i.j, %bb.b ], [ -98, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -98, 1) i32 @sp_exptmod_nct(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [34 x ptr], align 16              ; 20 uses
  %i.b = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.c = insertelement <4 x ptr> %i.b, ptr %1, i64 1
  %i.d = insertelement <4 x ptr> %i.c, ptr %2, i64 2
  %i.e = insertelement <4 x ptr> %i.d, ptr %3, i64 3
  %i.f = icmp eq <4 x ptr> %i.e, splat (ptr null)
  %i.g = bitcast <4 x i1> %i.f to i4
  %i.h = icmp eq i4 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.bn

bb.b:                                             ; preds = %bb.a
  %i.i = load i16, ptr %2, align 8, !tbaa !40     ; 4 uses
  switch i16 %i.i, label %bb.e [
    i16 0, label %bb.bn
    i16 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !36
  store i16 0, ptr %3, align 8, !tbaa !34
  br label %bb.bn

bb.e:                                             ; preds = %bb.b, %bb.c
  %i.n = load i16, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.o = zext i16 %i.n to i32
  %i.p = icmp eq i16 %i.n, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.q, align 8, !tbaa !36
  store i16 1, ptr %3, align 8, !tbaa !34
  br label %bb.bn

bb.g:                                             ; preds = %bb.e
  %i.r = load i16, ptr %0, align 8, !tbaa !40
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !36
  store i16 0, ptr %3, align 8, !tbaa !34
  br label %bb.bn

bb.i:                                             ; preds = %bb.g
  %i.u = zext i16 %i.i to i32
  %i.v = shl nuw nsw i32 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !39
end_hunk_0
