inline.NumInlined: 7
inline.NumDeleted: 3
begin_hunk_0_@utrie2_get32_78:bb.a
  br i1 %i.ca, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cc = load i32, ptr %i.cb, align 4
  %.not48 = icmp slt i32 %1, %i.cc
  br i1 %.not48, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ce = load i32, ptr %i.cd, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %0, align 8               ; 2 uses
  %i.cg = lshr i32 %1, 11
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4160
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = zext i16 %i.ck to i32
  %i.cm = lshr i32 %1, 5
  %i.cn = and i32 %i.cm, 63
  %i.co = add nuw nsw i32 %i.cn, %i.cl
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2
  %i.cs = zext i16 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 2
  %i.cu = and i32 %1, 31
  %i.cv = add nuw nsw i32 %i.ct, %i.cu
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.s, %bb.t, %bb.q, %bb.n
  %i.cw = phi i32 [ %i.bm, %bb.n ], [ %i.bz, %bb.p ], [ 128, %bb.q ], [ %i.ce, %bb.s ], [ %i.cv, %bb.t ]
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4
  br label %bb.ac

bb.v:                                             ; preds = %bb.l
  %i.da = icmp ugt i32 %1, 1114111
  br i1 %i.da, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dc = load i32, ptr %i.db, align 8
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.de = load ptr, ptr %i.dd, align 8            ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 144168
  %i.dg = load i32, ptr %i.df, align 8
  %.not.i = icmp slt i32 %1, %i.dg
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 144128
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 144152
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr [4 x i8], ptr %i.di, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 -16
  br label %_ZL5get32PK9UNewTrie2ia.exit

bb.z:                                             ; preds = %bb.x
  %i.do = and i32 %1, 2096128
  %i.dp = icmp eq i32 %i.do, 55296
  br i1 %i.dp, label %bb.aa, label %.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.dq = lshr i32 %1, 5
  %i.dr = add nuw nsw i32 %i.dq, 320
  br label %bb.ab

.thread.i:                                        ; preds = %bb.z
  %i.ds = lshr i32 %1, 11
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = lshr i32 %1, 5
  %i.dx = and i32 %i.dw, 63
  %i.dy = add nsw i32 %i.dv, %i.dx
  br label %bb.ab

bb.ab:                                            ; preds = %.thread.i, %bb.aa
  %.020.i = phi i32 [ %i.dr, %bb.aa ], [ %i.dy, %.thread.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.de, i64 2176
  %i.ea = sext i32 %.020.i to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.de, i64 144128
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = and i32 %1, 31
  %i.eg = add nsw i32 %i.ec, %i.ef
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.eh
  br label %_ZL5get32PK9UNewTrie2ia.exit

_ZL5get32PK9UNewTrie2ia.exit:                     ; preds = %bb.y, %bb.ab
  %.0.in.i = phi ptr [ %i.dn, %bb.y ], [ %i.ei, %bb.ab ]
  %.0.i = load i32, ptr %.0.in.i, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %_ZL5get32PK9UNewTrie2ia.exit, %bb.w, %bb.u, %bb.k
  %.0 = phi i32 [ %i.ba, %bb.k ], [ %i.cz, %bb.u ], [ %i.dc, %bb.w ], [ %.0.i, %_ZL5get32PK9UNewTrie2ia.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @utrie2_get32FromLeadSurrogateCodeUnit_78(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, -1024
  %i.b = icmp eq i32 %i.a, 55296
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = lshr i32 %1, 5
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2
  %i.l = zext i16 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 2
  %i.n = and i32 %1, 31
  %i.o = add nuw nsw i32 %i.m, %i.n
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.r to i32
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not15 = icmp eq ptr %i.u, null
  br i1 %.not15, label %_ZL5get32PK9UNewTrie2ia.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %0, align 8
  %i.w = lshr i32 %1, 5
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = zext i16 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 2
  %i.ac = and i32 %1, 31
  %i.ad = add nuw nsw i32 %i.ab, %i.ac
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  br label %bb.g

_ZL5get32PK9UNewTrie2ia.exit:                     ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 108
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = lshr i32 %1, 5
  %i.am = and i32 %i.al, 31
  %i.an = add nsw i32 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 2176
  %i.ap = sext i32 %i.an to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 144128
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = and i32 %1, 31
  %i.av = add nsw i32 %i.ar, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.aw
  %.0.i = load i32, ptr %i.ax, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZL5get32PK9UNewTrie2ia.exit, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.s, %bb.d ], [ %i.ag, %bb.f ], [ %.0.i, %_ZL5get32PK9UNewTrie2ia.exit ], [ %i.d, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @utrie2_internalU8NextIndex_78(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c
  %.09 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 7)
  %i.e = trunc i64 %.09 to i32
  %i.f = call i32 @utf8_nextCharSafeBody_78(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %i.e, i32 noundef %1, i8 noundef signext -1) #11 ; 12 uses
  %i.g = load i32, ptr %i.a, align 4
  %i.h = icmp ult i32 %i.f, 55296
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8
  %i.j = lshr i32 %i.f, 5
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 2
  %i.p = and i32 %i.f, 31
  %i.q = add nuw nsw i32 %i.o, %i.p
  br label %_ZL7u8IndexPK6UTrie2ii.exit

bb.c:                                             ; preds = %bb.a
  %i.r = icmp ult i32 %i.f, 65536
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 8
  %i.t = icmp samesign ult i32 %i.f, 56320
  %i.u = select i1 %i.t, i32 320, i32 0
  %i.v = lshr i32 %i.f, 5
  %i.w = add nuw nsw i32 %i.u, %i.v
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = zext i16 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 2
  %i.ac = and i32 %i.f, 31
  %i.ad = add nuw nsw i32 %i.ab, %i.ac
  br label %_ZL7u8IndexPK6UTrie2ii.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = icmp ugt i32 %i.f, 1114111
  br i1 %i.ae, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.g, label %_ZL7u8IndexPK6UTrie2ii.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = add nsw i32 %i.aj, 128
  br label %_ZL7u8IndexPK6UTrie2ii.exit

bb.h:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.am = load i32, ptr %i.al, align 4
  %.not.i = icmp slt i32 %i.f, %i.am
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i32, ptr %i.an, align 8
  br label %_ZL7u8IndexPK6UTrie2ii.exit

bb.j:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %0, align 8               ; 2 uses
  %i.aq = lshr i32 %i.f, 11
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4160
  %i.au = load i16, ptr %i.at, align 2
  %i.av = zext i16 %i.au to i32
  %i.aw = lshr i32 %i.f, 5
  %i.ax = and i32 %i.aw, 63
  %i.ay = add nuw nsw i32 %i.ax, %i.av
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = zext i16 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 2
  %i.be = and i32 %i.f, 31
  %i.bf = add nuw nsw i32 %i.bd, %i.be
  br label %_ZL7u8IndexPK6UTrie2ii.exit

_ZL7u8IndexPK6UTrie2ii.exit:                      ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.i, %bb.j
  %i.bg = phi i32 [ %i.q, %bb.b ], [ %i.ad, %bb.d ], [ %i.bf, %bb.j ], [ %i.ao, %bb.i ], [ %i.ak, %bb.g ], [ 128, %bb.f ]
  %i.bh = shl i32 %i.bg, 3
  %i.bi = or i32 %i.bh, %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %i.bi
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @utf8_nextCharSafeBody_78(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @utrie2_internalU8PrevIndex_78(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp slt i64 %i.d, 8                     ; 2 uses
  %i.f = trunc i64 %i.d to i32
  %i.g = getelementptr inbounds i8, ptr %3, i64 -7
  %.sink = select i1 %i.e, i32 %i.f, i32 7        ; 2 uses
  %.09 = select i1 %i.e, ptr %2, ptr %i.g
  store i32 %.sink, ptr %i.a, align 4
  %i.h = call i32 @utf8_prevCharSafeBody_78(ptr noundef %.09, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef %1, i8 noundef signext -1) #11 ; 12 uses
  %i.i = load i32, ptr %i.a, align 4
  %i.j = sub nsw i32 %.sink, %i.i                 ; 2 uses
  store i32 %i.j, ptr %i.a, align 4
  %i.k = icmp ult i32 %i.h, 55296
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8
  %i.m = lshr i32 %i.h, 5
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2
  %i.q = zext i16 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 2
  %i.s = and i32 %i.h, 31
  %i.t = add nuw nsw i32 %i.r, %i.s
  br label %_ZL7u8IndexPK6UTrie2ii.exit

bb.c:                                             ; preds = %bb.a
  %i.u = icmp ult i32 %i.h, 65536
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8
  %i.w = icmp samesign ult i32 %i.h, 56320
  %i.x = select i1 %i.w, i32 320, i32 0
  %i.y = lshr i32 %i.h, 5
  %i.z = add nuw nsw i32 %i.x, %i.y
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 2
  %i.af = and i32 %i.h, 31
  %i.ag = add nuw nsw i32 %i.ae, %i.af
  br label %_ZL7u8IndexPK6UTrie2ii.exit

bb.e:                                             ; preds = %bb.c
  %i.ah = icmp ugt i32 %i.h, 1114111
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.g, label %_ZL7u8IndexPK6UTrie2ii.exit

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load i32, ptr %i.al, align 8
  %i.an = add nsw i32 %i.am, 128
  br label %_ZL7u8IndexPK6UTrie2ii.exit

bb.h:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ap = load i32, ptr %i.ao, align 4
  %.not.i = icmp slt i32 %i.h, %i.ap
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i32, ptr %i.aq, align 8
  br label %_ZL7u8IndexPK6UTrie2ii.exit

bb.j:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %0, align 8               ; 2 uses
  %i.at = lshr i32 %i.h, 11
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4160
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = zext i16 %i.ax to i32
  %i.az = lshr i32 %i.h, 5
  %i.ba = and i32 %i.az, 63
  %i.bb = add nuw nsw i32 %i.ba, %i.ay
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = zext i16 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 2
  %i.bh = and i32 %i.h, 31
  %i.bi = add nuw nsw i32 %i.bg, %i.bh
  br label %_ZL7u8IndexPK6UTrie2ii.exit

_ZL7u8IndexPK6UTrie2ii.exit:                      ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.i, %bb.j
  %i.bj = phi i32 [ %i.t, %bb.b ], [ %i.ag, %bb.d ], [ %i.bi, %bb.j ], [ %i.ar, %bb.i ], [ %i.an, %bb.g ], [ 128, %bb.f ]
  %i.bk = shl i32 %i.bj, 3
end_hunk_0
begin_hunk_1_@_ZN6icu_7828BackwardUTrie2StringIterator10previous16Ev:bb.a
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = zext i16 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 2
  %i.ah = and i32 %i.m, 31
  %i.ai = add nuw nsw i32 %i.ag, %i.ah
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.aj
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  store ptr %i.r, ptr %i.a, align 8
  %i.al = shl nuw nsw i32 %i.t, 10
  %i.am = add nuw nsw i32 %i.m, -56613888
  %i.an = add nsw i32 %i.am, %i.al                ; 4 uses
  store i32 %i.an, ptr %i.n, align 8
  %i.ao = load ptr, ptr %0, align 8               ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  %i.ar = load i32, ptr %i.aq, align 4
  %.not7 = icmp slt i32 %i.an, %i.ar
  br i1 %.not7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.at = load i32, ptr %i.as, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.au = lshr i32 %i.an, 11
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr [2 x i8], ptr %i.ap, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 4160
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = zext i16 %i.ay to i32
  %i.ba = lshr i32 %i.an, 5
  %i.bb = and i32 %i.ba, 63
  %i.bc = add nuw nsw i32 %i.bb, %i.az
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = zext i16 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 2
  %i.bi = and i32 %i.m, 31
  %i.bj = add nuw nsw i32 %i.bh, %i.bi
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bk = phi i32 [ %i.at, %bb.g ], [ %i.bj, %bb.h ]
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.bl
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.03.in = phi ptr [ %i.ak, %bb.e ], [ %i.bm, %bb.i ]
  %.03 = load i16, ptr %.03.in, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.0 = phi i16 [ %i.j, %bb.b ], [ %.03, %bb.j ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i16 @_ZN6icu_7827ForwardUTrie2StringIterator6next16Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(40) initializes((8, 16), (24, 28)) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.b, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.g, align 8
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8
  %i.k = trunc i32 %i.j to i16
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 3 uses
  store ptr %i.l, ptr %i.a, align 8
  %i.m = load i16, ptr %i.b, align 2
  %i.n = zext i16 %i.m to i32                     ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 %i.n, ptr %i.o, align 8
  %i.p = and i32 %i.n, 64512
  %i.q = icmp eq i32 %i.p, 55296
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %0, align 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = lshr i32 %i.n, 5
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  %i.x = zext i16 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 2
  %i.z = and i32 %i.n, 31
  %i.aa = add nuw nsw i32 %i.y, %i.z
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ab
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.ad = icmp eq ptr %i.l, %i.e
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i16, ptr %i.l, align 2
  %i.af = zext i16 %i.ae to i32                   ; 3 uses
  %i.ag = and i32 %i.af, 64512
  %i.ah = icmp eq i32 %i.ag, 56320
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = lshr i32 %i.n, 5
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr [2 x i8], ptr %i.aj, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 640
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = zext i16 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 2
  %i.ar = and i32 %i.n, 31
  %i.as = add nuw nsw i32 %i.aq, %i.ar
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.at
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.av, ptr %i.a, align 8
  %i.aw = shl nuw nsw i32 %i.n, 10
  %i.ax = add nsw i32 %i.aw, -56613888
  %i.ay = add nuw nsw i32 %i.ax, %i.af            ; 4 uses
  store i32 %i.ay, ptr %i.o, align 8
  %i.az = load ptr, ptr %0, align 8               ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 44
  %i.bc = load i32, ptr %i.bb, align 4
  %.not = icmp slt i32 %i.ay, %i.bc
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.be = load i32, ptr %i.bd, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bf = lshr i32 %i.ay, 11
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr [2 x i8], ptr %i.ba, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 4160
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = zext i16 %i.bj to i32
  %i.bl = lshr i32 %i.ay, 5
  %i.bm = and i32 %i.bl, 63
  %i.bn = add nuw nsw i32 %i.bm, %i.bk
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = zext i16 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 2
  %i.bt = and i32 %i.af, 31
  %i.bu = add nuw nsw i32 %i.bs, %i.bt
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bv = phi i32 [ %i.be, %bb.i ], [ %i.bu, %bb.j ]
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.bw
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k, %bb.d
  %.03.in = phi ptr [ %i.au, %bb.g ], [ %i.bx, %bb.k ], [ %i.ac, %bb.d ]
  %.03 = load i16, ptr %.03.in, align 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  %.0 = phi i16 [ %i.k, %bb.b ], [ %.03, %bb.l ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZL13enumSameValuePKvj(ptr readnone captures(none) %0, i32 noundef returned %1) unnamed_addr #9 {
bb.a:
  ret i32 %1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6, !7, !8}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
end_hunk_1
