Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cbs_av1?download=true
inline.NumInlined: 154
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 52
begin_hunk_0_@cbs_av1_read_render_size:bb.a
  %i.p = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 16, ptr noundef nonnull @.str.148, ptr noundef nonnull %i.c) #9 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %.thread37, label %bb.f

.thread37:                                        ; preds = %bb.e
  %i.r = load i32, ptr %i.c, align 4, !tbaa !65
  %i.s = trunc i32 %i.r to i16                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i16 %i.s, ptr %i.t, align 4, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %.pre = load i16, ptr %i.o, align 2, !tbaa !260
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 158
  %i.v = load i16, ptr %i.u, align 2, !tbaa !201  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 166
  store i16 %i.v, ptr %i.w, align 2, !tbaa !260
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.y = load i16, ptr %i.x, align 4, !tbaa !203  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i16 %i.y, ptr %i.z, align 4, !tbaa !261
  br label %bb.h

bb.h:                                             ; preds = %.thread37, %bb.g
  %i.aa = phi i16 [ %i.s, %.thread37 ], [ %i.y, %bb.g ]
  %i.ab = phi i16 [ %.pre, %.thread37 ], [ %i.v, %bb.g ]
  %i.ac = zext i16 %i.ab to i32
  %i.ad = add nuw nsw i32 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !235
  %i.af = zext i16 %i.aa to i32
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !236
  br label %bb.i

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.d, %.critedge, %bb.h
  %.3 = phi i32 [ 0, %bb.h ], [ %i.p, %bb.f ], [ %i.k, %bb.d ], [ %i.f, %.critedge ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @cbs_av1_read_set_frame_refs(ptr nofree readonly captures(none) %.16.val, ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [7 x i8], align 4                 ; 13 uses
  %i.b = alloca [8 x i8], align 8                 ; 20 uses
  %i.c = alloca [8 x i16], align 16               ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.f, i8 -1, i64 6, i1 false), !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.h = load i8, ptr %i.g, align 4, !tbaa !218   ; 2 uses
  store i8 %i.h, ptr %i.a, align 4, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 189
  %i.j = load i8, ptr %i.i, align 1, !tbaa !219   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.j, ptr %i.k, align 1, !tbaa !26
  store i64 0, ptr %i.b, align 8
  %i.l = zext i8 %i.h to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.l
  store i8 1, ptr %i.m, align 1, !tbaa !26
  %i.n = zext i8 %i.j to i64                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.n
  store i8 1, ptr %i.o, align 1, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 571
  %i.q = load i8, ptr %i.p, align 1, !tbaa !115
  %i.r = zext nneg i8 %i.q to i32
  %i.s = shl nuw i32 1, %i.r                      ; 34 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 564
  %i.u = load i8, ptr %i.t, align 4, !tbaa !108
  %.not.i = icmp eq i8 %i.u, 0
  br i1 %.not.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.v = trunc i32 %i.s to i16                    ; 5 uses
  %i.w = insertelement <4 x i16> poison, i16 %i.v, i64 0
  %i.x = shufflevector <4 x i16> %i.w, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.x, ptr %i.c, align 16, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i16 %i.v, ptr %i.y, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i16 %i.v, ptr %i.z, align 2, !tbaa !60
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i16 %i.v, ptr %i.aa, align 4, !tbaa !60
  br label %.split7.us

.split:                                           ; preds = %bb.a
  %i.ab = add nuw i32 %i.s, 65535                 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.16.val, i64 72
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !211 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.16.val, i64 228
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !205
  %i.ag = sub i32 %i.af, %i.ad                    ; 2 uses
  %i.ah = and i32 %i.ag, %i.ab
  %i.ai = and i32 %i.ag, %i.s
  %i.aj = sub i32 %i.ah, %i.ai
  %i.ak = add i32 %i.aj, %i.s                     ; 2 uses
  %i.al = trunc i32 %i.ak to i16
  store i16 %i.al, ptr %i.c, align 16, !tbaa !60
  %i.am = getelementptr inbounds nuw i8, ptr %.16.val, i64 512
  %i.an = load i32, ptr %i.am, align 8, !tbaa !205
  %i.ao = sub i32 %i.an, %i.ad                    ; 2 uses
  %i.ap = and i32 %i.ao, %i.ab
  %i.aq = and i32 %i.ao, %i.s
  %i.ar = sub i32 %i.ap, %i.aq
  %i.as = add i32 %i.ar, %i.s                     ; 2 uses
  %i.at = trunc i32 %i.as to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %i.at, ptr %i.au, align 2, !tbaa !60
  %i.av = getelementptr inbounds nuw i8, ptr %.16.val, i64 796
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !205
  %i.ax = sub i32 %i.aw, %i.ad                    ; 2 uses
  %i.ay = and i32 %i.ax, %i.ab
  %i.az = and i32 %i.ax, %i.s
  %i.ba = sub i32 %i.ay, %i.az
  %i.bb = add i32 %i.ba, %i.s                     ; 2 uses
  %i.bc = trunc i32 %i.bb to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i16 %i.bc, ptr %i.bd, align 4, !tbaa !60
  %i.be = getelementptr inbounds nuw i8, ptr %.16.val, i64 1080
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !205
  %i.bg = sub i32 %i.bf, %i.ad                    ; 2 uses
  %i.bh = and i32 %i.bg, %i.ab
  %i.bi = and i32 %i.bg, %i.s
  %i.bj = sub i32 %i.bh, %i.bi
  %i.bk = add i32 %i.bj, %i.s                     ; 2 uses
  %i.bl = trunc i32 %i.bk to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !60
  %i.bn = getelementptr inbounds nuw i8, ptr %.16.val, i64 1364
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !205
  %i.bp = sub i32 %i.bo, %i.ad                    ; 2 uses
  %i.bq = and i32 %i.bp, %i.ab
  %i.br = and i32 %i.bp, %i.s
  %i.bs = sub i32 %i.bq, %i.br
  %i.bt = add i32 %i.bs, %i.s                     ; 2 uses
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i16 %i.bu, ptr %i.bv, align 8, !tbaa !60
  %i.bw = getelementptr inbounds nuw i8, ptr %.16.val, i64 1648
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !205
  %i.by = sub i32 %i.bx, %i.ad                    ; 2 uses
  %i.bz = and i32 %i.by, %i.ab
  %i.ca = and i32 %i.by, %i.s
  %i.cb = sub i32 %i.bz, %i.ca
  %i.cc = add i32 %i.cb, %i.s                     ; 2 uses
  %i.cd = trunc i32 %i.cc to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !60
  %i.cf = getelementptr inbounds nuw i8, ptr %.16.val, i64 1932
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !205
  %i.ch = sub i32 %i.cg, %i.ad                    ; 2 uses
  %i.ci = and i32 %i.ch, %i.ab
  %i.cj = and i32 %i.ch, %i.s
  %i.ck = sub i32 %i.ci, %i.cj
  %i.cl = add i32 %i.ck, %i.s                     ; 2 uses
  %i.cm = trunc i32 %i.cl to i16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i16 %i.cm, ptr %i.cn, align 4, !tbaa !60
  %i.co = getelementptr inbounds nuw i8, ptr %.16.val, i64 2216
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !205
  %i.cq = sub i32 %i.cp, %i.ad                    ; 2 uses
  %i.cr = and i32 %i.cq, %i.ab
  %i.cs = and i32 %i.cq, %i.s
  %i.ct = sub i32 %i.cr, %i.cs
  %i.cu = add i32 %i.ct, %i.s                     ; 2 uses
  %i.cv = trunc i32 %i.cu to i16
  br label %.split7.us

.split7.us:                                       ; preds = %.split, %.split.us
  %.sink = phi i16 [ %i.cv, %.split ], [ %i.v, %.split.us ]
  %i.cw = phi i32 [ %i.cu, %.split ], [ %i.s, %.split.us ]
  %i.cx = phi i32 [ %i.cl, %.split ], [ %i.s, %.split.us ]
  %i.cy = phi i32 [ %i.cc, %.split ], [ %i.s, %.split.us ]
  %i.cz = phi i32 [ %i.bt, %.split ], [ %i.s, %.split.us ]
  %i.da = phi i32 [ %i.bk, %.split ], [ %i.s, %.split.us ]
  %i.db = phi i32 [ %i.bb, %.split ], [ %i.s, %.split.us ]
  %i.dc = phi i32 [ %i.as, %.split ], [ %i.s, %.split.us ]
  %i.dd = phi i32 [ %i.ak, %.split ], [ %i.s, %.split.us ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  store i16 %.sink, ptr %i.de, align 2, !tbaa !60
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.l
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !60
  %i.dh = sext i16 %i.dg to i32
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.n
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !60 ; 2 uses
  %sext = shl i32 %i.dd, 16
  %i.dk = ashr exact i32 %sext, 16                ; 11 uses
  %i.dl = load i8, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not130 = icmp ne i8 %i.dl, 0
  %.not131 = icmp sgt i32 %i.s, %i.dk             ; 4 uses
  %or.cond = select i1 %.not130, i1 true, i1 %.not131 ; 3 uses
  %.1116 = select i1 %or.cond, i32 %i.dh, i32 %i.dk
  %.1101 = sext i1 %or.cond to i32
  %sext73 = shl i32 %i.dc, 16
  %i.dm = ashr exact i32 %sext73, 16              ; 11 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !26
  %.not130.1 = icmp ne i8 %i.do, 0
  %.not131.1 = icmp sgt i32 %i.s, %i.dm           ; 4 uses
  %or.cond.1 = select i1 %.not130.1, i1 true, i1 %.not131.1 ; 2 uses
  %.not132.1 = icmp sle i32 %i.dk, %i.dm
  %or.cond133.1.not = select i1 %or.cond, i1 true, i1 %.not132.1 ; 2 uses
  %i.dp = xor i1 %or.cond133.1.not, true
  %i.dq = select i1 %or.cond.1, i1 true, i1 %i.dp
  %.1116.1 = select i1 %i.dq, i32 %.1116, i32 %i.dm ; 3 uses
  %i.dr = xor i1 %or.cond133.1.not, true
  %i.ds = select i1 %or.cond.1, i1 true, i1 %i.dr
  %.1101.1 = select i1 %i.ds, i32 %.1101, i32 1   ; 3 uses
  %sext74 = shl i32 %i.db, 16
  %i.dt = ashr exact i32 %sext74, 16              ; 11 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 4 uses
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !26
  %.not130.2 = icmp ne i8 %i.dv, 0
  %.not131.2 = icmp sgt i32 %i.s, %i.dt           ; 4 uses
  %or.cond.2 = select i1 %.not130.2, i1 true, i1 %.not131.2
  br i1 %or.cond.2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split7.us
  %i.dw = icmp sgt i32 %.1101.1, -1
  %.not132.2 = icmp sgt i32 %.1116.1, %i.dt
  %or.cond133.2 = select i1 %i.dw, i1 %.not132.2, i1 false ; 2 uses
  %spec.select.2 = select i1 %or.cond133.2, i32 %.1116.1, i32 %i.dt
  %spec.select141.2 = select i1 %or.cond133.2, i32 %.1101.1, i32 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split7.us
  %.1116.2 = phi i32 [ %.1116.1, %.split7.us ], [ %spec.select.2, %bb.b ] ; 3 uses
  %.1101.2 = phi i32 [ %.1101.1, %.split7.us ], [ %spec.select141.2, %bb.b ] ; 3 uses
  %sext75 = shl i32 %i.da, 16
  %i.dx = ashr exact i32 %sext75, 16              ; 11 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 4 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !26
  %.not130.3 = icmp ne i8 %i.dz, 0
  %.not131.3 = icmp sgt i32 %i.s, %i.dx           ; 4 uses
  %or.cond.3 = select i1 %.not130.3, i1 true, i1 %.not131.3
  br i1 %or.cond.3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ea = icmp sgt i32 %.1101.2, -1
  %.not132.3 = icmp sgt i32 %.1116.2, %i.dx
  %or.cond133.3 = select i1 %i.ea, i1 %.not132.3, i1 false ; 2 uses
  %spec.select.3 = select i1 %or.cond133.3, i32 %.1116.2, i32 %i.dx
  %spec.select141.3 = select i1 %or.cond133.3, i32 %.1101.2, i32 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1116.3 = phi i32 [ %.1116.2, %bb.c ], [ %spec.select.3, %bb.d ] ; 3 uses
  %.1101.3 = phi i32 [ %.1101.2, %bb.c ], [ %spec.select141.3, %bb.d ] ; 3 uses
  %sext76 = shl i32 %i.cz, 16
  %i.eb = ashr exact i32 %sext76, 16              ; 11 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  %i.ed = load i8, ptr %i.ec, align 4, !tbaa !26
  %.not130.4 = icmp ne i8 %i.ed, 0
  %.not131.4 = icmp sgt i32 %i.s, %i.eb           ; 4 uses
  %or.cond.4 = select i1 %.not130.4, i1 true, i1 %.not131.4
  br i1 %or.cond.4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ee = icmp sgt i32 %.1101.3, -1
  %.not132.4 = icmp sgt i32 %.1116.3, %i.eb
  %or.cond133.4 = select i1 %i.ee, i1 %.not132.4, i1 false ; 2 uses
  %spec.select.4 = select i1 %or.cond133.4, i32 %.1116.3, i32 %i.eb
  %spec.select141.4 = select i1 %or.cond133.4, i32 %.1101.3, i32 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1116.4 = phi i32 [ %.1116.3, %bb.e ], [ %spec.select.4, %bb.f ] ; 3 uses
  %.1101.4 = phi i32 [ %.1101.3, %bb.e ], [ %spec.select141.4, %bb.f ] ; 3 uses
  %sext77 = shl i32 %i.cy, 16
  %i.ef = ashr exact i32 %sext77, 16              ; 11 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 4 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !26
  %.not130.5 = icmp ne i8 %i.eh, 0
  %.not131.5 = icmp sgt i32 %i.s, %i.ef           ; 4 uses
  %or.cond.5 = select i1 %.not130.5, i1 true, i1 %.not131.5
  br i1 %or.cond.5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ei = icmp sgt i32 %.1101.4, -1
  %.not132.5 = icmp sgt i32 %.1116.4, %i.ef
  %or.cond133.5 = select i1 %i.ei, i1 %.not132.5, i1 false ; 2 uses
  %spec.select.5 = select i1 %or.cond133.5, i32 %.1116.4, i32 %i.ef
  %spec.select141.5 = select i1 %or.cond133.5, i32 %.1101.4, i32 5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1116.5 = phi i32 [ %.1116.4, %bb.g ], [ %spec.select.5, %bb.h ] ; 3 uses
  %.1101.5 = phi i32 [ %.1101.4, %bb.g ], [ %spec.select141.5, %bb.h ] ; 3 uses
  %sext78 = shl i32 %i.cx, 16
  %i.ej = ashr exact i32 %sext78, 16              ; 11 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 4 uses
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !26
  %.not130.6 = icmp ne i8 %i.el, 0
  %.not131.6 = icmp sgt i32 %i.s, %i.ej           ; 4 uses
  %or.cond.6 = select i1 %.not130.6, i1 true, i1 %.not131.6
  br i1 %or.cond.6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.em = icmp sgt i32 %.1101.5, -1
  %.not132.6 = icmp sgt i32 %.1116.5, %i.ej
  %or.cond133.6 = select i1 %i.em, i1 %.not132.6, i1 false ; 2 uses
  %spec.select.6 = select i1 %or.cond133.6, i32 %.1116.5, i32 %i.ej
  %spec.select141.6 = select i1 %or.cond133.6, i32 %.1101.5, i32 6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1116.6 = phi i32 [ %.1116.5, %bb.i ], [ %spec.select.6, %bb.j ] ; 4 uses
  %.1101.6 = phi i32 [ %.1101.5, %bb.i ], [ %spec.select141.6, %bb.j ] ; 4 uses
  %sext79 = shl i32 %i.cw, 16
  %i.en = ashr exact i32 %sext79, 16              ; 9 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 7 ; 4 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !26
  %.not130.7 = icmp ne i8 %i.ep, 0
  %.not131.7 = icmp sgt i32 %i.s, %i.en           ; 4 uses
  %or.cond.7 = select i1 %.not130.7, i1 true, i1 %.not131.7
  br i1 %or.cond.7, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.k
  %i.eq = icmp sgt i32 %.1101.6, -1
  %.not132.7 = icmp sgt i32 %.1116.6, %i.en
  %or.cond133.7 = select i1 %i.eq, i1 %.not132.7, i1 false ; 2 uses
  %spec.select.7 = select i1 %or.cond133.7, i32 %.1116.6, i32 %i.en
  %spec.select = select i1 %or.cond133.7, i32 %.1101.6, i32 7
  %i.er = sext i16 %i.dj to i32
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.es = sext i16 %i.dj to i32                   ; 2 uses
  %i.et = icmp sgt i32 %.1101.6, -1
  br i1 %i.et, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread, %bb.l
  %i.eu = phi i32 [ %i.er, %.thread ], [ %i.es, %bb.l ]
  %.1101.784 = phi i32 [ %spec.select, %.thread ], [ %.1101.6, %bb.l ] ; 2 uses
  %.1116.783 = phi i32 [ %spec.select.7, %.thread ], [ %.1116.6, %bb.l ]
  %i.ev = trunc nuw nsw i32 %.1101.784 to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.ev, ptr %i.ew, align 2, !tbaa !26
  %i.ex = zext nneg i32 %.1101.784 to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ex
  store i8 1, ptr %i.ey, align 1, !tbaa !26
  %.pre = load i8, ptr %i.b, align 8, !tbaa !26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ez = phi i32 [ %i.eu, %bb.m ], [ %i.es, %bb.l ]
  %.1116.782 = phi i32 [ %.1116.783, %bb.m ], [ %.1116.6, %bb.l ]
  %i.fa = phi i8 [ %.pre, %bb.m ], [ %i.dl, %bb.l ] ; 2 uses
  %.not128 = icmp ne i8 %i.fa, 0
  %or.cond134 = select i1 %.not128, i1 true, i1 %.not131 ; 4 uses
  %spec.select106 = select i1 %or.cond134, i32 %i.ez, i32 %i.dk
  %spec.select107 = sext i1 %or.cond134 to i32
  %i.fb = load i8, ptr %i.dn, align 1, !tbaa !26
  %.not128.1 = icmp ne i8 %i.fb, 0
  %or.cond134.1 = select i1 %.not128.1, i1 true, i1 %.not131.1 ; 3 uses
  %i.fc = icmp sgt i32 %i.dk, %i.dm
  %or.cond135.1 = select i1 %or.cond134, i1 true, i1 %i.fc ; 2 uses
  %i.fd = xor i1 %or.cond135.1, true
  %i.fe = select i1 %or.cond134.1, i1 true, i1 %i.fd
  %.1110.1 = select i1 %i.fe, i32 %spec.select106, i32 %i.dm ; 3 uses
  %i.ff = xor i1 %or.cond135.1, true
  %i.fg = select i1 %or.cond134.1, i1 true, i1 %i.ff
  %.3103.1 = select i1 %i.fg, i32 %spec.select107, i32 1 ; 2 uses
  %i.fh = load i8, ptr %i.du, align 2, !tbaa !26
  %.not128.2 = icmp ne i8 %i.fh, 0
  %or.cond134.2 = select i1 %.not128.2, i1 true, i1 %.not131.2
  br i1 %or.cond134.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fi = select i1 %or.cond134.1, i1 %or.cond134, i1 false
  %i.fj = icmp sgt i32 %.1110.1, %i.dt
  %or.cond135.2 = select i1 %i.fi, i1 true, i1 %i.fj ; 2 uses
  %spec.select142.2 = select i1 %or.cond135.2, i32 %i.dt, i32 %.1110.1
  %spec.select143.2 = select i1 %or.cond135.2, i32 2, i32 %.3103.1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1110.2 = phi i32 [ %.1110.1, %bb.n ], [ %spec.select142.2, %bb.o ] ; 3 uses
  %.3103.2 = phi i32 [ %.3103.1, %bb.n ], [ %spec.select143.2, %bb.o ] ; 3 uses
  %i.fk = load i8, ptr %i.dy, align 1, !tbaa !26
  %.not128.3 = icmp ne i8 %i.fk, 0
  %or.cond134.3 = select i1 %.not128.3, i1 true, i1 %.not131.3
  br i1 %or.cond134.3, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fl = icmp slt i32 %.3103.2, 0
  %i.fm = icmp sgt i32 %.1110.2, %i.dx
  %or.cond135.3 = select i1 %i.fl, i1 true, i1 %i.fm ; 2 uses
  %spec.select142.3 = select i1 %or.cond135.3, i32 %i.dx, i32 %.1110.2
  %spec.select143.3 = select i1 %or.cond135.3, i32 3, i32 %.3103.2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1110.3 = phi i32 [ %.1110.2, %bb.p ], [ %spec.select142.3, %bb.q ] ; 3 uses
  %.3103.3 = phi i32 [ %.3103.2, %bb.p ], [ %spec.select143.3, %bb.q ] ; 3 uses
  %i.fn = load i8, ptr %i.ec, align 4, !tbaa !26
  %.not128.4 = icmp ne i8 %i.fn, 0
  %or.cond134.4 = select i1 %.not128.4, i1 true, i1 %.not131.4
  br i1 %or.cond134.4, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fo = icmp slt i32 %.3103.3, 0
  %i.fp = icmp sgt i32 %.1110.3, %i.eb
  %or.cond135.4 = select i1 %i.fo, i1 true, i1 %i.fp ; 2 uses
  %spec.select142.4 = select i1 %or.cond135.4, i32 %i.eb, i32 %.1110.3
  %spec.select143.4 = select i1 %or.cond135.4, i32 4, i32 %.3103.3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1110.4 = phi i32 [ %.1110.3, %bb.r ], [ %spec.select142.4, %bb.s ] ; 3 uses
  %.3103.4 = phi i32 [ %.3103.3, %bb.r ], [ %spec.select143.4, %bb.s ] ; 3 uses
  %i.fq = load i8, ptr %i.eg, align 1, !tbaa !26
  %.not128.5 = icmp ne i8 %i.fq, 0
  %or.cond134.5 = select i1 %.not128.5, i1 true, i1 %.not131.5
  br i1 %or.cond134.5, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fr = icmp slt i32 %.3103.4, 0
  %i.fs = icmp sgt i32 %.1110.4, %i.ef
  %or.cond135.5 = select i1 %i.fr, i1 true, i1 %i.fs ; 2 uses
  %spec.select142.5 = select i1 %or.cond135.5, i32 %i.ef, i32 %.1110.4
  %spec.select143.5 = select i1 %or.cond135.5, i32 5, i32 %.3103.4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1110.5 = phi i32 [ %.1110.4, %bb.t ], [ %spec.select142.5, %bb.u ] ; 3 uses
  %.3103.5 = phi i32 [ %.3103.4, %bb.t ], [ %spec.select143.5, %bb.u ] ; 3 uses
  %i.ft = load i8, ptr %i.ek, align 2, !tbaa !26
  %.not128.6 = icmp ne i8 %i.ft, 0
  %or.cond134.6 = select i1 %.not128.6, i1 true, i1 %.not131.6
  br i1 %or.cond134.6, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fu = icmp slt i32 %.3103.5, 0
  %i.fv = icmp sgt i32 %.1110.5, %i.ej
  %or.cond135.6 = select i1 %i.fu, i1 true, i1 %i.fv ; 2 uses
  %spec.select142.6 = select i1 %or.cond135.6, i32 %i.ej, i32 %.1110.5
  %spec.select143.6 = select i1 %or.cond135.6, i32 6, i32 %.3103.5
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1110.6 = phi i32 [ %.1110.5, %bb.v ], [ %spec.select142.6, %bb.w ] ; 4 uses
  %.3103.6 = phi i32 [ %.3103.5, %bb.v ], [ %spec.select143.6, %bb.w ] ; 4 uses
  %i.fw = load i8, ptr %i.eo, align 1, !tbaa !26
  %.not128.7 = icmp ne i8 %i.fw, 0
  %or.cond134.7 = select i1 %.not128.7, i1 true, i1 %.not131.7
  br i1 %or.cond134.7, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fx = icmp slt i32 %.3103.6, 0
  %i.fy = icmp sgt i32 %.1110.6, %i.en
  %or.cond135.7 = select i1 %i.fx, i1 true, i1 %i.fy ; 2 uses
  %spec.select108 = select i1 %or.cond135.7, i32 7, i32 %.3103.6
  %spec.select109 = select i1 %or.cond135.7, i32 %i.en, i32 %.1110.6
  br label %.thread87

bb.z:                                             ; preds = %bb.x
  %i.fz = icmp sgt i32 %.3103.6, -1
  br i1 %i.fz, label %.thread87, label %bb.aa

.thread87:                                        ; preds = %bb.y, %bb.z
  %.3103.792 = phi i32 [ %.3103.6, %bb.z ], [ %spec.select108, %bb.y ] ; 2 uses
  %.1110.791 = phi i32 [ %.1110.6, %bb.z ], [ %spec.select109, %bb.y ]
  %i.ga = trunc nuw nsw i32 %.3103.792 to i8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.ga, ptr %i.gb, align 4, !tbaa !26
  %i.gc = zext nneg i32 %.3103.792 to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gc
  store i8 1, ptr %i.gd, align 1, !tbaa !26
  %.pre44 = load i8, ptr %i.b, align 8, !tbaa !26
  br label %bb.aa

bb.aa:                                            ; preds = %.thread87, %bb.z
  %.1110.790 = phi i32 [ %.1110.791, %.thread87 ], [ %.1110.6, %bb.z ]
  %i.ge = phi i8 [ %.pre44, %.thread87 ], [ %i.fa, %bb.z ]
  %.not126 = icmp ne i8 %i.ge, 0
  %or.cond136 = select i1 %.not126, i1 true, i1 %.not131 ; 4 uses
  %spec.select110 = select i1 %or.cond136, i32 %.1110.790, i32 %i.dk
  %spec.select111 = sext i1 %or.cond136 to i32
  %i.gf = load i8, ptr %i.dn, align 1, !tbaa !26
  %.not126.1 = icmp ne i8 %i.gf, 0
  %or.cond136.1 = select i1 %.not126.1, i1 true, i1 %.not131.1 ; 3 uses
  %i.gg = icmp sgt i32 %i.dk, %i.dm
  %or.cond137.1 = select i1 %or.cond136, i1 true, i1 %i.gg ; 2 uses
  %i.gh = xor i1 %or.cond137.1, true
  %i.gi = select i1 %or.cond136.1, i1 true, i1 %i.gh
  %.3112.1 = select i1 %i.gi, i32 %spec.select110, i32 %i.dm ; 3 uses
  %i.gj = xor i1 %or.cond137.1, true
  %i.gk = select i1 %or.cond136.1, i1 true, i1 %i.gj
  %.5105.1 = select i1 %i.gk, i32 %spec.select111, i32 1 ; 2 uses
  %i.gl = load i8, ptr %i.du, align 2, !tbaa !26
  %.not126.2 = icmp ne i8 %i.gl, 0
  %or.cond136.2 = select i1 %.not126.2, i1 true, i1 %.not131.2
  br i1 %or.cond136.2, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gm = select i1 %or.cond136.1, i1 %or.cond136, i1 false
  %i.gn = icmp sgt i32 %.3112.1, %i.dt
  %or.cond137.2 = select i1 %i.gm, i1 true, i1 %i.gn ; 2 uses
  %spec.select144.2 = select i1 %or.cond137.2, i32 %i.dt, i32 %.3112.1
  %spec.select145.2 = select i1 %or.cond137.2, i32 2, i32 %.5105.1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.3112.2 = phi i32 [ %.3112.1, %bb.aa ], [ %spec.select144.2, %bb.ab ] ; 3 uses
  %.5105.2 = phi i32 [ %.5105.1, %bb.aa ], [ %spec.select145.2, %bb.ab ] ; 3 uses
  %i.go = load i8, ptr %i.dy, align 1, !tbaa !26
  %.not126.3 = icmp ne i8 %i.go, 0
  %or.cond136.3 = select i1 %.not126.3, i1 true, i1 %.not131.3
  br i1 %or.cond136.3, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gp = icmp slt i32 %.5105.2, 0
  %i.gq = icmp sgt i32 %.3112.2, %i.dx
  %or.cond137.3 = select i1 %i.gp, i1 true, i1 %i.gq ; 2 uses
  %spec.select144.3 = select i1 %or.cond137.3, i32 %i.dx, i32 %.3112.2
  %spec.select145.3 = select i1 %or.cond137.3, i32 3, i32 %.5105.2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.3112.3 = phi i32 [ %.3112.2, %bb.ac ], [ %spec.select144.3, %bb.ad ] ; 3 uses
  %.5105.3 = phi i32 [ %.5105.2, %bb.ac ], [ %spec.select145.3, %bb.ad ] ; 3 uses
  %i.gr = load i8, ptr %i.ec, align 4, !tbaa !26
  %.not126.4 = icmp ne i8 %i.gr, 0
  %or.cond136.4 = select i1 %.not126.4, i1 true, i1 %.not131.4
  br i1 %or.cond136.4, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gs = icmp slt i32 %.5105.3, 0
  %i.gt = icmp sgt i32 %.3112.3, %i.eb
  %or.cond137.4 = select i1 %i.gs, i1 true, i1 %i.gt ; 2 uses
  %spec.select144.4 = select i1 %or.cond137.4, i32 %i.eb, i32 %.3112.3
  %spec.select145.4 = select i1 %or.cond137.4, i32 4, i32 %.5105.3
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.3112.4 = phi i32 [ %.3112.3, %bb.ae ], [ %spec.select144.4, %bb.af ] ; 3 uses
  %.5105.4 = phi i32 [ %.5105.3, %bb.ae ], [ %spec.select145.4, %bb.af ] ; 3 uses
  %i.gu = load i8, ptr %i.eg, align 1, !tbaa !26
  %.not126.5 = icmp ne i8 %i.gu, 0
  %or.cond136.5 = select i1 %.not126.5, i1 true, i1 %.not131.5
  br i1 %or.cond136.5, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gv = icmp slt i32 %.5105.4, 0
  %i.gw = icmp sgt i32 %.3112.4, %i.ef
  %or.cond137.5 = select i1 %i.gv, i1 true, i1 %i.gw ; 2 uses
  %spec.select144.5 = select i1 %or.cond137.5, i32 %i.ef, i32 %.3112.4
  %spec.select145.5 = select i1 %or.cond137.5, i32 5, i32 %.5105.4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.3112.5 = phi i32 [ %.3112.4, %bb.ag ], [ %spec.select144.5, %bb.ah ] ; 3 uses
  %.5105.5 = phi i32 [ %.5105.4, %bb.ag ], [ %spec.select145.5, %bb.ah ] ; 3 uses
  %i.gx = load i8, ptr %i.ek, align 2, !tbaa !26
  %.not126.6 = icmp ne i8 %i.gx, 0
  %or.cond136.6 = select i1 %.not126.6, i1 true, i1 %.not131.6
  br i1 %or.cond136.6, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gy = icmp slt i32 %.5105.5, 0
  %i.gz = icmp sgt i32 %.3112.5, %i.ej
  %or.cond137.6 = select i1 %i.gy, i1 true, i1 %i.gz ; 2 uses
  %spec.select144.6 = select i1 %or.cond137.6, i32 %i.ej, i32 %.3112.5
  %spec.select145.6 = select i1 %or.cond137.6, i32 6, i32 %.5105.5
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.3112.6 = phi i32 [ %.3112.5, %bb.ai ], [ %spec.select144.6, %bb.aj ]
  %.5105.6 = phi i32 [ %.5105.5, %bb.ai ], [ %spec.select145.6, %bb.aj ] ; 4 uses
  %i.ha = load i8, ptr %i.eo, align 1, !tbaa !26
  %.not126.7 = icmp ne i8 %i.ha, 0
  %or.cond136.7 = select i1 %.not126.7, i1 true, i1 %.not131.7
  br i1 %or.cond136.7, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hb = icmp slt i32 %.5105.6, 0
  %i.hc = icmp sgt i32 %.3112.6, %i.en
  %or.cond137.7 = select i1 %i.hb, i1 true, i1 %i.hc
  %spec.select112 = select i1 %or.cond137.7, i32 7, i32 %.5105.6
  br label %.thread95

bb.am:                                            ; preds = %bb.ak
  %i.hd = icmp sgt i32 %.5105.6, -1
  br i1 %i.hd, label %.thread95, label %.preheader

.thread95:                                        ; preds = %bb.al, %bb.am
  %.5105.797 = phi i32 [ %.5105.6, %bb.am ], [ %spec.select112, %bb.al ] ; 2 uses
  %i.he = trunc nuw nsw i32 %.5105.797 to i8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !26
  %i.hg = zext nneg i32 %.5105.797 to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hg
  store i8 1, ptr %i.hh, align 1, !tbaa !26
  br label %.preheader

.preheader:                                       ; preds = %.thread95, %bb.am
  %.not125.1 = icmp sgt i32 %i.dk, %i.dm
  br label %bb.an

bb.an:                                            ; preds = %.preheader, %bb.av
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.av ], [ 0, %.preheader ] ; 2 uses
  %.211720 = phi i32 [ %.5120, %bb.av ], [ %.1116.782, %.preheader ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr @cbs_av1_write_set_frame_refs.ref_frame_list, i64 %indvars.iv
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !26
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr i8, ptr %i.a, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 -1     ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !26
  %i.ho = icmp slt i8 %i.hn, 0
  br i1 %i.ho, label %.preheader2.preheader, label %bb.av

.preheader2.preheader:                            ; preds = %bb.an
  %i.hp = load i8, ptr %i.b, align 8, !tbaa !26
  %.not = icmp eq i8 %i.hp, 0
  %or.cond138 = select i1 %.not, i1 %.not131, i1 false ; 4 uses
  %spec.select113 = select i1 %or.cond138, i32 %i.dk, i32 %.211720
  %not.or.cond138 = xor i1 %or.cond138, true
  %spec.select114 = sext i1 %not.or.cond138 to i32
  %i.hq = load i8, ptr %i.dn, align 1, !tbaa !26
  %.not.1 = icmp eq i8 %i.hq, 0
  %or.cond138.1 = select i1 %.not.1, i1 %.not131.1, i1 false ; 3 uses
  %or.cond139.1 = select i1 %or.cond138, i1 %.not125.1, i1 false ; 2 uses
  %i.hr = xor i1 %or.cond139.1, true
  %i.hs = select i1 %or.cond138.1, i1 %i.hr, i1 false
  %.4119.1 = select i1 %i.hs, i32 %i.dm, i32 %spec.select113 ; 3 uses
  %i.ht = xor i1 %or.cond139.1, true
  %i.hu = select i1 %or.cond138.1, i1 %i.ht, i1 false
  %.7107.1 = select i1 %i.hu, i32 1, i32 %spec.select114 ; 2 uses
  %i.hv = load i8, ptr %i.du, align 2, !tbaa !26
  %.not.2 = icmp eq i8 %i.hv, 0
  %or.cond138.2 = select i1 %.not.2, i1 %.not131.2, i1 false
  br i1 %or.cond138.2, label %bb.ao, label %.preheader2.3

bb.ao:                                            ; preds = %.preheader2.preheader
  %i.hw = select i1 %or.cond138.1, i1 true, i1 %or.cond138
  %.not125.2 = icmp sgt i32 %.4119.1, %i.dt
  %or.cond139.2 = select i1 %i.hw, i1 %.not125.2, i1 false ; 2 uses
  %spec.select146.2 = select i1 %or.cond139.2, i32 %.4119.1, i32 %i.dt
  %spec.select147.2 = select i1 %or.cond139.2, i32 %.7107.1, i32 2
  br label %.preheader2.3

.preheader2.3:                                    ; preds = %bb.ao, %.preheader2.preheader
  %.4119.2 = phi i32 [ %.4119.1, %.preheader2.preheader ], [ %spec.select146.2, %bb.ao ] ; 3 uses
  %.7107.2 = phi i32 [ %.7107.1, %.preheader2.preheader ], [ %spec.select147.2, %bb.ao ] ; 3 uses
  %i.hx = load i8, ptr %i.dy, align 1, !tbaa !26
  %.not.3 = icmp eq i8 %i.hx, 0
  %or.cond138.3 = select i1 %.not.3, i1 %.not131.3, i1 false
  br i1 %or.cond138.3, label %bb.ap, label %.preheader2.4

bb.ap:                                            ; preds = %.preheader2.3
  %i.hy = icmp sgt i32 %.7107.2, -1
  %.not125.3 = icmp sgt i32 %.4119.2, %i.dx
  %or.cond139.3 = select i1 %i.hy, i1 %.not125.3, i1 false ; 2 uses
  %spec.select146.3 = select i1 %or.cond139.3, i32 %.4119.2, i32 %i.dx
  %spec.select147.3 = select i1 %or.cond139.3, i32 %.7107.2, i32 3
  br label %.preheader2.4

.preheader2.4:                                    ; preds = %bb.ap, %.preheader2.3
  %.4119.3 = phi i32 [ %.4119.2, %.preheader2.3 ], [ %spec.select146.3, %bb.ap ] ; 3 uses
  %.7107.3 = phi i32 [ %.7107.2, %.preheader2.3 ], [ %spec.select147.3, %bb.ap ] ; 3 uses
  %i.hz = load i8, ptr %i.ec, align 4, !tbaa !26
  %.not.4 = icmp eq i8 %i.hz, 0
  %or.cond138.4 = select i1 %.not.4, i1 %.not131.4, i1 false
  br i1 %or.cond138.4, label %bb.aq, label %.preheader2.5

bb.aq:                                            ; preds = %.preheader2.4
  %i.ia = icmp sgt i32 %.7107.3, -1
  %.not125.4 = icmp sgt i32 %.4119.3, %i.eb
  %or.cond139.4 = select i1 %i.ia, i1 %.not125.4, i1 false ; 2 uses
  %spec.select146.4 = select i1 %or.cond139.4, i32 %.4119.3, i32 %i.eb
  %spec.select147.4 = select i1 %or.cond139.4, i32 %.7107.3, i32 4
  br label %.preheader2.5

.preheader2.5:                                    ; preds = %bb.aq, %.preheader2.4
  %.4119.4 = phi i32 [ %.4119.3, %.preheader2.4 ], [ %spec.select146.4, %bb.aq ] ; 3 uses
  %.7107.4 = phi i32 [ %.7107.3, %.preheader2.4 ], [ %spec.select147.4, %bb.aq ] ; 3 uses
  %i.ib = load i8, ptr %i.eg, align 1, !tbaa !26
  %.not.5 = icmp eq i8 %i.ib, 0
  %or.cond138.5 = select i1 %.not.5, i1 %.not131.5, i1 false
  br i1 %or.cond138.5, label %bb.ar, label %.preheader2.6

bb.ar:                                            ; preds = %.preheader2.5
  %i.ic = icmp sgt i32 %.7107.4, -1
  %.not125.5 = icmp sgt i32 %.4119.4, %i.ef
  %or.cond139.5 = select i1 %i.ic, i1 %.not125.5, i1 false ; 2 uses
  %spec.select146.5 = select i1 %or.cond139.5, i32 %.4119.4, i32 %i.ef
  %spec.select147.5 = select i1 %or.cond139.5, i32 %.7107.4, i32 5
  br label %.preheader2.6

.preheader2.6:                                    ; preds = %bb.ar, %.preheader2.5
  %.4119.5 = phi i32 [ %.4119.4, %.preheader2.5 ], [ %spec.select146.5, %bb.ar ] ; 3 uses
  %.7107.5 = phi i32 [ %.7107.4, %.preheader2.5 ], [ %spec.select147.5, %bb.ar ] ; 3 uses
  %i.id = load i8, ptr %i.ek, align 2, !tbaa !26
  %.not.6 = icmp eq i8 %i.id, 0
  %or.cond138.6 = select i1 %.not.6, i1 %.not131.6, i1 false
  br i1 %or.cond138.6, label %bb.as, label %.preheader2.7

bb.as:                                            ; preds = %.preheader2.6
  %i.ie = icmp sgt i32 %.7107.5, -1
  %.not125.6 = icmp sgt i32 %.4119.5, %i.ej
  %or.cond139.6 = select i1 %i.ie, i1 %.not125.6, i1 false ; 2 uses
  %spec.select146.6 = select i1 %or.cond139.6, i32 %.4119.5, i32 %i.ej
  %spec.select147.6 = select i1 %or.cond139.6, i32 %.7107.5, i32 6
  br label %.preheader2.7

.preheader2.7:                                    ; preds = %bb.as, %.preheader2.6
  %.4119.6 = phi i32 [ %.4119.5, %.preheader2.6 ], [ %spec.select146.6, %bb.as ] ; 4 uses
  %.7107.6 = phi i32 [ %.7107.5, %.preheader2.6 ], [ %spec.select147.6, %bb.as ] ; 3 uses
  %i.if = load i8, ptr %i.eo, align 1, !tbaa !26
  %.not.7 = icmp eq i8 %i.if, 0
  %or.cond138.7 = select i1 %.not.7, i1 %.not131.7, i1 false
  %i.ig = icmp sgt i32 %.7107.6, -1               ; 2 uses
  br i1 %or.cond138.7, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.preheader2.7
  %.not125.7 = icmp sgt i32 %.4119.6, %i.en
  %or.cond139.7 = select i1 %i.ig, i1 %.not125.7, i1 false ; 2 uses
  %spec.select115 = select i1 %or.cond139.7, i32 %.7107.6, i32 7
  %spec.select116 = select i1 %or.cond139.7, i32 %.4119.6, i32 %i.en
  br label %.thread100

bb.au:                                            ; preds = %.preheader2.7
  br i1 %i.ig, label %.thread100, label %bb.av

.thread100:                                       ; preds = %bb.at, %bb.au
  %.7107.7104 = phi i32 [ %.7107.6, %bb.au ], [ %spec.select115, %bb.at ] ; 2 uses
  %.4119.7103 = phi i32 [ %.4119.6, %bb.au ], [ %spec.select116, %bb.at ]
  %i.ih = trunc nuw nsw i32 %.7107.7104 to i8
  store i8 %i.ih, ptr %i.hm, align 1, !tbaa !26
  %i.ii = zext nneg i32 %.7107.7104 to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ii
  store i8 1, ptr %i.ij, align 1, !tbaa !26
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.thread100, %bb.an
  %.5120 = phi i32 [ %.4119.7103, %.thread100 ], [ %.4119.6, %bb.au ], [ %.211720, %bb.an ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %.preheader1.preheader, label %bb.an, !llvm.loop !372

.preheader1.preheader:                            ; preds = %bb.av
  %i.ik = icmp sgt i32 %i.dk, %i.dm
  %.5114.1 = tail call i32 @llvm.smin.i32(i32 %i.dk, i32 %i.dm) ; 2 uses
  %i.il = icmp sgt i32 %.5114.1, %i.dt
  %.5114.2 = tail call i32 @llvm.smin.i32(i32 %.5114.1, i32 %i.dt) ; 2 uses
  %i.im = icmp sgt i32 %.5114.2, %i.dx
  %.5114.3 = tail call i32 @llvm.smin.i32(i32 %.5114.2, i32 %i.dx) ; 2 uses
  %i.in = icmp sgt i32 %.5114.3, %i.eb
  %.5114.4 = tail call i32 @llvm.smin.i32(i32 %.5114.3, i32 %i.eb) ; 2 uses
  %i.io = icmp sgt i32 %.5114.4, %i.ef
  %.5114.5 = tail call i32 @llvm.smin.i32(i32 %.5114.4, i32 %i.ef) ; 2 uses
  %i.ip = icmp sgt i32 %.5114.5, %i.ej
  %.5114.6 = tail call i32 @llvm.smin.i32(i32 %.5114.5, i32 %i.ej)
  %i.iq = icmp sgt i32 %.5114.6, %i.en
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.is = zext i1 %i.ik to i8
  %i.it = select i1 %i.il, i8 2, i8 %i.is
  %i.iu = select i1 %i.im, i8 3, i8 %i.it
  %i.iv = select i1 %i.in, i8 4, i8 %i.iu
  %i.iw = select i1 %i.io, i8 5, i8 %i.iv
  %i.ix = select i1 %i.ip, i8 6, i8 %i.iw
  %i.iy = select i1 %i.iq, i8 7, i8 %i.ix         ; 4 uses
  %i.iz = load <4 x i8>, ptr %i.a, align 4, !tbaa !26 ; 2 uses
  %i.ja = icmp slt <4 x i8> %i.iz, zeroinitializer
  %i.jb = insertelement <4 x i8> poison, i8 %i.iy, i64 0
  %i.jc = shufflevector <4 x i8> %i.jb, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.jd = select <4 x i1> %i.ja, <4 x i8> %i.jc, <4 x i8> %i.iz
  store <4 x i8> %i.jd, ptr %i.ir, align 2, !tbaa !26
  %i.je = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.jf = load i8, ptr %i.je, align 4, !tbaa !26  ; 2 uses
  %i.jg = icmp slt i8 %i.jf, 0
  %spec.store.select.4 = select i1 %i.jg, i8 %i.iy, i8 %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 194
  store i8 %spec.store.select.4, ptr %i.jh, align 2, !tbaa !26
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !26  ; 2 uses
  %i.jk = icmp slt i8 %i.jj, 0
  %spec.store.select.5 = select i1 %i.jk, i8 %i.iy, i8 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 195
  store i8 %spec.store.select.5, ptr %i.jl, align 1, !tbaa !26
  %i.jm = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.jn = load i8, ptr %i.jm, align 2, !tbaa !26  ; 2 uses
  %i.jo = icmp slt i8 %i.jn, 0
  %spec.store.select.6 = select i1 %i.jo, i8 %i.iy, i8 %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i8 %spec.store.select.6, ptr %i.jp, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_av1_read_frame_size_with_refs(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 29 uses
  %i.d = alloca [2 x i32], align 4                ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.d, align 4, !tbaa !65
  store i32 0, ptr %i.g, align 4, !tbaa !65
  %i.h = call i32 @ff_cbs_read_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.149, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) #9 ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.a
  %.lcssa = phi i32 [ %i.h, %bb.a ], [ %i.w, %bb.e ], [ %i.ab, %bb.g ], [ %i.ag, %bb.i ], [ %i.al, %bb.k ], [ %i.aq, %bb.m ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %cbs_av1_read_superres_params.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 170
  %i.k = load i32, ptr %i.c, align 4, !tbaa !65
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  store i8 %i.l, ptr %i.j, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %.not = icmp eq i8 %i.l, 0
end_hunk_0
begin_hunk_1_@cbs_av1_write_render_size:bb.a

._crit_edge:                                      ; preds = %bb.d
  %i.s = load <2 x i16>, ptr %i.i, align 2, !tbaa !60
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 158
  %i.u = load i16, ptr %i.t, align 2, !tbaa !201  ; 2 uses
  %.not34 = icmp eq i16 %i.j, %i.u
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %0, align 8, !tbaa !25
  %i.w = zext i16 %i.j to i64
  %i.x = zext i16 %i.u to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.v, i32 noundef 16, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.147, i64 noundef %i.w, i64 noundef %i.x) #9
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.z = load i16, ptr %i.y, align 4, !tbaa !261  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !203 ; 2 uses
  %.not35 = icmp eq i16 %i.z, %i.ab
  %i.ac = insertelement <2 x i16> poison, i16 %i.j, i64 0
  %i.ad = insertelement <2 x i16> %i.ac, i16 %i.z, i64 1
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !tbaa !25
  %i.af = zext i16 %i.z to i64
  %i.ag = zext i16 %i.ab to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ae, i32 noundef 16, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.148, i64 noundef %i.af, i64 noundef %i.ag) #9
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.ah = phi <2 x i16> [ %i.s, %._crit_edge ], [ %i.ad, %bb.g ]
  %i.ai = zext <2 x i16> %i.ah to <2 x i32>
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ak = add nuw nsw <2 x i32> %i.ai, splat (i32 1)
  store <2 x i32> %i.ak, ptr %i.aj, align 8, !tbaa !65
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.i, %bb.h, %bb.f
  %.0 = phi i32 [ -1094995529, %bb.h ], [ %i.f, %bb.a ], [ %i.l, %bb.c ], [ 0, %bb.i ], [ -1094995529, %bb.f ], [ %i.q, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @cbs_av1_write_set_frame_refs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 15 uses
  %i.b = alloca [8 x i8], align 8                 ; 20 uses
  %i.c = alloca [8 x i16], align 16               ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.h, i8 -1, i64 6, i1 false), !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.j = load i8, ptr %i.i, align 4, !tbaa !218   ; 2 uses
  store i8 %i.j, ptr %i.a, align 1, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 189
  %i.l = load i8, ptr %i.k, align 1, !tbaa !219   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store i8 %i.l, ptr %i.m, align 1, !tbaa !26
  store i64 0, ptr %i.b, align 8
  %i.n = zext i8 %i.j to i64                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.n
  store i8 1, ptr %i.o, align 1, !tbaa !26
  %i.p = zext i8 %i.l to i64                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p
  store i8 1, ptr %i.q, align 1, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 571
  %i.s = load i8, ptr %i.r, align 1, !tbaa !115
  %i.t = zext nneg i8 %i.s to i32
  %i.u = shl nuw i32 1, %i.t                      ; 34 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 564
  %i.w = load i8, ptr %i.v, align 4, !tbaa !108
  %.not.i = icmp eq i8 %i.w, 0
  br i1 %.not.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.x = trunc i32 %i.u to i16                    ; 5 uses
  %i.y = insertelement <4 x i16> poison, i16 %i.x, i64 0
  %i.z = shufflevector <4 x i16> %i.y, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.z, ptr %i.c, align 16, !tbaa !60
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i16 %i.x, ptr %i.aa, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i16 %i.x, ptr %i.ab, align 2, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i16 %i.x, ptr %i.ac, align 4, !tbaa !60
  br label %.split8.us

.split:                                           ; preds = %bb.a
  %i.ad = add nuw i32 %i.u, 65535                 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !211 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 228
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !205
  %i.ai = sub i32 %i.ah, %i.af                    ; 2 uses
  %i.aj = and i32 %i.ai, %i.ad
  %i.ak = and i32 %i.ai, %i.u
  %i.al = sub i32 %i.aj, %i.ak
  %i.am = add i32 %i.al, %i.u                     ; 2 uses
  %i.an = trunc i32 %i.am to i16
  store i16 %i.an, ptr %i.c, align 16, !tbaa !60
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !205
  %i.aq = sub i32 %i.ap, %i.af                    ; 2 uses
  %i.ar = and i32 %i.aq, %i.ad
  %i.as = and i32 %i.aq, %i.u
  %i.at = sub i32 %i.ar, %i.as
  %i.au = add i32 %i.at, %i.u                     ; 2 uses
  %i.av = trunc i32 %i.au to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !60
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 796
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !205
  %i.az = sub i32 %i.ay, %i.af                    ; 2 uses
  %i.ba = and i32 %i.az, %i.ad
  %i.bb = and i32 %i.az, %i.u
  %i.bc = sub i32 %i.ba, %i.bb
  %i.bd = add i32 %i.bc, %i.u                     ; 2 uses
  %i.be = trunc i32 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i16 %i.be, ptr %i.bf, align 4, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 1080
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !205
  %i.bi = sub i32 %i.bh, %i.af                    ; 2 uses
  %i.bj = and i32 %i.bi, %i.ad
  %i.bk = and i32 %i.bi, %i.u
  %i.bl = sub i32 %i.bj, %i.bk
  %i.bm = add i32 %i.bl, %i.u                     ; 2 uses
  %i.bn = trunc i32 %i.bm to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !60
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 1364
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !205
  %i.br = sub i32 %i.bq, %i.af                    ; 2 uses
  %i.bs = and i32 %i.br, %i.ad
  %i.bt = and i32 %i.br, %i.u
  %i.bu = sub i32 %i.bs, %i.bt
  %i.bv = add i32 %i.bu, %i.u                     ; 2 uses
  %i.bw = trunc i32 %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i16 %i.bw, ptr %i.bx, align 8, !tbaa !60
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 1648
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !205
  %i.ca = sub i32 %i.bz, %i.af                    ; 2 uses
  %i.cb = and i32 %i.ca, %i.ad
  %i.cc = and i32 %i.ca, %i.u
  %i.cd = sub i32 %i.cb, %i.cc
  %i.ce = add i32 %i.cd, %i.u                     ; 2 uses
  %i.cf = trunc i32 %i.ce to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !60
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 1932
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !205
  %i.cj = sub i32 %i.ci, %i.af                    ; 2 uses
  %i.ck = and i32 %i.cj, %i.ad
  %i.cl = and i32 %i.cj, %i.u
  %i.cm = sub i32 %i.ck, %i.cl
  %i.cn = add i32 %i.cm, %i.u                     ; 2 uses
  %i.co = trunc i32 %i.cn to i16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i16 %i.co, ptr %i.cp, align 4, !tbaa !60
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 2216
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !205
  %i.cs = sub i32 %i.cr, %i.af                    ; 2 uses
  %i.ct = and i32 %i.cs, %i.ad
  %i.cu = and i32 %i.cs, %i.u
  %i.cv = sub i32 %i.ct, %i.cu
  %i.cw = add i32 %i.cv, %i.u                     ; 2 uses
  %i.cx = trunc i32 %i.cw to i16
  br label %.split8.us

.split8.us:                                       ; preds = %.split, %.split.us
  %.sink = phi i16 [ %i.cx, %.split ], [ %i.x, %.split.us ]
  %i.cy = phi i32 [ %i.cw, %.split ], [ %i.u, %.split.us ]
  %i.cz = phi i32 [ %i.cn, %.split ], [ %i.u, %.split.us ]
  %i.da = phi i32 [ %i.ce, %.split ], [ %i.u, %.split.us ]
  %i.db = phi i32 [ %i.bv, %.split ], [ %i.u, %.split.us ]
  %i.dc = phi i32 [ %i.bm, %.split ], [ %i.u, %.split.us ]
  %i.dd = phi i32 [ %i.bd, %.split ], [ %i.u, %.split.us ]
  %i.de = phi i32 [ %i.au, %.split ], [ %i.u, %.split.us ]
  %i.df = phi i32 [ %i.am, %.split ], [ %i.u, %.split.us ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  store i16 %.sink, ptr %i.dg, align 2, !tbaa !60
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.n
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !60
  %i.dj = sext i16 %i.di to i32
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.p
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !60 ; 2 uses
  %sext = shl i32 %i.df, 16
  %i.dm = ashr exact i32 %sext, 16                ; 11 uses
  %i.dn = load i8, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not137 = icmp ne i8 %i.dn, 0
  %.not138 = icmp sgt i32 %i.u, %i.dm             ; 4 uses
  %or.cond = select i1 %.not137, i1 true, i1 %.not138 ; 3 uses
  %.1121 = select i1 %or.cond, i32 %i.dj, i32 %i.dm
  %.1106 = sext i1 %or.cond to i32
  %sext83 = shl i32 %i.de, 16
  %i.do = ashr exact i32 %sext83, 16              ; 11 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !26
  %.not137.1 = icmp ne i8 %i.dq, 0
  %.not138.1 = icmp sgt i32 %i.u, %i.do           ; 4 uses
  %or.cond.1 = select i1 %.not137.1, i1 true, i1 %.not138.1 ; 2 uses
  %.not139.1 = icmp sle i32 %i.dm, %i.do
  %or.cond140.1.not = select i1 %or.cond, i1 true, i1 %.not139.1 ; 2 uses
  %i.dr = xor i1 %or.cond140.1.not, true
  %i.ds = select i1 %or.cond.1, i1 true, i1 %i.dr
  %.1121.1 = select i1 %i.ds, i32 %.1121, i32 %i.do ; 3 uses
  %i.dt = xor i1 %or.cond140.1.not, true
  %i.du = select i1 %or.cond.1, i1 true, i1 %i.dt
  %.1106.1 = select i1 %i.du, i32 %.1106, i32 1   ; 3 uses
  %sext84 = shl i32 %i.dd, 16
  %i.dv = ashr exact i32 %sext84, 16              ; 11 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 4 uses
  %i.dx = load i8, ptr %i.dw, align 2, !tbaa !26
  %.not137.2 = icmp ne i8 %i.dx, 0
  %.not138.2 = icmp sgt i32 %i.u, %i.dv           ; 4 uses
  %or.cond.2 = select i1 %.not137.2, i1 true, i1 %.not138.2
  br i1 %or.cond.2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split8.us
  %i.dy = icmp sgt i32 %.1106.1, -1
  %.not139.2 = icmp sgt i32 %.1121.1, %i.dv
  %or.cond140.2 = select i1 %i.dy, i1 %.not139.2, i1 false ; 2 uses
  %spec.select.2 = select i1 %or.cond140.2, i32 %.1121.1, i32 %i.dv
  %spec.select148.2 = select i1 %or.cond140.2, i32 %.1106.1, i32 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split8.us
  %.1121.2 = phi i32 [ %.1121.1, %.split8.us ], [ %spec.select.2, %bb.b ] ; 3 uses
  %.1106.2 = phi i32 [ %.1106.1, %.split8.us ], [ %spec.select148.2, %bb.b ] ; 3 uses
  %sext85 = shl i32 %i.dc, 16
  %i.dz = ashr exact i32 %sext85, 16              ; 11 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 4 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !26
  %.not137.3 = icmp ne i8 %i.eb, 0
  %.not138.3 = icmp sgt i32 %i.u, %i.dz           ; 4 uses
  %or.cond.3 = select i1 %.not137.3, i1 true, i1 %.not138.3
  br i1 %or.cond.3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ec = icmp sgt i32 %.1106.2, -1
  %.not139.3 = icmp sgt i32 %.1121.2, %i.dz
  %or.cond140.3 = select i1 %i.ec, i1 %.not139.3, i1 false ; 2 uses
  %spec.select.3 = select i1 %or.cond140.3, i32 %.1121.2, i32 %i.dz
  %spec.select148.3 = select i1 %or.cond140.3, i32 %.1106.2, i32 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1121.3 = phi i32 [ %.1121.2, %bb.c ], [ %spec.select.3, %bb.d ] ; 3 uses
  %.1106.3 = phi i32 [ %.1106.2, %bb.c ], [ %spec.select148.3, %bb.d ] ; 3 uses
  %sext86 = shl i32 %i.db, 16
  %i.ed = ashr exact i32 %sext86, 16              ; 11 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  %i.ef = load i8, ptr %i.ee, align 4, !tbaa !26
  %.not137.4 = icmp ne i8 %i.ef, 0
  %.not138.4 = icmp sgt i32 %i.u, %i.ed           ; 4 uses
  %or.cond.4 = select i1 %.not137.4, i1 true, i1 %.not138.4
  br i1 %or.cond.4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.eg = icmp sgt i32 %.1106.3, -1
  %.not139.4 = icmp sgt i32 %.1121.3, %i.ed
  %or.cond140.4 = select i1 %i.eg, i1 %.not139.4, i1 false ; 2 uses
  %spec.select.4 = select i1 %or.cond140.4, i32 %.1121.3, i32 %i.ed
  %spec.select148.4 = select i1 %or.cond140.4, i32 %.1106.3, i32 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1121.4 = phi i32 [ %.1121.3, %bb.e ], [ %spec.select.4, %bb.f ] ; 3 uses
  %.1106.4 = phi i32 [ %.1106.3, %bb.e ], [ %spec.select148.4, %bb.f ] ; 3 uses
  %sext87 = shl i32 %i.da, 16
  %i.eh = ashr exact i32 %sext87, 16              ; 11 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 4 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !26
  %.not137.5 = icmp ne i8 %i.ej, 0
  %.not138.5 = icmp sgt i32 %i.u, %i.eh           ; 4 uses
  %or.cond.5 = select i1 %.not137.5, i1 true, i1 %.not138.5
  br i1 %or.cond.5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ek = icmp sgt i32 %.1106.4, -1
  %.not139.5 = icmp sgt i32 %.1121.4, %i.eh
  %or.cond140.5 = select i1 %i.ek, i1 %.not139.5, i1 false ; 2 uses
  %spec.select.5 = select i1 %or.cond140.5, i32 %.1121.4, i32 %i.eh
  %spec.select148.5 = select i1 %or.cond140.5, i32 %.1106.4, i32 5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1121.5 = phi i32 [ %.1121.4, %bb.g ], [ %spec.select.5, %bb.h ] ; 3 uses
  %.1106.5 = phi i32 [ %.1106.4, %bb.g ], [ %spec.select148.5, %bb.h ] ; 3 uses
  %sext88 = shl i32 %i.cz, 16
  %i.el = ashr exact i32 %sext88, 16              ; 11 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 4 uses
  %i.en = load i8, ptr %i.em, align 2, !tbaa !26
  %.not137.6 = icmp ne i8 %i.en, 0
  %.not138.6 = icmp sgt i32 %i.u, %i.el           ; 4 uses
  %or.cond.6 = select i1 %.not137.6, i1 true, i1 %.not138.6
  br i1 %or.cond.6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eo = icmp sgt i32 %.1106.5, -1
  %.not139.6 = icmp sgt i32 %.1121.5, %i.el
  %or.cond140.6 = select i1 %i.eo, i1 %.not139.6, i1 false ; 2 uses
  %spec.select.6 = select i1 %or.cond140.6, i32 %.1121.5, i32 %i.el
  %spec.select148.6 = select i1 %or.cond140.6, i32 %.1106.5, i32 6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1121.6 = phi i32 [ %.1121.5, %bb.i ], [ %spec.select.6, %bb.j ] ; 4 uses
  %.1106.6 = phi i32 [ %.1106.5, %bb.i ], [ %spec.select148.6, %bb.j ] ; 4 uses
  %sext89 = shl i32 %i.cy, 16
  %i.ep = ashr exact i32 %sext89, 16              ; 9 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 7 ; 4 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !26
  %.not137.7 = icmp ne i8 %i.er, 0
  %.not138.7 = icmp sgt i32 %i.u, %i.ep           ; 4 uses
  %or.cond.7 = select i1 %.not137.7, i1 true, i1 %.not138.7
  br i1 %or.cond.7, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.k
  %i.es = icmp sgt i32 %.1106.6, -1
  %.not139.7 = icmp sgt i32 %.1121.6, %i.ep
  %or.cond140.7 = select i1 %i.es, i1 %.not139.7, i1 false ; 2 uses
  %spec.select.7 = select i1 %or.cond140.7, i32 %.1121.6, i32 %i.ep
  %spec.select = select i1 %or.cond140.7, i32 %.1106.6, i32 7
  %i.et = sext i16 %i.dl to i32
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eu = sext i16 %i.dl to i32                   ; 2 uses
  %i.ev = icmp sgt i32 %.1106.6, -1
  br i1 %i.ev, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread, %bb.l
  %i.ew = phi i32 [ %i.et, %.thread ], [ %i.eu, %bb.l ]
  %.1106.794 = phi i32 [ %spec.select, %.thread ], [ %.1106.6, %bb.l ] ; 2 uses
  %.1121.793 = phi i32 [ %spec.select.7, %.thread ], [ %.1121.6, %bb.l ]
  %i.ex = trunc nuw nsw i32 %.1106.794 to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !26
  %i.ez = zext nneg i32 %.1106.794 to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ez
  store i8 1, ptr %i.fa, align 1, !tbaa !26
  %.pre = load i8, ptr %i.b, align 8, !tbaa !26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.fb = phi i32 [ %i.ew, %bb.m ], [ %i.eu, %bb.l ]
  %.1121.792 = phi i32 [ %.1121.793, %bb.m ], [ %.1121.6, %bb.l ]
  %i.fc = phi i8 [ %.pre, %bb.m ], [ %i.dn, %bb.l ] ; 2 uses
  %.not135 = icmp ne i8 %i.fc, 0
  %or.cond141 = select i1 %.not135, i1 true, i1 %.not138 ; 4 uses
  %spec.select116 = select i1 %or.cond141, i32 %i.fb, i32 %i.dm
  %spec.select117 = sext i1 %or.cond141 to i32
  %i.fd = load i8, ptr %i.dp, align 1, !tbaa !26
  %.not135.1 = icmp ne i8 %i.fd, 0
  %or.cond141.1 = select i1 %.not135.1, i1 true, i1 %.not138.1 ; 3 uses
  %i.fe = icmp sgt i32 %i.dm, %i.do
  %or.cond142.1 = select i1 %or.cond141, i1 true, i1 %i.fe ; 2 uses
  %i.ff = xor i1 %or.cond142.1, true
  %i.fg = select i1 %or.cond141.1, i1 true, i1 %i.ff
  %.1115.1 = select i1 %i.fg, i32 %spec.select116, i32 %i.do ; 3 uses
  %i.fh = xor i1 %or.cond142.1, true
  %i.fi = select i1 %or.cond141.1, i1 true, i1 %i.fh
  %.3108.1 = select i1 %i.fi, i32 %spec.select117, i32 1 ; 2 uses
  %i.fj = load i8, ptr %i.dw, align 2, !tbaa !26
  %.not135.2 = icmp ne i8 %i.fj, 0
  %or.cond141.2 = select i1 %.not135.2, i1 true, i1 %.not138.2
  br i1 %or.cond141.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fk = select i1 %or.cond141.1, i1 %or.cond141, i1 false
  %i.fl = icmp sgt i32 %.1115.1, %i.dv
  %or.cond142.2 = select i1 %i.fk, i1 true, i1 %i.fl ; 2 uses
  %spec.select149.2 = select i1 %or.cond142.2, i32 %i.dv, i32 %.1115.1
  %spec.select150.2 = select i1 %or.cond142.2, i32 2, i32 %.3108.1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1115.2 = phi i32 [ %.1115.1, %bb.n ], [ %spec.select149.2, %bb.o ] ; 3 uses
  %.3108.2 = phi i32 [ %.3108.1, %bb.n ], [ %spec.select150.2, %bb.o ] ; 3 uses
  %i.fm = load i8, ptr %i.ea, align 1, !tbaa !26
  %.not135.3 = icmp ne i8 %i.fm, 0
  %or.cond141.3 = select i1 %.not135.3, i1 true, i1 %.not138.3
  br i1 %or.cond141.3, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fn = icmp slt i32 %.3108.2, 0
  %i.fo = icmp sgt i32 %.1115.2, %i.dz
  %or.cond142.3 = select i1 %i.fn, i1 true, i1 %i.fo ; 2 uses
  %spec.select149.3 = select i1 %or.cond142.3, i32 %i.dz, i32 %.1115.2
  %spec.select150.3 = select i1 %or.cond142.3, i32 3, i32 %.3108.2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1115.3 = phi i32 [ %.1115.2, %bb.p ], [ %spec.select149.3, %bb.q ] ; 3 uses
  %.3108.3 = phi i32 [ %.3108.2, %bb.p ], [ %spec.select150.3, %bb.q ] ; 3 uses
  %i.fp = load i8, ptr %i.ee, align 4, !tbaa !26
  %.not135.4 = icmp ne i8 %i.fp, 0
  %or.cond141.4 = select i1 %.not135.4, i1 true, i1 %.not138.4
  br i1 %or.cond141.4, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fq = icmp slt i32 %.3108.3, 0
  %i.fr = icmp sgt i32 %.1115.3, %i.ed
  %or.cond142.4 = select i1 %i.fq, i1 true, i1 %i.fr ; 2 uses
  %spec.select149.4 = select i1 %or.cond142.4, i32 %i.ed, i32 %.1115.3
  %spec.select150.4 = select i1 %or.cond142.4, i32 4, i32 %.3108.3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1115.4 = phi i32 [ %.1115.3, %bb.r ], [ %spec.select149.4, %bb.s ] ; 3 uses
  %.3108.4 = phi i32 [ %.3108.3, %bb.r ], [ %spec.select150.4, %bb.s ] ; 3 uses
  %i.fs = load i8, ptr %i.ei, align 1, !tbaa !26
  %.not135.5 = icmp ne i8 %i.fs, 0
  %or.cond141.5 = select i1 %.not135.5, i1 true, i1 %.not138.5
  br i1 %or.cond141.5, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ft = icmp slt i32 %.3108.4, 0
  %i.fu = icmp sgt i32 %.1115.4, %i.eh
  %or.cond142.5 = select i1 %i.ft, i1 true, i1 %i.fu ; 2 uses
  %spec.select149.5 = select i1 %or.cond142.5, i32 %i.eh, i32 %.1115.4
  %spec.select150.5 = select i1 %or.cond142.5, i32 5, i32 %.3108.4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1115.5 = phi i32 [ %.1115.4, %bb.t ], [ %spec.select149.5, %bb.u ] ; 3 uses
  %.3108.5 = phi i32 [ %.3108.4, %bb.t ], [ %spec.select150.5, %bb.u ] ; 3 uses
  %i.fv = load i8, ptr %i.em, align 2, !tbaa !26
  %.not135.6 = icmp ne i8 %i.fv, 0
  %or.cond141.6 = select i1 %.not135.6, i1 true, i1 %.not138.6
  br i1 %or.cond141.6, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fw = icmp slt i32 %.3108.5, 0
  %i.fx = icmp sgt i32 %.1115.5, %i.el
  %or.cond142.6 = select i1 %i.fw, i1 true, i1 %i.fx ; 2 uses
  %spec.select149.6 = select i1 %or.cond142.6, i32 %i.el, i32 %.1115.5
  %spec.select150.6 = select i1 %or.cond142.6, i32 6, i32 %.3108.5
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1115.6 = phi i32 [ %.1115.5, %bb.v ], [ %spec.select149.6, %bb.w ] ; 4 uses
  %.3108.6 = phi i32 [ %.3108.5, %bb.v ], [ %spec.select150.6, %bb.w ] ; 4 uses
  %i.fy = load i8, ptr %i.eq, align 1, !tbaa !26
  %.not135.7 = icmp ne i8 %i.fy, 0
  %or.cond141.7 = select i1 %.not135.7, i1 true, i1 %.not138.7
  br i1 %or.cond141.7, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fz = icmp slt i32 %.3108.6, 0
  %i.ga = icmp sgt i32 %.1115.6, %i.ep
  %or.cond142.7 = select i1 %i.fz, i1 true, i1 %i.ga ; 2 uses
  %spec.select118 = select i1 %or.cond142.7, i32 7, i32 %.3108.6
  %spec.select119 = select i1 %or.cond142.7, i32 %i.ep, i32 %.1115.6
  br label %.thread97

bb.z:                                             ; preds = %bb.x
  %i.gb = icmp sgt i32 %.3108.6, -1
  br i1 %i.gb, label %.thread97, label %bb.aa

.thread97:                                        ; preds = %bb.y, %bb.z
  %.3108.7102 = phi i32 [ %.3108.6, %bb.z ], [ %spec.select118, %bb.y ] ; 2 uses
  %.1115.7101 = phi i32 [ %.1115.6, %bb.z ], [ %spec.select119, %bb.y ]
  %i.gc = trunc nuw nsw i32 %.3108.7102 to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !26
  %i.ge = zext nneg i32 %.3108.7102 to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ge
  store i8 1, ptr %i.gf, align 1, !tbaa !26
  %.pre47 = load i8, ptr %i.b, align 8, !tbaa !26
  br label %bb.aa

bb.aa:                                            ; preds = %.thread97, %bb.z
  %.1115.7100 = phi i32 [ %.1115.7101, %.thread97 ], [ %.1115.6, %bb.z ]
  %i.gg = phi i8 [ %.pre47, %.thread97 ], [ %i.fc, %bb.z ]
  %.not133 = icmp ne i8 %i.gg, 0
  %or.cond143 = select i1 %.not133, i1 true, i1 %.not138 ; 4 uses
  %spec.select120 = select i1 %or.cond143, i32 %.1115.7100, i32 %i.dm
  %spec.select121 = sext i1 %or.cond143 to i32
  %i.gh = load i8, ptr %i.dp, align 1, !tbaa !26
  %.not133.1 = icmp ne i8 %i.gh, 0
  %or.cond143.1 = select i1 %.not133.1, i1 true, i1 %.not138.1 ; 3 uses
  %i.gi = icmp sgt i32 %i.dm, %i.do
  %or.cond144.1 = select i1 %or.cond143, i1 true, i1 %i.gi ; 2 uses
  %i.gj = xor i1 %or.cond144.1, true
  %i.gk = select i1 %or.cond143.1, i1 true, i1 %i.gj
  %.3117.1 = select i1 %i.gk, i32 %spec.select120, i32 %i.do ; 3 uses
  %i.gl = xor i1 %or.cond144.1, true
  %i.gm = select i1 %or.cond143.1, i1 true, i1 %i.gl
  %.5110.1 = select i1 %i.gm, i32 %spec.select121, i32 1 ; 2 uses
  %i.gn = load i8, ptr %i.dw, align 2, !tbaa !26
  %.not133.2 = icmp ne i8 %i.gn, 0
  %or.cond143.2 = select i1 %.not133.2, i1 true, i1 %.not138.2
  br i1 %or.cond143.2, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.go = select i1 %or.cond143.1, i1 %or.cond143, i1 false
  %i.gp = icmp sgt i32 %.3117.1, %i.dv
  %or.cond144.2 = select i1 %i.go, i1 true, i1 %i.gp ; 2 uses
  %spec.select151.2 = select i1 %or.cond144.2, i32 %i.dv, i32 %.3117.1
  %spec.select152.2 = select i1 %or.cond144.2, i32 2, i32 %.5110.1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.3117.2 = phi i32 [ %.3117.1, %bb.aa ], [ %spec.select151.2, %bb.ab ] ; 3 uses
  %.5110.2 = phi i32 [ %.5110.1, %bb.aa ], [ %spec.select152.2, %bb.ab ] ; 3 uses
  %i.gq = load i8, ptr %i.ea, align 1, !tbaa !26
  %.not133.3 = icmp ne i8 %i.gq, 0
  %or.cond143.3 = select i1 %.not133.3, i1 true, i1 %.not138.3
  br i1 %or.cond143.3, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gr = icmp slt i32 %.5110.2, 0
  %i.gs = icmp sgt i32 %.3117.2, %i.dz
  %or.cond144.3 = select i1 %i.gr, i1 true, i1 %i.gs ; 2 uses
  %spec.select151.3 = select i1 %or.cond144.3, i32 %i.dz, i32 %.3117.2
  %spec.select152.3 = select i1 %or.cond144.3, i32 3, i32 %.5110.2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.3117.3 = phi i32 [ %.3117.2, %bb.ac ], [ %spec.select151.3, %bb.ad ] ; 3 uses
  %.5110.3 = phi i32 [ %.5110.2, %bb.ac ], [ %spec.select152.3, %bb.ad ] ; 3 uses
  %i.gt = load i8, ptr %i.ee, align 4, !tbaa !26
  %.not133.4 = icmp ne i8 %i.gt, 0
  %or.cond143.4 = select i1 %.not133.4, i1 true, i1 %.not138.4
  br i1 %or.cond143.4, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gu = icmp slt i32 %.5110.3, 0
  %i.gv = icmp sgt i32 %.3117.3, %i.ed
  %or.cond144.4 = select i1 %i.gu, i1 true, i1 %i.gv ; 2 uses
  %spec.select151.4 = select i1 %or.cond144.4, i32 %i.ed, i32 %.3117.3
  %spec.select152.4 = select i1 %or.cond144.4, i32 4, i32 %.5110.3
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.3117.4 = phi i32 [ %.3117.3, %bb.ae ], [ %spec.select151.4, %bb.af ] ; 3 uses
  %.5110.4 = phi i32 [ %.5110.3, %bb.ae ], [ %spec.select152.4, %bb.af ] ; 3 uses
  %i.gw = load i8, ptr %i.ei, align 1, !tbaa !26
  %.not133.5 = icmp ne i8 %i.gw, 0
  %or.cond143.5 = select i1 %.not133.5, i1 true, i1 %.not138.5
  br i1 %or.cond143.5, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gx = icmp slt i32 %.5110.4, 0
  %i.gy = icmp sgt i32 %.3117.4, %i.eh
  %or.cond144.5 = select i1 %i.gx, i1 true, i1 %i.gy ; 2 uses
  %spec.select151.5 = select i1 %or.cond144.5, i32 %i.eh, i32 %.3117.4
  %spec.select152.5 = select i1 %or.cond144.5, i32 5, i32 %.5110.4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.3117.5 = phi i32 [ %.3117.4, %bb.ag ], [ %spec.select151.5, %bb.ah ] ; 3 uses
  %.5110.5 = phi i32 [ %.5110.4, %bb.ag ], [ %spec.select152.5, %bb.ah ] ; 3 uses
  %i.gz = load i8, ptr %i.em, align 2, !tbaa !26
  %.not133.6 = icmp ne i8 %i.gz, 0
  %or.cond143.6 = select i1 %.not133.6, i1 true, i1 %.not138.6
  br i1 %or.cond143.6, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ha = icmp slt i32 %.5110.5, 0
  %i.hb = icmp sgt i32 %.3117.5, %i.el
  %or.cond144.6 = select i1 %i.ha, i1 true, i1 %i.hb ; 2 uses
  %spec.select151.6 = select i1 %or.cond144.6, i32 %i.el, i32 %.3117.5
  %spec.select152.6 = select i1 %or.cond144.6, i32 6, i32 %.5110.5
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.3117.6 = phi i32 [ %.3117.5, %bb.ai ], [ %spec.select151.6, %bb.aj ]
  %.5110.6 = phi i32 [ %.5110.5, %bb.ai ], [ %spec.select152.6, %bb.aj ] ; 4 uses
  %i.hc = load i8, ptr %i.eq, align 1, !tbaa !26
  %.not133.7 = icmp ne i8 %i.hc, 0
  %or.cond143.7 = select i1 %.not133.7, i1 true, i1 %.not138.7
  br i1 %or.cond143.7, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hd = icmp slt i32 %.5110.6, 0
  %i.he = icmp sgt i32 %.3117.6, %i.ep
  %or.cond144.7 = select i1 %i.hd, i1 true, i1 %i.he
  %spec.select122 = select i1 %or.cond144.7, i32 7, i32 %.5110.6
  br label %.thread105

bb.am:                                            ; preds = %bb.ak
  %i.hf = icmp sgt i32 %.5110.6, -1
  br i1 %i.hf, label %.thread105, label %.preheader

.thread105:                                       ; preds = %bb.al, %bb.am
  %.5110.7107 = phi i32 [ %.5110.6, %bb.am ], [ %spec.select122, %bb.al ] ; 2 uses
  %i.hg = trunc nuw nsw i32 %.5110.7107 to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !26
  %i.hi = zext nneg i32 %.5110.7107 to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hi
  store i8 1, ptr %i.hj, align 1, !tbaa !26
  br label %.preheader

.preheader:                                       ; preds = %.thread105, %bb.am
  %.not132.1 = icmp sgt i32 %i.dm, %i.do
  br label %bb.an

bb.an:                                            ; preds = %.preheader, %bb.av
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.av ], [ 0, %.preheader ] ; 2 uses
  %.212221 = phi i32 [ %.5125, %bb.av ], [ %.1121.792, %.preheader ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr @cbs_av1_write_set_frame_refs.ref_frame_list, i64 %indvars.iv
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !26
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr i8, ptr %i.a, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 -1     ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !26
  %i.hq = icmp slt i8 %i.hp, 0
  br i1 %i.hq, label %.preheader2.preheader, label %bb.av

.preheader2.preheader:                            ; preds = %bb.an
  %i.hr = load i8, ptr %i.b, align 8, !tbaa !26
  %.not131 = icmp eq i8 %i.hr, 0
  %or.cond145 = select i1 %.not131, i1 %.not138, i1 false ; 4 uses
  %spec.select123 = select i1 %or.cond145, i32 %i.dm, i32 %.212221
  %not.or.cond145 = xor i1 %or.cond145, true
  %spec.select124 = sext i1 %not.or.cond145 to i32
  %i.hs = load i8, ptr %i.dp, align 1, !tbaa !26
  %.not131.1 = icmp eq i8 %i.hs, 0
  %or.cond145.1 = select i1 %.not131.1, i1 %.not138.1, i1 false ; 3 uses
  %or.cond146.1 = select i1 %or.cond145, i1 %.not132.1, i1 false ; 2 uses
  %i.ht = xor i1 %or.cond146.1, true
  %i.hu = select i1 %or.cond145.1, i1 %i.ht, i1 false
  %.4124.1 = select i1 %i.hu, i32 %i.do, i32 %spec.select123 ; 3 uses
  %i.hv = xor i1 %or.cond146.1, true
  %i.hw = select i1 %or.cond145.1, i1 %i.hv, i1 false
  %.7112.1 = select i1 %i.hw, i32 1, i32 %spec.select124 ; 2 uses
  %i.hx = load i8, ptr %i.dw, align 2, !tbaa !26
  %.not131.2 = icmp eq i8 %i.hx, 0
  %or.cond145.2 = select i1 %.not131.2, i1 %.not138.2, i1 false
  br i1 %or.cond145.2, label %bb.ao, label %.preheader2.3

bb.ao:                                            ; preds = %.preheader2.preheader
  %i.hy = select i1 %or.cond145.1, i1 true, i1 %or.cond145
  %.not132.2 = icmp sgt i32 %.4124.1, %i.dv
  %or.cond146.2 = select i1 %i.hy, i1 %.not132.2, i1 false ; 2 uses
  %spec.select153.2 = select i1 %or.cond146.2, i32 %.4124.1, i32 %i.dv
  %spec.select154.2 = select i1 %or.cond146.2, i32 %.7112.1, i32 2
  br label %.preheader2.3

.preheader2.3:                                    ; preds = %bb.ao, %.preheader2.preheader
  %.4124.2 = phi i32 [ %.4124.1, %.preheader2.preheader ], [ %spec.select153.2, %bb.ao ] ; 3 uses
  %.7112.2 = phi i32 [ %.7112.1, %.preheader2.preheader ], [ %spec.select154.2, %bb.ao ] ; 3 uses
  %i.hz = load i8, ptr %i.ea, align 1, !tbaa !26
  %.not131.3 = icmp eq i8 %i.hz, 0
  %or.cond145.3 = select i1 %.not131.3, i1 %.not138.3, i1 false
  br i1 %or.cond145.3, label %bb.ap, label %.preheader2.4

bb.ap:                                            ; preds = %.preheader2.3
  %i.ia = icmp sgt i32 %.7112.2, -1
  %.not132.3 = icmp sgt i32 %.4124.2, %i.dz
  %or.cond146.3 = select i1 %i.ia, i1 %.not132.3, i1 false ; 2 uses
  %spec.select153.3 = select i1 %or.cond146.3, i32 %.4124.2, i32 %i.dz
  %spec.select154.3 = select i1 %or.cond146.3, i32 %.7112.2, i32 3
  br label %.preheader2.4

.preheader2.4:                                    ; preds = %bb.ap, %.preheader2.3
  %.4124.3 = phi i32 [ %.4124.2, %.preheader2.3 ], [ %spec.select153.3, %bb.ap ] ; 3 uses
  %.7112.3 = phi i32 [ %.7112.2, %.preheader2.3 ], [ %spec.select154.3, %bb.ap ] ; 3 uses
  %i.ib = load i8, ptr %i.ee, align 4, !tbaa !26
  %.not131.4 = icmp eq i8 %i.ib, 0
  %or.cond145.4 = select i1 %.not131.4, i1 %.not138.4, i1 false
  br i1 %or.cond145.4, label %bb.aq, label %.preheader2.5

bb.aq:                                            ; preds = %.preheader2.4
  %i.ic = icmp sgt i32 %.7112.3, -1
  %.not132.4 = icmp sgt i32 %.4124.3, %i.ed
  %or.cond146.4 = select i1 %i.ic, i1 %.not132.4, i1 false ; 2 uses
  %spec.select153.4 = select i1 %or.cond146.4, i32 %.4124.3, i32 %i.ed
  %spec.select154.4 = select i1 %or.cond146.4, i32 %.7112.3, i32 4
  br label %.preheader2.5

.preheader2.5:                                    ; preds = %bb.aq, %.preheader2.4
  %.4124.4 = phi i32 [ %.4124.3, %.preheader2.4 ], [ %spec.select153.4, %bb.aq ] ; 3 uses
  %.7112.4 = phi i32 [ %.7112.3, %.preheader2.4 ], [ %spec.select154.4, %bb.aq ] ; 3 uses
  %i.id = load i8, ptr %i.ei, align 1, !tbaa !26
  %.not131.5 = icmp eq i8 %i.id, 0
  %or.cond145.5 = select i1 %.not131.5, i1 %.not138.5, i1 false
  br i1 %or.cond145.5, label %bb.ar, label %.preheader2.6

bb.ar:                                            ; preds = %.preheader2.5
  %i.ie = icmp sgt i32 %.7112.4, -1
  %.not132.5 = icmp sgt i32 %.4124.4, %i.eh
  %or.cond146.5 = select i1 %i.ie, i1 %.not132.5, i1 false ; 2 uses
  %spec.select153.5 = select i1 %or.cond146.5, i32 %.4124.4, i32 %i.eh
  %spec.select154.5 = select i1 %or.cond146.5, i32 %.7112.4, i32 5
  br label %.preheader2.6

.preheader2.6:                                    ; preds = %bb.ar, %.preheader2.5
  %.4124.5 = phi i32 [ %.4124.4, %.preheader2.5 ], [ %spec.select153.5, %bb.ar ] ; 3 uses
  %.7112.5 = phi i32 [ %.7112.4, %.preheader2.5 ], [ %spec.select154.5, %bb.ar ] ; 3 uses
  %i.if = load i8, ptr %i.em, align 2, !tbaa !26
  %.not131.6 = icmp eq i8 %i.if, 0
  %or.cond145.6 = select i1 %.not131.6, i1 %.not138.6, i1 false
  br i1 %or.cond145.6, label %bb.as, label %.preheader2.7

bb.as:                                            ; preds = %.preheader2.6
  %i.ig = icmp sgt i32 %.7112.5, -1
  %.not132.6 = icmp sgt i32 %.4124.5, %i.el
  %or.cond146.6 = select i1 %i.ig, i1 %.not132.6, i1 false ; 2 uses
  %spec.select153.6 = select i1 %or.cond146.6, i32 %.4124.5, i32 %i.el
  %spec.select154.6 = select i1 %or.cond146.6, i32 %.7112.5, i32 6
  br label %.preheader2.7

.preheader2.7:                                    ; preds = %bb.as, %.preheader2.6
  %.4124.6 = phi i32 [ %.4124.5, %.preheader2.6 ], [ %spec.select153.6, %bb.as ] ; 4 uses
  %.7112.6 = phi i32 [ %.7112.5, %.preheader2.6 ], [ %spec.select154.6, %bb.as ] ; 3 uses
  %i.ih = load i8, ptr %i.eq, align 1, !tbaa !26
  %.not131.7 = icmp eq i8 %i.ih, 0
  %or.cond145.7 = select i1 %.not131.7, i1 %.not138.7, i1 false
  %i.ii = icmp sgt i32 %.7112.6, -1               ; 2 uses
  br i1 %or.cond145.7, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.preheader2.7
  %.not132.7 = icmp sgt i32 %.4124.6, %i.ep
  %or.cond146.7 = select i1 %i.ii, i1 %.not132.7, i1 false ; 2 uses
  %spec.select125 = select i1 %or.cond146.7, i32 %.7112.6, i32 7
  %spec.select126 = select i1 %or.cond146.7, i32 %.4124.6, i32 %i.ep
  br label %.thread110

bb.au:                                            ; preds = %.preheader2.7
  br i1 %i.ii, label %.thread110, label %bb.av

.thread110:                                       ; preds = %bb.at, %bb.au
  %.7112.7114 = phi i32 [ %.7112.6, %bb.au ], [ %spec.select125, %bb.at ] ; 2 uses
  %.4124.7113 = phi i32 [ %.4124.6, %bb.au ], [ %spec.select126, %bb.at ]
  %i.ij = trunc nuw nsw i32 %.7112.7114 to i8
  store i8 %i.ij, ptr %i.ho, align 1, !tbaa !26
  %i.ik = zext nneg i32 %.7112.7114 to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ik
  store i8 1, ptr %i.il, align 1, !tbaa !26
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.thread110, %bb.an
  %.5125 = phi i32 [ %.4124.7113, %.thread110 ], [ %.4124.6, %bb.au ], [ %.212221, %bb.an ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %.preheader1.preheader, label %bb.an, !llvm.loop !401

.preheader1.preheader:                            ; preds = %bb.av
  %i.im = icmp sgt i32 %i.dm, %i.do
  %.5119.1 = tail call i32 @llvm.smin.i32(i32 %i.dm, i32 %i.do) ; 2 uses
  %i.in = icmp sgt i32 %.5119.1, %i.dv
  %.5119.2 = tail call i32 @llvm.smin.i32(i32 %.5119.1, i32 %i.dv) ; 2 uses
  %i.io = icmp sgt i32 %.5119.2, %i.dz
  %.5119.3 = tail call i32 @llvm.smin.i32(i32 %.5119.2, i32 %i.dz) ; 2 uses
  %i.ip = icmp sgt i32 %.5119.3, %i.ed
  %.5119.4 = tail call i32 @llvm.smin.i32(i32 %.5119.3, i32 %i.ed) ; 2 uses
  %i.iq = icmp sgt i32 %.5119.4, %i.eh
  %.5119.5 = tail call i32 @llvm.smin.i32(i32 %.5119.4, i32 %i.eh) ; 2 uses
  %i.ir = icmp sgt i32 %.5119.5, %i.el
  %.5119.6 = tail call i32 @llvm.smin.i32(i32 %.5119.5, i32 %i.el)
  %i.is = icmp sgt i32 %.5119.6, %i.ep
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 190
  %i.iu = zext i1 %i.im to i8
  %i.iv = select i1 %i.in, i8 2, i8 %i.iu
  %i.iw = select i1 %i.io, i8 3, i8 %i.iv
  %i.ix = select i1 %i.ip, i8 4, i8 %i.iw
  %i.iy = select i1 %i.iq, i8 5, i8 %i.ix
  %i.iz = select i1 %i.ir, i8 6, i8 %i.iy
  %i.ja = select i1 %i.is, i8 7, i8 %i.iz         ; 7 uses
  %i.jb = load i8, ptr %i.a, align 1, !tbaa !26   ; 2 uses
  %i.jc = icmp slt i8 %i.jb, 0
  %spec.store.select = select i1 %i.jc, i8 %i.ja, i8 %i.jb ; 2 uses
  %i.jd = load i8, ptr %i.it, align 2, !tbaa !26  ; 2 uses
  %.not = icmp eq i8 %i.jd, %spec.store.select
  br i1 %.not, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %.preheader1.preheader
  %i.je = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !26  ; 2 uses
  %i.jg = icmp slt i8 %i.jf, 0
  %spec.store.select.1 = select i1 %i.jg, i8 %i.ja, i8 %i.jf ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 191
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !26  ; 2 uses
  %.not.1 = icmp eq i8 %i.ji, %spec.store.select.1
  br i1 %.not.1, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  %i.jj = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !26  ; 2 uses
  %i.jl = icmp slt i8 %i.jk, 0
  %spec.store.select.2 = select i1 %i.jl, i8 %i.ja, i8 %i.jk ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.jn = load i8, ptr %i.jm, align 4, !tbaa !26  ; 2 uses
  %.not.2 = icmp eq i8 %i.jn, %spec.store.select.2
  br i1 %.not.2, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.jo = load i8, ptr %i.m, align 1, !tbaa !26   ; 2 uses
  %i.jp = icmp slt i8 %i.jo, 0
  %spec.store.select.3 = select i1 %i.jp, i8 %i.ja, i8 %i.jo ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 193
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !26  ; 2 uses
  %.not.3 = icmp eq i8 %i.jr, %spec.store.select.3
  br i1 %.not.3, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !26  ; 2 uses
  %i.ju = icmp slt i8 %i.jt, 0
  %spec.store.select.4 = select i1 %i.ju, i8 %i.ja, i8 %i.jt ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 194
  %i.jw = load i8, ptr %i.jv, align 2, !tbaa !26  ; 2 uses
  %.not.4 = icmp eq i8 %i.jw, %spec.store.select.4
  br i1 %.not.4, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.jx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !26  ; 2 uses
  %i.jz = icmp slt i8 %i.jy, 0
  %spec.store.select.5 = select i1 %i.jz, i8 %i.ja, i8 %i.jy ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 195
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !26  ; 2 uses
  %.not.5 = icmp eq i8 %i.kb, %spec.store.select.5
  br i1 %.not.5, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !26  ; 2 uses
end_hunk_1
