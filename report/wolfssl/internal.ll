Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/internal?download=true
inline.NumInlined: 494
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@wc_DhAgree

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @InitSSL_CTX_Suites(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !61     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.e = load i16, ptr %i.d, align 1              ; 3 uses
  %i.f = lshr i16 %i.e, 9
  %i.g = and i16 %i.f, 1                          ; 2 uses
  %i.h = lshr i16 %i.e, 14
  %i.i = and i16 %i.h, 1                          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !54    ; 2 uses
  %i.l = load i16, ptr %i.c, align 1              ; 2 uses
  %i.m = icmp eq i8 %i.k, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = lshr i16 %i.e, 10
  %i.o = and i16 %i.n, 1
  tail call void @InitSuites(ptr noundef %i.b, i16 %i.l, i32 poison, i16 noundef zeroext 1, i16 zeroext poison, i16 noundef zeroext range(i16 0, 2) %i.o, i16 zeroext range(i16 0, 2) poison, i16 noundef zeroext range(i16 0, 2) %i.g, i16 zeroext poison, i16 noundef zeroext range(i16 0, 2) %i.i, i16 zeroext poison, i16 zeroext poison, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 zeroext poison, i32 noundef 0)
  br label %InitSuites_EitherSide.exit

bb.c:                                             ; preds = %bb.a
  %i.p = zext i8 %i.k to i32
  tail call void @InitSuites(ptr noundef %i.b, i16 %i.l, i32 poison, i16 noundef zeroext 1, i16 zeroext poison, i16 noundef zeroext 1, i16 zeroext range(i16 0, 2) poison, i16 noundef zeroext range(i16 0, 2) %i.g, i16 zeroext poison, i16 noundef zeroext range(i16 0, 2) %i.i, i16 zeroext poison, i16 zeroext poison, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 zeroext poison, i32 noundef range(i32 0, 256) %i.p)
  br label %InitSuites_EitherSide.exit

InitSuites_EitherSide.exit:                       ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -317, 2) i32 @InitSSL_Suites(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %.not34 = icmp eq ptr %i.b, null
  br i1 %.not34, label %InitSuites_EitherSide.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = lshr i64 %i.e, 24
  %i.g = trunc i64 %i.f to i16
  %i.h = and i16 %i.g, 1                          ; 2 uses
  %i.i = lshr i64 %i.e, 27
  %i.j = trunc i64 %i.i to i16
  %i.k = and i16 %i.j, 1                          ; 2 uses
  %i.l = trunc i64 %i.e to i32
  %i.m = lshr i32 %i.l, 4
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %i.o = load i16, ptr %i.c, align 2              ; 2 uses
  %i.p = icmp eq i32 %i.n, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = lshr i64 %i.e, 25
  %i.r = trunc i64 %i.q to i16
  %i.s = and i16 %i.r, 1
  tail call void @InitSuites(ptr noundef nonnull %i.b, i16 %i.o, i32 poison, i16 noundef zeroext 1, i16 zeroext poison, i16 noundef zeroext range(i16 0, 2) %i.s, i16 zeroext range(i16 0, 2) poison, i16 noundef zeroext range(i16 0, 2) %i.h, i16 zeroext poison, i16 noundef zeroext range(i16 0, 2) %i.k, i16 zeroext range(i16 0, 2) poison, i16 zeroext poison, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 zeroext poison, i32 noundef 0)
  br label %InitSuites_EitherSide.exit

bb.e:                                             ; preds = %bb.c
  tail call void @InitSuites(ptr noundef nonnull %i.b, i16 %i.o, i32 poison, i16 noundef zeroext 1, i16 zeroext poison, i16 noundef zeroext 1, i16 zeroext range(i16 0, 2) poison, i16 noundef zeroext range(i16 0, 2) %i.h, i16 zeroext poison, i16 noundef zeroext range(i16 0, 2) %i.k, i16 zeroext range(i16 0, 2) poison, i16 zeroext poison, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 zeroext poison, i32 noundef range(i32 0, 256) %i.n)
  br label %InitSuites_EitherSide.exit

InitSuites_EitherSide.exit:                       ; preds = %bb.e, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, 48
  %.not35 = icmp eq i64 %i.v, 0
  br i1 %.not35, label %bb.f, label %bb.j

bb.f:                                             ; preds = %InitSuites_EitherSide.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !120  ; 2 uses
  %.not36 = icmp eq ptr %i.x, null
  br i1 %.not36, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !78
  %.not37 = icmp eq ptr %i.y, null
  br i1 %.not37, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !121 ; 2 uses
  %.not38 = icmp eq ptr %i.aa, null
  br i1 %.not38, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !78
  %.not39 = icmp eq ptr %i.ab, null
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %InitSuites_EitherSide.exit
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.a, %bb.j
  %.0 = phi i32 [ 1, %bb.j ], [ -317, %bb.g ], [ -173, %bb.a ], [ -317, %bb.f ], [ -317, %bb.h ], [ -317, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @SetSSL_CTX(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %AllocateSuites.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !92    ; 2 uses
  %i.d = icmp ne ptr %i.c, null                   ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.c) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = tail call i32 @wolfSSL_CTX_up_ref(ptr noundef nonnull %1) #27 ; 2 uses
  store ptr %1, ptr %0, align 16, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 722
  %i.g = load i32, ptr %i.f, align 2
  %i.h = and i32 %i.g, 14
  %or.cond147 = icmp eq i32 %i.h, 0
  br i1 %or.cond147, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.j = load ptr, ptr %1, align 8, !tbaa !61
  %i.k = load i16, ptr %i.j, align 1, !tbaa !52
  store i16 %i.k, ptr %i.i, align 2, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.m = load i16, ptr %i.l, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 %i.m, ptr %i.n, align 8, !tbaa !113
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.p = load i32, ptr %i.o, align 4, !tbaa !319
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store i32 %i.p, ptr %i.q, align 16, !tbaa !114
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.s = load i32, ptr %i.r, align 4, !tbaa !320
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1356
  store i32 %i.s, ptr %i.t, align 4, !tbaa !321
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.v = load i32, ptr %i.u, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 700
  store i32 %i.v, ptr %i.w, align 4, !tbaa !122
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !322
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.y, ptr %i.z, align 8, !tbaa !123
  %.pre = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 2
  %.pre150 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !54 ; 2 uses
  %.not139 = icmp eq i8 %.pre150, 3
  %or.cond166 = select i1 %i.d, i1 %.not139, i1 false
  %.phi.trans.insert153 = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %.pre154 = load i64, ptr %.phi.trans.insert153, align 16 ; 2 uses
  br i1 %or.cond166, label %._crit_edge152, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %i.aa = shl i8 %.pre150, 4
  %i.ab = and i8 %i.aa, 48
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = and i64 %.pre154, -49
  %i.ae = or disjoint i64 %i.ad, %i.ac            ; 2 uses
  store i64 %i.ae, ptr %.phi.trans.insert153, align 16
  %.pre151 = load ptr, ptr %1, align 8, !tbaa !61
  br label %._crit_edge152

._crit_edge152:                                   ; preds = %bb.f, %._crit_edge
  %i.af = phi i64 [ %i.ae, %._crit_edge ], [ %.pre154, %bb.f ]
  %i.ag = phi ptr [ %.pre151, %._crit_edge ], [ %.pre, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 22 uses
  %i.ak = and i8 %i.ai, 1
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 10
  %i.an = and i64 %i.af, -1025
  %i.ao = or disjoint i64 %i.am, %i.an            ; 2 uses
  store i64 %i.ao, ptr %i.aj, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1065
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !124
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 169 ; 15 uses
  %3 = load i16, ptr %i.as, align 1
  %4 = lshr i16 %3, 8
  %5 = and i16 %4, 1
  %i.at = zext nneg i16 %5 to i64
  %i.au = shl nuw nsw i64 %i.at, 23
  %i.av = and i64 %i.ao, -8388609
  %i.aw = or disjoint i64 %i.au, %i.av            ; 2 uses
  store i64 %i.aw, ptr %i.aj, align 16
  %i.ax = load i16, ptr %i.as, align 1
  %i.ay = lshr i16 %i.ax, 10
  %i.az = and i16 %i.ay, 1                        ; 2 uses
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 25
  %i.bc = and i64 %i.aw, -33554433
  %i.bd = or disjoint i64 %i.bc, %i.bb            ; 4 uses
  store i64 %i.bd, ptr %i.aj, align 16
  %.not140 = icmp eq i16 %i.az, 0
  br i1 %.not140, label %bb.o, label %bb.g

bb.g:                                             ; preds = %._crit_edge152
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !75
  %.not141 = icmp eq ptr %i.bf, null
  br i1 %.not141, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !74
  %.not142 = icmp eq ptr %i.bh, null
  br i1 %.not142, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !91
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.j, label %AllocateSuites.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bl = tail call ptr @wolfSSL_Malloc(i64 noundef 434) #27 ; 4 uses
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !91
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %AllocateSuites.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %0, align 16, !tbaa !92   ; 2 uses
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 152
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !73 ; 2 uses
  %.not11.i = icmp eq ptr %i.bp, null
  br i1 %.not11.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(434) %i.bl, ptr noundef nonnull align 2 dereferenceable(434) %i.bp, i64 434, i1 false)
  br label %AllocateSuites.exit.thread

bb.n:                                             ; preds = %bb.l, %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(434) %i.bl, i8 0, i64 434, i1 false)
  br label %AllocateSuites.exit.thread

AllocateSuites.exit.thread:                       ; preds = %bb.n, %bb.m, %bb.i
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !91
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.bs = load i64, ptr %i.aj, align 16           ; 5 uses
  %i.bt = lshr i64 %i.bs, 23
  %i.bu = trunc i64 %i.bt to i16
  %i.bv = and i16 %i.bu, 1
  %i.bw = lshr i64 %i.bs, 25
  %i.bx = trunc i64 %i.bw to i16
  %i.by = and i16 %i.bx, 1
  %i.bz = lshr i64 %i.bs, 24
  %i.ca = trunc i64 %i.bz to i16
  %i.cb = and i16 %i.ca, 1
  %i.cc = lshr i64 %i.bs, 27
  %i.cd = trunc i64 %i.cc to i16
  %i.ce = and i16 %i.cd, 1
  %i.cf = trunc i64 %i.bs to i32
  %i.cg = lshr i32 %i.cf, 4
  %i.ch = and i32 %i.cg, 3
  %i.ci = load i16, ptr %i.br, align 2
  tail call void @InitSuites(ptr noundef %i.bq, i16 %i.ci, i32 poison, i16 noundef zeroext %i.bv, i16 zeroext poison, i16 noundef zeroext %i.by, i16 zeroext poison, i16 noundef zeroext %i.cb, i16 zeroext poison, i16 noundef zeroext %i.ce, i16 zeroext poison, i16 zeroext poison, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 zeroext poison, i32 noundef %i.ch)
  %.pre155 = load i64, ptr %i.aj, align 16
  br label %bb.o

bb.o:                                             ; preds = %AllocateSuites.exit.thread, %bb.h, %bb.g, %._crit_edge152
  %i.cj = phi i64 [ %.pre155, %AllocateSuites.exit.thread ], [ %i.bd, %bb.h ], [ %i.bd, %bb.g ], [ %i.bd, %._crit_edge152 ]
  %i.ck = load i16, ptr %i.as, align 1
  %i.cl = lshr i16 %i.ck, 11
  %i.cm = and i16 %i.cl, 1
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 26
  %i.cp = and i64 %i.cj, -67108865
  %i.cq = or disjoint i64 %i.co, %i.cp            ; 2 uses
  store i64 %i.cq, ptr %i.aj, align 16
  %i.cr = load i16, ptr %i.as, align 1
  %i.cs = lshr i16 %i.cr, 9
  %i.ct = and i16 %i.cs, 1
  %i.cu = zext nneg i16 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 24
  %i.cw = and i64 %i.cq, -16777217
  %i.cx = or disjoint i64 %i.cv, %i.cw            ; 2 uses
  store i64 %i.cx, ptr %i.aj, align 16
  %i.cy = load i16, ptr %i.as, align 1
  %i.cz = lshr i16 %i.cy, 14
  %i.da = and i16 %i.cz, 1
  %i.db = zext nneg i16 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.db, 27
  %i.dd = and i64 %i.cx, -134217729
  %i.de = or disjoint i64 %i.dd, %i.dc            ; 2 uses
  store i64 %i.de, ptr %i.aj, align 16
  %i.df = load i16, ptr %i.as, align 1
  %i.dg = lshr i16 %i.df, 12
  %i.dh = and i16 %i.dg, 1
  %i.di = zext nneg i16 %i.dh to i64
  %i.dj = shl nuw nsw i64 %i.di, 28
  %i.dk = and i64 %i.de, -268435457
  %i.dl = or disjoint i64 %i.dk, %i.dj            ; 2 uses
  store i64 %i.dl, ptr %i.aj, align 16
  %i.dm = load i16, ptr %i.as, align 1
  %i.dn = lshr i16 %i.dm, 13
  %i.do = and i16 %i.dn, 1
  %i.dp = zext nneg i16 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 29
  %i.dr = and i64 %i.dl, -536870913
  %i.ds = or disjoint i64 %i.dr, %i.dq            ; 2 uses
  store i64 %i.ds, ptr %i.aj, align 16
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 174
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.dv = load <2 x i16>, ptr %i.dt, align 2, !tbaa !90
  store <2 x i16> %i.dv, ptr %i.du, align 16, !tbaa !90
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 178
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !65
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1078
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !125
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ea = load i8, ptr %i.dz, align 4, !tbaa !323
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1097
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !324
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 182
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !66
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i16 %i.ed, ptr %i.ee, align 8, !tbaa !126
  %i.ef = load i16, ptr %i.as, align 1
  %i.eg = lshr i16 %i.ef, 2
  %i.eh = and i16 %i.eg, 4
  %i.ei = zext nneg i16 %i.eh to i64
  %i.ej = and i64 %i.ds, -5
  %i.ek = or disjoint i64 %i.ej, %i.ei            ; 2 uses
  store i64 %i.ek, ptr %i.aj, align 16
  %i.el = load i16, ptr %i.as, align 1
  %i.em = lshr i16 %i.el, 2
  %i.en = and i16 %i.em, 8
  %i.eo = zext nneg i16 %i.en to i64
  %i.ep = and i64 %i.ek, -9
  %i.eq = or disjoint i64 %i.ep, %i.eo            ; 2 uses
  store i64 %i.eq, ptr %i.aj, align 16
  %i.er = load i16, ptr %i.as, align 1
  %i.es = shl i16 %i.er, 6
  %i.et = and i16 %i.es, 64
  %i.eu = zext nneg i16 %i.et to i64
  %i.ev = and i64 %i.eq, -65
  %i.ew = or disjoint i64 %i.ev, %i.eu            ; 2 uses
  store i64 %i.ew, ptr %i.aj, align 16
  %i.ex = load i16, ptr %i.as, align 1
  %i.ey = shl i16 %i.ex, 6
  %i.ez = and i16 %i.ey, 128
  %i.fa = zext nneg i16 %i.ez to i64
  %i.fb = and i64 %i.ew, -129
  %i.fc = or disjoint i64 %i.fb, %i.fa            ; 2 uses
  store i64 %i.fc, ptr %i.aj, align 16
  %i.fd = load i16, ptr %i.as, align 1
  %i.fe = shl i16 %i.fd, 6
  %i.ff = and i16 %i.fe, 256
  %i.fg = zext nneg i16 %i.ff to i64
  %i.fh = and i64 %i.fc, -257
  %i.fi = or disjoint i64 %i.fh, %i.fg            ; 2 uses
  store i64 %i.fi, ptr %i.aj, align 16
  %i.fj = load i16, ptr %i.as, align 1
  %i.fk = shl i16 %i.fj, 6
  %i.fl = and i16 %i.fk, 512
  %i.fm = zext nneg i16 %i.fl to i64
  %i.fn = and i64 %i.fi, -513
  %i.fo = or disjoint i64 %i.fn, %i.fm            ; 2 uses
  store i64 %i.fo, ptr %i.aj, align 16
  %i.fp = load i16, ptr %i.as, align 1
  %i.fq = lshr i16 %i.fp, 6
  %i.fr = and i16 %i.fq, 3
  %i.fs = zext nneg i16 %i.fr to i64
  %i.ft = and i64 %i.fo, -4
  %i.fu = or disjoint i64 %i.ft, %i.fs            ; 2 uses
  store i64 %i.fu, ptr %i.aj, align 16
  %i.fv = load i16, ptr %i.as, align 1
  %i.fw = lshr i16 %i.fv, 15
  %i.fx = zext nneg i16 %i.fw to i64
  %i.fy = shl nuw nsw i64 %i.fx, 34
  %i.fz = and i64 %i.fu, -17179869185
  %i.ga = or disjoint i64 %i.fz, %i.fy            ; 2 uses
  store i64 %i.ga, ptr %i.aj, align 16
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 171 ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = lshr i8 %i.gc, 1
  %i.ge = and i8 %i.gd, 1
  %i.gf = zext nneg i8 %i.ge to i64
  %i.gg = shl nuw nsw i64 %i.gf, 35
  %i.gh = and i64 %i.ga, -34359738369
  %i.gi = or disjoint i64 %i.gg, %i.gh            ; 2 uses
  store i64 %i.gi, ptr %i.aj, align 16
  %i.gj = load i8, ptr %i.gb, align 1
  %i.gk = lshr i8 %i.gj, 2
  %i.gl = and i8 %i.gk, 1
  %i.gm = zext nneg i8 %i.gl to i64
  %i.gn = shl nuw nsw i64 %i.gm, 37
  %i.go = and i64 %i.gi, -137438953473
end_hunk_0
